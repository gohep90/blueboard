//////////////////클릭 이벤트///////////////////////////

 $(function(){
	 $("#register").click(function(){
		 window.location.href="academyRegister.do";
	 });
 });

 
/////////////////////서버와 통신/////////////////////////////////////////
function gotoPage(i) { // page 이동할 때

	$.ajax({
		type : "POST",
		url : "academyAdminJson.do",
		async : false,
		dataType : "json",
		data : {
			current : i
		},
		error : function(e) {
			alert("에러났소!");
			alert(e);
		},
		success : function(data) {
			
			var list = data['positions'];
			
			var intro = document.getElementById("intro");
			var menu_wrap = document.getElementById("menu_wrap");
			var register = document.getElementById("register");
			var pagination = document.getElementById("pagination");
			
		/*	
			//등록같좌 없을 때
			if(list==""){
				intro.style.display = "block";
				menu_wrap.style.display = "none";
				register.style.display = "none";
				pagination.style.display = "none";
			}else{
				//관심항목이 있을 때
				intro.style.display = "none";
				menu_wrap.style.display = "block";
				register.style.display = "block";
				pagination.style.display = "block";
			}
			
			*/
			
			displayPlaces(data['positions'], i); // 리스트 출력
			displayPagination(data['pagination'], i); // 리스트 순번
		}
	});

}

//관심항목 취소
function deleteAcademy(i) { 

	$.ajax({
		type : "POST",
		url : "deleteAcademy.do",
		async : false,
		dataType : "json",
		data : {
			academyId : i
		},
		error : function(e) {
			alert("에러났소!");
			alert(e);
		},
		success : function(data) {
			
			//alert("취소 성공");
			window.location.href="academyAdmin.do";
			
		}
	});

}



//관심항목 전체 취소
function cancelAll() { 

	$.ajax({
		type : "POST",
		url : "cancelAll.do",
		async : false,
		dataType : "json",
		data : {
		},
		error : function(e) {
			alert("에러났소!");
			alert(e);
		},
		success : function(data) {
			
			window.location.href="favorite.do";
			
		}
	});

}
/////////////////////////////리스트 출력////////////////////////////////////////
// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places, current) {

	var listEl = document.getElementById('placesList'), menuEl = document
			.getElementById('menu_wrap'), fragment = document
			.createDocumentFragment(),
	// bounds = new daum.maps.LatLngBounds(),
	listStr = '';

	var marker = '';

	// 검색 결과 목록에 추가된 항목들을 제거합니다
	removeAllChildNods(listEl);

	for (var i = 0; i < places.length; i++) {
		// 마커를 생성하고 지도에 표시합니다
		// var placePosition = new daum.maps.LatLng(places[i].latitude,
		// places[i].longitude),
		// marker = addMarker(placePosition, i),
		var itemEl = '';

		itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
			
		// 마커와 검색결과 항목에 mouseover 했을때
		// 해당 장소에 인포윈도우에 장소명을 표시합니다
		// mouseout 했을 때는 인포윈도우를 닫습니다
		(function(academyId, i) {
			
			var temp=true;
			itemEl.onmouseover = function() {
				var test = document.getElementById('seq_' + i).className = "seq_mouse";
				
				$('#delete_'+i).on('click',function(event){
					if(temp==true){
						temp=false;
						var check = confirm('강의목록에서 삭제하시겠습니까?');
						if(check==true){
							deleteAcademy(academyId);
						}
						event.stopPropagation(); //연속적 이벤트 막기
					}
				});
				
				
				$('#modify_'+i).on('click',function(event){
					if(temp==true){
						temp=false;
						
						window.location.href="academyModify.do?academyId="+academyId;
						
						event.stopPropagation(); //연속적 이벤트 막기
					}
				});
				
				

				temp=true; //취소버튼 위해서
				
		//		var name = document.getElementById('name_' + i);
		//		name.style.color = "#000000";

		//		var address = document.getElementById('address_' + i);
			//	address.style.color = "#000000";

			//	var info = document.getElementById('info_' + i);
			//	info.style.color = "#000000";
			};

			itemEl.onmouseout = function() {

				var test = document.getElementById('seq_' + i).className = "seq";

				
				
		//		var name = document.getElementById('name_' + i);
		//		name.style.color = "#FFC000";

		//		var address = document.getElementById('address_' + i);
		//		address.style.color = "#ffffff";

		//		var info = document.getElementById('info_' + i);
		//		info.style.color = "#ffffff";

			};

			itemEl.onclick = function() {
				// window.location.href="academy.do?year="+year+"&month="+temp;
				window.open("academy.do?academyId=" + academyId, "_blank"); // 이동
			};
			

			
		})(places[i].academyId, i);

		fragment.appendChild(itemEl);
	}

	// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
	listEl.appendChild(fragment);
	menuEl.scrollTop = 0;

}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

	var el = document.createElement('li'), itemStr = '<div class="seq" id="seq_'
			+ (index)
			+ '"><image src="images/academy/'
			+places.photoName+'" class="markerbg"></image><div class="info"><h5 id="name_'
			+ (index)
			+ '">'
			+ places.academyName
			+ '</h5><br><span id="address_'
			+ (index)
			+ '">'
			+ places.academyAddress
			+ '</span><span id="info_'
			+ (index)
			+ '">' + places.academyIntro + '</span></div><div class="aaaa"><image id="modify_'
			+ (index)
			+'" src="images/adminModify.png" class="favoriteCancel" style="margin-right:10px;"><image id="delete_'
			+ (index)
			+'" src="images/delete.png" class="favoriteCancel"></div></div><hr>';
	
	el.innerHTML = itemStr;
	el.className = 'item';

	return el;
}



// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination, current) { // 초기 받아오는것!!
	var paginationEl = document.getElementById('pagination'), fragment = document
			.createDocumentFragment(), i;

	// 기존에 추가된 페이지번호를 삭제합니다
	while (paginationEl.hasChildNodes()) {
		paginationEl.removeChild(paginationEl.lastChild);
	}

	// 소수점 올림!!
	var length = Math.ceil(pagination[0].last / 5);

	var start = 0;

	// alert(length);
	// alert(current);

	if ((current > 5) && (length > 9)) { // 페이지가 5개보다 많을 때

		if (current <= length - 4) {
			for (i = current - 5; i <= current + 5; i++) {
				var el = document.createElement('a');

				if (i == current - 5) {
					el.innerHTML = "<<";
					el.onclick = changePage(current - 1, length);
				} else if (i == current + 5) {
					el.innerHTML = ">>";
					el.onclick = changePage(current + 1, length);
				} else if (i >= length + 1) {
					el.innerHTML = ">>";
					el.onclick = changePage(current + 1, length);
					fragment.appendChild(el);
					break;
				} else {
					el.innerHTML = i;

					if (i == current) {
						el.className = 'on';
					} else {
						el.onclick = (function(i) {
							return function() {
								gotoPage(i); // ajax함수로 !!
							}
						})(i);
					}
				}
				fragment.appendChild(el);
			}
		} else { // 페이지가 5개보다 많고 더이상 넘어갈게 없을 때
			for (i = length - 9; i <= length + 1; i++) {
				var el = document.createElement('a');

				if (i == length - 9) {
					el.innerHTML = "<<";
					el.onclick = changePage(current - 1, length);
				} else if (i == length + 1) {
					el.innerHTML = ">>";
					el.onclick = changePage(current + 1, length);
				} else if (i >= length + 1) {
					el.innerHTML = ">>";
					el.onclick = changePage(current + 1, length);
					fragment.appendChild(el);
					break;
				} else {
					el.innerHTML = i;

					if (i == current) {
						el.className = 'on';
					} else {
						el.onclick = (function(i) {
							return function() {
								gotoPage(i); // ajax함수로 !!
							}
						})(i);
					}
				}
				fragment.appendChild(el);
			}

		}

	} else { // 페이지가 5개보다 작을 때
		for (i = 0; i <= 10; i++) {
			var el = document.createElement('a');

			if (i == 0) {
				el.innerHTML = "<<";
				el.onclick = changePage(current - 1, length);
			} else if (i == 10) {
				el.innerHTML = ">>";
				el.onclick = changePage(current + 1, length);

			} else if (i >= length + 1) {
				el.innerHTML = ">>";
				el.onclick = changePage(current + 1, length);

				fragment.appendChild(el);
				break;
			} else {
				el.innerHTML = i;

				if (i == current) {
					el.className = 'on';
				} else {
					el.onclick = changePage(i, length);

				}
			}
			fragment.appendChild(el);
		}
	}

	paginationEl.appendChild(fragment);
}

function changePage(i, end) {
	return function() {
		if (i >= 1 && i <= end)
			gotoPage(i);
	}
}

// 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {
	while (el.hasChildNodes()) {
		el.removeChild(el.lastChild);
	}
}
