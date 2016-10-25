<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");

	String result=request.getParameter("result");
	String academyName=request.getParameter("academyName");
	String academyPay=request.getParameter("academyPay");
	String userEmail=request.getParameter("userEmail");
	String userName=request.getParameter("userName");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<style type='text/css'>

body{height:auto; width:auto;}

</style>


<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>

<script type="text/javascript">
IMP.init('iamport'); //iamport 대신 자신의 "가맹점 식별코드"를 사용하시면 됩니다
IMP.request_pay({
    pg : 'html5_inicis',
    pay_method : '<%=result%>',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '<%=academyName%>',
    amount : <%=academyPay%>,
    buyer_email : '<%=userEmail%>',
    buyer_name : '<%=userName%>',
    buyer_tel : '010-1234-5678',
    buyer_addr : '서울특별시 강남구 삼성동',
    buyer_postcode : '123-456',
    m_redirect_url : 'http://localhost:8080/learnway'
}, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
    }

    alert(msg);
});
</script> 

<title>결제</title>

</head>
<body>
	

</body>
</html>