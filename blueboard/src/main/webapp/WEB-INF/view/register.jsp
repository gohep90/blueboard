<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��췯 ���±� ȸ������</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/register.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />


</head>
<body>
	<div class="logo">
		<img src="images/register_logo.png">
	</div>
	<div class="container">
		<form action="login.do" method="post">
			<textarea class="tos">�̿���</textarea>
			<div class="tos_form"><label class="tos_text" for="ch1">��� �̿� ����� Ȯ���Ͽ�����, �̿� �����մϴ�.</label><input id="ch1" class="ch" type="checkbox"/></div>
			<textarea class="tos">�������� �̿� ����</textarea>
			<div class="tos_form"><label class="tos_text" for="ch2">��� �̿� ���� ������ Ȯ���Ͽ�����, �̿� �����մϴ�.</label><input id="ch2" class="ch" type="checkbox"/></div>
		
			<img class="next" src="images/next.png">
		</form>
	</div>
</body>
</html>