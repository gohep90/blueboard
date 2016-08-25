<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>배우러 가는길</title>
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
	
<div id="main_content">
<header id="firstheader">
	<h1><a href="map.do"><img src="images/MAINPAGE/minimal_LOGO.png" alt="푸른 칠판" /></a></h1>
  <hr class="one">
  <ul class="util">
	<li><a href="login.do">LOGIN</a></li>
	<li><a href="#">SITEMAP</a></li>
	<li><a href="#">ABOUT US</a></li>
  </ul>	
   
</header>
<img src="images/MAINPAGE/LOGO(Main)_Wh.png" witdh="350px" height="360px"id="main_logo"alt="배우러가는길" style="margin-left: auto; margin-right: auto; margin-top:100px; display: block;"/>
<img src="images/MAINPAGE/text.png" id="main_text"width="600px"alt="당신을 위한 69,000개의 교육이 여기, 당신을 기다리고 있습니다" style="margin-left: auto; margin-right: auto; margin-top:100px; display: block;"/>
<div id="search">
<form name="sform" action="#" method="get" id="sform">
	  <fieldset>
		<input type="search" id="sbox" class="tbox" placeholder="통합 검색어 입력" />
        <input type="image" class="sbtn" src="images/MAINPAGE/SEARCH_BUTTON(Main)_Wh&Ye.png" alt="검색" />
    </fieldset>	
  </form>
</div>
</div>
<div id="content">	
  
  
    
</div>
<!--<div id="main_subject">
<div id="subject1"><a href='지도홈페이지.html'><img src="images/sq_01.png" alt="푸른 칠판" /></a></div>
<div id="subject2"></div>
<div id="subject3"><a href="#"><img src="images/sq_03.png" alt="푸른 칠판" /></a></div>
<div id="subject4"><a href="#"><img src="images/sq_04.png" alt="푸른 칠판" /></a></div>
<div id="subject5"><a href='지도홈페이지.html'><img src="images/sq_05.png" alt="푸른 칠판" /></a></div>
<div id="subject6"><a href='지도홈페이지.html'><img src="images/sq_06.png" alt="푸른 칠판" /></a></div>
<div id="subject7"><a href='지도홈페이지.html'><img src="images/sq_07.png" alt="푸른 칠판" /></a></div>
<div id="subject8"><a href='지도홈페이지.html'><img src="images/sq_08.png" alt="푸른 칠판" /></a></div>
<div id="subject9"><a href='지도홈페이지.html'><img src="images/sq_09.png" alt="푸른 칠판" /></a></div>
</div>-->
<footer id="main_footer">
  <h3>(주)푸른 칠판<br/>대표이사:장지웅<br/>최고가 되자<br/>
		<small class="copy">Copyright &copy; 2016 Icox Education</small>
	</h3></footer>

</body>
</html>