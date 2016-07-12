<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>마커 클러스터러에 클릭이벤트 추가하기</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/map2.css'/>" />
	
</head>

<body>
	<p style="height: 5%; width: 100%;">
		사용한 데이터를 보시려면 <em class="link"> <a href="eduJson.do"
			target="_blank">여기를 클릭하세요!</a>
		</em>
	</p>
	
	<div class="map_wrap">
		<div id="map"
			style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
			
		<div class="option">
			<div>
				<form onsubmit="searchPlaces(); return false;">
					<font color="#ffffff">학원검색 :</font> <input type="text" value="전체" id="keyword" size="15">
					<button type="submit">검색하기</button>
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