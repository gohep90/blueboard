<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");

	String userId = (String) session.getAttribute("userId");
	String userName = (String) session.getAttribute("userName");
	System.out.println("main : " + userName);
	if (userName != null && !userName.equals("")) {
		userName += " ��";
		//response.sendRedirect("HighLevelUI.html");
	} else {
		userName = "LOGIN";
	}
%>

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
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/teb.css'/>" />


<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript"
	src="<c:url value='/js/jquery.slidertron-1.1.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/academy.js'/>"></script>
<script>
	$(document)
			.ready(
					function() {
						//��(ul) onoff
						$('.jq_tabonoff>.jq_cont').children().css('display',
								'none');
						$('.jq_tabonoff>.jq_cont div:first-child').css(
								'display', 'block');
						$('.jq_tabonoff>.jq_tab li:first-child').addClass('on');
						$('.jq_tabonoff')
								.delegate(
										'.jq_tab>li',
										'click',
										function() {
											var index = $(this).parent()
													.children().index(this);
											$(this).siblings().removeClass();
											$(this).addClass('on');
											$(this).parent().next('.jq_cont')
													.children().hide()
													.eq(index).show();
										});
					});
</script>

<!-- div ���� �߰� �Լ� ���� 5������-->

<script type="text/javascript">
<!--
	function add_item() {
		// pre_set �� �ִ� ������ �о�ͼ� ó��..
		for (var i = 0; i < 5; i++) {
			var div = document.createElement('div');
			div.innerHTML = document.getElementById('pre_set').innerHTML;
			document.getElementById('field').appendChild(div);
		}
	}
	//div���� ���� -->
	function remove_item(obj) {
		// obj.parentNode �� �̿��Ͽ� ����
		document.getElementById('field').removeChild(obj.parentNode);
	}
</script>


</head>

