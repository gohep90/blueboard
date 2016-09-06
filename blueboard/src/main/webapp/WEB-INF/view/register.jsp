<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배가 : 회원가입</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='naver/css/ex1.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />
<link href="https://nid.naver.com/favicon_1024.png"
	rel="apple-touch-icon-precomposed" />
<script type="text/javascript" src="https://nid.naver.com/js/clickcr.js"></script>
<script type="text/javascript" src="<c:url value='naver/js/ex1.js'/>"></script>
<script type="text/javascript" src="https://nid.naver.com/inc/common/js/rsaAll.js"></script>
<script type="text/javascript" src="<c:url value='naver/js/ex2.js'/>"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="<c:url value='naver/js/ex3.js'/>"></script>
<script type="text/javascript" src="<c:url value='naver/js/ex4.js'/>"></script>
<script type="text/javascript" src="<c:url value='naver/js/ex5.js'/>"></script>

<script type="text/javascript">
<!--
//nClicks 전역변수
var nsc = "nid.join";
var ccsrv = "cc.naver.com";

var log1;
var log2;

$(document).ready(function() {
	log1 = new Aatlm();
	log1.sa(".join_form", "input:not(:radio, .int_join), a", ":not(:radio, .int_join), a");
	
	log2 = new Aatlnm();
	log2.sa(".join_form", "#id");
});

function getLenChar(texts) {
	texts = texts + "";
	return String.fromCharCode(texts.length);
}

function createRsaKey() {
	var rsa = new RSAKey();
	var sessionKey = "86P8brFj1fb1C8C2";
	var keyName = "100011215";
	var eValue = "ad8c44e56536cf2575c74a9ef9a88a6b4b828a16c2c8ed79238896a13f320c4c7f4e19b1032f0bc18877dd94b8bcd8a8f99409f753d191ebba3b2205ab8e53d4a903349ade16fa7302047897b36f44b0d2debd859153a7b5e6a6b7c36b30c43ecf0d2a474ff02a60da04903d01bfae3bbede9993d48333865c1862fc0166b7e7";
	var nValue = "010001";
	
	var id = document.getElementById("id").value;
	var pw = document.getElementById("pswd1").value;
	
	rsa.setPublic(eValue, nValue);
    
	var comVal = getLenChar(sessionKey) + sessionKey + getLenChar(id) + id;		
	document.getElementById("encPswd").value = rsa.encrypt(comVal + getLenChar(pw) + pw);
	document.getElementById("encKey").value = keyName;
	
	return true;
}


function reCaptcha() {
	document.getElementById("captchaimg").src = document.getElementById("captchaimg").src + "1";
}


//-->
</script>


<meta name="decorator" content="PC_JOIN_UNREAL">
</head>

