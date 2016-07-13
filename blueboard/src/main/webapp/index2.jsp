<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>배우러 가는길 지도</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/map2.css'/>" />
	
</head>

<body>
	<div class="logo">
		<a href="main.do" ><img src="images/logo.png" style="width:55px; height:63px;" /></a>
	</div>
	<div style=" position: relative; width: 100%; height: 37px; min-height:37px;">
		<ul class="header" >
		  	<li><a class="active" href="#home">Home</a></li>
 	 	  	<li><a href="#news">News</a></li>
  		  	<li><a href="#contact">Contact</a></li>
  			<li><a href="#about">About</a></li>
		</ul>
	</div>
	
	<div class="map_wrap">
		<div id="map"
			style="width: 100%; height: 100%; overflow: hidden;"></div>
			
		<div class="option">
			<div>
				<form name="sform" action="#" method="get" id="sform">
					<input type="search" id="keyword" class="tbox" placeholder="무엇을 배우러 갈까요?" />
					<input type="image" class="sbtn" src="images/search.png" alt="검색" />
				</form>
			</div>
		</div>

		<div id="menu_wrap" class="bg_white">
			<ul id="placesList"></ul>
		</div>
		<div id="pagination"></div>
	</div>
	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=7a6be21565c5c8e58c1ab67fb77914cf&libraries=clusterer"></script>
	<script type="text/javascript" src="<c:url value='/js/map2.js'/>"></script>

</body>
</html>