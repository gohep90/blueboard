<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배가 : 강의등록</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/academyRegister.js'/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/academyRegister.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />
	<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/teb3.css'/>" />
	


</head>
<body>
	<div class="logo">
		<a href="main.do"><img class="logo_img" src="images/register_logo.png"/></a>
	</div>
	<div class="container">
		<img class="login_facebook" src="images/complete_facebook.png"/>
		<p class="intro">배우러 가는길에서는 페이스북 인증을 통해서 맞춤형 선생님을 추천받으실 수 있습니다.</p>
		<a href="finish.do"><img class="complete" src="images/complete.png"/></a>
		<img class="copyright" src="images/copyright.png"/>
	</div>
	
</body>
</html>