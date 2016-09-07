<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배가 : 회원가입</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/finish.js'/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/finish.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />


</head>
<body>
	<div class="logo">
		<a href="main.do"><img class="logo_img" src="images/register_logo.png"/></a>
	</div>
	<div class="container">
		<p class="intro">축하합니다! 회원가입을 모두 마쳤습니다.</p>
		<p class="intro">배우러 가는 길. 함께 가볼까요?</p>
	</div>
	
	<div class="content">
		<div class="service_image">
			<a href="main.do"><img class="start_icon" src="images/serviceStart.png"/></a>
			<img class="start_icon" src="images/enrollAcademy.png"/>
		</div>
		<div class="service_text">
			<img class="start_text" src="images/serviceStartText.png"/>
			<img class="start_text" src="images/enrollAcademyText.png"/>
		</div>
	</div>
	
	<div class="copyright_div">
		<img class="copyright" src="images/copyright.png"/>
	</div>
	
</body>
</html>