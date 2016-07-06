<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<title>지도 생성하기</title>

</head>
<body>
	<!-- 지도를 표시할 div 입니다 -->
	<div id="map" align="center" style="width: 800px; height: 600px;"></div>

	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=7a6be21565c5c8e58c1ab67fb77914cf"></script>

	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(37.496613, 126.956858), // 지도의 중심좌표
			level : 10
		// 지도의 확대 레벨
		};
		
		
		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new daum.maps.Map(mapContainer, mapOption);

		
		function makeMarker(address,name,id) {
			var add = encodeURIComponent(address);
					$.ajax({
						type : "GET",
						url : "http://maps.googleapis.com/maps/api/geocode/json?address="
								+ add + "&sensor=false",
						dataType : "json",
						async : false,
						error : function(e) {
						//	alert("에러났소!");
						//	alert(e);
						},
						success : function(data) {
							//alert(data);
							var sum = 0;
							$.each(data, function(key) {
								var list = data[key];
								for (var i = 0; i < list.length; i++) {
									var lat = list[i].geometry.location.lat;
									var lng = list[i].geometry.location.lng;
									//alert('위도 : ' + lat + ' , 경도 : ' + lng+"이름 : "+name);
									
							//		updateEdu(id,lat,lng);
/*
									// 마커가 표시될 위치입니다 
									var markerPosition = new daum.maps.LatLng(lat, lng);
									// 마커를 생성합니다
									var marker = new daum.maps.Marker({
										// 마커가 지도 위에 표시되도록 설정합니다
										map : map,
										position : markerPosition
									});
									
									// 마커에 표시할 인포윈도우를 생성합니다 
									var title ='<div>'+name+'</div>';
								    var infowindow = new daum.maps.InfoWindow({
								        content: title // 인포윈도우에 표시할 내용
								    });
								    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
								    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
								    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
								    daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
								    daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
								
*/
								}
							});
						}
					});
		}
		
		
		function updateEdu(seq,lat,lng) {
			$.ajax({
				type : "POST",
				url : "updateEdu.do",
				data: {
					seq:seq,
					lat:lat,
					lng:lng
				},
				dataType : "text",
				async : false,
				error : function(e) {
				//	alert("에러났소!");
				//	alert(e);
				},
				success : function(data) {
					
					
				}
			});
		}
		
		
		
		
		
		
		
		
		
		
		
		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}
		

		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);
	</script>

	<c:choose>
		<c:when test="${fn:length(edu) > 0}">
			<c:forEach items="${edu}" var="row">
				<script type="text/javascript">
					makeMarker("${row.address}","${row.name}","${row.id}");
				</script>
			</c:forEach>
		</c:when>
	</c:choose>

</body>
</html>