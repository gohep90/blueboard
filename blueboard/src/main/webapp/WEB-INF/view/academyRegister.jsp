<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배가 : 강의등록</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/academyRegister.js'/>"></script>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/academyRegister.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/teb3.css'/>" />

<!--탭기능-->
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


<!-- 동적 div추가,제거-->
<script type="text/javascript">

    function add_item(){
        // pre_set 에 있는 내용을 읽어와서 처리..
        var div = document.createElement('div');
        div.innerHTML = document.getElementById('pre_set').innerHTML;
        document.getElementById('field').appendChild(div);
    }
 
    function remove_item(obj){
        // obj.parentNode 를 이용하여 삭제
        document.getElementById('field').removeChild(obj.parentNode);
    }

</script>

<script type="text/javascript">
<!--
    function add_item2(){
        // pre_set 에 있는 내용을 읽어와서 처리..
        var div = document.createElement('div');
        div.innerHTML = document.getElementById('pre_set2').innerHTML;
        document.getElementById('field2').appendChild(div);
	
    }
 
    function remove_item2(obj){
        // obj.parentNode 를 이용하여 삭제
        document.getElementById('field2').removeChild(obj.parentNode);
    }
//-->
</script>

<!--1단계 버튼 클릭기능-->
<script>
function button1_click() {
	var index = $("#first").parent().children().index(this);
	$("#second").siblings().removeClass();
	$("#second").addClass('on');
	$("#information").hide();
	$("#second_content").show();
	};
</script>

<!--2단계 버튼 클릭기능-->
<script>
function button2_click() {
	var index = $("#second").parent().children().index(this);
	$("#third").siblings().removeClass();
	$("#third").addClass('on');
	$("#information").hide();
	$("#second_content").hide();
	$("#teb3").show();
	};
</script>

<!--3단계 버튼 클릭기능-->
<script>
function button3_click() {
	var index = $("#third").parent().children().index(this);
	$("#fourth").siblings().removeClass();
	$("#fourth").addClass('on');
	$("#information").hide();
	$("#second_content").hide();
	$("#teb3").hide();
	$("#teb4").show();
	};
</script>

</head>

