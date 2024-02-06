<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<style>
@font-face {
	font-family: '경기천년제목 Light';
	src: local('경기천년제목 Light'), url('font/Title_Light.woff') format('woff'),
		url('font/Title_Light.otf') format('opentype')
}
</style>
<link rel="icon" type="image/x-icon" href="img/favicon.png">
<!--타이틀 옆에 작은 로고-->
<title>perfit | 상세보기</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/admin.css">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>
<table id="memberList" cellspacing="0">
	<tr>
		<th>주문 번호</th>
		<th>아이디</th>
		<th>이름</th>
		<th>전화번호</th>
		<th>이메일</th>
		<th>우편번호</th>
		<th colspan="2">주소</th>
		<th>주문 날짜</th>
		<th>배송 날짜</th>
		<th>배송 버튼</th>
		<th>배송 여부</th>
	</tr>
		<c:forEach var="order" items="${orderList}">
		<tr>
			<td><c:if test="${order.order_num != null}">${order.order_num}</c:if></td>	
			<td><c:if test="${order.m_id != null}">${order.m_id }</c:if></td>	
			<td><c:if test="${order.d_name != null}">${order.d_name}</c:if></td>	
			<td><c:if test="${order.d_phone != null}">${order.d_phone}</c:if></td>	
			<td><c:if test="${order.d_email != null}">${order.d_email}</c:if></td>	
			<td><c:if test="${order.d_zip != null}">${order.d_zip}</c:if></td>	
			<td><c:if test="${order.d_address1 != null}">${order.d_address1}</c:if></td>	
			<td><c:if test="${order.d_address2 != null}">${order.d_address2}</c:if></td>	
			<td><c:if test="${order.order_date != null}">${order.order_date}</c:if></td>	
			<td><c:if test="${order.d_date != null}">${order.d_date}</c:if></td>	
			<td><c:if test="${order.d_date == null}">
				<form action ="OrderServlet?command=order_delivery" method="post" name="frm">
				<input type="hidden" name="ordernum" value="${order.order_num}">
				<input type="submit" value="배송 시작">
				</form></c:if>
			</td>
			<td><c:if test="${order.d_date != null && order.d_status != 1}">
				<form action ="OrderServlet?command=order_delivery_com" method="post" name="frm2">
				<input type="hidden" name="ordernum" value="${order.order_num}">
				<input type="submit" value="배송 완료">
				</form></c:if>
			</td>
		</tr>
		</c:forEach>
</table>

	<%@ include file="../common/footer.jsp"%>
</body>
</html>