$(function(){
    //댓글 입력
    $("#submitComment").click(function( event ) {
        //서버로 댓글정보 보냄
        insertComment();
    	
    	//var aa = $('#satisfaction').val();
    	
    	//alert(aa);
    });
    
    
   /*
    
    //댓글의 댓글을 다는 이벤트
    $(document).on("click","#commentChildSubmit", function(){
          
        var cName = $("#commentChildName");
        var cPassword = $("#commentChildPassword");
        var cText = $("#commentChildText");
          
        if($.trim(cName.val())==""){
            alert("이름을 입력하세요.");
            cName.focus();
            return;
        }else if($.trim(cPassword.val())==""){
            alert("패스워드를 입력하세요.");
            cPassword.focus();
            return;
        }else if($.trim(cText.val())==""){
            alert("내용을 입력하세요.");
            cText.focus();
            return;
        }
          
        var commentChildText = '<tr name="commentChildCode">'+
                                    '<td style="width:1%"><span class="glyphicon glyphicon-arrow-right"></span></td>'+
                                    '<td style="width:99%">'+
                                        '<strong>'+cName.val()+'</strong> '+cPassword.val()+' <a style="cursor:pointer;" name="cAdd">답글</a> | <a style="cursor:pointer;" name="cDel">삭제</a>'+
                                        '<p>'+cText.val().replace(/\n/g, "<br>")+'</p>'+
                                    '</td>'+
                                '</tr>';
                                  
        //앞의 tr노드 찾기
        var prevTr = $(this).parent().parent().parent().parent().prev();
        //댓글 적는 에디터 삭제
        $("#commentEditor").remove();//여기에서 삭제를 해줘야 에디터tr을 안 찾는다.
          
        //댓글을 타고 올라가며 부모 tr을 찾음
        while(prevTr.attr("name")!="commentParentCode"){
            prevTr = prevTr.prev();
        }
        //while를 타는지 체크
        var check = false;
        //다음 노드가 댓글(depth1)의 댓글인지 찾기위해 next
        var nextTr = prevTr.next();
        //뒤에 댓글(depth1)의 댓글(depth2_1)이 없다면 바로 붙인다.
        if(nextTr.attr("name")!="commentChildCode"){
            prevTr.after(commentChildText);
        }else{
            //댓글(depth1)의 댓글(depth2_n)이 있는경우 마지막까지 찾는다.
            while(nextTr.attr("name")=="commentChildCode"){
                nextTr = nextTr.next();
                check = true;
            }
        }
          
        if(check){//댓글(depth1)의 댓글(depth2_n)이 있다면 그 댓글(depth2_n) 뒤에 댓글(depth2_n+1) 추가
            nextTr = nextTr.prev();//while문에서 검색하느라 next로 넘거갔던거 다시 앞으로 돌려줌
            nextTr.after(commentChildText);
        }
          
    });
      
    //답글링크를 눌렀을때 에디터 창을 뿌려주는 이벤트, 삭제링크를 눌렀을때 해당 댓글을 삭제하는 이벤트
    $(document).on("click","table#commentTable a", function(){//동적으로 버튼이 생긴 경우 처리 방식
          
        if($(this).attr("name")=="pDel"){
            if (confirm("답글을 삭제 하시면 밑에 답글도 모두 삭제 됩니다. 정말 삭제하시겠습니까?") == true){    //확인
                  
                var delComment = $(this).parent().parent();
                var nextTr = delComment.next();
                var delTr;
                //댓글(depth1)의 댓글(depth2_1)이 있는지 검사하여 삭제
                while(nextTr.attr("name")=="commentCode"){
                    nextTr = nextTr.next();
                    delTr = nextTr.prev();//삭제하고 넘기면 삭제되서 없기 때문에 다음값을 가져오기 어려워 다시 앞으로 돌려서 찾은 다음 삭제
                    delTr.remove();
                }
                  
                delComment.remove();
                  
            }else{   //취소
                return;
            }
        }else if($(this).attr("name")=="cDel"){
            if (confirm("정말 삭제하시겠습니까??") == true){    //확인
                $(this).parent().parent().remove();
            }else{   //취소
                return;
            }
        }else{
            //자기 부모의 tr을 알아낸다.
            var parentElement = $(this).parent().parent();
            //댓글달기 창을 없앤다.
            $("#commentEditor").remove();
            //부모의 하단에 댓글달기 창을 삽입
            var commentEditor = '<tr id="commentEditor">'+
                                    '<td style="width:1%"> </td>'+
                                    '<td>'+
                                        '<span class="form-inline" role="form">'+
                                            '<p>'+
                                                '<div class="form-group">'+
                                                    '<input type="text" id="commentChildName" name="commentChildName" class="form-control col-lg-2" data-rule-required="true" placeholder="이름" maxlength="10">'+
                                                '</div>'+
                                                '<div class="form-group">'+
                                                    ' <input type="password" id="commentChildPassword" name="commentChildPassword" class="form-control col-lg-2" data-rule-required="true" placeholder="패스워드" maxlength="10">'+
                                                '</div>'+
                                                '<div class="form-group">'+
                                                    '<button type="button" id="commentChildSubmit" class="btn btn-default">확인</button>'+
                                                '</div>'+
                                            '</p>'+
                                                '<textarea id="commentChildText" name="commentChildText" class="form-control" style="width:98%" rows="4"></textarea>'+
                                        '</span>'+
                                    '</td>'+
                                '</tr>';
                                  
            parentElement.after(commentEditor); 
        }
          
    });
    
    */
});


