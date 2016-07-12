<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Ǫ�� ĥ��</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/reset.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/base.css'/>" />
<!--[if lte IE 9]>
<link rel="stylesheet" type="text/css" href="css/main_ie.css" />
<![endif]-->


</head>

<body>

<header id="firstheader">
	<h1><a href="main.do"><img src="images/logo.gif" alt="Ǫ�� ĥ��" /></a></h1>
    
		<ul class="util">
			<li><a href="#">Home</a></li>
			<li><a href="#">About us</a></li>
			<li><a href="#">News</a></li>
			<li><a href="#">Contact</a></li>
		</ul>	
</header>
<div id="main_content">
	<h1>����� ã�� �п�,<br/>Ǫ�� ĥ�ǿ��� ���ִ�.</h1>
  <form name="sform" action="#" method="get" id="sform">
	  <fieldset>
			<legend class="skip">���հ˻�</legend>	
			<label for="sbox" class="skip">���� �˻��� �Է�</label><input type="search" id="sbox" class="tbox" placeholder="���� �˻��� �Է�" />
        <input type="image" class="sbtn" src="images/search.gif" alt="�˻�" />
    </fieldset>	
  </form>
</div>
<div id="content">
	<h1>�п� �׸�</h1>
    <h4>�پ��� �˻� �������� ���ϴ� �п��� ã�ƺ�����.</h4>
</div>
<div id="main_subject">
<div id="subject1"><a href='map.do'><img src="images/����1.png" alt="Ǫ�� ĥ��" /></a></div>
<div id="subject2"><a href="#"><img src="images/����1.png" alt="Ǫ�� ĥ��" /></a></div>
<div id="subject3"><a href="#"><img src="images/����1.png" alt="Ǫ�� ĥ��" /></a></div>
<div id="subject4"><a href="#"><img src="images/����1.png" alt="Ǫ�� ĥ��" /></a></div>
</div>
<hr />
<footer id="main_footer">
	<h3>
		(��)Ǫ�� ĥ��<br/>��ǥ�̻�:������<br/>�ְ� ����<br/>
		<small class="copy">Copyright &copy; 2016 Icox Education</small>
	</h3></footer>
</body>
</html>
