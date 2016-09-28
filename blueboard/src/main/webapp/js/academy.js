
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

});

//////////////////클릭 이벤트///////////////////////////
$(function(){
	$("#interest").click(function(){
		var academyId = $('#academyId').text();
		var check = confirm('관심목록에 등록하시겠습니가?');
		if(check==true){
			registerFavorite(academyId);
		}
	});
});



//////////////////관심항목 등록///////////////////////////

function registerFavorite(i) { 

	$.ajax({
		type : "POST",
		url : "registerFavorite.do",
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
			window.location.href="favorite.do";
			
		}
	});

}








