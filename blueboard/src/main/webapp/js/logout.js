

////////////////////////////////// 로그인 확인 및 로그아웃 /////////////////////////////////////////////////////
var userName=$('#userName').text();	
			
var user = document.getElementById("userName");
var logout = document.getElementById("logout");
var login = document.getElementById("login");
			
if(userName!='LOGIN'){
	user.style.display = "inline-block";
	logout.style.display = "inline-block";
	login.style.display = "none";
		
}else{
	user.style.display = "none";
	logout.style.display = "none";
	login.style.display = "inline-block";
}

///////////////////////////////////////////   LOGOUT  ///////////////////////////////////////////////////

$(function(){

	$("#logout").click(function(){
		//var temp = confirm('로그아웃 하시겠습니까?');
		//if(temp==true)
		logoutSession();
	});
	
});



function logoutSession(){ //page 이동할 때
	$.ajax({
		type : "POST",
		url : "logout.do",
		dataType : "json",
		data : {
		},
		error : function(request,status,error) {
			alert("에러났소!");
			 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		},
		success : function(data) {
			
			var link = document.location.href;
			window.location=link;
		}
	});
}