<body>


	<div id="main_content">


		<div class="logo">
			<a href="main.do"><img class="logo_img"
				src="images/register_logo.png" /></a>
		</div>

		<div id="teb">
			<!-- 
			<form id="formData" action="insertAcademy.do" method="post" enctype="multipart/form-data">
			 -->
			<div class="jq_tabonoff comm_tab1">
				<ul class="jq_tab tab_menu">
					<li id="first"><a href="javascript:;" class="tit">1단계</a>
					<p>Step 1</p></li>
					<li id="second"><a href="javascript:;" class="tit">2단계</a>
					<p>Step 2</p></li>
					<li id="third"><a href="javascript:;" class="tit">3단계</a>
					<p>Step 3</p></li>
					<li id="fourth"><a href="javascript:;" class="tit">4단계</a>
					<p>Step 4</p></li>
				</ul>
				<div class="jq_cont tab_cont">
					<!-- //탭1 -->
					<div id="information" class="cont">
						<img id="Title2" src="images/SUBPAGE/TITLE1.png" width="270">
						<br> <br> <br>

						<div id="name" class="ddiv">
							<div id="name_name" class="name">
								<h2>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</h2>
							</div>
							<input type="text" name="teacherName" id="teacherName" class="content" maxlength="10">
						</div>

						<div id="career" class="ddiv">
							<div id="career_name" class="name">
								<h2>연&nbsp;&nbsp;&nbsp;락&nbsp;&nbsp;&nbsp;처</h2>
							</div>
							<input type="text" name="teacherTel" id="teacherTel" class="content"
								maxlength="20" placeholder="'-'없이 입력">
						</div>

						<div id="book" class="ddiv">
							<div id="book_name" class="name">
								<h2>경 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;력</h2>
							</div>
							<textarea name="teacherCareer" id="teacherCareer" class="Lcontent" rows="7"></textarea>
						</div>

						<div id="etc" class="ddiv">
							<div id="etc_name" class="name"> 
								<h2>강 사 소 개</h2>
							</div>
							<textarea name="teacherIntro" id="teacherIntro" class="Lcontent" rows="7"></textarea>

						</div>
						<button class="next" value="버튼1">
							<img src="images/next.png" onClick="button1_click();">
						</button>
						<button class="save" value="버튼1" onClick="button1_click();">
							<img src="images/save.png">
						</button>

					</div>
					<!-- 탭1// -->

					<!-- //탭2 -->
					<div class="cont" id="second_content">
						<img id="Title1" src="images/SUBPAGE/TITLE2.png" width="250">
						<div id="information" class="cont">
							
							<div id="academy" class="ddiv" >
								<div id="academy_name" class="name" style="float:left;">
									<h2>강 좌 이 름</h2>
								</div>
								<input type="text" name="academyName" id="academyName" class="content">
							</div>

							<div id="period" class="ddiv" >
								<div id="period_name" class="name" style="float:left;">
									<h2>기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;간</h2>
								</div>
								<input type="text" name="academyTerm" id="academyTerm" class="content">
							</div>

							<div id="day" class="ddiv">
								<div id="day_name" class="name">
									<h2>요&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 일</h2>
								</div>
								<input type="text" name="academyWeek" id="academyWeek" class="content">
							</div>

							<div id="time" class="ddiv">
								<div id="time_name" class="name">
									<h2>시&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 간</h2>
								</div>
								<input type="text" name="academyTime" id="academyTime" class="content">
							</div>

							<div id="money" class="ddiv">
								<div id="money_name" class="name">
									<h2>금&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 액</h2>
								</div>
								<input type="text" name="academyPay" id="academyPay" class="content">
							</div>
							
							<div id="total" class="ddiv">
								<div id="total_name" class="name">
									<h2>인&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 원</h2>
								</div>
								<input type="text" name="academyTotal" id="academyTotal" class="content">
							</div>
							
							<div id="address" class="ddiv">
								<div id="address_name" class="name">
									<h2>주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 소</h2>
								</div>
								<input type="text" name="academyAddress" id="academyAddress" class="content" style="width:500px;">
							</div>

							<div id="introduce" class="ddiv">
								<div id="introduce_name" class="name">
									<h2>강 좌 소 개</h2>
								</div>
								<textarea name="academyIntro" id="academyIntro" class="Lcontent" rows="7"></textarea>
							</div>

							<div id="curriculum" class="ddiv">
								<div id="curriculum_name" class="name">
									<h2>커 리 큘 럼</h2>
								</div>
								<textarea name="academyCurriculum" id="academyCurriculum"  class="Lcontent" rows="10"></textarea>
							</div>

							<div id="category" class="ddiv">
								<div id="category_name" class="name">
									<h2>카 테 고 리</h2>
								</div>
								<div id="category_content"  class="Lcontent" style="float: right;">
									<select id="lCategory" name="lCategory" class="selectmenu">
										<option value="스포츠">스포츠</option>
									</select> 
									<select id="sCategory"  name="sCategory" class="selectmenu">
										<option value="피트니스">피트니스</option>
										<option value="요가">요가</option>
										<option value="필라테스">필라테스</option>
										<option value="스피닝">스피닝</option>
										<option value="댄스">댄스</option>
										<option value="격투기">격투기</option>
										<option value="수영">수영</option>
									</select>
								</div>
							</div>
						</div>
						<button class="next" value="버튼1">
							<img src="images/next.png" onClick="button2_click();">
						</button>
						<button class="save" value="버튼1" onClick="button1_click();">
							<img src="images/save.png">
						</button>
					</div>
					<div class="cont" id="teb3">
						<div id="Step3">
							<form id="formData" action="insertPhoto.do" method="post" enctype="multipart/form-data">
								<input type="hidden" id="academyId" name="academyId" value="SKT">
							
								<h2 style="font-weight: 400;">대표이미지</h2>
								<div class="filebox" style="margin: auto; border-bottom: 1px solid black;">
									<input type="file" id="img1" name="img1" style="width: 100%; margin-bottom: 15px;" >
								</div>
								
								<h2 style="font-weight: 400;">이미지1</h2>
								<div class="filebox" style="margin: auto; border-bottom: 1px solid black;">
									<input type="file" id="img2" name="img2" style="width: 100%; margin-bottom: 15px;" >
								</div>
								
								<h2 style="font-weight: 400;">이미지2</h2>
								<div class="filebox" style="margin: auto; border-bottom: 1px solid black;">
									<input type="file" id="img3" name="img3" style="width: 100%; margin-bottom: 15px;" >
								</div>
								
								<h2 style="font-weight: 400;">이미지3</h2>
								<div class="filebox" style="margin: auto; border-bottom: 1px solid black;">
									<input type="file" id="img4" name="img4" style="width: 100%; margin-bottom: 15px;" >
								</div>
							</form>
							<h2 id="h2_border" style="font-weight: 400;">강좌영상</h2>
							<textarea name="video_plus" id="video_plus" rows="5"
								placeholder="URL을 입력하시오."
								style="font-size: 17px; width: 98%; margin-bottom: 30px; margin-top: 10px;"></textarea>
						</div>
						<button class="next" value="버튼1">
							<img src="images/next.png" onClick="button3_click();">
						</button>
						<button class="save" value="버튼1" onClick="button1_click();">
							<img src="images/save.png">
						</button>
					</div>
					<!--탭3 //-->
					<!-- 키워드를 입력할 텍스트 공간과 디비로 보낼 이벤트를 걸어줄 버튼을 만들어놓고 버튼 클릭시 디비내용을 뿌려줄 div공간을 만들어놓았다.-->
					<!--탭4-->
					<div class="cont" id="teb4">
						<div id="Step4">
							<div style="width: 100%; height: auto; border-bottom: 1px dotted black; padding-bottom: 3px;">
								<input type="text" name="keyword" id="keyword"
									placeholder=" 키워드를 입력해주세요.(예: 왕십리, 회화)" maxlength="20"
									style="font-size: 20px; width: 75%; height: 40px; border: none;">

								<!--키워드 디비에 보내는 함수 onClick에 넣어야함-->

								<input type="button" value=" 추가 " onclick=""
									style="width: 115px; height: 45px; cursor: pointer; display: block; border: none; font-size: 24px; color: white; font-weight: bold; background-color: #FFD757; margin-right: 0px; float: right;">
							</div>
							<div id="keyword_content"
								style="width: 90%; height: auto; padding-top: 10px; padding-bottom: 10px; margin: auto; color: #6CF; min-height: 300px;">
								회화 스피치</div>
						</div>

						<button class="next" id="register_button" value="" onClick="checkAcademy();">
							<img src="images/saveAcademy.png" width="80%">
						</button>
					</div>
					<!--탭4//-->
					
				</div>
				
				<div class="copyright_div">
					<img class="copyright" src="images/copyright.png" />
				</div>
				</div>

			<!-- 	</form> -->
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
		$(".selectmenu").selectmenu();
	})
	</script>
		</div>
	</div>

	<blockquote>&nbsp;</blockquote>
</body>
</html>