<body onload="add_item();">
	<div class="logo">
		<a href="main.do"><img src="images/logo.png" /></a>

		<ul class="util">
			<li><a href="login.do"><%=userName%></a></li>
			<li><a href="mypage.do">MY PAGE</a></li>
			<li><a href="#">FAVORITE</a></li>
		</ul>
		<hr>
	</div>
	
	<c:choose>
	<c:when test="${fn:length(academy)>0}">	
	<c:forEach items="${academy}" var="row">
	
	<p id="lat" style="display: none">${row.lat}</p>
	<p id="lng" style="display: none">${row.lng}</p>
	
	<div id="main_content">
		<div class="academy_name">
			<u class="academy_p">${row.academyName}</u> <img id="interest"
				src="images/PLUS.png">
		</div>


		<div id="teb">
			<div class="jq_tabonoff comm_tab1">
				<ul class="jq_tab tab_menu">
					<li id="first"><a href="javascript:;" class="tit">��������</a>
						<p>Information</p></li>
					<li><a href="javascript:;" class="tit">��������</a>
						<p>Contents</p></li>
					<li><a href="javascript:;" class="tit">�������</a>
						<p>Place</p></li>
					<li><a href="javascript:;" class="tit">�����ı�</a>
						<p>Comment</p></li>
				</ul>
				<div class="jq_cont tab_cont">
					<!-- //��1 -->

					<div id="information" class="cont">
						<img id="Title2" src="images/SUBPAGE/TITLE1.png" width="270">
						<br>

						<div id="name">
							<div id="name_name">
								<h2>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</h2>
							</div>
							<div id="name_content">
								<h2>${row.teacherName}</h2>
							</div>
						</div>

						<div id="career">
							<div id="career_name">
								<h2>��&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;ó</h2>
							</div>
							<div id="career_content">
								<h2>${row.teacherTel}</h2>
							</div>
						</div>

						<div id="book">
							<div id="book_name">
								<h2>�� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</h2>
							</div>
							<div id="book_content">
								<h2>
									<!-- �� �Ѿ���б� �ǳ�����������а� ���ӱ���<br> �� HY Magazine ������ ������ �ڹ�<br>
									�� ������б� ���׸���������а� ���ӱ���<br> �� �������б� �����δ��п� ���� ����<br> ��
									�������б� ��Ȱ�������а� ����
									 -->
									 ${row.teacherCareer}
								</h2>
							</div>
						</div>

						<div id="etc">
							<div id="etc_name">
								<h2>�� �� �� ��</h2>
							</div>
							<div id="etc_content">
								<h2>${row.teacherIntro}</h2>
							</div>
						</div>
					</div>
					<!-- ��1// -->

					<!-- //��2 -->
					<div class="cont">
						<img id="Title1" src="images/SUBPAGE/TITLE2.png" width="240"
							style="margin-bottom: 20px">

						<div class="jq_tabonoff comm_tab2" style="margin-top: 0px">
							<ul class="jq_tab tab_menu">
								<li><a href="javascript:;" class="tit">Info</a></li>
								<li><a href="javascript:;" class="tit">Photo</a></li>
								<li><a href="javascript:;" class="tit">Video</a></li>
							</ul>
							<div class="jq_cont tab_cont">
								<!-- //��2-1 -->

								<div id="information" class="cont">
									<br> 
									<div id="period">
										<div id="period_name">
											<h2>�� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</h2>
										</div>
										<div id="period_content">
											<h2>${row.academyTerm}</h2>
										</div>
									</div>

									<div id="day">
										<div id="day_name">
											<h2>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��</h2>
										</div>
										<div id="day_content">
											<h2>${row.academyWeek}</h2>
										</div>
									</div>

									<div id="time">
										<div id="time_name">
											<h2>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��</h2>
										</div>
										<div id="time_content">
											<h2>${row.academyTime}</h2>
										</div>
									</div>

									<div id="money">
										<div id="money_name">
											<h2>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��</h2>
										</div>
										<div id="money_content">
											<h2>${row.academyPay}</h2>
										</div>
									</div>

									<div id="introduce">
										<div id="introduce_name">
											<h2>�� �� �� ��</h2>
										</div>
										<div id="introduce_content">
											<h2>${row.academyIntro}</h2>
										</div>
									</div>
									<!--Ŀ��ŧ��-->
									<div id="curriculum">
										<div id="curriculum_name">
											<h2>Ŀ �� ŧ ��</h2>
										</div>
										<!--div�� �� ���� �ִ°�-->
										<div id="pre_set"
											style="width: auto; height: auto; display: none;">
											<div id="cat">
												<div id="cat_name">
													<h3>9��8��(��)</h3>
												</div>
												<div id="cat_content">
													<h3>
														1����:����<br>2����:����
													</h3>
												</div>
											</div>

										</div>
										<!--div�� �� ���� �ִ°�-->
										<div id="curriculum_content">


											<!--���� div������ �ݿ��Ǵ°���-->
											<div id="field" style=""></div>
											<!--���� div������ �ݿ��Ǵ°���-->
										</div>
									</div>
									<!--Ŀ��ŧ��-->
									<div id="category">
										<div id="category_name">
											<h2>ī �� �� ��</h2>
										</div>
										<div id="category_content">
											<div id="large">��з�</div>
											<div id="small">�ߺз�</div>
										</div>
									</div>
								</div>

								<!-- ��2-1// -->

								<!-- //��2-2 -->
								<div class="cont">

									<div id="slider">
										<div class="indicator">
											<ul>
												<li class="active">1</li>
												<li>2</li>
												<li>3</li>
												<li>4</li>
												<li>5</li>
											</ul>
										</div>
										
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
														src="images/eximg.jpg" alt="" />
												</div>
											</div>
										</div>
									</div>
									<!-- ��2-2// -->
								</div>
								<!-- //��2-3 -->

								<div class="cont">
									<div id="class_video">
										<iframe id="video"
											src="https://www.youtube.com/embed/GSkRnMJ7WaE"
											frameborder="0" allowfullscreen></iframe>
									</div>
								</div>
								<!-- ��2-3// -->
							</div>
						</div>
						<!-- ��2// -->

						<!-- ��3 -->
					</div>
					<div class="cont">
						<img id="Title3" src="images/SUBPAGE/TITLE3.png" width="270">
						<div id="map"></div>
						<div id="address">
							<div id="address_name">
								<h2>�� �� �� ��</h2>
							</div>
							<div id="address_content">
								<h2>${row.academyAddress}</h2>
							</div>
						</div>
					</div>
					<!--��3 //-->

					<!--��4-->
					<div class="cont">��4</div>
					<!--��4//-->
				</div>
			</div>
		</div>
	</div>
	</c:forEach>
	</c:when>
	</c:choose>
	
	<!-- �ϴܹ� -->
	<div class="info_div">
		<div class="info_bottom">
			<div class="info_logo">��췯���±�</div>
			<div class="info-address">
				<p class="info_text">��ǥ : ������</p>
				<p class="info_text">�ּ� : ����� ������ �սʸ��� 222 �Ѿ���б� ��å���б� 704ȣ</p>
				<p class="info_text">
					<span>��ȭ : 02-234-5678 </span><span class="fax"> �ѽ� :
						02-554-9774</span>
				</p>
			</div>
			<div class="info-address">
				<p class="info_text">����� ��ȣ : 220-88-59156</p>
				<p class="info_text">���Ǹ��� : biz@station3.co.kr</p>
				<p class="info_text">2016/07/28 �� All rights reserved by BAEGA.</p>
			</div>
		</div>
	</div>


	<script type="text/javascript">
			$('#slider').slidertron({
				viewerSelector : '.viewer',
				reelSelector : '.viewer .reel',
				slidesSelector : '.viewer .reel .slide',
				advanceDelay : 3000,
				speed : 'slow',
				navPreviousSelector : '.previous-button',
				navNextSelector : '.next-button',
				indicatorSelector : '.indicator ul li',
				slideLinkSelector : '.link'
			});
		</script>
	<script type="text/javascript">
			$(function() {
				$("#selectmenu").selectmenu();
			})
		</script>
