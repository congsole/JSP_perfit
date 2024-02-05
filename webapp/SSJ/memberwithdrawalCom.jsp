<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>perfit | 회원 정보 변경</title>

<script src="js/jquery.js"></script>
<script src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<script type="text/javascript" src="js/member_update.js"></script>
<link rel="stylesheet" type="text/css" href="css/member_update.css">
</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>

<div>
<h1>안녕히 가세요</h1><br><br>
	<div id = "updatediv">
	<h2>회원 탈퇴가 무사히 처리되었습니다.</h2>
	<p>안녕히 가세요.</p>
	
	</div>
		<input type="button" value="메인으로" onclick="location.href='OrderServlet?command=main'" id="withdrawal">
</div>
		
	<br><br><br>
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>