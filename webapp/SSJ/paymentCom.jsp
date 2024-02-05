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
<link rel="icon" type="image/x-icon" href="img/favicon.png">
<!--타이틀 옆에 작은 로고-->
<title>perfit | ★☆페이지명★☆</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 이 부분에 필요한 css와 js를 추가해주세요. -->
<script type="text/javascript" src="js/payment.js"></script>
<link rel="stylesheet" type="text/css" href="css/payment.css">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>
<div class="payment-main">
            <h2>구매를 축하합니다</h2>
            <table class="payment-items" border="1">
				<tr id="tablehead">
					<th>번호</th>
					<th>이미지</th>
					<th>상품명</th>
					<th>색상</th>
					<th>사이즈</th>
					<th>옵션</th>
					<th>수량</th>
					<th>금액</th>
				</tr>
				<c:forEach var="cVo" items="${cartList}">
					<input type="hidden" name="cVo_num" value="${cVo.cart_num}">
					<tr class="tablebody">
						<td class="num">${cVo.cart_num}</td>
						<td class="img"><img src="img_product/${cVo.img}"></td>
						<td class="name">${cVo.name}</td>
						<td class="color">${cVo.color}</td>
						<td class="size">${cVo.size}</td>
						<td class="option">${cVo.option}</td>
						<td class="amount">${cVo.amount}</td>
						<td class="price">${cVo.price}</td>
					</tr>
				</c:forEach>
			</table>
            <div class = "deliveryinfo">
                <h4>배송 안내</h4>
                <table class = "deliveryinfo-tbl">
                	<tr>
                		<th colspan="2">주문자 정보</th>
                	</tr>
                	<tr>
                		<th>이름</th>
                		<td>${mVo.name}</td>
                	</tr>
                	<tr>
                		<th>우편번호</th>
                		<td>${mVo.zip}</td>
                	</tr>
                	<tr>
                		<th rowspan="2">주소</th>
                		<td>${mVo.address1}</td>
                	</tr>
                	<tr>
                		<td>${mVo.address2}</td>
                	</tr>
                	<tr>
                		<th>연락처</th>
                		<td>${mVo.phone}</td>
                	</tr>
                	<tr>
                		<th>이메일</th>
                		<td>${mVo.email}</td>
                	</tr>
                	<tr>
                		<th colspan="2" class="line">배송지 정보</th>
                	</tr>
                	<tr>
                		<th>이름</th>
                		<td>${d_name}</td>
                	</tr>
                	<tr>
                		<th>우편번호</th>
                		<td>${d_zip}</td>
                	</tr>
                	<tr>
                		<th rowspan="2">주소</th>
                		<td>${d_address1}</td>
                	</tr>
                	<tr>
                		<td>${d_address2}</td>
                	</tr>
                	<tr>
                		<th>연락처</th>
                		<td>${d_phone}</td>
                	</tr>
                	<tr>
                		<th>이메일</th>
                		<td>${d_email}</td>
                	</tr>
                </table>
            </div>
            <div class = "deliveryinfo">
                <h4>연락 안내</h4>
                <p>
                    고객센터 010-9606-1196<br>
                    평일 : 10:00 ~ 17:00 (점심시간 12:00 ~ 13:00) / 토요일, 일요일, 공휴일 휴무<br>
                    무통장 계좌 정보 신한 110-425-910-565 (예금주 : 손해솔)<br>
                    첨부파일 발송 qax741@gmail.com<br>
                </p>
            </div>
        </div>
		
	<%@ include file="../common/footer.jsp"%>
</body>

</html>