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
<h1>회원 탈퇴</h1><br><br>
	<div id = "updatediv">
	<h2>${memInfo.id}<span>님, 정말로 회원을 탈퇴하시겠습니까?</span></h2>
	<p>회원을 탈퇴하고자 하신다면 비밀번호를 입력해주세요</p>
	<form name ="frm" method="post" action="MemberServlet?command=member_withdrawal">
		<input type="hidden" name="command" value="member_update">
		<table id = "updateform">
			<tr><th>비밀번호</th>
				<td><input type="password" name="password" size="18"></td>
			</tr>
		</table>
		<br><br>
		<input type="submit" value="탈퇴" onclick="return withdrawalCheck()">
		<input type="button" value="취소" onclick="location.href='OrderServlet?command=myPage'">
	</form>
	<p style="color: rgb(200,114,115); font-size:20px; margin: 15px;">${message}</p>
	</div>
</div>
		
	<br><br><br>
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>