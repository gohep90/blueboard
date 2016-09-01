//////////////////클릭 이벤트///////////////////////////
$(function(){
	$(".register").click(function(){
		window.location="agreement.do";
	});
});

$(function(){
	$(".login_facebook").click(function(){
		facebookLogin();
	});
});

$(function(){
	$(".login_img").click(function(){
		checkLogin();
	});
});

//////////////////    form 데이터 전송      ///////////////////////////

function post_to_url(path,params){
	method="post";
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


//////////////////페이스북 로그인??///////////////////////////

var likes='';
var teather='아는 형님,인사동,나랑놀자,응답하라 노원,맨즈룩,Dingo Life,우리끼리,싫으면 싫은거지,망할 민미경,EA Sports FIFA 온라인 3,사랑합니까?,니가 웃으면 나도 좋아,축구싶냐?,';

var userId="";
var userName="";
var userSex="";
var userEmail="";
var userBirthday="";
var userLike="";


function statusChangeCallback(response) {
	console.log('statusChangeCallback');
	console.log(response);
	if (response.status === 'connected') {
		//accessToken = response.authResponse.accessToken;
		
		
		
		//로그인 인증 후 페이지 이동 
		//window.location="agreement.do";
		
	} else if (response.status === 'not_authorized') {
		// The person is logged into Facebook, but not your app.
		document.getElementById('status').innerHTML = 'Please log '
				+ 'into this app.';
	} else {
		// The person is not logged into Facebook, so we're not sure if
		// they are logged into this app or not.
		document.getElementById('status').innerHTML = 'Please log '
				+ 'into Facebook.';
	}
}

function facebookLogin() {
	FB.login(function(response) {
		FB.api('/me?fields=id,name,email,birthday,gender,likes.limit(100)&locale=ko_KR',function(user){
			//$(".login_id").val(JSON.stringify(user));

			userId=user.id;
			userName=user.name;
			userSex=user.gender;
			userEmail=user.email;
			userBirthday=user.birthday;
			
			var list=user.likes['data'];
			
			for(var i=0;i<list.length;i++){
				userLike+=list[i].name+",";
			}
			
			//form 형식으로 데이터 전송
			post_to_url('checkFacebook.do',{'userId': userId,
											'userName': userName,
											'userSex': userSex,
											'userEmail': userEmail,
											'userBirthday': userBirthday,
											'userLike' : userLike});
		});
		
		//statusChangeCallback(response);
	},{scope: 'public_profile,email,user_birthday,user_likes'});
}


window.fbAsyncInit = function() {
    FB.init({
    appId      : '170156413402092',
    xfbml      : true,
    version    : 'v2.7'
});

	// Now that we've initialized the JavaScript SDK, we call 
	// FB.getLoginStatus().  This function gets the state of the
	// person visiting this page and can return one of three states to
	// the callback you provide.  They can be:
	//
	// 1. Logged into your app ('connected')
	// 2. Logged into Facebook, but not your app ('not_authorized')
	// 3. Not logged into Facebook and can't tell if they are logged into
	//    your app or not.
	//
	// These three cases are handled in the callback function.

	FB.getLoginStatus(function(response) {
		statusChangeCallback(response);
	});
};

// Load the SDK asynchronously
(function(d, s, id){
 	var js, fjs = d.getElementsByTagName(s)[0];
 	if (d.getElementById(id)) {return;}
 	js = d.createElement(s); js.id = id;
 	js.src = "//connect.facebook.net/en_US/sdk.js";
 	fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk'));

// Here we run a very simple test of the Graph API after login is
// successful.  See statusChangeCallback() for when this call is made.


function compare(){
	var count=0;
	var strArray = likes.split(',');
	var teatherArray = teather.split(',');
	
	for(var i=0;i<strArray.length-1;i++){
		for(var j=0;j<teatherArray.length-1;j++){
			if(strArray[i]==teatherArray[j]){
				count++;
			}
		}
	}
	alert(count);
}



/*
function testAPI() {
	$.ajax({
		type:"GET",
		url:"https://graph.facebook.com/me/likes?access_token="+accessToken+"&limit=100",
		dataType:"json",
		error : function(e) {
			 alert("에러났소!");
			 alert(e);
		},
		success: function(data){
			$.each(data,function(key){
				var list=data[key];
				//alert(list.length);
				
				for(var i=0;i<list.length;i++){
					likes+=list[i].name+",";
				}
			});
			alert(likes);
			//$('#status').text(likes);
			//compare();
			
			
		}
	});
}
*/
//////////////////   일반 로그인    ///////////////////////////

function checkLogin(){
	var userId = $(".login_id").val();
	var userPw = $(".login_pw").val();
	
	$.ajax({
		type : "POST",
		url : "checkLogin.do",
		dataType : "json",
		data : {
			userId : userId,
			userPw	:	userPw
		},
		error : function(e) {
			alert("에러났소!");
			alert(e);
		},
		success : function(data) {
			var list = data['checkLogin'];
			var EMsg = document.getElementById("loginMsg");
			
			//로그인이 안됐을 때
			if(list==""){
				EMsg.style.display = "block";
				$(".login_pw").val("");
			}else{
				//로그인이 됐을 때  
				EMsg.style.display = "none";
				document.getElementById('login_form').submit()
			}
		}
	});
}