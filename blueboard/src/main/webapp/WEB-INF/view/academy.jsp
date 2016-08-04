<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��췯 ���±� �п� Ȩ������</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/academy.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/reset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/teb.css'/>"/>


<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript"
	src="<c:url value='/js/jquery.slidertron-1.1.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/academy.js'/>"></script>
</head>


<body>
	<header id="firstheader">
	<h1>
		<a href="main.do"><img src="images/MAINPAGE/minimal_LOGO.png"
			alt="Ǫ�� ĥ��" /></a>
	</h1>
	<hr style="border: dotted 1px white;">
	<ul class="util2">
		<li><a href="#">JOIN</a></li>
	</ul>
	<ul class="util">
		<li><a href="#">LOGIN</a></li>
		<li><a href="#">SITEMAP</a></li>
		<li><a href="#">ABOUT US</a></li>
	</ul>
	<nav id="gnb">
	<h1 class="skip">���θ޴�</h1>
	<ul class="gnblist">
		<li class="m m2"><a class="mm" href="#">����/�ʵ�</a>
			<ul class="gnblist2">
				<li onclick="test('����')">�ʵ� <!--<ul>
                    	<li><a href="#">����</a></li>
                        <li><a href="#">����</a></li>
                        <li><a href="#">����</a></li>
                        <li><a href="#">��ȸ/����</a></li>
                        <li><a href="#">��2�ܱ���</a></li>
                        <li><a href="#">���</a></li>
                        <li><a href="#">��ü��</a></li>
                    </ul>-->
				</li>
				<li>���米�� <!--<ul>
                    	<li><a href="#">����</a></li>
                        <li><a href="#">����</a></li>
                        <li><a href="#">����</a></li>
                        <li><a href="#">��ȸ/����</a></li>
                        <li><a href="#">��2�ܱ���</a></li>
                        <li><a href="#">���</a></li>
                        <li><a href="#">��ü��</a></li>
                    </ul>-->
				</li>
				<li>���� <!-- <ul>
                    	<li><a href="#">����</a></li>
                        <li><a href="#">����</a></li>
                        <li><a href="#">����</a></li>
                        <li><a href="#">��ȸ/����</a></li>
                        <li><a href="#">��2�ܱ���</a></li>
                        <li><a href="#">���</a></li>
                        <li><a href="#">��ü��</a></li>
                    </ul>-->
				</li>
			</ul></li>

		<li class="m m2"><a class="mm" href="#">����/�Խ�</a>
			<ul class="gnblist2">
				<li>���</li>
				<li>���</li>
				<li>�ߵ�</li>
			</ul></li>
		<li class="m m3"><a class="mm" href="#">�ܱ���</a>
			<ul class="gnblist2">
				<li>����</li>
				<li>�߱���</li>
				<li>�Ϻ���</li>
				<li>�����ξ�</li>
				<li>��Ÿ���</li>
			</ul></li>
		<li class="m m4"><a class="mm" href="#">������</a>
			<ul class="gnblist2">
				<li>��Ʈ�Ͻ�</li>
				<li>�䰡</li>
				<li>�ʶ��׽�</li>
				<li>�±ǵ�</li>
				<li>����</li>
				<li>��/����</li>
				<li>������</li>
				<li>��Ÿ</li>
			</ul></li>
		<li class="m m5"><a class="mm" href="#">����/�̼�</a>
			<ul class="gnblist2">
				<li>����</li>
				<li>�۰�/�ۻ�</li>
				<li>�Ǳ�</li>
				<li>�̼�</li>
			</ul></li>
		<li class="m m6"><a class="mm" href="#">������Ȱ</a>
			<ul class="gnblist2">
				<li>DIY����</li>
				<li>���װ���</li>
				<li>�Ǽ��縮</li>
				<li>�丮/����ŷ</li>
				<li>��Ÿ</li>
			</ul></li>
		<li class="m m7"><a class="mm" href="#">��������</a>
			<ul class="gnblist2">
				<li>����������</li>
				<li>��ǻ��</li>
				<li>CPA</li>
				<li>�����߰���</li>
				<li>��Ÿ</li>
				<li>���</li>
			</ul></li>
		<div id="item">
			<a class="mm" href="#">���ɵ��</a>
		</div>
	</ul>

	</nav> </header>

	<div id="main_content">
		<img id="interest" src="images/PLUS.png" / width="230">
		<div id="academy_name">�п��̸�</div>
		<img src="images/BAR.png" alt="��" id="bar" />

		<div id=teb>
			<div id="css_tabs">
				<!-- ���� ��ư -->
				<input id="tab1" type="radio" name="tab" checked="checked" /> <input
					id="tab2" type="radio" name="tab" /> <input id="tab3" type="radio"
					name="tab" /> <input id="tab4" type="radio" name="tab" />
				<!-- �� : ȭ�鿡 ǥ�õǴ� �� ���� -->
				<label for="tab1"><h1>��������</h1>
					<p>Information</p></label> <label for="tab2"><h1>���ǳ���</h1>
					<p>Contents</p></label> <label for="tab3"><h1>�������</h1>
					<p>Place</p></label> <label for="tab4"><h1>�����ı�</h1>
					<p>Comment</p></label>

				<!-- �� ���� : �� ������ �������� �� ǥ�õǴ� ���� -->
				<div class="tab1_content">
					<div id="slider">

						<div class="viewer">
							<div class="reel">
								<div class="slide">
									<a class="link" href="#">Full story ...</a> <img
										src="images/eximg.jpg" alt="" />
								</div>
								<div class="slide">
									<a class="link" href="#">Full story ...</a> <img
										src="images/���������̹���.png" alt="" />
								</div>
								<div class="slide">
									<a class="link" href="#">Full story ...</a> <img
										src="images/���������̹���.png" alt="" />
								</div>
								<div class="slide">
									<a class="link" href="#">Full story ...</a> <img
										src="images/���������̹���.png" alt="" />
								</div>
								<div class="slide">
									<a class="link" href="#">Full story ...</a> <img
										src="images/���������̹���.png" alt="" />
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
						<script type="text/javascript">
	$(function(){
		$("#selectmenu").selectmenu();
	})
	</script>
					</div>

				</div>
				<div class="tab2_content">Tab2 ����</div>
				<div class="tab3_content">Tab3 ����</div>
				<div class="tab4_content">Tab4 ����</div>
			</div>

		</div>
	</div>
	</div>
	<blockquote>&nbsp;</blockquote>
</body>
</html>
