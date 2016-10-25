
/*주메뉴*/
var $devWidth;
var $limitSize=768;
$(document).ready(function() {
/* 디바이스 사이즈 체크 */
$devWidth=$("body").width();
$(window).resize(function(){
	$devWidth=$("body").width();
})
	

	$(".gnblist > li > a ").bind("mouseover",function() {
		  if($devWidth <$limitSize) return false;
			$(".gnblist ul").hide();
			$(this).next().show();
			$(this).css("background-color","#0C3");
			

			$(".gnblist > li > a").css({
				'height':'29px',
				'background':'none',
			});
			$(".gnblist2 > li ").css({
				'height':'29px',
				'background-color':'rgba(255,192,0,1.0)'
			});

			$(this).css('height','32px');
			$(this).css('background','url("images/over_icon.gif") no-repeat center bottom');
	});


	$("#gnb").mouseleave(function(){
			if($devWidth <$limitSize) return false;
			$(".gnblist ul").stop().slideUp(50);
			$(".gnblist > li > a").css({
				'height':'29px',
				'background':'none',
				
			});
	})

	/*전체메뉴*/
	/*$(".allmenu_view a").click(function(e){
		e.preventDefault();
		$(".allmenu_view").slideUp(10,function(){
			$("#allMenu_box").slideDown("slow");
		})
	});

	$(".all_close").click(function(e){
		e.preventDefault();
		$("#allMenu_box").slideUp("slow",function(){
			$(".allmenu_view").slideDown(50);
		})
	});*/

	
	/*탭메뉴*/
	/*$(".t1 a, .t2 a").bind("focus click",function(e) {
		e.preventDefault();
		$(".item1, .item2").hide();
		$(this).parent().next().show();

		$("#newbooks-news h2 img").each(function(){
			$(this).attr("src",$(this).attr("src").replace("_over.gif",".gif"));
		});
		$btnImg=$(this).children("img");
		$btnImg.attr("src",$btnImg.attr("src").replace(".gif","_over.gif"));
	})*/

	

/*click&touch 슬라이드 배너
	var $bnnNum=0;
	
	$(".prev").click(function(){
		if($bnnNum<=0) return false;
		$bnnNum--;
			$book_w=$("#recomm_book").width();
			$("#book_frame").animate({left:-$book_w*$bnnNum},300,function(){
					$("#book_roll img").attr("src","images/state_out.png");
					$("#book_roll img").eq($bnnNum).attr("src","images/state_over.png");	
			});
	})
	$(".next").click(function(){
		if($bnnNum>=1) return false;
		$bnnNum++;
			$book_w=$("#recomm_book").width();
			$("#book_frame").animate({left:-$book_w},300,function(){
				$("#book_roll img").attr("src","images/state_out.png");
				$("#book_roll img").eq($bnnNum).attr("src","images/state_over.png");	
			});
	})

	$("#recomm_book").bind("swipeleft",function(){$(".next").trigger("click");});
	$("#recomm_book").bind("swiperight",function(){$(".prev").trigger("click");});

	$(window).bind("orientationchange",function(e){
			$book_w =$("#recomm_book").width();
			$("#book_frame").animate({left:-$book_w*$bnnNum},300);
	});*/
});




//////////////////insert academy ///////////////////////////

//모든 항목 입력됐는지 확인
function checkAcademy(){
	if($('#teacherName').val()=="" || $('#teacherTel').val()=="" || $('#teacherCareer').val()=="" || $('#teacherIntro').val()=="" ||
			$('#academyName').val()=="" || $('#academyAddress').val()=="" || $('#academyTerm').val()=="" || $('#academyWeek').val()=="" ||
			$('#academyTime').val()=="" || $('#academyTotal').val()=="" || $('#academyPay').val()=="" || $('#academyIntro').val()=="" ||
			$('#academyCurriculum').val()=="" || $('#lCategory').val()=="" || $('#sCategory').val()=="" ||
			$('#img1').val()=="" || $('#img2').val()=="" || $('#img3').val()=="" || $('#img4').val()=="" ){
	
		alert("모든 항목을 입력해주세요.");
		
	}else{
		makeAddress();
	}
	
}




//위도 경도 알아오기
function makeAddress() {
	
	var add = encodeURIComponent($('#academyAddress').val());
	$.ajax({
		type : "GET",
		url : "http://maps.googleapis.com/maps/api/geocode/json?address="+ add + "&sensor=false",
		dataType : "json",
		async : false,
		error : function(e) {
		//	alert("에러났소!");
		//	alert(e);
		},
		success : function(data) {
			$.each(data, function(key) {
				var list = data[key];
				for (var i = 0; i < list.length; i++) {
					var lat = list[i].geometry.location.lat;
					var lng = list[i].geometry.location.lng;
					
					//강좌등록
					insertAcademy(lat,lng);
				}
			});
		}
	});
}





//강좌등록
function insertAcademy(lat,lng){
	
	//document.getElementById('formData').submit();
	$.ajax({
		type : "POST",
		url : "insertAcademy.do",
		async:false,
		dataType : "json",
		data : {
			teacherName : $('#teacherName').val(),
			teacherTel : $('#teacherTel').val(),
			teacherCareer : $('#teacherCareer').val(),
			teacherIntro : $('#teacherIntro').val(),
			
			academyName : $('#academyName').val(),
			academyAddress : $('#academyAddress').val(),
			academyTerm : $('#academyTerm').val(),
			academyWeek : $('#academyWeek').val(),
			academyTime : $('#academyTime').val(),
			academyTotal : $('#academyTotal').val(),
			academyPay : $('#academyPay').val(),
			academyIntro : $('#academyIntro').val(),
			academyCurriculum : $('#academyCurriculum').val(),
			lCategory : $('#lCategory').val(),
			sCategory : $('#sCategory').val(),
			lat : lat,
			lng : lng
			
		},
		error : function(e) {
			alert("에러났소!");
			alert(e);
		},
		success : function(data) {
			
			//방금 등록한 강좌 academyId
			var list = data['academyId'];
			$('#academyId').val(list);
			
			//사진전송
			document.getElementById('formData').submit();
			
		}
	});
}