<!-- PC-ko_KR -->
<body class="">
	<div id="wrap">

		<!-- PC-ko_KR -->
		<!-- header -->
		<div id="header">
			<img class="h_logo" src="images/register_logo.png" />
		</div>
		<!-- //header -->

		<!-- container -->
		<div id="container">

			<!-- content -->
			<div id="content">
				<h2 class="blind">네이버 회원가입</h2>
				<div class="join_content">
					<div class="join_form">

						<form id="join_form" method="post"
							action="insertUser.do" onSubmit="return mainSubmit(0);">
							<input type="hidden" id="birthday" name="birthday" value="">
							<input type="hidden" id="token_sjoin" name="token_sjoin"
								value="jmMaboDNOiAJqFZ2"> <input type="hidden"
								id="joinMode" name="joinMode" value="unreal"> <input
								type="hidden" id="pbirthday" name="pbirthday" value="">
							<input type="hidden" id="ptelecom" name="ptelecom" value="SKT">
							<input type="hidden" id="authFlag" name="authFlag" value="N">
							<input type="hidden" id="ipinFlag" name="ipinFlag" value="N">
							<input type="hidden" id="encPswd" name="encPswd" value="">
							<input type="hidden" id="encKey" name="encKey" value="">
							<input type="hidden" id="platform" name="platform" value="PC">
							<input type="hidden" id="old_mobno" name="old_mobno" value="">
							<input type="hidden" id="old_pmobno" name="old_pmobno" value="">
							<input type="hidden" id="old_imobno" name="old_imobno" value="">
							<input type="hidden" id="old_authno" name="old_authno" value="">
							<input type="hidden" id="agentType" name="agentType" value="">
							<input type="hidden" id="captcha_type" name="captcha_type"
								value="image"> <input type="hidden" id="chptchakey"
								name="chptchakey" value="x32FbuuNOi8a8qa3"> <input
								type="hidden" id="captchaMode" name="captchaMode" value="N">


							<fieldset class="join_from">
								<legend class="blind">회원가입</legend>
								<div class="row_group">
									<div id="idDiv" class="join_row">
										<span class="ps_box int_id"> <input type="text" id="id"
											name="id" value="" maxlength="20" autocomplete="off"
											onFocus="toggleLabel('idLb','id', 'in');"
											onBlur="toggleLabel('idLb','id', 'out');checkId('first')"
											placeholder="아이디" class="int"> <label id="idLb"
											for="id" class="lbl">아이디</label>
											<button type="button" disabled="" title="delete" class="wrg">삭제</button>
										</span>
										<!-- class:error e_info, error, error gm -->
										<div id="idMsg" class="error" style="display: none">필수
											정보입니다.</div>
									</div>
									<div id="pswd1Div" class="join_row">
										<!-- [D]normal상태 int_pass / 1단계 사용불가 int_pass_step1 / 2단계 낮음 int_pass_step2 / 3단계 적정 int_pass_step3 / 4단계 높음 int_pass_step4 -->
										<span id="pswd1Img" class="ps_box int_pass"> 
										<input
											type="password" id="pswd1" name="pswd1" maxlength="16"
											onFocus="toggleLabel('pswd1Lb','pswd1','in');"
											onBlur="toggleLabel('pswd1Lb','pswd1','out');checkPswd1('check')"
											onkeyup="checkShiftUp(event);"
											onkeypress="checkCapslock(event)"
											onKeydown="checkShiftDownJoin(event);"
											placeholder="비밀번호" class="int"> 
											<label id="pswd1Lb" for="pswd1" class="lbl">비밀번호</label>
											<button type="button" disabled="" title="delete" class="wrg">삭제</button>
										</span>
										<div id="pswd1Msg" class="error" style="display: none">필수 정보입니다.</div>
									</div>
									<div id="pswd2Div" class="join_row">
										<!-- [D]normal상태 int_pass_check / 비밀번호 확인완료 int_pass_check2  -->
										<span id="pswd2Img" class="ps_box int_pass_check"> 
										<input
											type="password" id="pswd2" name="pswd2" maxlength="16"
											onFocus="toggleLabel('pswd2Lb','pswd2','in');"
											onBlur="toggleLabel('pswd2Lb','pswd2','out');checkPswd2('check')"
											onkeyup="checkShiftUp(event);"
											onkeypress="checkCapslock2(event)"
											onKeydown="checkShiftDown(event);"
											placeholder="비밀번호 재확인" class="int"> 
											<label id="pswd2Lb" for="pswd2" class="lbl">비밀번호 재확인</label>
											<button type="button" disabled="" title="delete" class="wrg">삭제</button>
										</span>
										<div id="pswd2Msg" class="error" style="display: none">필수
											정보입니다.</div>
									</div>
								</div>





								<div class="row_group">
									<div id="nmDiv" class="join_row">
										<span class="ps_box"> <input type="text" id="nm"
											name="nm" maxlength="40" value=""
											onFocus="toggleLabel('nmLb','nm','in');"
											onBlur="toggleLabel('nmLb','nm','out');checkName('check')"
											placeholder="이름" class="int"> <label id="nmLb"
											for="nm" class="lbl">이름</label>
											<button type="button" disabled="" title="delete" class="wrg">삭제</button>
										</span>
										<div id="nmMsg" class="error" style="display: none">필수
											정보입니다.</div>
									</div>
									<div id="sexDiv" class="join_row join_sex">
										<span class="row_title blind"> 성별 </span> <span class="sex">
											<span class="jender"><input type="radio" id="man"
												name="sex" value="0" onClick="checkSex()" /><label
												id="manLb" for="man">남자 </label> </span><span class="jender"><input
												type="radio" id="woman" name="sex" value="1"
												onClick="checkSex()" /><label id="womanLb" for="woman">여자
											</label></span>
										</span> <span id="sexMsg" class="error" style="display: none">필수
											정보입니다.</span>
									</div>

									<div id="birthdayDiv" class="join_row join_birthday">
										<div class="join_birth">
											<div class="bir_title">
												<span>생일</span>
											</div>
											<div class="bir_yy">
												<span class="ps_box"> <input type="text" id="yy"
													maxlength="4" value=""
													onFocus="toggleLabel('yyLb','yy','in');"
													onBlur="toggleLabel('yyLb','yy','out');checkBirthday('check')"
													placeholder="년(4자)" class="int"> <label id="yyLb"
													for="yy" class="lbl">년(4자)</label>
													<button type="button" disabled="" title="delete"
														class="wrg">삭제</button>
												</span>
											</div>
											<span class="cell">|</span>
											<div class="bir_mm">
												<span class="ps_box"> <select id="mm" title="월"
													class="sel" onChange="checkBirthday('check')">
														<option value="">월</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
												</select>
												</span>
											</div>
											<span class="cell">|</span>
											<div class=" bir_dd">
												<span class="ps_box"> <input type="text" id="dd"
													maxlength="2" value=""
													onFocus="toggleLabel('ddLb','dd','in');"
													onBlur="toggleLabel('ddLb','dd','out');checkBirthday('check')"
													placeholder="일" class="int"> <label id="ddLb"
													for="dd" class="lbl">일</label>
													<button type="button" disabled="" title="delete"
														class="wrg">삭제</button>
												</span>
											</div>
										</div>
										<span id="birthdayMsg" class="error" style="display: none">필수
											정보입니다.</span>
									</div>
									<div id="emailDiv" class="join_row join_email">
										<span class="ps_box int_email"> <input type="text"
											id="email" name="email" maxlength="100" value=""
											onFocus="toggleLabel('emailLb','email','in');"
											onBlur="toggleLabel('emailLb','email','out');checkEmail('check')"
											placeholder="비상연락용 이메일" class="int"> <label
											id="emailLb" for="email" class="lbl">비상연락용 이메일</label>
											<button type="button" disabled="" title="delete" class="wrg">삭제</button>
										</span>
										<div id="emailMsg" class="error" style="display: none">필수 정보입니다.</div>
									</div>
								</div>
							</fieldset>
							
							<div class="error_ch"><span id="joinMsg" class="error" style="display:none">가입정보를 확인해주세요.</span></div>		
							<span class="btn_join">
								<input type="submit" onClick="clickcr(this, 'sup.signup', '', '', event);"
										title="회원가입" alt="회원가입" value="가입하기" class="int_join">
							</span>
						</form>
						<div class="copyright_div">
							<img class="copyright" src="images/copyright.png"/>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script type="text/javascript">
			checkBrowser();

			if ("Y" == "N") {
				mainSubmit(0);
			}
		</script>

		<!-- footer -->
		<div id="footer"></div>
		<!-- //footer -->

	</div>
</body>
</html>