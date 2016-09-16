<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");

	String userId=(String)session.getAttribute("userId");
	String userName=(String)session.getAttribute("userName");
	System.out.println("main : "+userName);
	if(userName!=null && !userName.equals("")){
	userName+=" 님";
	//response.sendRedirect("HighLevelUI.html");
	}else{
		userName="LOGIN";
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
$(document).ready (function () {
	//탭(ul) onoff
	$('.jq_tabonoff>.jq_cont').children().css('display', 'none');
	$('.jq_tabonoff>.jq_cont div:first-child').css('display', 'block');
	$('.jq_tabonoff>.jq_tab li:first-child').addClass('on');
	$('.jq_tabonoff').delegate('.jq_tab>li', 'click', function() {
		var index = $(this).parent().children().index(this);
		$(this).siblings().removeClass();
		$(this).addClass('on');
		$(this).parent().next('.jq_cont').children().hide().eq(index).show();
	});
});
</script>

<!-- div 동적 추가 함수 지금 5개생성-->

<script type="text/javascript">
<!--
    function add_item(){
        // pre_set 에 있는 내용을 읽어와서 처리..
		for( var i = 0; i<5 ; i++)
		{
        var div = document.createElement('div');
        div.innerHTML = document.getElementById('pre_set').innerHTML;
        document.getElementById('field').appendChild(div);
		}
    }
 //div동적 삭제 -->
    function remove_item(obj){
        // obj.parentNode 를 이용하여 삭제
        document.getElementById('field').removeChild(obj.parentNode);
    }

</script>


</head>

<body onload="add_item();">
	<div class="logo">
		<a href="main.do"><img src="images/logo.png"/></a>

		<ul class="util">
			<li><a href="login.do"><%=userName%></a></li>
			<li><a href="mypage.do">MY PAGE</a></li>
			<li><a href="#">FAVORITE</a></li>
		</ul>
		<hr>
	</div>

	<div id="main_content">
		<img id="interest" src="images/PLUS.png" / width="230">
		<div id="academy_name">학원이름</div>
		<img src="images/BAR.png" alt="바" id="bar" />


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
						<img id="Title2" src="images/SUBPAGE/TITLE1.png" width="320">
						<br> <br> <br>

						<div id="name">
							<div id="name_name">
								<h2>이 름</h2>
							</div>
							<div id="name_content">
								<h2>권민혁</h2>
							</div>
						</div>

						<div id="career">
							<div id="career_name">
								<h2>연 락 처</h2>
							</div>
							<div id="career_content">
								<h2>창경초</h2>
								<br>
								<h2>창경초</h2>
								<br>
								<h2>창경초</h2>
								<br>
							</div>
						</div>

						<div id="book">
							<div id="book_name">
								<h2>경 력</h2>
							</div>
							<div id="book_content">
								<h2>책</h2>
								<br>
								<h2>책</h2>
								<br>
								<h2>책</h2>
								<br>
							</div>
						</div>

						<div id="etc">
							<div id="etc_name">
								<h2>강 사 소 개</h2>
							</div>
							<div id="etc_content">
								<h2>사이드</h2>
								<br>
								<h2>사이드</h2>
								<br>
								<h2>사이드</h2>
								<br>
								<h2>사이드</h2>
								<br>
								<h2>사이드</h2>
								<br>
								<h2>사이드</h2>
								<br>
							</div>
						</div>
					</div>
					<!-- 탭1// -->

					<!-- //탭2 -->
					<div class="cont">
						<img id="Title1" src="images/SUBPAGE/TITLE2.png" width="290"
							style="margin-bottom: 20px">

						<div class="jq_tabonoff comm_tab2" style="margin-top: 0px">
							<ul class="jq_tab tab_menu">
								<li><a href="javascript:;" class="tit">Info</a></li>
								<li><a href="javascript:;" class="tit">Photo</a></li>
								<li><a href="javascript:;" class="tit">Video</a></li>
							</ul>
							<div class="jq_cont tab_cont">
								<!-- //탭2-1 -->

								<div id="information" class="cont">

									<br> <br> <br>

									<div id="period">
										<div id="period_name">
											<h2>기 간</h2>
										</div>
										<div id="period_content">
											<h2>1주일 클래스</h2>
										</div>
									</div>

									<div id="day">
										<div id="day_name">
											<h2>요 일</h2>
										</div>
										<div id="day_content">
											<h2>월,수,금</h2>
										</div>
									</div>

									<div id="time">
										<div id="time_name">
											<h2>시 간</h2>
										</div>
										<div id="time_content">
											<h2>19:00 - 20:30</h2>
										</div>
									</div>

									<div id="money">
										<div id="money_name">
											<h2>금 액</h2>
										</div>
										<div id="money_content">
											<h2>200,000</h2>
										</div>
									</div>

									<div id="introduce">
										<div id="introduce_name">
											<h2>강 좌 소 개</h2>
										</div>
										<div id="introduce_content">
											<h2>19:00 - 20:30</h2>
										</div>
									</div>
									<!--커리큘럼-->
									<div id="curriculum">
										<div id="curriculum_name">
											<h2>커 리 큘 럼</h2>
										</div>
										<!--div에 들어갈 내용 넣는곳-->
										<div id="pre_set"
											style="width: auto; height: auto; display: none;">
											<div id="cat">
												<div id="cat_name">
													<h3>9월8일(월)</h3>
												</div>
												<div id="cat_content">
													<h3>
														1교시:수학<br>2교시:물리
													</h3>
												</div>
											</div>

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
														src="images/지도예시이미지.png" alt="" />
												</div>
												<div class="slide">
													<a class="link" href="#">Full story ...</a> <img
														src="images/sq_01.png" alt="" />
												</div>
												<div class="slide">
													<a class="link" href="#">Full story ...</a> <img
														src="images/지도예시이미지.png" alt="" />
												</div>
												<div class="slide">
													<a class="link" href="#">Full story ...</a> <img
														src="images/지도예시이미지.png" alt="" />
												</div>
												<div class="slide">
													<a class="link" href="#">Full story ...</a> <img
														src="images/지도예시이미지.png" alt="" />
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
											src="https://www.youtube.com/embed/GSkRnMJ7WaE"
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
						<img id="Title3" src="images/SUBPAGE/TITLE3.png" width="320">
						<div id="place">
							<img src="images/지도예시이미지.png" alt=""
								style="border: 1px solid black;" />

						</div>
						<div id="address">
							<div id="address_name">
								<h2>상 세 주 소</h2>
							</div>
							<div id="address_content">
								<h2>서울시 성동구 왕리</h2>
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

	<blockquote>&nbsp;</blockquote>
</body>
</html>
