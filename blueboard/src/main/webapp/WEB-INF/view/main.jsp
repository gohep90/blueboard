<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��췯 ���±�</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/main.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/reset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />
<!--[if lte IE 9]>
<link rel="stylesheet" type="text/css" href="css/main_ie.css" />
<![endif]-->

<script type="text/javascript" src="<c:url value='/js/main.js'/>"></script>

</head>

<body>
	<header id="firstheader">
	<h1>
		<a href="main.do"><img src="images/logo.png"  alt="Ǫ�� ĥ��" /></a>
	</h1>
	<ul class="util2">
		<li><a href="#">JOIN</a></li>
	</ul>
	<ul class="util">
		<li><a href="#">LOGIN</a></li>
		<li><a href="#">SITEMAP</a></li>
		<li><a href="#">ABOUT US</a></li>
	</ul>

	</header>
	<div id="main_content">

		<img src="images/main image.png" alt="Ǫ�� ĥ��" />


	</div>
	<div id="content">
		<h1>�׷� ����� ���� 69,000���� ������ ����,����� ��ٸ��� �ֽ��ϴ�</h1>

		<form name="sform" action="#" method="get" id="sform">
		<fieldset>
			<legend class="skip">���հ˻�</legend>	
			<label for="sbox" class="skip">���� �˻��� �Է�</label><input type="search" id="sbox" class="tbox" placeholder="���� �˻��� �Է�" />
        	<input type="image" class="sbtn" src="images/search.png" alt="�˻�" />
        </fieldset>
		</form>
	</div>
	<div id="main_subject">
		<div id="subject1">
			<a href='map.do'><img src="images/sq_01.png" alt="������ �����?" /></a>
		</div>
		<div id="subject2" onclick="post_to_url('map.do',{'highDivision':'����/�ʵ�'})">
			<img src="images/sq_02.png" alt="����/�ʵ�" />
		</div>
		<div id="subject3" onclick="post_to_url('map.do',{'highDivision':'����/�Խ�'})">
			<img src="images/sq_03.png" alt="����/�Խ�" />
		</div>
		<div id="subject4" onclick="post_to_url('map.do',{'highDivision':'������'})">
			<img src="images/sq_04.png" alt="������/��" />
		</div>
		<div id="subject5" onclick="post_to_url('map.do',{'highDivision':'����/�̼�'})">
			<img src="images/sq_05.png" alt="����/�̼�" />
		</div>
		<div id="subject6" onclick="post_to_url('map.do',{'highDivision':'������Ȱ'})">
			<img src="images/sq_06.png" alt="������Ȱ" />
		</div>
		<div id="subject7" onclick="post_to_url('map.do',{'highDivision':'�ܱ���'})">
			<img src="images/sq_07.png" alt="�ܱ���" />
		</div>
		<div id="subject8" onclick="post_to_url('map.do',{'highDivision':'��������'})">
			<img src="images/sq_08.png" alt="��������" />
		</div>
		<div id="subject9" >
			<img src="images/sq_09.png" alt="�����׸� �ٷΰ���" />
		</div>
	</div>
	<hr />
	<footer id="main_footer">
	<h3>
		(��)Ǫ�� ĥ��<br />��ǥ�̻�:������<br />�ְ� ����<br /> <small class="copy">Copyright
			&copy; 2016 Icox Education</small>
	</h3>
	</footer>
</body>
</html>
