

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
		alert(11);
	});
});

///////////////////////////////////// 그림 클릭시 form데이터 전송	//////////////////////////////////////
function post_to_url(path,params){
	var method="post";
	var form = document.createElement("form");
	form.setAttribute("method",method);
	form.setAttribute("action",path);
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



