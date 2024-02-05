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
<script>
function execDaumPostcode() {
    new daum.Postcode( {
	oncomplete: function( data ) {
		document.getElementById( 'zip-code' ).value = data.zonecode;
        document.getElementById( 'address-1' ).value = data.address;
        document.getElementById( 'address-2' ).focus();
      }
    } ).open();
  }
</script>
<body class="home">
	<%@ include file="../common/header.jsp"%>

<div>
<h1>회원 정보 수정</h1><br><br>
	<div id = "updatediv">
	<form name ="frm" method="post" action="MemberServlet?command=member_update">
		<input type="hidden" name="command" value="member_update">
		<table id = "updateform">
			<tr><th>아이디</th>
				<td><input type="text" name="id" value="${memInfo.id}" size="18" readonly></td>
			</tr>
			<tr><th>닉네임</th>
				<td><input type="text" name="nickname" size="18" value="${memInfo.nickname}"></td>
			</tr>
			<tr><th>비밀번호</th>
				<td><input type="password" name="password" size="18" value="${memInfo.password}"></td>
			</tr>
			<tr><th>비밀번호 확인</th>
				<td><input type="password" name="passwordchk" size="18" value=""></td>
			</tr>
			<tr><th>이름</th>
				<td><input type="text" name="name" size="18" value="${memInfo.name}"></td>
			</tr>
			<tr><th>핸드폰 번호</th>
				<td><input type="text" name="phone" size="18" value="${memInfo.phone}"></td>
			</tr>
			<tr><th>SMS 수신 확인</th>
				<td><input type="checkbox" name="sms_yorn" value="${memInfo.sms_YorN}"></td>
			</tr>
			<tr><th>우편번호</th>
				<td><input type="text" name="zip" id="zip-code" size="12" value="${memInfo.zip}"></td>
				<td><input type="button" id="zip-codebtn" onclick="execDaumPostcode()" value="우편번호 찾기" name="r_codebtn"></td>
			</tr>
			<tr><th>주소</th>
				<td><input type="text" name="address1" id="address-1" size="25" value="${memInfo.address1}"></td>
			</tr>
			<tr><th>상세 주소</th>
				<td><input type="text" name="address2" id="address-2" size="25" value="${memInfo.address2}"></td>
			</tr>
			<tr><th>이메일</th>
				<td><input type="text" name="email" size="18" value="${memInfo.email}"></td>
			</tr>
			<tr><th>이메일 연락 확인</th>
				<td><input type="checkbox" name="email_yorn" value="${memInfo.email_YorN}"></td>
			</tr>
		</table>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<br><br>
		<input type="submit" value="수정" onclick="return memberCheck()" style=cursor:ponter;>
		<input type="button" value="취소" onclick="location.href='OrderServlet?command=myPage'">
	</form>
	</div>
		<input type="button" value="회원 탈퇴" onclick="location.href='MemberServlet?command=member_withdrawal_form'" id="withdrawal">
</div>
		
	<br><br><br>
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>