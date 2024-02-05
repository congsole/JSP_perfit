<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<p id="caption"> 0 - 수신거부  |  1 - 수신허용  |  7 - 관리자 </p>
	<table id="memberList" cellspacing="0">

		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>연락처</th>
			<th>문자수신여부</th>
			<th>이메일</th>
			<th>이메일수신여부</th>
			<th>우편번호</th>
			<th>상세주소1</th>
			<th>상세주소2</th>
			<th>닉네임</th>
			<th>체형</th>
		</tr>
		<c:forEach var="member" items="${memberList}">
			<tr>
				<td><c:if test="${member.id != null}">${member.id}</c:if></td>
				<td><c:if test="${member.name != null}">${member.name}</c:if></td>
				<td><c:if test="${member.phone != null}">${member.phone}</c:if></td>
				<td><c:if test="${member.sms_YorN != null}">${member.sms_YorN}</c:if></td>
				<td><c:if test="${member.email != null}">${member.email}</c:if></td>
				<td><c:if test="${member.email_YorN != null}">${member.email_YorN}</c:if></td>
				<td><c:if test="${member.zip != null}">${member.zip}</c:if></td>
				<td><c:if test="${member.address1 != null}">${member.address1}</c:if></td>
				<td><c:if test="${member.address2 != null}">${member.address2}</c:if></td>
				<td><c:if test="${member.nickname != null}">${member.nickname}</c:if></td>
				<td><c:if test="${member.shape != null}">${member.shape}</c:if></td>
			</tr>
		</c:forEach>


	</table>

	<%@ include file="../common/footer.jsp"%>
</body>
</html>