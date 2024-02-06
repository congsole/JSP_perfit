<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>perfit | 로그인</title>
<script src="js/jquery.js"></script>
<script src="js/common.js"></script>
<script src="js/member.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/login.css">

</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>

	<div id="login_container">
		<div class="title_wrap">
			<h1>로그인</h1>
		</div>
		<form name="frm" id="login_form" method="post" action="ProductServlet">
			<input type="hidden" name="command" value="member_login">
			<table>
				<tr>
					<!-- <td class="la"><label>아이디</label></td> -->
					<td class="co"><input type="text" placeholder="ID" name="id">
					</td>
				</tr>
				
				<tr>
					<!-- <td class="la"><label>비밀번호</label></td> -->
					<td class="co"><input type="password" placeholder="Password"
						name="password"></td>
				</tr>
				
				<tr>
					<td>&nbsp;</td>
				</tr>
				
				<tr>
					<td><input type="checkbox" class="login_cb" id="lgncb1"
						value="IDsave"> <label for="lgncb1">&nbsp;&nbsp;&nbsp;&nbsp;</label><b>아이디
							저장&nbsp;&nbsp;</b> <input type="checkbox" class="login_cb"
						id="lgncb2" value="autoLogin"> <label for="lgncb2">&nbsp;&nbsp;&nbsp;&nbsp;</label><b>자동
							로그인&nbsp;&nbsp;</b></td>
				</tr>
				
				<tr>
					<td class="co"><input type="submit" id="login_btn"
						value="LogIn" onclick="return loginCheck()">
						<p>
							<a href="ProductServlet?command=member_id_find_form">아이디 찾기&nbsp;&nbsp;</a>
							<b> | </b>
							<a href="ProductServlet?command=member_pwd_find_form">&nbsp;&nbsp;비밀번호 찾기&nbsp;&nbsp;</a>
							<b> | </b>
							<a href="ProductServlet?command=member_join_form">&nbsp;&nbsp;회원가입 </a>
						</p>
						<p style="color: rgb(200,114,115); font-size:20px; margin: 15px;">${message}</p></td>
				</tr>

			</table>

		</form>

	</div>


	<%@ include file="../common/footer.jsp"%>
	
</body>
</html>