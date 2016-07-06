$(document).ready(function(){
	var InterValObj; //timer 변수를 제어 시간  
	var count = 60; //주기 함수, 1초 실행  
	var curCount;//현재 남은 초 단위  

	$("#btnSendCode").click(function(){
		curCount = count;
		var mobileval = $("#mobile").text();
		if(mobileval != ""){
			$("#btnSendCode").attr("disabled", "true");
			$("#btnSendCode").val("좀 "+ curCount + "초 검증 야드");
			InterValObj = window.setInterval(SetRemainTime, 1000); // 시작 타이머, 1초 실행 한 번 
		       // 후순위 처리 데이터 전송 향해  
	        $.ajax({  
	            type: "POST", // 으로 POST 방식 전송  
	            dataType: "json", // 데이터 형식: JSON  
	            url: "/obiz/app/account/registermobiledendcode", // 목표 주소  
	            data: {mobile:mobileval},  
	            complete : function(data){
	            	if(data.status===200){
	            		//window.location.href = "/obiz/app/account/testhome.html";
	            	}else{
	            		alert(data.responseJSON.message);
	            		//var text  = JSON.parse(data.responseText);
	            		//alert(text["message"]);
	            	}
	            }  
	        }); 
		}else{
			alert("핸드폰 번호 못 비어!");
			return false;
		}
	});
	
	//var codetext = $("#mobilecode");
	$("#mobilevabtn").click(function(){
		//alert(codetext);
		var code = $("#mobilecode").val();
		var mobileval = $("#mobile").text();
		if(code != ""){
	        $.ajax({  
	            type: "POST", // 으로 POST 방식 전송  
	            dataType: "json", // 데이터 형식: JSON  
	            url: "/obiz/app/account/registermobilevalidation", // 목표 주소  
	            data: {mobilecode:code,mobile:mobileval},  
	            complete : function(data){
	            	if(data.status===200){
	            		window.location.href = "/obiz/app/account/registerfinish.html";
	            	}else{
	            		alert(data.responseJSON.message);
//	            		var text  = JSON.parse(data.responseText);
//	            		alert(text["message"]);
	            	}
	            }  
	        }); 
		}else{
			alert("좀 검증 야드!");
			return false;
		}
	});
	
	//timer 처리 함수  
	function SetRemainTime() {  
	    if (curCount == 0) {                  
	        window.clearInterval(InterValObj);// 정지 타이머  
	        $("#btnSendCode").removeAttr("disabled");// 이 단추  
	        $("#btnSendCode").val("다시 보내기 인증 코드");  
	        //code = ""; // 제거 인증 코드.만약 제거, 한 시간 후 받은 여전히 유효한 비밀번호 입력  
	    }else {  
	        curCount--;  
	        $("#btnSendCode").val("좀 "+ curCount + "초 검증 야드");  
	    }  
	}
});