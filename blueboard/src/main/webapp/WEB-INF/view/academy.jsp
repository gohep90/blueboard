<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�п� Ȩ������</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/academy.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/reset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />


<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript"
	src="<c:url value='/js/jquery.slidertron-1.1.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/main.js'/>"></script>


</head>

<body>
	<header id="firstheader">
	<h1>
		<a href="main.do"><img src="images/logo.gif" alt="Ǫ�� ĥ��" /></a>
	</h1>
	<nav id="gnb">
	<h1 class="skip">���θ޴�</h1>
	<ul class="gnblist">
		<li class="m m1"><a class="mm" href="#">������</a>
			<ul class="gnblist2">
				<li><a href="#">����</a>
					<ul>
						<li><a href="#">����</a></li>
						<li><a href="#">����</a></li>
						<li><a href="#">����</a></li>
						<li><a href="#">��ȸ/����</a></li>
						<li><a href="#">��2�ܱ���</a></li>
						<li><a href="#">���</a></li>
						<li><a href="#">��ü��</a></li>
					</ul></li>
				<li><a href="#">�ߵ��</a>
					<ul>
						<li><a href="#">����</a></li>
						<li><a href="#">����</a></li>
						<li><a href="#">����</a></li>
						<li><a href="#">��ȸ/����</a></li>
						<li><a href="#">��2�ܱ���</a></li>
						<li><a href="#">���</a></li>
						<li><a href="#">��ü��</a></li>
					</ul></li>
				<li><a href="#">�ʵ��</a>
					<ul>
						<li><a href="#">����</a></li>
						<li><a href="#">����</a></li>
						<li><a href="#">����</a></li>
						<li><a href="#">��ȸ/����</a></li>
						<li><a href="#">��2�ܱ���</a></li>
						<li><a href="#">���</a></li>
						<li><a href="#">��ü��</a></li>
					</ul></li>
				<li><a href="#">���Ʊ���</a></li>
			</ul></li>

		<li class="m m2"><a class="mm" href="#">�ܱ���</a>
			<ul class="gnblist2">
				<li><a href="#">����</a>
					<ul>
						<li><a href="#">�ڰ���</a></li>
						<li><a href="#">ȸȭ</a></li>
					</ul></li>
				<li><a href="#">�߱���</a><
					<ul>
						<li><a href="#">�ڰ���</a></li>
						<li><a href="#">ȸȭ</a></li>
					</ul></li>
				<li><a href="#">�Ϻ���</a>
					<ul>
						<li><a href="#">�ڰ���</a></li>
						<li><a href="#">ȸȭ</a></li>
					</ul></li>
				<li><a href="#">�����ξ�</a>
					<ul>
						<li><a href="#">�ڰ���</a></li>
						<li><a href="#">ȸȭ</a></li>
					</ul></li>
				<li><a href="#">��Ÿ���</a></li>
			</ul></li>
		<li class="m m3"><a class="mm" href="#">�</a>
			<ul class="gnblist2">
				<li><a href="#">�ǳ��</a>
					<ul>
						<li><a href="#">��Ʈ�Ͻ�</a></li>
						<li><a href="#">ũ�ν���</a></li>
						<li><a href="#">�䰡</a></li>
						<li><a href="#">�ʶ��׽�</a></li>
						<li><a href="#">����</a></li>
						<li><a href="#">��Ÿ</a></li>
					</ul></li>
				<li><a href="#">�ǿܿ</a></li>
				<li><a href="#">���� ������</a></li>
			</ul></li>
		<li class="m m4"><a class="mm" href="#">����</a>
			<ul>
				<li><a href="#">����</a></li>
				<li><a href="#">�Ǳ�</a></li>
			</ul></li>
		<li class="m m5"><a class="mm" href="#">�̼�/����</a>
			<ul class="gnblist2">
				<li><a href="#">�̼�</a></li>
				<li><a href="#">����</a>
					<ul>
						<li><a href="#">���� ����</a></li>
						<li><a href="#">�׼����� ����</a></li>
					</ul></li>
			</ul></li>
	</ul>
	</nav> </header>

	<div id="main_content">

		<div id="academy_info">
			<h1>�п�����</h1>

		</div>
		<div id="slider">
			<div class="viewer">
				<div class="reel">
					<div class="slide">
						<a class="link" href="#">Full story ...</a> <img
							src="images/academy1.jpg" alt="" />
					</div>
					<div class="slide">
						<a class="link" href="#">Full story ...</a> <img
							src="images/academy2.jpg" alt="" />
					</div>
					<div class="slide">
						<a class="link" href="#">Full story ...</a> <img
							src="images/academy3.jpg" alt="" />
					</div>
					<div class="slide">
						<a class="link" href="#">Full story ...</a> <img
							src="images/academy4.jpg" alt="" />
					</div>
					<div class="slide">
						<a class="link" href="#">Full story ...</a> <img
							src="images/new_book1.jpg" alt="" />
					</div>
				</div>
			</div>
			<div class="indicator">
				<ul>
					<li class="active">1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
				</ul>
			</div>

		</div>
		<script type="text/javascript">
		$('#slider').slidertron({
			viewerSelector: '.viewer',
			reelSelector: '.viewer .reel',
			slidesSelector: '.viewer .reel .slide',
			advanceDelay: 3000,
			speed: 'slow',
			navPreviousSelector: '.previous-button',
			navNextSelector: '.next-button',
			indicatorSelector: '.indicator ul li',
			slideLinkSelector: '.link'
		});
	</script>
		<div id="class_video">
			<div id="select">
				<select id="selectmenu">
					<option value="0" selected="selected">ù��°�ɼ�</option>
					<option value="1">�ι�°�ɼ�</option>
					<option value="2">����°�ɼ�</option>
				</select>
			</div>
			<div id="video">
					<video src="video/column.mp4" width="480" height="332" controls>
					</video>
			</div>
		</div>
		<div id="class_info">��������</div>
	</div>

</body>
</html>
