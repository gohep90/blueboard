<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� Ȩ������</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/map.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/reset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript"
	src="<c:url value='/js/jquery.slidertron-1.1.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/main.js'/>"></script>


<style>
html, body {
	width: 100%;
	height: 100%;
	overflow: hidden;
}


.area {
    position: absolute;
    background: #fff;
    border: 1px solid #888;
    border-radius: 3px;
    font-size: 12px;
    top: -5px;
    left: 15px;
    padding:2px;
}


.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '����', sans-serif;
	font-size: 15px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	margin: 5px;
	padding: 5px;
	overflow-y: auto;
	background: #EAEAEA;
	z-index: 1;
	font-family: 'Malgun Gothic', dotum, '����', sans-serif;
	font-size: 15px;
	border-radius: 10px;
	position: absolute;
	width: 450px;
	height: 100%;
	right: 0px;
	top: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}


<!-- placesList START -->
#placesList li {
	list-style: none;
}

.item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 120px;
	min-width: 350px;
}

.item span {
	display: block;
	margin-top: 4px;
}

.item h5,.item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.item .info {
	padding: 10px 0 10px 55px;
}

.info .name {
	font-weight: 700;
	font-size: 20px;
}

.info .gray {
	color: #8a8a8a;
}

.info .jibun {
	padding-left: 26px;
	background:
		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

.info .tel {
	color: #009900;
}

.item .markerbg {
	float: left;
	position: absolute;
	left:0px;
	width: 100%;
	height: 100%;
	margin: 1px;
	background: url(images/store7.png) no-repeat;
	background-size: contain;
}
<!-- placesList END -->


#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}
</style>


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

	
		<div id="map"></div>



	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=7a6be21565c5c8e58c1ab67fb77914cf&libraries=clusterer"></script>

<script>
// ������ ���������� ǥ���� ���������� �迭�Դϴ� 
var areas = [
    {
        name : '��걸',
        path : [
            new daum.maps.LatLng(37.5548768201904, 126.96966524449994),
            new daum.maps.LatLng(37.55308718044556, 126.97642899633566),
            new daum.maps.LatLng(37.55522076659584, 126.97654602427454),
            new daum.maps.LatLng(37.55320655210504, 126.97874667968763),
            new daum.maps.LatLng(37.55368689494708, 126.98541456064552),
            new daum.maps.LatLng(37.54722934282707, 126.995229135048),
            new daum.maps.LatLng(37.549694559809545, 126.99832516302801),
            new daum.maps.LatLng(37.550159406110104, 127.00436818301327),
            new daum.maps.LatLng(37.54820235864802, 127.0061334023129),
            new daum.maps.LatLng(37.546169758665414, 127.00499711608721),
            new daum.maps.LatLng(37.54385947805103, 127.00727818360471),
            new daum.maps.LatLng(37.54413326436179, 127.00898460651953),
            new daum.maps.LatLng(37.539639030116945, 127.00959054834321),
            new daum.maps.LatLng(37.537681185520256, 127.01726163044557),
            new daum.maps.LatLng(37.53378887274516, 127.01719284893274),
            new daum.maps.LatLng(37.52290225898471, 127.00614038053493),
            new daum.maps.LatLng(37.51309192794448, 126.99070240960813),
            new daum.maps.LatLng(37.50654651085339, 126.98553683648308),
            new daum.maps.LatLng(37.50702053393398, 126.97524914998174),
            new daum.maps.LatLng(37.51751820477105, 126.94988506562748),
            new daum.maps.LatLng(37.52702918583156, 126.94987870367682),
            new daum.maps.LatLng(37.534519656862926, 126.94481851935942),
            new daum.maps.LatLng(37.537500243531994, 126.95335659960566),
            new daum.maps.LatLng(37.54231338779177, 126.95817394011969),
            new daum.maps.LatLng(37.54546318600178, 126.95790512689311),
            new daum.maps.LatLng(37.548791603525764, 126.96371984820232),
            new daum.maps.LatLng(37.55155543391863, 126.96233786542686),
            new daum.maps.LatLng(37.5541513366375, 126.9657135934734),
            new daum.maps.LatLng(37.55566236579088, 126.9691850696746),
            new daum.maps.LatLng(37.5548768201904, 126.96966524449994)
        ]
    }, {
        name : '�߱�',
        path : [
            new daum.maps.LatLng(37.544062989758594, 127.00854659142894),
            new daum.maps.LatLng(37.54385947805103, 127.00727818360471),
            new daum.maps.LatLng(37.546169758665414, 127.00499711608721),
            new daum.maps.LatLng(37.54820235864802, 127.0061334023129),
            new daum.maps.LatLng(37.550159406110104, 127.00436818301327),
            new daum.maps.LatLng(37.549694559809545, 126.99832516302801),
            new daum.maps.LatLng(37.54722934282707, 126.995229135048),
            new daum.maps.LatLng(37.55368689494708, 126.98541456064552),
            new daum.maps.LatLng(37.55320655210504, 126.97874667968763),
            new daum.maps.LatLng(37.55522076659584, 126.97654602427454),
            new daum.maps.LatLng(37.55308718044556, 126.97642899633566),
            new daum.maps.LatLng(37.55487749311664, 126.97240854546743),
            new daum.maps.LatLng(37.5548766923893, 126.9691718124876),
            new daum.maps.LatLng(37.55566236579088, 126.9691850696746),
            new daum.maps.LatLng(37.55155543391863, 126.96233786542686),
            new daum.maps.LatLng(37.55498984534305, 126.96173858545431),
            new daum.maps.LatLng(37.55695455613004, 126.96343068837372),
            new daum.maps.LatLng(37.5590262922649, 126.9616731414449),
            new daum.maps.LatLng(37.56197662569172, 126.96946316364357),
            new daum.maps.LatLng(37.56582132960869, 126.96669525397355),
            new daum.maps.LatLng(37.56824746386509, 126.96909838710842),
            new daum.maps.LatLng(37.569485309984174, 126.97637402412326),
            new daum.maps.LatLng(37.56810323716611, 126.98905202099309),
            new daum.maps.LatLng(37.56961739576364, 127.00225936812329),
            new daum.maps.LatLng(37.56966688588187, 127.0152677241078),
            new daum.maps.LatLng(37.572022763755164, 127.0223363152772),
            new daum.maps.LatLng(37.57190723475508, 127.02337770475695),
            new daum.maps.LatLng(37.56973041414113, 127.0234585247501),
            new daum.maps.LatLng(37.565200182350495, 127.02358387477513),
            new daum.maps.LatLng(37.56505173515675, 127.02678930885806),
            new daum.maps.LatLng(37.563390358462826, 127.02652159646888),
            new daum.maps.LatLng(37.5607276739534, 127.02339232029838),
            new daum.maps.LatLng(37.55779412537163, 127.0228934248264),
            new daum.maps.LatLng(37.556850715898484, 127.01807638779917),
            new daum.maps.LatLng(37.55264513061776, 127.01620129137214),
            new daum.maps.LatLng(37.547466935106435, 127.00931996404753),
            new daum.maps.LatLng(37.54502351209897, 127.00815187343248),
            new daum.maps.LatLng(37.544062989758594, 127.00854659142894)
        ]
    }, {
        name : '���α�',
        path : [
            new daum.maps.LatLng(37.631840777111364, 126.9749313865046),
            new daum.maps.LatLng(37.632194205253654, 126.97609588529602),
            new daum.maps.LatLng(37.629026103322374, 126.97496405167149),
            new daum.maps.LatLng(37.6285585388996, 126.97992605309885),
            new daum.maps.LatLng(37.626378096236195, 126.97960492198952),
            new daum.maps.LatLng(37.6211493968146, 126.98365245774505),
            new daum.maps.LatLng(37.6177725051378, 126.9837302191854),
            new daum.maps.LatLng(37.613985109550605, 126.98658977758268),
            new daum.maps.LatLng(37.611364924201304, 126.98565700183143),
            new daum.maps.LatLng(37.60401657024552, 126.98665951539246),
            new daum.maps.LatLng(37.60099164566844, 126.97852019816328),
            new daum.maps.LatLng(37.59790270809407, 126.97672287261275),
            new daum.maps.LatLng(37.59447673441787, 126.98544283754865),
            new daum.maps.LatLng(37.59126960661375, 126.98919808879788),
            new daum.maps.LatLng(37.592300831997434, 127.0009511248032),
            new daum.maps.LatLng(37.58922302426079, 127.00228260552726),
            new daum.maps.LatLng(37.586091007146834, 127.00667090686603),
            new daum.maps.LatLng(37.58235007703611, 127.00677925856456),
            new daum.maps.LatLng(37.58047228501006, 127.00863575242668),
            new daum.maps.LatLng(37.58025588757531, 127.01058748333907),
            new daum.maps.LatLng(37.582338528091164, 127.01483104096094),
            new daum.maps.LatLng(37.581693162424465, 127.01673289259993),
            new daum.maps.LatLng(37.57758802896556, 127.01812215416163),
            new daum.maps.LatLng(37.5788668917658, 127.02140099081309),
            new daum.maps.LatLng(37.578034045208426, 127.02313962015988),
            new daum.maps.LatLng(37.57190723475508, 127.02337770475695),
            new daum.maps.LatLng(37.56966688588187, 127.0152677241078),
            new daum.maps.LatLng(37.56961739576364, 127.00225936812329),
            new daum.maps.LatLng(37.5681357695346, 126.99014772014593),
            new daum.maps.LatLng(37.569315246023024, 126.9732046364419),
            new daum.maps.LatLng(37.56824746386509, 126.96909838710842),
            new daum.maps.LatLng(37.56582132960869, 126.96669525397355),
            new daum.maps.LatLng(37.57874076105342, 126.95354824618335),
            new daum.maps.LatLng(37.581020184166476, 126.95812059678624),
            new daum.maps.LatLng(37.59354736740056, 126.95750665936443),
            new daum.maps.LatLng(37.595061575856455, 126.9590412421402),
            new daum.maps.LatLng(37.59833350100327, 126.9576941779143),
            new daum.maps.LatLng(37.59875701675023, 126.95306020161668),
            new daum.maps.LatLng(37.602476031211225, 126.95237386792348),
            new daum.maps.LatLng(37.60507154496655, 126.95404376087069),
            new daum.maps.LatLng(37.60912809443569, 126.95032198271032),
            new daum.maps.LatLng(37.615539700280216, 126.95072546923387),
            new daum.maps.LatLng(37.62433621196653, 126.94900237336302),
            new daum.maps.LatLng(37.62642708817027, 126.95037844036497),
            new daum.maps.LatLng(37.629590994617104, 126.95881385457929),
            new daum.maps.LatLng(37.629794440379136, 126.96376660599225),
            new daum.maps.LatLng(37.632373740990175, 126.97302793692637),
            new daum.maps.LatLng(37.631840777111364, 126.9749313865046)
        ]
    }, {
        name : '���빮��',
        path : [
            new daum.maps.LatLng(37.59851932019209, 126.95347706883003),
            new daum.maps.LatLng(37.5992407011344, 126.95499403097206),
            new daum.maps.LatLng(37.59833350100327, 126.9576941779143),
            new daum.maps.LatLng(37.595061575856455, 126.9590412421402),
            new daum.maps.LatLng(37.59354736740056, 126.95750665936443),
            new daum.maps.LatLng(37.581020184166476, 126.95812059678624),
            new daum.maps.LatLng(37.57874076105342, 126.95354824618335),
            new daum.maps.LatLng(37.56197662569172, 126.96946316364357),
            new daum.maps.LatLng(37.5575156365052, 126.95991288916548),
            new daum.maps.LatLng(37.55654562007193, 126.9413708153468),
            new daum.maps.LatLng(37.555098093384, 126.93685861757348),
            new daum.maps.LatLng(37.55884751347576, 126.92659242918415),
            new daum.maps.LatLng(37.5633319104926, 126.92828128083327),
            new daum.maps.LatLng(37.56510367293256, 126.92601582346325),
            new daum.maps.LatLng(37.57082994377989, 126.9098094620638),
            new daum.maps.LatLng(37.57599550420081, 126.902091747923),
            new daum.maps.LatLng(37.587223103650295, 126.91284666446226),
            new daum.maps.LatLng(37.58541570520177, 126.91531241017965),
            new daum.maps.LatLng(37.585870567159255, 126.91638068573187),
            new daum.maps.LatLng(37.583095195853055, 126.9159399866114),
            new daum.maps.LatLng(37.583459593417196, 126.92175886498167),
            new daum.maps.LatLng(37.587104600730505, 126.92388813813815),
            new daum.maps.LatLng(37.588386594820484, 126.92800815682232),
            new daum.maps.LatLng(37.59157595859555, 126.92776504133688),
            new daum.maps.LatLng(37.59455434247408, 126.93027139545339),
            new daum.maps.LatLng(37.59869748704149, 126.94088480070904),
            new daum.maps.LatLng(37.60065830191363, 126.9414041615336),
            new daum.maps.LatLng(37.60305781086164, 126.93995273804141),
            new daum.maps.LatLng(37.610598531321436, 126.95037536795142),
            new daum.maps.LatLng(37.6083605525023, 126.95056259057313),
            new daum.maps.LatLng(37.60507154496655, 126.95404376087069),
            new daum.maps.LatLng(37.602476031211225, 126.95237386792348),
            new daum.maps.LatLng(37.59851932019209, 126.95347706883003)
        ]
    }, {
        name : '���빮��',
        path : [
            new daum.maps.LatLng(37.607062869017085, 127.07111288773496),
            new daum.maps.LatLng(37.60107201319839, 127.07287376670605),
            new daum.maps.LatLng(37.59724304056685, 127.06949105186925),
            new daum.maps.LatLng(37.58953367466315, 127.07030363208528),
            new daum.maps.LatLng(37.58651213184981, 127.07264218709383),
            new daum.maps.LatLng(37.5849555116177, 127.07216063016078),
            new daum.maps.LatLng(37.58026781100598, 127.07619547037923),
            new daum.maps.LatLng(37.571869232268774, 127.0782018408153),
            new daum.maps.LatLng(37.559961773835425, 127.07239004251258),
            new daum.maps.LatLng(37.56231553903832, 127.05876047165025),
            new daum.maps.LatLng(37.57038253579033, 127.04794980454399),
            new daum.maps.LatLng(37.572878529071055, 127.04263554582458),
            new daum.maps.LatLng(37.57302061077518, 127.0381755492195),
            new daum.maps.LatLng(37.56978273516453, 127.03099733100001),
            new daum.maps.LatLng(37.57190723475508, 127.02337770475695),
            new daum.maps.LatLng(37.57838361223621, 127.0232348231103),
            new daum.maps.LatLng(37.58268174514337, 127.02953994610249),
            new daum.maps.LatLng(37.58894739851823, 127.03553876830637),
            new daum.maps.LatLng(37.5911852565689, 127.03621919708065),
            new daum.maps.LatLng(37.59126734230753, 127.03875553445558),
            new daum.maps.LatLng(37.5956815721534, 127.04062845365279),
            new daum.maps.LatLng(37.5969637344377, 127.04302522879048),
            new daum.maps.LatLng(37.59617641777492, 127.04734129391157),
            new daum.maps.LatLng(37.60117358544485, 127.05101351973708),
            new daum.maps.LatLng(37.600149587503246, 127.05209540476308),
            new daum.maps.LatLng(37.60132672748398, 127.05508130598699),
            new daum.maps.LatLng(37.6010580545608, 127.05917142337097),
            new daum.maps.LatLng(37.605121767227374, 127.06219611364686),
            new daum.maps.LatLng(37.607062869017085, 127.07111288773496)
        ]
    }, {
        name : '���ϱ�',
        path : [
            new daum.maps.LatLng(37.63654916557213, 126.98446028560235),
            new daum.maps.LatLng(37.631446839436855, 126.99372381657889),
            new daum.maps.LatLng(37.626192451322005, 126.99927047335905),
            new daum.maps.LatLng(37.62382095469671, 127.00488450145781),
            new daum.maps.LatLng(37.624026217174986, 127.00788862747375),
            new daum.maps.LatLng(37.6205124078061, 127.00724034082933),
            new daum.maps.LatLng(37.61679651952433, 127.01014412786792),
            new daum.maps.LatLng(37.61472018601129, 127.01451127202589),
            new daum.maps.LatLng(37.614629670135216, 127.01757841621624),
            new daum.maps.LatLng(37.61137091590441, 127.02219857751122),
            new daum.maps.LatLng(37.612692696824915, 127.02642583551054),
            new daum.maps.LatLng(37.612367438936786, 127.03018593770908),
            new daum.maps.LatLng(37.60896889076571, 127.0302525167858),
            new daum.maps.LatLng(37.61279787695882, 127.03730791358603),
            new daum.maps.LatLng(37.62426467261789, 127.04973339977498),
            new daum.maps.LatLng(37.61449950127667, 127.06174181124696),
            new daum.maps.LatLng(37.61561580859776, 127.06985247014711),
            new daum.maps.LatLng(37.61351359068103, 127.07170798866412),
            new daum.maps.LatLng(37.60762512162974, 127.07105453180604),
            new daum.maps.LatLng(37.605121767227374, 127.06219611364686),
            new daum.maps.LatLng(37.6010580545608, 127.05917142337097),
            new daum.maps.LatLng(37.60132672748398, 127.05508130598699),
            new daum.maps.LatLng(37.600149587503246, 127.05209540476308),
            new daum.maps.LatLng(37.60117358544485, 127.05101351973708),
            new daum.maps.LatLng(37.59617641777492, 127.04734129391157),
            new daum.maps.LatLng(37.59644879095525, 127.04184728392097),
            new daum.maps.LatLng(37.59126734230753, 127.03875553445558),
            new daum.maps.LatLng(37.5911852565689, 127.03621919708065),
            new daum.maps.LatLng(37.58894739851823, 127.03553876830637),
            new daum.maps.LatLng(37.58268174514337, 127.02953994610249),
            new daum.maps.LatLng(37.57782865303167, 127.02296295333255),
            new daum.maps.LatLng(37.57889204835333, 127.02179043639809),
            new daum.maps.LatLng(37.57758802896556, 127.01812215416163),
            new daum.maps.LatLng(37.581693162424465, 127.01673289259993),
            new daum.maps.LatLng(37.582338528091164, 127.01483104096094),
            new daum.maps.LatLng(37.58025588757531, 127.01058748333907),
            new daum.maps.LatLng(37.58047228501006, 127.00863575242668),
            new daum.maps.LatLng(37.58235007703611, 127.00677925856456),
            new daum.maps.LatLng(37.586091007146834, 127.00667090686603),
            new daum.maps.LatLng(37.58922302426079, 127.00228260552726),
            new daum.maps.LatLng(37.592300831997434, 127.0009511248032),
            new daum.maps.LatLng(37.59126960661375, 126.98919808879788),
            new daum.maps.LatLng(37.59447673441787, 126.98544283754865),
            new daum.maps.LatLng(37.59790270809407, 126.97672287261275),
            new daum.maps.LatLng(37.60099164566844, 126.97852019816328),
            new daum.maps.LatLng(37.60451393107786, 126.98678626394351),
            new daum.maps.LatLng(37.611364924201304, 126.98565700183143),
            new daum.maps.LatLng(37.613985109550605, 126.98658977758268),
            new daum.maps.LatLng(37.6177725051378, 126.9837302191854),
            new daum.maps.LatLng(37.6211493968146, 126.98365245774505),
            new daum.maps.LatLng(37.626378096236195, 126.97960492198952),
            new daum.maps.LatLng(37.6285585388996, 126.97992605309885),
            new daum.maps.LatLng(37.62980449548538, 126.97468284124939),
            new daum.maps.LatLng(37.633657663246694, 126.97740053878216),
            new daum.maps.LatLng(37.63476479485093, 126.98154674721893),
            new daum.maps.LatLng(37.63780700422825, 126.9849494717052),
            new daum.maps.LatLng(37.63654916557213, 126.98446028560235)
        ]
    }, {
        name : '������',
        path : [
            new daum.maps.LatLng(37.57275246810175, 127.04241813085706),
            new daum.maps.LatLng(37.57038253579033, 127.04794980454399),
            new daum.maps.LatLng(37.56231553903832, 127.05876047165025),
            new daum.maps.LatLng(37.5594131360664, 127.07373408220053),
            new daum.maps.LatLng(37.52832388381049, 127.05621773388143),
            new daum.maps.LatLng(37.53423885672233, 127.04604398310076),
            new daum.maps.LatLng(37.53582328355087, 127.03979942567628),
            new daum.maps.LatLng(37.53581367627865, 127.0211714455564),
            new daum.maps.LatLng(37.53378887274516, 127.01719284893274),
            new daum.maps.LatLng(37.537681185520256, 127.01726163044557),
            new daum.maps.LatLng(37.53938672166098, 127.00993448922989),
            new daum.maps.LatLng(37.54157804358092, 127.00879872996808),
            new daum.maps.LatLng(37.54502351209897, 127.00815187343248),
            new daum.maps.LatLng(37.547466935106435, 127.00931996404753),
            new daum.maps.LatLng(37.55264513061776, 127.01620129137214),
            new daum.maps.LatLng(37.556850715898484, 127.01807638779917),
            new daum.maps.LatLng(37.55779412537163, 127.0228934248264),
            new daum.maps.LatLng(37.5607276739534, 127.02339232029838),
            new daum.maps.LatLng(37.563390358462826, 127.02652159646888),
            new daum.maps.LatLng(37.56505173515675, 127.02678930885806),
            new daum.maps.LatLng(37.565200182350495, 127.02358387477513),
            new daum.maps.LatLng(37.57190723475508, 127.02337770475695),
            new daum.maps.LatLng(37.56978273516453, 127.03099733100001),
            new daum.maps.LatLng(37.57302061077518, 127.0381755492195),
            new daum.maps.LatLng(37.57275246810175, 127.04241813085706)
        ]
    }, {
        name : '������',
        path : [
            new daum.maps.LatLng(37.584651324803644, 126.88883849288884),
            new daum.maps.LatLng(37.57082994377989, 126.9098094620638),
            new daum.maps.LatLng(37.56510367293256, 126.92601582346325),
            new daum.maps.LatLng(37.5633319104926, 126.92828128083327),
            new daum.maps.LatLng(37.55884751347576, 126.92659242918415),
            new daum.maps.LatLng(37.55675317809392, 126.93190919632814),
            new daum.maps.LatLng(37.555098093384, 126.93685861757348),
            new daum.maps.LatLng(37.55654562007193, 126.9413708153468),
            new daum.maps.LatLng(37.557241466445234, 126.95913438471307),
            new daum.maps.LatLng(37.55908394430372, 126.96163689468189),
            new daum.maps.LatLng(37.55820141918588, 126.96305432966605),
            new daum.maps.LatLng(37.554784413504734, 126.9617251098019),
            new daum.maps.LatLng(37.548791603525764, 126.96371984820232),
            new daum.maps.LatLng(37.54546318600178, 126.95790512689311),
            new daum.maps.LatLng(37.54231338779177, 126.95817394011969),
            new daum.maps.LatLng(37.539468942052544, 126.955731506394),
            new daum.maps.LatLng(37.536292068277106, 126.95128907260018),
            new daum.maps.LatLng(37.53569162926515, 126.94627494388307),
            new daum.maps.LatLng(37.53377712226906, 126.94458373402794),
            new daum.maps.LatLng(37.54135238063506, 126.93031191951576),
            new daum.maps.LatLng(37.539036674424615, 126.9271006565075),
            new daum.maps.LatLng(37.54143034750605, 126.9224138272872),
            new daum.maps.LatLng(37.54141748538761, 126.90483000187002),
            new daum.maps.LatLng(37.548015078285694, 126.89890097452322),
            new daum.maps.LatLng(37.56300401736817, 126.86623824787709),
            new daum.maps.LatLng(37.57178997971358, 126.85363039091744),
            new daum.maps.LatLng(37.57379738998644, 126.85362646212587),
            new daum.maps.LatLng(37.57747251471329, 126.864939928088),
            new daum.maps.LatLng(37.5781913017327, 126.87625939970273),
            new daum.maps.LatLng(37.57977132158497, 126.87767870371688),
            new daum.maps.LatLng(37.584440882833654, 126.87653889183002),
            new daum.maps.LatLng(37.59079311146897, 126.88205386700724),
            new daum.maps.LatLng(37.584651324803644, 126.88883849288884)
        ]
    }
    , {
        name : '���ϱ�',
        path : [
            new daum.maps.LatLng(37.637804746356906, 126.9849499526369),
            new daum.maps.LatLng(37.65588000928738, 126.9800818028051),
            new daum.maps.LatLng(37.662872722950844, 126.98824014453685),
            new daum.maps.LatLng(37.66597253778382, 126.9941333856279),
            new daum.maps.LatLng(37.67887447508272, 126.99249997733058),
            new daum.maps.LatLng(37.683127318189825, 126.99821324904542),
            new daum.maps.LatLng(37.68442444295289, 127.00837108351058),
            new daum.maps.LatLng(37.670800553882515, 127.01807216793905),
            new daum.maps.LatLng(37.65198878952021, 127.01244695068905),
            new daum.maps.LatLng(37.649105242145076, 127.01580060308649),
            new daum.maps.LatLng(37.64932059145993, 127.02142110506963),
            new daum.maps.LatLng(37.630322153139126, 127.04241902322538),
            new daum.maps.LatLng(37.624262415910636, 127.0497304803327),
            new daum.maps.LatLng(37.612804180584774, 127.0373010351364),
            new daum.maps.LatLng(37.60897023694677, 127.0302518650777),
            new daum.maps.LatLng(37.612366982414805, 127.03018811673041),
            new daum.maps.LatLng(37.61268998853447, 127.02642518226634),
            new daum.maps.LatLng(37.61137541560858, 127.02219736028404),
            new daum.maps.LatLng(37.614631016329405, 127.01757719791536),
            new daum.maps.LatLng(37.61471702785767, 127.01450495595243),
            new daum.maps.LatLng(37.61679426154229, 127.01014460790216),
            new daum.maps.LatLng(37.62050879842528, 127.0072396881251),
            new daum.maps.LatLng(37.62402035548348, 127.00788570892469),
            new daum.maps.LatLng(37.62382230073435, 127.00488384916277),
            new daum.maps.LatLng(37.62619650024273, 126.99926245768046),
            new daum.maps.LatLng(37.631451338831944, 126.99372259730812),
            new daum.maps.LatLng(37.6365455557768, 126.98445736793478)         
        ]
    }, {
        name : '������',
        path : [
            new daum.maps.LatLng(37.62426016702397, 127.04972198301517),
            new daum.maps.LatLng(37.649322843917965, 127.02142110571656),
            new daum.maps.LatLng(37.64910749498265, 127.01579777068054),
            new daum.maps.LatLng(37.651988789819086, 127.01244411769643),
            new daum.maps.LatLng(37.67079830099843, 127.01807500110027),
            new daum.maps.LatLng(37.68441993806342, 127.00837108300432),
            new daum.maps.LatLng(37.691627800900484, 127.00772562718889),
            new daum.maps.LatLng(37.696701, 127.009633),
            new daum.maps.LatLng(37.697356, 127.012011),
            new daum.maps.LatLng(37.69874, 127.013754),
            new daum.maps.LatLng(37.701441, 127.015365),
            new daum.maps.LatLng(37.700995, 127.019848),
            new daum.maps.LatLng(37.699696, 127.022208),
            new daum.maps.LatLng(37.700039, 127.023399),
            new daum.maps.LatLng(37.699589, 127.025368),
            new daum.maps.LatLng(37.700236, 127.026963),
            new daum.maps.LatLng(37.701092, 127.027048),
            new daum.maps.LatLng(37.700926, 127.027685),
            new daum.maps.LatLng(37.699285, 127.029277),
            new daum.maps.LatLng(37.693091, 127.031052),
            new daum.maps.LatLng(37.692836, 127.03157),
            new daum.maps.LatLng(37.692914, 127.032),
            new daum.maps.LatLng(37.69187, 127.032421),
            new daum.maps.LatLng(37.695211, 127.043045),
            new daum.maps.LatLng( 37.693719, 127.043077),
            new daum.maps.LatLng(37.69295, 127.044692),
            new daum.maps.LatLng(37.694056, 127.048576),
            new daum.maps.LatLng(37.685781, 127.051791),
            new daum.maps.LatLng(37.671057, 127.048115),
            new daum.maps.LatLng(37.663859, 127.051424),
            new daum.maps.LatLng(37.649342, 127.054685),
            new daum.maps.LatLng(37.641916, 127.055001),
            new daum.maps.LatLng(37.64062, 127.055553),
            new daum.maps.LatLng(37.640147, 127.054559),
            new daum.maps.LatLng(37.644675, 127.050496),
            new daum.maps.LatLng(37.630619, 127.042466)
             
            
            
            
        ]
    }, {
        name : '�����',
        path : [
            new daum.maps.LatLng(37.68576933760812, 127.05179519176832),
            new daum.maps.LatLng(37.694735, 127.062944),
            new daum.maps.LatLng(37.696133, 127.08054),
            new daum.maps.LatLng(37.689987, 127.085747),
            new daum.maps.LatLng(37.689011, 127.095461),
            new daum.maps.LatLng(37.678615, 127.091979),
            new daum.maps.LatLng(37.663989, 127.095325),
            new daum.maps.LatLng(37.658495, 127.091273),
            new daum.maps.LatLng(37.644952, 127.094974),
            new daum.maps.LatLng(37.642338, 127.11113),
            new daum.maps.LatLng(37.631813, 127.11191),
            new daum.maps.LatLng(37.621837, 127.104256),
            new daum.maps.LatLng(37.620327, 127.105624),
            new daum.maps.LatLng(37.615611747392656, 127.06985464564829),
            new daum.maps.LatLng(37.614499044172284, 127.06174399013688),
            new daum.maps.LatLng(37.63066224984504, 127.04249002109665),
            new daum.maps.LatLng(37.64467166330097, 127.05049758569373),
            new daum.maps.LatLng(37.64014916518986, 127.05456205586184),
            new daum.maps.LatLng(37.64061946546528, 127.05555662857665),
            new daum.maps.LatLng(37.641921648927934, 127.05499957413969),
            new daum.maps.LatLng(37.64933913987003, 127.05469342556513),
            new daum.maps.LatLng(37.66385317948491, 127.05142294582485),
            new daum.maps.LatLng(37.671055659924804, 127.04811813376433)
            
        ]
    }, {
        name : '�߶���',
        path : [
            new daum.maps.LatLng(37.61560949157075 , 127.0698603067608),
            new daum.maps.LatLng(37.620328854868696, 127.1056217355529),
            new daum.maps.LatLng(37.61856822315398, 127.11672809332347),
            new daum.maps.LatLng(37.609234133967945, 127.11657759838819),
            new daum.maps.LatLng(37.60728678603774, 127.11779767845513),
            new daum.maps.LatLng(37.59984879450461, 127.11352810693747),
            new daum.maps.LatLng(37.59530462618403, 127.11678233164761),
            new daum.maps.LatLng(37.593863579034235, 127.11623656873017),
            new daum.maps.LatLng(37.593187, 127.11317),
            new daum.maps.LatLng(37.587516, 127.110084),
            new daum.maps.LatLng(37.583175, 127.108906),
            new daum.maps.LatLng(37.579982, 127.102943),
            new daum.maps.LatLng(37.573557, 127.100712),
            new daum.maps.LatLng(37.570655, 127.095564),
            new daum.maps.LatLng(37.570054, 127.088592),
            new daum.maps.LatLng(37.5718701297244, 127.07819892586056),
            new daum.maps.LatLng(37.5802642016191, 127.07619538075265),
            new daum.maps.LatLng(37.58495190361466, 127.07215827636458),
            new daum.maps.LatLng(37.58651032166106, 127.07264662819314),
            new daum.maps.LatLng(37.589530063928414, 127.07030580722851),
            new daum.maps.LatLng(37.597240782004135, 127.06949209616705),
            new daum.maps.LatLng( 37.601065695957, 127.07288160154013),
            new daum.maps.LatLng(37.6070628622339, 127.07111506677924),
            new daum.maps.LatLng(37.6076260178822, 127.07105331415536),
            new daum.maps.LatLng(37.61350907722577, 127.07171299510074)
            
            
            
        ]
    },{
        name : '������',
        path : [
            new daum.maps.LatLng(37.52832838500346 , 127.05621425739997),
            new daum.maps.LatLng(37.55941222894677, 127.07373512717561),
            new daum.maps.LatLng(37.559960415882664, 127.07239165297624),
            new daum.maps.LatLng(37.57186337226721, 127.07819891879521),
            new daum.maps.LatLng(37.570051786458166, 127.08859402426266),
            new daum.maps.LatLng(37.57065452576673, 127.09555914225159),
            new daum.maps.LatLng(37.57355595397592, 127.10070782190317),
            new daum.maps.LatLng(37.57138152373961, 127.10420269419782),
            new daum.maps.LatLng(37.56057203281156, 127.10138074778743),
            new daum.maps.LatLng(37.55638768214969, 127.10563044868196),
            new daum.maps.LatLng(37.55638768214969, 127.10563044868196),
            new daum.maps.LatLng(37.558334590998, 127.1097415465328),
            new daum.maps.LatLng(37.559195601907575, 127.11390779548073),
            new daum.maps.LatLng(37.5576101988241, 127.11354321705804),
            new daum.maps.LatLng(37.55688729273166, 127.11571508934517),
            new daum.maps.LatLng(37.553064967984376, 127.11323076290688),
            new daum.maps.LatLng(37.541104807822805, 127.1077813955048),
            new daum.maps.LatLng(37.523825890775804, 127.08259741432454),
            new daum.maps.LatLng(37.52267532625159, 127.07861418783524),
            new daum.maps.LatLng(37.52832387865042, 127.05621708232712)
            
            
            
        ]
    },{
        name : '������',
        path : [
            new daum.maps.LatLng(37.55688728718567 , 127.11572074811043),
            new daum.maps.LatLng( 37.54379316775947, 127.10900451817511),
            new daum.maps.LatLng(37.53865666925613, 127.12354503386176),
            new daum.maps.LatLng(37.528128432991004, 127.11920602535551),
            new daum.maps.LatLng(37.516800041089624, 127.14579262521258),
            new daum.maps.LatLng(37.51945020694264, 127.14480233522706),
            new daum.maps.LatLng(37.522061826562414, 127.14584811222483),
            new daum.maps.LatLng(37.522311602819165, 127.1478621912543),
            new daum.maps.LatLng(37.53143995418406, 127.15396697888693),
            new daum.maps.LatLng(37.53385504108521, 127.15365514996186),
            new daum.maps.LatLng(37.54501468026404, 127.16316064809166),
            new daum.maps.LatLng(37.545286586757776, 127.18354662953034),
            new daum.maps.LatLng(37.55186487951047, 127.1828950706723),
            new daum.maps.LatLng(37.55291240600962, 127.181358527),
            new daum.maps.LatLng(37.56174192702697, 127.18151574678346),
            new daum.maps.LatLng(37.568962741286505, 127.17899773029029),
            new daum.maps.LatLng(37.574914229318004, 127.17571777690257),
            new daum.maps.LatLng(37.57841060981597, 127.1753637276213),
            new daum.maps.LatLng(37.579795038181004, 127.1774387187614),
            new daum.maps.LatLng(37.581047532672265, 127.17736244283967),
            new daum.maps.LatLng(37.57895871076932, 127.17023665433436),
            new daum.maps.LatLng(37.57927972086671, 127.16626373893006),
            new daum.maps.LatLng(37.56872527422077, 127.14886509882929),
            new daum.maps.LatLng(37.56863037034848, 127.13798704246015),
            new daum.maps.LatLng(37.56762673157624, 127.13321982041978),
            new daum.maps.LatLng( 37.56452700179668,  127.12526857166223 )
            
            
        ]
    },{
        name : '����',
        path : [
            new daum.maps.LatLng(37.59078724891012 , 126.8820532241646),
            new daum.maps.LatLng(37.58465581941195, 126.88883330546425),
            new daum.maps.LatLng( 37.575986448345134, 126.90204299594728),
            new daum.maps.LatLng(37.58724833006501, 126.91285221016622),
            new daum.maps.LatLng(37.58541209692007, 126.91531402659334 ),
            new daum.maps.LatLng(37.58587236361226, 126.9163805977676),
            new daum.maps.LatLng(37.58309473942235, 126.91593933509722),
            new daum.maps.LatLng(37.583456880785036, 126.92175255500406),
            new daum.maps.LatLng(37.58709828680074, 126.92388579418625),
            new daum.maps.LatLng(37.5883825300002, 126.92800014915682),
            new daum.maps.LatLng(37.591574152822304, 126.92776778782138),
            new daum.maps.LatLng(37.5945511811433, 126.93026734929984),
            new daum.maps.LatLng(37.5986970313166, 126.94088528129419 ),
            new daum.maps.LatLng(37.600654689909696, 126.94139898251423),
            new daum.maps.LatLng( 37.60305960761556, 126.93995321684984),
            new daum.maps.LatLng(37.61058771394872, 126.95037528915574),
            new daum.maps.LatLng(37.61554104531044, 126.95072311707015),
            new daum.maps.LatLng(37.62432944856906, 126.94900115920755),
            new daum.maps.LatLng(37.62642708052012, 126.95037325672904),
            new daum.maps.LatLng(37.62958828813579, 126.9588194343518),
            new daum.maps.LatLng(37.6333604609773, 126.96351894624347),
            new daum.maps.LatLng(37.6534768787722, 126.95601852549856),
            new daum.maps.LatLng(37.6589873622724, 126.94740216956392),
            new daum.maps.LatLng(37.65664135331783, 126.94015091159734),
            new daum.maps.LatLng(37.651269384693144, 126.9361210808941),
            new daum.maps.LatLng(37.65022031323444,126.92923230580632),
            new daum.maps.LatLng(37.64589132205543, 126.92243778793714),
            new daum.maps.LatLng(37.64516489002862, 126.91428027289514),
            new daum.maps.LatLng(37.648941606586995, 126.90462149083277),
            new daum.maps.LatLng(37.64685303074978, 126.9067544247089),
            new daum.maps.LatLng(37.64422640194004, 126.91228713263381),
            new daum.maps.LatLng(37.638476386786415, 126.90998259022719),
            new daum.maps.LatLng(37.63597252721079, 126.91114122344769 ),
            new daum.maps.LatLng(37.633699667918926, 126.90803973207086),
            new daum.maps.LatLng(37.63324777595687, 126.9062616170189),
            new daum.maps.LatLng(37.63007790306148, 126.90829342491254),
            new daum.maps.LatLng(37.618957065740766, 126.90493165437475),
            new daum.maps.LatLng(37.618631190053044, 126.90306313046815),
            new daum.maps.LatLng(37.611295138312876, 126.90064893426415),
            new daum.maps.LatLng(37.605763166257695, 126.90076954184067),
            new daum.maps.LatLng( 37.60313164821876,126.9000256169391 ),
            new daum.maps.LatLng( 37.59587024608113, 126.90071473967801),
            new daum.maps.LatLng(37.5926702410556,  126.89896393135227),
            new daum.maps.LatLng(37.58983272856354, 126.89968108696678),
            new daum.maps.LatLng(37.58849721343164, 126.88742079273959),
            new daum.maps.LatLng(37.59106311918804, 126.88542412892396),
            new daum.maps.LatLng(37.59388506058281, 126.88733341465735),
            new daum.maps.LatLng( 37.5939103799571, 126.88555564155133),
            new daum.maps.LatLng(37.59078724608152, 126.88205039349936)
            
        ]
    },{
        name : '������',
        path : [
            new daum.maps.LatLng(37.55618136555432 , 126.88111468350257),
            new daum.maps.LatLng(37.56300175803321, 126.8662370341411),
            new daum.maps.LatLng(37.571789524342506, 126.85363087186006),
            new daum.maps.LatLng(37.60489513270821, 126.8031423138489),
            new daum.maps.LatLng( 37.59766790361464 , 126.79273356517736 ),
            new daum.maps.LatLng(37.59474074967029,126.79767728245852),
            new daum.maps.LatLng(37.59245690978756, 126.80042361207484),
            new daum.maps.LatLng(37.592472431429556, 126.79895159070716),
            new daum.maps.LatLng(37.591193030576186, 126.79895503238353),
            new daum.maps.LatLng(37.589205627773644, 126.80119089643824),
            new daum.maps.LatLng( 37.58774526493846, 126.8007418924196),
            new daum.maps.LatLng( 37.58812977169406, 126.7990198831955),
            new daum.maps.LatLng(37.580127604086194, 126.79301859563132 ),
            new daum.maps.LatLng(37.577118690314336, 126.79324767621769),
            new daum.maps.LatLng(37.57687435119754, 126.79263704161707),
            new daum.maps.LatLng(37.581305238411545, 126.79150395133155),
            new daum.maps.LatLng(37.57743761298415, 126.79016757926304),
            new daum.maps.LatLng(37.56606565013886, 126.77472651688682),
            new daum.maps.LatLng(37.56347578214292, 126.7773602140325),
            new daum.maps.LatLng(37.5540654045026, 126.76598057177212),
            new daum.maps.LatLng( 37.5487237207158, 126.7712027687125),
            new daum.maps.LatLng(37.54422988193773, 126.7867867935304),
            new daum.maps.LatLng( 37.54358993178112,126.79169955316851),
            new daum.maps.LatLng(37.54182426359861 , 126.79186287909917),
            new daum.maps.LatLng(37.541307542983446, 126.79521360855067),
            new daum.maps.LatLng(37.53591814140817,126.79439108410115),
            new daum.maps.LatLng(37.537529859407314, 126.7990030193137),
            new daum.maps.LatLng(37.54250782621816, 126.80163745087906),
            new daum.maps.LatLng( 37.54356440944605, 126.80855975115551),
            new daum.maps.LatLng( 37.540759929116085 , 126.81269693316973),
            new daum.maps.LatLng(37.54046765265353,  126.82178365458556),
            new daum.maps.LatLng(37.54163527067753, 126.82535083167588),
            new daum.maps.LatLng(37.54760320908213, 126.82761711020241),
            new daum.maps.LatLng(37.5476560542772 ,  126.82988587552312),
            new daum.maps.LatLng(37.54167829241923,  126.8301370782732),
            new daum.maps.LatLng( 37.541817780931545, 126.83318056748111),
            new daum.maps.LatLng(37.53738772289003, 126.83521574906524),
            new daum.maps.LatLng(37.53672994791445, 126.8351832530041),
            new daum.maps.LatLng(37.53655776153996, 126.83447082046233),
            new daum.maps.LatLng(37.5264928898482, 126.84051155085152 ),
            new daum.maps.LatLng(37.52978391339875,126.86401388769082 ),
            new daum.maps.LatLng(37.54085703760534,126.8638693131522 ),
            new daum.maps.LatLng(37.54409851272149, 126.86204160584842),
            new daum.maps.LatLng(37.55115588409269, 126.86424666771721),
            new daum.maps.LatLng(37.54703891994961,  126.87287696936848),
            new daum.maps.LatLng(37.54710737375692, 126.87798039976803 ),
            new daum.maps.LatLng(37.54773137862075, 126.88024261515379 ),
            new daum.maps.LatLng(37.5482535659257, 126.87985702751334),
            new daum.maps.LatLng(37.54838963308533, 126.88076211010974)
            
        ]
    },{
        name : '��õ��',
        path : [
            new daum.maps.LatLng(37.55115362835054 , 126.86424384263896),
            new daum.maps.LatLng(37.54703666745783, 126.87287697319361),
            new daum.maps.LatLng(37.547107379603524, 126.87798605779261),
            new daum.maps.LatLng(37.54773137862075,  126.88024261515379),
            new daum.maps.LatLng( 37.54824681420681, 126.87986269647027),
            new daum.maps.LatLng(37.5483896302285,126.88075928104871),
            new daum.maps.LatLng(37.5434670095774, 126.88436828541032),
            new daum.maps.LatLng(37.54325146054101, 126.88507583620137),
            new daum.maps.LatLng( 37.53407022555858, 126.88975133513118),
            new daum.maps.LatLng(37.532519177972944, 126.88833938518462),
            new daum.maps.LatLng( 37.531593349980085, 126.89069402024269 ),
            new daum.maps.LatLng(37.52992542673265 , 126.88954247996446),
            new daum.maps.LatLng(37.53013937745766,  126.88712107430932 ),
            new daum.maps.LatLng(37.524688969678266, 126.87869002629917),
            new daum.maps.LatLng(37.51395691426559, 126.87761022628668),
            new daum.maps.LatLng(37.503419904453494, 126.87355601912837),
            new daum.maps.LatLng(37.50592133552179, 126.87045290201101),
            new daum.maps.LatLng(37.50490208150169, 126.86943679077426 ),
            new daum.maps.LatLng( 37.505237345018216 , 126.86314798921796),
            new daum.maps.LatLng(37.50831087351131, 126.86410374605545),
            new daum.maps.LatLng(37.5067024287697, 126.86011424429284),
            new daum.maps.LatLng(37.50990783941633, 126.85829859103701 ),
            new daum.maps.LatLng(37.50915669270105,126.85556291009084),
            new daum.maps.LatLng(37.510522836638785,126.85282312699923),
            new daum.maps.LatLng( 37.50272376605872,126.8351053577503),
            new daum.maps.LatLng(37.50736636983034,126.83045802154207),
            new daum.maps.LatLng(37.50870017240698, 126.82450580756765),
            new daum.maps.LatLng(37.52427131770571, 126.82573635226875 ),
            new daum.maps.LatLng(37.52730211977365, 126.82808242044996),
            new daum.maps.LatLng( 37.54046764838441, 126.82178082583144),
            new daum.maps.LatLng(37.54164425971351, 126.82533666666355),
            new daum.maps.LatLng(37.54760772644566, 126.82762558690258),
            new daum.maps.LatLng(37.547656058352835, 126.82988870455007),
            new daum.maps.LatLng(37.541682793328995 , 126.83013423925152),
            new daum.maps.LatLng(37.54181552444555, 126.83317774369303),
            new daum.maps.LatLng(37.53739221997914, 126.83521008187209),
            new daum.maps.LatLng(37.53672994396663,126.8351804243892),
            new daum.maps.LatLng(37.53655550904805, 126.83447082544126),
            new daum.maps.LatLng(37.526495142344636, 126.84051154605604),
            new daum.maps.LatLng(37.52978391014202, 126.86401105933447),
            new daum.maps.LatLng(37.5408592933596,126.86387213783154),
            new daum.maps.LatLng(37.54410076521339,126.86204160169767),
            new daum.maps.LatLng(37.55115588409269 ,  126.86424666771721),
            new daum.maps.LatLng(37.547038916903944,  126.87287414035931 ),
            new daum.maps.LatLng(37.54710737375692,  126.87798039976803)
       
            
        ]
    },{
        name : '��������',
        path : [
            new daum.maps.LatLng(37.518160531422964, 126.87803320551292),
            new daum.maps.LatLng(37.52467770717419, 126.8786900445356 ),
            new daum.maps.LatLng(37.53013712495826, 126.88712107770378),
            new daum.maps.LatLng(37.52992542673265, 126.88954247996446),
            new daum.maps.LatLng(37.53158657939259, 126.89067988796813),
            new daum.maps.LatLng(37.53251692814862,126.88834221700489),
            new daum.maps.LatLng(37.534063460142214, 126.88974285951664),
            new daum.maps.LatLng(37.543253710282066, 126.88507300387639 ),
            new daum.maps.LatLng(37.54346924822016, 126.88435413755406),
            new daum.maps.LatLng(37.54838962737159, 126.88075645198766),
            new daum.maps.LatLng(37.556176860576386, 126.88111469065949),
            new daum.maps.LatLng(37.54801686892323,  126.89889409646887 ),
            new daum.maps.LatLng(37.54141973416837, 126.90483217615021 ),
            new daum.maps.LatLng(37.54141907354455, 126.92240470089597 ),
            new daum.maps.LatLng(37.539043413822526, 126.92708019730863),
            new daum.maps.LatLng(37.541351899232126, 126.93026883628953),
            new daum.maps.LatLng(37.533779815247016, 126.94457402918982),
            new daum.maps.LatLng(37.527033683172526 , 126.94987352391226),
            new daum.maps.LatLng(37.51751684559988, 126.94987989043834),
            new daum.maps.LatLng(37.5152886868363, 126.927380442602),
            new daum.maps.LatLng( 37.484997451195284, 126.90307775991418),
            new daum.maps.LatLng(37.48881219734493,126.89655984344354 ),
            new daum.maps.LatLng(37.50906207211119,126.89128391648424),
            new daum.maps.LatLng(37.517563550849324,126.87796913541283)
            
        ]
    },{
        name : '���α�',
        path : [
            new daum.maps.LatLng(37.50866409457401, 126.82448044395524),
            new daum.maps.LatLng(37.50737518090417, 126.83031945335945),
            new daum.maps.LatLng(37.50276884378166, 126.83512505000715 ),
            new daum.maps.LatLng(37.51046857561568, 126.85266205846395 ),
            new daum.maps.LatLng( 37.5091386692064 , 126.85556011723621),
            new daum.maps.LatLng(37.509754366940726,126.85804722421206),
            new daum.maps.LatLng(37.50672937511187, 126.86004350670996),
            new daum.maps.LatLng(37.508283853200446, 126.86411227769138),
            new daum.maps.LatLng(37.50525538800089, 126.8631677483388),
            new daum.maps.LatLng(37.504902103375564,  126.86945658270042 ),
            new daum.maps.LatLng(37.505876381469044,  126.87054063095853),
            new daum.maps.LatLng(37.50350096751896, 126.87353043608299),
            new daum.maps.LatLng(37.513950156751115, 126.87761023732168 ),
            new daum.maps.LatLng(37.517561301267506, 126.87797196697736),
            new daum.maps.LatLng(37.50906206690625, 126.89127826132987),
            new daum.maps.LatLng(37.48881669742665, 126.89655418360279),
            new daum.maps.LatLng(37.48499970139424, 126.90307493033318),
            new daum.maps.LatLng( 37.47827463808987, 126.89885246495754),
            new daum.maps.LatLng(37.48668656889148, 126.87842360102483),
            new daum.maps.LatLng(37.485412203809744, 126.87464920961195),
            new daum.maps.LatLng( 37.49144837708912, 126.87410766274095),
            new daum.maps.LatLng(37.49473959212841 ,126.86817666186886),
            new daum.maps.LatLng(37.481510758237704,126.85127457513187),
            new daum.maps.LatLng(37.48190238703515, 126.84749752016481),
            new daum.maps.LatLng( 37.47353799039695, 126.84516308421489),
            new daum.maps.LatLng(37.47767802997754,126.81675491433722),
            new daum.maps.LatLng( 37.487725612787614, 126.82355986106492),
            new daum.maps.LatLng(37.48990478875384, 126.8227179859936 ),
            new daum.maps.LatLng( 37.49324416360364 , 126.81465884808172),
            new daum.maps.LatLng( 37.498270652860604 ,126.8139452871648),
            new daum.maps.LatLng(37.506122588837755,  126.82252130416384),
            new daum.maps.LatLng(37.508700168206076, 126.82450298001231)
           
            
        ]
    },{
        name : '���۱�',
        path : [
            new daum.maps.LatLng(37.484995194039676 , 126.90307210948215),
            new daum.maps.LatLng(37.51528418182099,  126.92738044696725),
            new daum.maps.LatLng(37.5175145918921,  126.94987706404476),
            new daum.maps.LatLng( 37.507021429569214 ,126.9752496293228),
            new daum.maps.LatLng( 37.50675435375124 , 126.98043817116222 ),
            new daum.maps.LatLng(37.50283497489913, 126.98040526560432 ),
            new daum.maps.LatLng(37.500006548205626, 126.98547242015132),
            new daum.maps.LatLng( 37.49678059703499 , 126.98287209548516 ),
            new daum.maps.LatLng(37.47659784239241, 126.98172354834),
            new daum.maps.LatLng(37.47546037067219, 126.97078033055077),
            new daum.maps.LatLng( 37.483710838966964, 126.96114397472358 ),
            new daum.maps.LatLng(37.49326164620121, 126.96152349761094),
            new daum.maps.LatLng(37.48499519867747, 126.90307776282408)
           
        ]
    },{
        name : '��õ��',
        path : [
            new daum.maps.LatLng(37.48541219781162, 126.87464355624407),
            new daum.maps.LatLng(37.486682066769575, 126.87842643505759),
            new daum.maps.LatLng(37.478276888190386, 126.89884963550404 ),
            new daum.maps.LatLng(37.4788329571121, 126.90958936499783 ),
            new daum.maps.LatLng(37.45764483876509, 126.9144975920333),
            new daum.maps.LatLng(37.450734426904766 ,126.92860977815987),
            new daum.maps.LatLng(37.43413762496859, 126.90313490537977),
            new daum.maps.LatLng( 37.48485215423985, 126.87122987727624),
            new daum.maps.LatLng(37.48541670584169, 126.87464637540094)
           
           
            
        ]
    },{
        name : '���Ǳ�',
        path : [
            new daum.maps.LatLng(37.450734423491305 , 126.92860412739365),
            new daum.maps.LatLng(37.45764483672071, 126.91449476639119),
            new daum.maps.LatLng(37.47882844990814, 126.90958654398622),
            new daum.maps.LatLng( 37.478276897868305 , 126.8988609411741),
            new daum.maps.LatLng(  37.484995191720685 , 126.9030692828112 ),
            new daum.maps.LatLng( 37.49326164528046 , 126.96152067062506),
            new daum.maps.LatLng(37.48370858644595, 126.96114397589008),
            new daum.maps.LatLng(37.475460369973234, 126.97077750423527 ),
            new daum.maps.LatLng(37.47659784282954 , 126.98172637469854 ),
            new daum.maps.LatLng(37.4583172091685 ,  126.98879217446678  ),
            new daum.maps.LatLng(37.44605859171111 ,  126.96438419415136 ),
            new daum.maps.LatLng(37.440579864264855 , 126.96257878879041 ),
            new daum.maps.LatLng(37.43653344546431 , 126.93889725194528  ),
            new daum.maps.LatLng(37.45073217266568 , 126.92860695491753 )
            
           
            
        ]
    },{
        name : '���ı�',
        path : [
            new daum.maps.LatLng(37.525651340091386 , 127.06690853075564 ),
            new daum.maps.LatLng(37.52267533001628  , 127.07860853164864  ),
            new daum.maps.LatLng(37.5238213877459 , 127.0825945812217  ),
            new daum.maps.LatLng(37.5411250802832 , 127.10778142468698  ),
            new daum.maps.LatLng( 37.54379091526498  , 127.10900451489553 ),
            new daum.maps.LatLng(37.5386544226794 , 127.12353937275992 ),
            new daum.maps.LatLng(37.528128432991004 , 127.11920602535551 ),
            new daum.maps.LatLng(37.51680455656409 , 127.1457841503812 ),
            new daum.maps.LatLng(37.50717104995919 , 127.13980219865007 ),
            new daum.maps.LatLng(37.50006166358062 ,  127.16136644093318  ),
            new daum.maps.LatLng(37.490624307212045 ,  127.157524189328 ),
            new daum.maps.LatLng(37.48207740835293 , 127.1477150322393 ),
            new daum.maps.LatLng(37.474045530096824 , 127.14356157870895  ),
            new daum.maps.LatLng(37.474887220662474 , 127.13264239587203 ),
            new daum.maps.LatLng(37.46816544657647 , 127.13285660168061 ),
            new daum.maps.LatLng(37.4672761706164  , 127.12413679986464  ),
            new daum.maps.LatLng(37.48920466031583  , 127.10789052554611  ),
            new daum.maps.LatLng( 37.492524722448  , 127.10301031846606  ),
            new daum.maps.LatLng(37.502350810740424  , 127.07171963746983  ),
            new daum.maps.LatLng(37.52562431004371  , 127.06690850661485  )
            
        ]
    },{
        name : '������',
        path : [
            new daum.maps.LatLng(37.5256023840182  , 127.00887369465872  ),
            new daum.maps.LatLng(37.533791570619606   , 127.01719050084459   ),
            new daum.maps.LatLng(37.53581592444076  , 127.02116513739213   ),
            new daum.maps.LatLng(37.535822375965196  , 127.03980273360729   ),
            new daum.maps.LatLng( 37.53423885106505   , 127.04604446290827  ),
            new daum.maps.LatLng(37.528332892702565  , 127.05620860416435  ),
            new daum.maps.LatLng(37.52563106915784  , 127.06690568444444  ),
            new daum.maps.LatLng(37.50235081245693  , 127.0717168101429  ),
            new daum.maps.LatLng(37.49252697496253 , 127.10301032155957  ),
            new daum.maps.LatLng(37.48920691283126  ,  127.1078905287858   ),
            new daum.maps.LatLng(37.4672761735851  ,  127.12413397386356  ),
            new daum.maps.LatLng(37.458635837907124  , 127.11716003833003  ),
            new daum.maps.LatLng(37.46239527228111  , 127.10522962914828   ),
            new daum.maps.LatLng(37.45634818410166  , 127.0961792508741  ),
            new daum.maps.LatLng(37.475386633710066  , 127.08426530044609  ),
            new daum.maps.LatLng(37.46776519384094   , 127.05079660187171   ),
            new daum.maps.LatLng(37.48578898775053   , 127.04158243857061   ),
            new daum.maps.LatLng( 37.48463807491345   , 127.03416464119742   ),
            new daum.maps.LatLng(37.52457447977975   , 127.01608257218972   ),
            new daum.maps.LatLng(37.52298907429078   , 127.01318624951017   ),
            new daum.maps.LatLng(37.52559787964437 , 127.00886520950637 )
            
            
        ]
    },{
        name : '���ʱ�',
        path : [
            new daum.maps.LatLng(37.45832171342665 , 126.98878369678239 ),
            new daum.maps.LatLng(37.4765955903054 , 126.98172637524699 ),
            new daum.maps.LatLng(37.49678059744484 , 126.98287492260421  ),
            new daum.maps.LatLng(37.49999979031219 , 126.98546959422006  ),
            new daum.maps.LatLng( 37.50283722741322  , 126.98040526501563 ),
            new daum.maps.LatLng(37.50678138296578 , 126.98043250911688 ),
            new daum.maps.LatLng(37.50654785681104 , 126.98553618486218 ),
            new daum.maps.LatLng(37.51308966942281 , 126.99069553745495 ),
            new daum.maps.LatLng(37.522901803693266 , 127.00612728533444 ),
            new daum.maps.LatLng(37.52558436461136 ,  127.00886520790708  ),
            new daum.maps.LatLng(37.52298682210003 ,  127.0131834210061 ),
            new daum.maps.LatLng(37.52457448131967 , 127.01607125951959 ),
            new daum.maps.LatLng(37.48463807491345 , 127.03416464119742  ),
            new daum.maps.LatLng(37.48578673721996 , 127.041576783914 ),
            new daum.maps.LatLng(37.4677629413142 , 127.05079660034758 ),
            new daum.maps.LatLng(37.475386635725606 , 127.08426247413607 ),
            new daum.maps.LatLng(37.45635269605768 , 127.09617077986529 ),
            new daum.maps.LatLng( 37.44135743932635 , 127.08135689411158 ),
            new daum.maps.LatLng(37.44193985446824 , 127.07249815552778 ),
            new daum.maps.LatLng(37.431128442437235 , 127.0712222854323 ),
            new daum.maps.LatLng( 37.43099624884187 , 127.047359577055 ),
            new daum.maps.LatLng(37.440370936728584  ,127.03561350348885 ),
            new daum.maps.LatLng(37.46603311408258  , 127.03092327397646 ),
            new daum.maps.LatLng(37.46002204264107   , 127.02713996558485   ),
            new daum.maps.LatLng(37.456698455646894  , 127.02156383677382  ),
            new daum.maps.LatLng(37.45608952173754 , 127.01048453639156 ),
            new daum.maps.LatLng( 37.467046199341496 , 127.00469842024077),
            new daum.maps.LatLng(37.46704622561946 , 126.99601695108583 ),
            new daum.maps.LatLng( 37.46228891635493 , 126.99710231833704 ),
            new daum.maps.LatLng(37.458319461163605 , 126.98878652278943 )
        ]
    }
];


var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = { 
        center: new daum.maps.LatLng(37.566826, 126.9786567), // ������ �߽���ǥ
        level: 8 // ������ Ȯ�� ����
    };

var map = new daum.maps.Map(mapContainer, mapOption),
customOverlay = new daum.maps.CustomOverlay({}),
infowindow = new daum.maps.InfoWindow({removable: true});


// ������ ���������͸� ���������� ǥ���մϴ� 
for (var i = 0, len = areas.length; i < len; i++) {
    displayArea(areas[i]);
   // alert(areas[i].lat);
}



// �ٰ����� �����ϰ� �̺�Ʈ�� ����ϴ� �Լ��Դϴ�
function displayArea(area) {

    // �ٰ����� �����մϴ� 
    var polygon = new daum.maps.Polygon({
        map: map, // �ٰ����� ǥ���� ���� ��ü
        path: area.path,
        strokeWeight: 0,
        strokeColor: '#004c80',
        strokeOpacity: 0.8,
        fillColor: '#fff',
        fillOpacity: 0.2 
    });
    
    
    // �ٰ����� mouseover �̺�Ʈ�� ����ϰ� �̺�Ʈ�� �߻��ϸ� �������� ä����� �����մϴ� 
    // �������� ǥ���ϴ� Ŀ���ҿ������̸� �������� ǥ���մϴ�
    daum.maps.event.addListener(polygon, 'mouseover', function(mouseEvent) {
        polygon.setOptions({fillColor: '#09f'});

 		customOverlay.setContent('<div class="area">' + area.name + '</div>');
        
        customOverlay.setPosition(mouseEvent.latLng); 
        customOverlay.setMap(map);

    });
    
    // �ٰ����� mousemove �̺�Ʈ�� ����ϰ� �̺�Ʈ�� �߻��ϸ� Ŀ���� ���������� ��ġ�� �����մϴ� 
    daum.maps.event.addListener(polygon, 'mousemove', function(mouseEvent) {
        
        customOverlay.setPosition(mouseEvent.latLng); 
    });



    // �ٰ����� mouseout �̺�Ʈ�� ����ϰ� �̺�Ʈ�� �߻��ϸ� �������� ä����� ���������� �����մϴ�
    // Ŀ���� �������̸� �������� �����մϴ� 
    daum.maps.event.addListener(polygon, 'mouseout', function() {
        polygon.setOptions({fillColor: '#fff'});
        customOverlay.setMap(null);

    }); 
    
    
    // �ٰ����� click �̺�Ʈ�� ����ϰ� �̺�Ʈ�� �߻��ϸ� �ٰ����� �̸��� ������ ���������쿡 ǥ���մϴ� 
    daum.maps.event.addListener(polygon, 'click', function(mouseEvent) {
        var content = '<div class="info">' + 
                    '   <div class="title">' + area.name + '</div>' +
                    '   <div class="size">�� ���� : �� ' + Math.floor(polygon.getArea()) + ' m<sup>2</sup></area>' +
                    '</div>';

        infowindow.setContent(content); 
        infowindow.setPosition(mouseEvent.latLng); 
        infowindow.setMap(map);
    });
   
}


//������ Ŭ�� �̺�Ʈ�� ����մϴ�
//������ Ŭ���ϸ� ������ �Ķ���ͷ� �Ѿ�� �Լ��� ȣ���մϴ�
daum.maps.event.addListener(map, 'click', function(mouseEvent) {        
 
 // Ŭ���� ����, �浵 ������ �����ɴϴ� 
 var latlng = mouseEvent.latLng;
 
 var message = 'Ŭ���� ��ġ�� ������ ' + latlng.getLat() + ' �̰�, ';
 message += '�浵�� ' + latlng.getLng() + ' �Դϴ�';
 
 var resultDiv = document.getElementById('result'); 
 resultDiv.innerHTML = message;
 
});



</script>
	



	<script>
	
		// ��Ŀ Ŭ�����ͷ��� �����մϴ� 
		// ��Ŀ Ŭ�����ͷ��� ������ �� disableClickZoom ���� true�� �������� ���� ���
		// Ŭ������ ��Ŀ�� Ŭ������ �� Ŭ������ ��ü�� �����ϴ� ��Ŀ���� ��� �� ���̵��� ������ ������ ������ �����մϴ� 
		// �� ���������� disableClickZoom ���� true�� �����Ͽ� �⺻ Ŭ�� ������ ����
		// Ŭ������ ��Ŀ�� Ŭ������ �� Ŭ���� Ŭ������ ��Ŀ�� ��ġ�� �������� ������ 1������ Ȯ���մϴ� 

		var clusterer = new daum.maps.MarkerClusterer({
			map : map, // ��Ŀ���� Ŭ�����ͷ� �����ϰ� ǥ���� ���� ��ü 
			averageCenter : true, // Ŭ�����Ϳ� ���Ե� ��Ŀ���� ��� ��ġ�� Ŭ������ ��Ŀ ��ġ�� ���� 
			minLevel : 4, // Ŭ������ �� �ּ� ���� ���� 
			disableClickZoom : true
		// Ŭ������ ��Ŀ�� Ŭ������ �� ������ Ȯ����� �ʵ��� �����Ѵ� 
		});
		
		
		// �˻� ��� ����̳� ��Ŀ�� Ŭ������ �� ��Ҹ��� ǥ���� ���������츦 �����մϴ�
		var infowindow = new daum.maps.InfoWindow({zIndex:1});

		
		
		

		// �����͸� �������� ���� jQuery�� ����մϴ�
		// �����͸� ������ ��Ŀ�� �����ϰ� Ŭ�����ͷ� ��ü�� �Ѱ��ݴϴ�

		function firstMarker() { //�ʱ� ������ 
			$.ajax({
				type : "POST",
				url : "firstEdu.do",
				dataType : "json",
				error : function(e) {
					alert("��������!");
					alert(e);
				},
				success : function(data) {
					var markers = $(data.positions).map(
							function(i, position) {
								return new daum.maps.Marker({
									position : new daum.maps.LatLng(
											position.lat, position.lng)
								});

							});
					// Ŭ�����ͷ��� ��Ŀ���� �߰��մϴ�
					clusterer.addMarkers(markers);

					gotoPage(1);
				}
			});
		}
		firstMarker();

		// Ȯ�������� �̺�Ʈó���� �ϱ� ����
		// ��Ŀ Ŭ�����ͷ��� Ŭ���̺�Ʈ�� ����մϴ� 
		// ��Ŀ Ŭ�����ͷ��� ������ �� disableClickZoom�� true�� �������� ���� ��� 
		// �̺�Ʈ ��鷯�� cluster ��ü�� �Ѿ���� ���� ���� �ֽ��ϴ� 
		daum.maps.event.addListener(clusterer, 'clusterclick',
				function(cluster) {
					// ���� ���� �������� 1���� Ȯ���� ���� 
					var level = map.getLevel() - 1;
					// ������ Ŭ���� Ŭ�������� ��Ŀ�� ��ġ�� �������� Ȯ���մϴ� 
					map.setLevel(level, {
						anchor : cluster.getCenter()
					});
				});

		/*		
		 function makeList() {
		 $.ajax({
		 type : "POST",
		 url : "eduJson2.do",
		 dataType : "json",
		 data :{
		 current : '1'
		 },
		 error : function(e) {
		 alert("��������!");
		 alert(e);
		 },
		 success : function(data) {
		 displayPagination(data['pagination'],data['current']);
		 }
		 });
		 }
		 makeList();
		
		 */

		function gotoPage(i) { //page �̵��� ��
			$.ajax({
				type : "POST",
				url : "eduJson.do",
				dataType : "json",
				data : {
					current : i
				},
				error : function(e) {
					alert("��������!");
					alert(e);
				},
				success : function(data) {
					displayPlaces(data['positions']); //����Ʈ ���
					displayPagination(data['pagination'], i); //����Ʈ ����
				}
			});
		}

		// �˻� ��� ��ϰ� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
		function displayPlaces(places) {

			var listEl = document.getElementById('placesList'), menuEl = document
					.getElementById('menu_wrap'), fragment = document
					.createDocumentFragment(),
			//   bounds = new daum.maps.LatLngBounds(), 
			listStr = '';

			var marker = '';

			// �˻� ��� ��Ͽ� �߰��� �׸���� �����մϴ�
			removeAllChildNods(listEl);

			// ������ ǥ�õǰ� �ִ� ��Ŀ�� �����մϴ�
			//clusterer.addMarkers(null);
			//removeMarker();

			for (var i = 0; i < places.length; i++) {

				// ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
				//var placePosition = new daum.maps.LatLng(places[i].latitude, places[i].longitude),
				//    marker = addMarker(placePosition, i), 
				var itemEl = getListItem(i, places[i]); // �˻� ��� �׸� Element�� �����մϴ�

				// �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
				// LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
				// bounds.extend(placePosition);

				// ��Ŀ�� �˻���� �׸� mouseover ������
				// �ش� ��ҿ� ���������쿡 ��Ҹ��� ǥ���մϴ�
				// mouseout ���� ���� ���������츦 �ݽ��ϴ�
				(function(places, i) {

					itemEl.onmouseover = function() {
						//displayOneMarker(marker, lat, lng);
						displayInfowindow(places);
						
						var test = document.getElementById('seq_' + i);
						test.style.backgroundColor = "#B2CCFF";
					};

					itemEl.onmouseout = function() {
						//removeMarker(marker);
						
						// �Ʒ� �ڵ�� ���������츦 �������� �����մϴ�
						//removeInfowindow(infowindow);
						infowindow.close();

						var test = document.getElementById('seq_' + i);
						test.style.backgroundColor = "#EAEAEA";
					};

					itemEl.onclick = function() {
						//window.location.href="academy.do?year="+year+"&month="+temp;
						window.location.href = "academy.do";
					};

				})(places[i], i);

				fragment.appendChild(itemEl);
			}

			// �˻���� �׸���� �˻���� ��� Elemnet�� �߰��մϴ�
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;

			// �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
			//map.setBounds(bounds);
		}

		// �˻���� ��� �Ǵ� ��Ŀ�� Ŭ������ �� ȣ��Ǵ� �Լ��Դϴ�
		// map�� ��Ŀ�� ǥ���մϴ�
/*
		function displayOneMarker(maker, lat, lng) {
			///////////////////////////////////////Ŭ���� ��ġ �˷��ֱ�!!////////////////////////////////////////////////
			var imageSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png', // ��Ŀ�̹����� �ּ��Դϴ�    
			imageSize = new daum.maps.Size(35, 50), // ��Ŀ�̹����� ũ���Դϴ�
			imageOption = {
				offset : new daum.maps.Point(27, 69)
			}; // ��Ŀ�̹����� �ɼ��Դϴ�. ��Ŀ�� ��ǥ�� ��ġ��ų �̹��� �ȿ����� ��ǥ�� �����մϴ�.

			// ��Ŀ�� �̹��������� ������ �ִ� ��Ŀ�̹����� �����մϴ�
			var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
					imageOption), markerPosition = new daum.maps.LatLng(lat,
					lng); // ��Ŀ�� ǥ�õ� ��ġ�Դϴ�

			// ��Ŀ�� �����մϴ�
			marker = new daum.maps.Marker({
				position : markerPosition,
				image : markerImage
			// ��Ŀ�̹��� ���� 
			});

			// ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
			marker.setMap(map);

		}

		function removeMarker(maker) {
			marker.setMap(null);
		}
*/
		// ���������쿡 ��Ҹ��� ǥ���մϴ�
		function displayInfowindow(places) {

			var iwContent = '<div class="item"><span class="markerbg" style="float: left;"></span><div class="info" style="float: left;"><span class="name">' 
				+ places.name + '</span><span>�п� ������ ����??</span><span>' 
				+ places.address + '</span><span class="tel">' 
				+ places.tel + '</span></div></div>';
			iwPosition = new daum.maps.LatLng(places.lat, places.lng), //���������� ǥ�� ��ġ�Դϴ�
			iwRemoveable = false; // removeable �Ӽ��� ture �� �����ϸ� ���������츦 ���� �� �ִ� x��ư�� ǥ�õ˴ϴ�

			infowindow.setContent(iwContent);
			infowindow.setPosition(iwPosition);
			
			infowindow.open(map); 
		}

		
		function removeInfowindow(infowindow) {
			infowindow.close();
		}
		
		
		
		
		// �˻���� �׸��� Element�� ��ȯ�ϴ� �Լ��Դϴ�
		function getListItem(index, places) {

			var el = document.createElement('li'), itemStr = '<div id="seq_'
					+ (index) + '"><span class="markerbg marker_' + (index)
					+ '"></span>' + '<div class="info">'
					+ '   <span class="name">' + places.name + '</span>'
					+ '<span>�п� ������ ����??</span>';

			if (places.newAddress) {
				itemStr += '    <span>' + places.newAddress + '</span>'
						+ '   <span class="jibun gray">' + places.address
						+ '</span>';
			} else {
				itemStr += '    <span>' + places.address + '</span>';
			}

			itemStr += '  <span class="tel">' + places.tel + '</span>'
					+ '</div></div>';

			el.innerHTML = itemStr;
			el.className = 'item';

			return el;
		}

		// �˻���� ��� �ϴܿ� ��������ȣ�� ǥ�ô� �Լ��Դϴ�
		function displayPagination(pagination, current) { //�ʱ� �޾ƿ��°�!!
			var paginationEl = document.getElementById('pagination'), fragment = document
					.createDocumentFragment(), i;

			// ������ �߰��� ��������ȣ�� �����մϴ�
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}

			var length = pagination[0].last / 10;

			//alert(length);
			// alert(current);

			for (i = 1; i <= length; i++) {
				var el = document.createElement('a');
				el.href = "#";
				el.innerHTML = i;

				if (i == current) {
					el.className = 'on';
				} else {
					el.onclick = (function(i) {
						return function() {
							gotoPage(i); //ajax�Լ��� !!
						}
					})(i);
				}

				fragment.appendChild(el);
			}
			paginationEl.appendChild(fragment);
		}

		// �˻���� ����� �ڽ� Element�� �����ϴ� �Լ��Դϴ�
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}
	</script>

</body>
</html>
