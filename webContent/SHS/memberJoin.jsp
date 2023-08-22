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
<title>perfit | 회원가입</title>

<script src="js/jquery.js"></script>
<script src="js/common.js"></script>
<script src="js/member.js?fd"><</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>



<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/join.css?dp">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




	<div id="join_container">
		<form name="frm" method="post" action="ProductServlet">
						    ${message}
			<input type="hidden" name="command" value="member_join">
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
						<p class="join_label">아이디</p> 
						<input type="text" placeholder="ID" name="id" value="${userid}">
            			<input type="hidden" name="reid" size="20"> <!-- 중복 체크 값을 받을 히든 인풋테그 -->
					</td>
					<td><input type="button" value="중복확인" onclick="idCheck()"></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">비밀번호</p> <input type="password"
						placeholder="Password" name="pw">
					</td>
					<td></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">비밀번호 확인</p> <input type="password"
						placeholder="Password Check" name="pwck">
						<p name="pwdck" style="margin-top: 4px; color: rgb(210, 124, 125)">&nbsp; 
						</p>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">이름</p> <input type="text" placeholder="Name" name="name">
					</td>
					<td></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">우편번호</p> <input type="text"
						placeholder="Zip Code" readonly id="zip_code" name="zip_code">
						<br>
					</td>
					<td><input type="button" id="zone_search" value="검색"></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">주소</p> <input type="text"
						placeholder="Address" readonly name="address_kakao"
						id="address_kakao"> <br>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">상세주소</p> 
						<input type="text" placeholder="AddressDetail" id="address_detail" name="address_detail"> <br>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">
							전화번호 
							<span style="margin-top: 4px; color: rgb(210, 124, 125)"> &nbsp; ※ 숫자만 입력 ※</span>
						</p> <input type="text" placeholder="Phone Number" name="phone" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>

					</td>
					<td><input type="button" value="본인확인"></td>
				</tr>

				<tr>
					<td>
						<p class="join_label">SMS 수신 여부</p> 
						<input type="radio" name="SMS_YorN" value="1" id="SMS_YorN1"> 
						<label for="SMS_YorN1">&nbsp;&nbsp;&nbsp;&nbsp;</label>예&nbsp;&nbsp; 
						<input type="radio" name="SMS_YorN" value="0" id="SMS_YorN2"> 
						<label for="SMS_YorN2">&nbsp;&nbsp;&nbsp;&nbsp;</label>아니오&nbsp;&nbsp; <br>
					</td>
					<td></td>
				</tr>

				<tr>
					<td>
						<p class="join_label">이메일 주소</p> <input type="text"
						placeholder="E-Mail Address" name="email1"> <span
						style="font-size: 20px; font-weight: bolder; color: rgb(215, 130, 130)">&nbsp;@</span>

					</td>
					<td><select id="mail_select" name="email2">
							<option>이메일 선택</option>
							<option>naver.com</option>
							<option>gmail.com</option>
							<option>daum.net</option>
							<option>hanmail.net</option>
							<option>hotmail.com</option>
							<option>nate.com</option>
							<option>yahoo.com</option>
					</select></td>
				</tr>
				<tr>
					<td>
						<p class="join_label">이메일 수신 여부</p> <input type="radio"
						name="EMAIL_YorN" value="1" id="EMAIL_YorN1"> <label
						for="EMAIL_YorN1">&nbsp;&nbsp;&nbsp;&nbsp;</label>예&nbsp;&nbsp; <input
						type="radio" name="EMAIL_YorN" value="0" id="EMAIL_YorN2">
						<label for="EMAIL_YorN2">&nbsp;&nbsp;&nbsp;&nbsp;</label>아니오&nbsp;&nbsp;
						<br>
					</td>
					<td></td>
				</tr>


				<tr>
					<td><input type="submit" id="join_btn" value="가입확인" onclick="return joinCheck()"></td>
				</tr>
			</table>
			
			
			<input type="hidden" name="height" value="0"> 
			<input type="hidden" name="weight" value="0"> 
			<input type="hidden" name="shoulder" value="0"> 
			<input type="hidden" name="bust" value="0"> 
			<input type="hidden" name="arm_length" value="0">
			<input type="hidden" name="arm_size" value="0"> 
			<input type="hidden" name="waist" value="0"> 
			<input type="hidden" name="hip" value="0"> 
			<input type="hidden" name="thigh" value="0"> 
			<input type="hidden" name="leg_length" value="0">
		</form>
	</div>




	<%@ include file="../common/footer.jsp"%>
	<script>
	window.onload = function() {
		document.getElementById("zone_search").addEventListener("click", function() { //우편번호 검색 버튼을 클릭하면
			new daum.Postcode({ //카카오 지도 발생
				oncomplete : function(data) { //선택시 입력값 세팅
					document.getElementById("zip_code").value = data.zonecode; // 주소 넣기
					document.getElementById("address_kakao").value = data.address; // 주소 넣기
					document.querySelector("input[name='address_detail']").focus(); //상세입력 포커싱
				}
			}).open();
		});
	}
</script>
<!-- 
XXX.addEventListener('click', () => {
	console.log('clicked')	
    	// xxx를 클릭하면 clicked라는 로그를 확인할 수 있다.
})
<script>
document.frm.pw.addEventListener('input', () => {
    	if(document.frm.pw.value == document.frm.pwck.value) {
    		document.frm.pwdck.innerHTML() = "비밀번호가 일치합니다.";
    	} else {
    		document.frm.pwdck.innerHTML = "비밀번호가 일치하지 않습니다.";
    	}
	});
</script>
 -->
</body>

</html>