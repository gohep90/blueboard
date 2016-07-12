<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>푸른 칠판</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/reset.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/base.css'/>" />
<!--[if lte IE 9]>
<link rel="stylesheet" type="text/css" href="css/main_ie.css" />
<![endif]-->


</head>

<body>

<header id="firstheader">
	<h1><a href="main.do"><img src="images/logo.gif" alt="푸른 칠판" /></a></h1>
    
		<ul class="util">
			<li><a href="#">Home</a></li>
			<li><a href="#">About us</a></li>
			<li><a href="#">News</a></li>
			<li><a href="#">Contact</a></li>
		</ul>	
</header>
<div id="main_content">
	<h1>당신이 찾는 학원,<br/>푸른 칠판에는 다있다.</h1>
  <form name="sform" action="#" method="get" id="sform">
	  <fieldset>
			<legend class="skip">통합검색</legend>	
			<label for="sbox" class="skip">통합 검색어 입력</label><input type="search" id="sbox" class="tbox" placeholder="통합 검색어 입력" />
        <input type="image" class="sbtn" src="images/search.gif" alt="검색" />
    </fieldset>	
  </form>
</div>
<div id="content">
	<h1>학원 테마</h1>
    <h4>다양한 검색 조건으로 원하는 학원을 찾아보세요.</h4>
</div>
<div id="main_subject">
<div id="subject1"><a href='map.do'><img src="images/주제1.png" alt="푸른 칠판" /></a></div>
<div id="subject2"><a href="#"><img src="images/주제1.png" alt="푸른 칠판" /></a></div>
<div id="subject3"><a href="#"><img src="images/주제1.png" alt="푸른 칠판" /></a></div>
<div id="subject4"><a href="#"><img src="images/주제1.png" alt="푸른 칠판" /></a></div>
</div>
<hr />
<footer id="main_footer">
	<h3>
		(주)푸른 칠판<br/>대표이사:장지웅<br/>최고가 되자<br/>
		<small class="copy">Copyright &copy; 2016 Icox Education</small>
	</h3></footer>
</body>
</html>
