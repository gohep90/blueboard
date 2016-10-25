
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

//관심항목 등록
$(function(){
	$("#interest").click(function(){
		var academyId = $('#academyId').text();
		
		if($('#userId').text()=="null"){
			alert("로그인은 먼저 해주세요.")
		}else{
			var check = confirm('관심목록에 등록하시겠습니가?');
			if(check==true){
				registerFavorite(academyId);
			}
		}
	});
});




//////////////////form 데이터 전송      ///////////////////////////

function post_to_url(path,params){
	
	//새창으로 열기
	var gsWin = window.open('about:blank','payViewer','width=800,height=800')
	method="post";
	var form = document.createElement("form");
	form.setAttribute("method",method);
	form.setAttribute("action",path);
	form.setAttribute("target",'payViewer');
	 for(var key in params) {
	        var hiddenField = document.createElement("input");
	        hiddenField.setAttribute("type", "hidden");
	        hiddenField.setAttribute("name", key);
	        hiddenField.setAttribute("value", params[key]);
	        form.appendChild(hiddenField);
	    }
	    document.body.appendChild(form);
	    form.submit();
}


////////////////// 결제  ///////////////////////////
$(function(){
	$("#pay").click(function(){
		
		if($('#userId').text()=="null"){
			alert("로그인은 먼저 해주세요.")
		}else{
			var academyId = $('#academyId').text();
			bootbox.prompt({
			    title: "결제수단을 선택해주세요.",
			    inputType: 'select',
			    inputOptions: [
			        {
			            text: '신용카드',
			            value: 'card',
			        },
			        {
			            text: '실시간 계좌이체',
			            value: 'trans',
			        },
			        {
			            text: '가상계좌',
			            value: 'vbank',
			        },
			        {
			            text: '휴대폰 소액결제',
			            value: 'phone',
			        }
			    ],
			    callback: function (result) {
			    	if(result!=null){
			    		userInfo(result);
			    	}
			    }
			});
		}
	});
});




function userInfo(result){
	
	$.ajax({
		type : "POST",
		url : "userInfo.do",
		async : false,
		dataType : "json",
		data : {},
		error : function(e) {
			alert("에러났소!");
			alert(e);
		},
		success : function(data) {
			
			list= data['userInfo'];
			
			post_to_url('pay.do',{'result': result,
				  					'academyName': $('.academy_p').text(),
				  					'academyPay': $('#academyPay').text(),
				  					'userEmail' : list[0].userEmail,
				  					'userName': list[0].userName});
		}
	});
}







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








