<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��췯 ���±�</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/main.js'/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/main.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />

</head>

<body>
	<div class="main_content">
		<div class="logo">
			<a href="main.do"><img src="images/logo.png" /></a>

			<ul class="util">
				<li><a href="login.do">LOGIN</a></li>
				<li><a href="mypage.do">MY PAGE</a></li>
				<li><a href="#">FAVORITE</a></li>
			</ul>
			<hr>
		</div>

		<div class="logo_content">
			<div class="content">
				<img class="content_logo" src="images/MAINPAGE/LOGO(Main)_Wh.png" />
				<img class="content_text" src="images/MAINPAGE/text.png"/>
			</div>
			<div class="content_search">
				<form name="sform" action="#" method="get" id="sform">
					<input type="search" id="keyword" class="tbox" placeholder="������ ��췯 �����?" />
					<input type="image" class="sbtn" src="images/search2.png" alt="�˻�" />
				</form>
			</div>
		</div>

	</div>
	<div class="category_div">
		<a href="map.do"><img class="category_img" src="images/MAINPAGE/sport.png" /></a>
		<a href="map.do"><img class="category_img" src="images/MAINPAGE/language.png" /></a>
		<a href="map.do"><img class="category_img" src="images/MAINPAGE/favorite.png" /> </a>
		<a href="map.do"><img class="category_img" src="images/MAINPAGE/music.png" /> </a>
		<a href="map.do"><img class="category_img" src="images/MAINPAGE/job.png" /></a>
	</div>

	<div class="info_div">
		<div class="info_bottom">
			<div class="info_logo">��췯���±�</div>
			<div class="info-address">
				<p class="info_text">��ǥ : ������</p>
				<p class="info_text">�ּ� : ����� ������ �սʸ��� 222 �Ѿ���б� ��å���б� 704ȣ</p>
				<p class="info_text"><span>��ȭ : 02-234-5678 </span><span class="fax"> �ѽ� :
						02-554-9774</span></p>
			</div>
			<div class="info-address">
				<p class="info_text">����� ��ȣ : 220-88-59156</p>
				<p class="info_text">���Ǹ��� : biz@station3.co.kr</p>
				<p class="info_text">2016/07/28 �� All rights reserved by BAEGA.</p>
			</div>
		</div>
	</div>

</body>
</html>
