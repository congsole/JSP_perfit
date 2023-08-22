<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="icon" type="image/x-icon" href="../img/favicon.png">
<!--타이틀 옆에 작은 로고-->
<title>perfit | 회원가입</title>

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<link rel="stylesheet" type="text/css" href="../css/common.css">
<link rel="stylesheet" type="text/css" href="../css/join.css">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




	<div id="join_container">
		<form id="join_form">
			<table>
				<tr>
					<td>
						<div class="title_wrap">
							<h1>회원가입</h1>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<p class="join_label">아이디</p> <input type="text" placeholder="ID"
						name="ID">
					</td>
					<td><input type="button" value="중복확인"></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">비밀번호</p> <input type="password"
						placeholder="Password" name="PW">
					</td>
					<td></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">비밀번호 확인</p> <input type="password"
						placeholder="Password Check" name="PWCK">
						<p style="margin-top: 4px; color: rgb(210, 124, 125)">&nbsp; !
							비밀번호가 일치합니다.</p>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">이름</p> <input type="text" placeholder="Name"
						name="NAME">
					</td>
					<td></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">우편번호</p> <input type="text"
						placeholder="Zip Code" name="ZIP_CODE"> <br>
					</td>
					<td><input type="button" value="검색"></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">주소</p> <input type="text"
						placeholder="Address" name="ADDRESS"> <br>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">상세주소</p> <input type="text"
						placeholder="AddressDetail" name="ADDRESS_DETAIL"> <br>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">휴대폰 번호</p> <input type="text"
						placeholder="Phone Number" name="PHONENO">

					</td>
					<td><input type="button" value="본인확인"></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">SMS 수신 여부</p> 
						<input type="radio" name="SMS_YorN" value="SMS_Y" id="SMS_YorN1"> 
						<label for="SMS_YorN1">&nbsp;&nbsp;&nbsp;&nbsp;</label>예&nbsp;&nbsp; 
						<input type="radio" name="SMS_YorN" value="SMS_N" id="SMS_YorN2">
						<label for="SMS_YorN2">&nbsp;&nbsp;&nbsp;&nbsp;</label>아니오&nbsp;&nbsp;
						<br>
					</td>
					<td></td>
				</tr>

				<tr>
					<td>
						<p class="join_label">이메일 주소</p> <input type="text"
						placeholder="E-Mail Address" name="EMAIL"> <span
						style="font-size: 30px; font-weight: bolder; color: rgb(210, 124, 125)">&nbsp;@</span>

					</td>
					<td><select id="mail_select">
							<option>이메일 선택</option>
							<option>naver.com</option>
							<option>gmail.com</option>
							<option>daum.net</option>
							<option>hanmail.net</option>
							<option>hotmail.com</option>
							<option>nate.com</option>
					</select></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">이메일 수신 여부</p> <input type="radio"
						name="EMAIL_YorN" value="EMAIL_Y" id="EMAIL_YorN1"> <label
						for="EMAIL_YorN1">&nbsp;&nbsp;&nbsp;&nbsp;</label>예&nbsp;&nbsp; <input
						type="radio" name="EMAIL_YorN" value="EMAIL_N" id="EMAIL_YorN2">
						<label for="EMAIL_YorN2">&nbsp;&nbsp;&nbsp;&nbsp;</label>아니오&nbsp;&nbsp;
						<br>
					</td>
					<td></td>
				</tr>


				<tr>
					<td><input type="submit" id="join_btn" value="가입확인"></td>
				</tr>
			</table>

		</form>
	</div>




	<%@ include file="../common/footer.jsp"%>
</body>

</html>