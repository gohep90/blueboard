
//////////////////클릭 이벤트///////////////////////////

$(function(){
	$(".next").click(function(){
		if($('input:checkbox[id="ch1"]').is(":checked") == true && $('input:checkbox[id="ch2"]').is(":checked") == true){
			window.location="register.do";
		}
		else{
			alert("상기 내용에 동의해야 합니다.");
		}
	});
});

//////////////////클릭 이벤트///////////////////////////
