<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Facebook Login JavaScript Example</title>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
	<script>
		var accessToken='';
		var likes='';
		var teather='아는 형님,인사동,나랑놀자,응답하라 노원,맨즈룩,Dingo Life,우리끼리,싫으면 싫은거지,망할 민미경,EA Sports FIFA 온라인 3,사랑합니까?,니가 웃으면 나도 좋아,축구싶냐?,';
		//var userId='';
		// This is called with the results from from FB.getLoginStatus().
		
		function statusChangeCallback(response) {
			console.log('statusChangeCallback');
			console.log(response);
			// The response object is returned with a status field that lets the
			// app know the current login status of the person.
			// Full docs on the response object can be found in the documentation
			// for FB.getLoginStatus().
			if (response.status === 'connected') {
				// Logged into your app and Facebook.
				accessToken = response.authResponse.accessToken;
				//userId = response.authResponse.userID;
				testAPI();
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

		// This function is called when someone finishes with the Login
		// Button.  See the onlogin handler attached to it in the sample
		// code below.
		function checkLoginState() {
			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});
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
					$('#status').text(likes);
					compare();
				}
			});
		}
		
		
	</script>

	<!--
  Below we include the Login Button social plugin. This button uses
  the JavaScript SDK to present a graphical Login button that triggers
  the FB.login() function when clicked.
-->

	
	<fb:login-button scope="public_profile,email,user_likes"onlogin="checkLoginState();">
	</fb:login-button>

	<div id="status"></div>

</body>
</html>