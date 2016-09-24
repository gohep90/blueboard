
function modifyFirst() { //page 이동할 때
	$.ajax({
		type : "POST",
		url : "modifyFirst.do",
		async:false,
		dataType : "json",
		data : {
		},
		error : function(e) {
			alert("에러났소!");
			alert(e);
		},
		success : function(data) {
			
			var list=data['modify'];
			var year=list[0].userBirthday.substring(0,4);
			var month=list[0].userBirthday.substring(4,6);
			var day=list[0].userBirthday.substring(6,9);
			
			$('#id').val(list[0].userId);
			$('#nm').val(list[0].userName);
			$('#email').val(list[0].userEmail);
			$('#yy').val(year);
			$('#mm').val(month);
			$('#dd').val(day);
			if(list[0].userSex =='남성'){
				var man = document.getElementById("man").checked=true;
				var woman = document.getElementById("woman").checked=false;
				document.getElementById("manLb").className = "on";
				document.getElementById("womanLb").className = "";
			}else{
				var man = document.getElementById("man").checked=false;
				var woman = document.getElementById("woman").checked=true;
				document.getElementById("manLb").className = "";
				document.getElementById("womanLb").className = "on";
			}
			
		}
});
	
}