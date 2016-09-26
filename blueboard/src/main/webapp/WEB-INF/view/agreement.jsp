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
<script type="text/javascript" src="<c:url value='/js/agreement.js'/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/agreement.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />


</head>
<body>
	<div class="logo">
		<a href="main.do"><img class="logo_img" src="images/register_logo.png"/></a>
	</div>
	<div class="container">
		<textarea class="tos" readonly>이용약관</textarea>
		<div class="tos_form"><label class="tos_text" for="ch1">상기 이용 약관을 확인하였으며, 이에 동의합니다.</label><input id="ch1" class="ch" type="checkbox"/></div>
		<textarea class="tos" readonly>개인정보 이용 동의</textarea>
		<div class="tos_form"><label class="tos_text" for="ch2">상기 이용 동의 내용을 확인하였으며, 이에 동의합니다.</label><input id="ch2" class="ch" type="checkbox"/></div>
		
		<input type="image" class="next" src="images/next.png">
	</div>
</body>
</html>