<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=7a6be21565c5c8e58c1ab67fb77914cf&libraries=clusterer"></script>

<script>
var lat=$('#lat').text();
var lng=$('#lng').text();
var academyName = $('.academy_p').text();

var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = { 
        center: new daum.maps.LatLng(lat, lng), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };

var map = new daum.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

var imageSrc = 'images/academyMarker.png', // ��Ŀ�̹����� �ּ��Դϴ�    
imageSize = new daum.maps.Size(30, 55), // ��Ŀ�̹����� ũ���Դϴ�
imageOption = {offset: new daum.maps.Point(15, 45)}; // ��Ŀ�̹����� �ɼ��Դϴ�. ��Ŀ�� ��ǥ�� ��ġ��ų �̹��� �ȿ����� ��ǥ�� �����մϴ�.
  
//��Ŀ�� �̹��������� ������ �ִ� ��Ŀ�̹����� �����մϴ�
var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption),
markerPosition = new daum.maps.LatLng(lat, lng); // ��Ŀ�� ǥ�õ� ��ġ�Դϴ�

//��Ŀ�� �����մϴ�
var marker = new daum.maps.Marker({
position: markerPosition, 
image: markerImage // ��Ŀ�̹��� ���� 
});

//��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
marker.setMap(map);  


// �Ʒ� �ڵ�� ���� ���� ��Ŀ�� �����ϴ� �ڵ��Դϴ�
// marker.setMap(null);    

// ���������쿡 ǥ��� �������� HTML ���ڿ��̳� document element�� �����մϴ�
var iwContent = '<div style="padding:5px; text-align:center;"><'+academyName+'><br><a href="http://map.daum.net/link/map/'+academyName+','+lat+','+lng+'" style="color:blue" target="_blank">ū��������</a> <a href="http://map.daum.net/link/to/'+academyName+','+lat+','+lng+'" style="color:blue" target="_blank">��ã��</a></div>'; 

// ���������츦 �����մϴ�
var infowindow = new daum.maps.InfoWindow({
    content : iwContent 
});
  
// ��Ŀ ���� ���������츦 ǥ���մϴ�. �ι�° �Ķ������ marker�� �־����� ������ ���� ���� ǥ�õ˴ϴ�
infowindow.open(map, marker); 



</script>


</body>
</html>
