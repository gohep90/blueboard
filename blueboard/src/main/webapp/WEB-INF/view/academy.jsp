<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");

	String userId = (String) session.getAttribute("userId");
	String userName = (String) session.getAttribute("userName");
	System.out.println("main : " + userName);
	if (userName != null && !userName.equals("")) {
		userName += " 님";
		//response.sendRedirect("HighLevelUI.html");
	} else {
		userName = "LOGIN";
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배우러 가는길 학원 홈페이지</title>

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
						//탭(ul) onoff
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

<!-- div 동적 추가 함수 지금 5개생성-->

<script type="text/javascript">

function add_item(){
    // pre_set 에 있는 내용을 읽어와서 처리..
  for( var i = 0; i<5 ; i++){
	  var div = document.createElement('div');
	  div.setAttribute('id','div'+i);
	  //  div.innerHTML = document.getElementById('pre_set').innerHTML;
	  var inner = '<div id="cat"><div id="cat_name"><h3 id="day'+i+'">9월8일(월)</h3></div><div id="cat_content"><h3 id="content'+i+'">원하는 것을 그려라!<br>머릿속에만 있던 디자인을 손으로 나타내보기</h3></div></div>';
	  div.innerHTML = inner;
	  document.getElementById('field').appendChild(div);
	  }
}
	
	//div동적 삭제 -->
	function remove_item(obj) {
		// obj.parentNode 를 이용하여 삭제
		document.getElementById('field').removeChild(obj.parentNode);
	}
</script>


</head>

<body onload="add_item();">
	<div class="logo">
			<a href="main.do"><img src="images/logo.png" /></a>

			<ul class="util">
				<li id="userName" style="display:none; cursor: pointer;"><%=userName%></li>
				<li id="login" ><a  href="login.do">LOGIN</a></li>
				<li id="logout" style="display:none; cursor: pointer;">LOGOUT</li>
				<li><a href="mypage.do">MY PAGE</a></li>
				<li><a href="#">FAVORITE</a></li>
			</ul>
			<hr>
		</div>
		
		<script type="text/javascript" src="<c:url value='/js/logout.js'/>"></script>
	
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
					<li id="first"><a href="javascript:;" class="tit">강사정보</a>
						<p>Information</p></li>
					<li><a href="javascript:;" class="tit">강의정보</a>
						<p>Contents</p></li>
					<li><a href="javascript:;" class="tit">강의장소</a>
						<p>Place</p></li>
					<li><a href="javascript:;" class="tit">수강후기</a>
						<p>Comment</p></li>
				</ul>
				<div class="jq_cont tab_cont">
					<!-- //탭1 -->

					<div id="information" class="cont">
						<img id="Title2" src="images/SUBPAGE/TITLE1.png" width="270">
						<br>

						<div id="name">
							<div id="name_name">
								<h2>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</h2>
							</div>
							<div id="name_content">
								<h2>${row.teacherName}</h2>
							</div>
						</div>

						<div id="career">
							<div id="career_name">
								<h2>연&nbsp;&nbsp;&nbsp;락&nbsp;&nbsp;&nbsp;처</h2>
							</div>
							<div id="career_content">
								<h2>${row.teacherTel}</h2>
							</div>
						</div>

						<div id="book">
							<div id="book_name">
								<h2>경 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;력</h2>
							</div>
							<div id="book_content">
								<h2>
									<!-- 現 한양대학교 실내건축디자인학과 겸임교수<br> 現 HY Magazine 마케팅 전략팀 자문<br>
									前 경희대학교 인테리어디자인학과 겸임교수<br> 前 연세대학교 디자인대학원 석사 졸업<br> 前
									연세대학교 생활디자인학과 졸업
									 -->
									 ${row.teacherCareer}
								</h2>
							</div>
						</div>

						<div id="etc">
							<div id="etc_name">
								<h2>강 사 소 개</h2>
							</div>
							<div id="etc_content">
								<h2>${row.teacherIntro}</h2>
							</div>
						</div>
					</div>
					<!-- 탭1// -->

					<!-- //탭2 -->
					<div class="cont">
						<img id="Title1" src="images/SUBPAGE/TITLE2.png" width="240"
							style="margin-bottom: 20px">

						<div class="jq_tabonoff comm_tab2" style="margin-top: 0px">
							<ul class="jq_tab tab_menu">
								<li><a href="javascript:;" class="tit"><b style="font-size:23px;">I</b>nfo</a></li>
								<li><a href="javascript:;" class="tit"><b style="font-size:23px;">P</b>hoto</a></li>
								<li><a href="javascript:;" class="tit"><b style="font-size:23px;">V</b>ideo</a></li>
							</ul>
							<div class="jq_cont tab_cont">
								<!-- //탭2-1 -->

								<div id="information" class="cont">
									<br> 
									<div id="period">
										<div id="period_name">
											<h2>기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;간</h2>
										</div>
										<div id="period_content">
											<h2>${row.academyTerm}</h2>
										</div>
									</div>

									<div id="day">
										<div id="day_name">
											<h2>요&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 일</h2>
										</div>
										<div id="day_content">
											<h2>${row.academyWeek}</h2>
										</div>
									</div>

									<div id="time">
										<div id="time_name">
											<h2>시&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 간</h2>
										</div>
										<div id="time_content">
											<h2>${row.academyTime}</h2>
										</div>
									</div>

									<div id="money">
										<div id="money_name">
											<h2>금&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 액</h2>
										</div>
										<div id="money_content">
											<h2>${row.academyPay}</h2>
										</div>
									</div>

									<div id="introduce">
										<div id="introduce_name">
											<h2>강 좌 소 개</h2>
										</div>
										<div id="introduce_content">
											<h2>${row.academyIntro}</h2>
										</div>
									</div>
									<!--커리큘럼-->
									<div id="curriculum">
										<div id="curriculum_name">
											<h2>커 리 큘 럼</h2>
										</div>
										<!--div에 들어갈 내용 넣는곳-->
										<div id="curriculum_content">

											<!--실제 div내용이 반영되는공간-->
											<div id="field" style=""></div>
											<!--실제 div내용이 반영되는공간-->
										</div>
									</div>
									<!--커리큘럼-->
									<div id="category">
										<div id="category_name">
											<h2>카 테 고 리</h2>
										</div>
										<div id="category_content">
											<div id="large">대분류</div>
											<div id="small">중분류</div>
										</div>
									</div>
								</div>

								<!-- 탭2-1// -->

								<!-- //탭2-2 -->
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
									<!-- 탭2-2// -->
								</div>
								<!-- //탭2-3 -->

								<div class="cont">
									<div id="class_video">
										<iframe id="video"
											src="https://www.youtube.com/embed/JeN3LH-GGUE"
											frameborder="0" allowfullscreen></iframe>
									</div>
								</div>
								<!-- 탭2-3// -->
							</div>
						</div>
						<!-- 탭2// -->

						<!-- 탭3 -->
					</div>
					<div class="cont">
						<img id="Title3" src="images/SUBPAGE/TITLE3.png" width="270">
						<div id="map"></div>
						<div id="address">
							<div id="address_name">
								<h2>상 세 주 소</h2>
							</div>
							<div id="address_content">
								<h2>${row.academyAddress}</h2>
							</div>
						</div>
					</div>
					<!--탭3 //-->

					<!--탭4-->
					<div class="cont">탭4</div>
					<!--탭4//-->
				</div>
			</div>
		</div>
	</div>
	</c:forEach>
	</c:when>
	</c:choose>
	
	<!-- 하단바 -->
	<div class="info_div">
		<div class="info_bottom">
			<div class="info_logo">배우러가는길</div>
			<div class="info-address">
				<p class="info_text">대표 : 장지웅</p>
				<p class="info_text">주소 : 서울시 성동구 왕십리로 222 한양대학교 정책대학교 704호</p>
				<p class="info_text">
					<span>전화 : 02-234-5678 </span><span class="fax"> 팩스 :
						02-554-9774</span>
				</p>
			</div>
			<div class="info-address">
				<p class="info_text">사업자 번호 : 220-88-59156</p>
				<p class="info_text">문의메일 : biz@station3.co.kr</p>
				<p class="info_text">2016/07/28 ® All rights reserved by BAEGA.</p>
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

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(lat, lng), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var imageSrc = 'images/academyMarker.png', // 마커이미지의 주소입니다    
imageSize = new daum.maps.Size(30, 55), // 마커이미지의 크기입니다
imageOption = {offset: new daum.maps.Point(15, 45)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
  
//마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption),
markerPosition = new daum.maps.LatLng(lat, lng); // 마커가 표시될 위치입니다

//마커를 생성합니다
var marker = new daum.maps.Marker({
position: markerPosition, 
image: markerImage // 마커이미지 설정 
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);  


// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    

// 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
var iwContent = '<div style="padding:5px; text-align:center;"><'+academyName+'><br><a href="http://map.daum.net/link/map/'+academyName+','+lat+','+lng+'" style="color:blue" target="_blank">큰지도보기</a> <a href="http://map.daum.net/link/to/'+academyName+','+lat+','+lng+'" style="color:blue" target="_blank">길찾기</a></div>'; 

// 인포윈도우를 생성합니다
var infowindow = new daum.maps.InfoWindow({
    content : iwContent 
});
  
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 



</script>


</body>
</html>
