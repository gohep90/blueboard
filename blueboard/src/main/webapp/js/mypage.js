
//////////////////클릭 이벤트///////////////////////////
var userCode=$('#userCode').text();

$(function(){
	$("#modify").click(function(){
		
		if(userCode=="2"){
			alert("페이스북 로그인 사용자는 개인정보를 수정할 수 없습니다.");
		}else{
			window.location="modify.do";
		}
	});
});



$(function(){
	$("#register").click(function(){
		
		//파일 다운로드는 나중에
		//window.location="downloadFile.do";
		window.location="academyAdmin.do";
		
	});
});