// 댓글 서버에 저장
function insertComment() { 

	var academyId = $('#academyId').text();
	 //ajax로 저장하고 성공하면 저장한 데이터를 가져와 넣어야 하는데 여기서는 테스트라 그냥 입력값을 가져옴
    var pText = $("#commentParentText");
    var pName = $("#user");
    //별점
    var pStar = $('#satisfaction').val();
    
    var dt = new Date();
    
    var year = dt.getFullYear();
    var month=dt.getMonth()+1;
    var day = dt.getDate();
    
    var hour = dt.getHours();
    var minute = dt.getMinutes();
    minute=minute.toString();
    
    if(minute.length<2){
    	minute='0'+minute;
    }
    
    var current=year + '-' + month + '-' + day + ' ' + hour + ':' + minute;
    
    
    if($.trim(pText.val())==""){
        alert("내용을 입력하세요.");
        pText.focus();
        return;
    }else if($.trim(pName.text())=="null"){
        alert("로그인을 해주세요.");
        return;
    }
	
    
	$.ajax({
		type : "POST",
		url : "insertComment.do",
		async:false,
		dataType : "json",
		data : {
			academyId   : academyId,
			commentName	: pName.text(),
			commentTime	: current,
			comment 	: pText.val(),
			commentStar	: pStar
		},
		error : function(e) {
			alert("에러났소!");
			alert(e);
		},
		success : function(data) {
			
			//기존 댓글 삭제하기
	        var listEl = document.getElementById('comment');
	        removeAllChildNods(listEl);
	        
	        //댓글 리스트 불러오기
	        commentList();
		}
	});
	
}

//검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {
	while (el.hasChildNodes()) {
		el.removeChild(el.lastChild);
	}
}



//댓글 리스트 출력
function commentList() { 

	var academyId = $('#academyId').text();
	var userId = $('#userId').text();
	$.ajax({
		type : "POST",
		url : "commentList.do",
		async:false,
		dataType : "json",
		data : {
			academyId : academyId
		},
		error : function(e) {
			alert("에러났소!");
			alert(e);
		},
		success : function(data) {
			
			///토탈 관리
			var count=data['count'];
			
			if(count[0].count!="0"){
				var Astar;
				var img1=document.getElementById('starImg');
				
				$('#total').text('(참여 '+count[0].count+')');
				$('#avg').text(count[0].avg.toFixed(1)+'/5.0');
				Astar=Math.floor(count[0].avg);
				img1.src='images/star_'+Astar+'.gif';
			}
			else{
				var img1=document.getElementById('starImg');
				img1.src='images/star_1.gif';
				$('#total').text('(참여 0)');
				$('#avg').text('0/5.0');
			}
			
	        
			
			///댓글 리스트 관리
			var list=data['commentList'];
			
			for(var i=0;list.length;i++){
				//이메일 @구분
				var email = list[i].userEmail.split('@');
				
				 var commentParentText = '<div name="commentParentCode" class="commentDiv"><b>'
					 			+list[i].commentName+'</b>&nbsp;('
					 			+email[0]+')<font style="font-size:12px;">&nbsp;&nbsp;'
					 			+list[i].commentTime+'</font>&nbsp;&nbsp;<button type="button" id="'+list[i].commentSeq+'" style="display:none; font-size:10px;" onclick="deleteComment('+list[i].commentSeq+');">X</button><b style="float:right; padding-top:12px;">'
					 			+list[i].commentStar+'/5</b><img style="float:right; width:80px; padding-top:15px; margin-right:15px;" src="images/star_'
					 			+list[i].commentStar+'.gif"/><p style="margin-top:7px;">'
					 			+list[i].comment.replace(/\n/g, "<br>")+'</p></div>';

				$('#comment').append(commentParentText);
				$("#commentParentText").val("");
				
				var btn = document.getElementById(list[i].commentSeq);
				if(list[i].userId == userId){
					btn.style.display='inline-block';
				}else{
					btn.style.display='none';
				}
			}
		}
	});
}

function test(){
	alert(1);
}



//댓글 삭제
function deleteComment(seq) { 
	
	 var check = confirm('댓글을 삭제하시겠습니까?');
	 if(check==true){
		 
		 var academyId = $('#academyId').text();
		 
		$.ajax({
			type : "POST",
			url : "deleteComment.do",
			async:false,
			dataType : "json",
			data : {
				academyId : academyId,
				commentSeq : seq
			},
			error : function(e) {
				alert("에러났소!");
				alert(e);
			},
			success : function(data) {
		        
				//기존 댓글 삭제하기
		        var listEl = document.getElementById('comment');
		        removeAllChildNods(listEl);
		        
		        //댓글 리스트 불러오기
		        commentList();
				
			}
		});
	}
}








