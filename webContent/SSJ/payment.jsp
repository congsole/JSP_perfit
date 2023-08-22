<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>perfit | 결제하기</title>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/payment.css">

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/payment.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>

</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>
	<!--payment = 결제 페이지(payment page) -->
	<!--배송 조회 상단-->
	<form name="payform" action="ProductServlet">
		<div class="payment-main">
			<input type="hidden" name="mid" value="${mVo.id}"> 
			<input type="hidden" name="command" value="payment">
			<!-- 상품 표 -->
			<h2>결제 정보</h2>
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
			<div class="price-calc">
				<div class="price-calc-target">
					<div class="price-calc-thumb">
						<p>
							<b>상품 요금</b>
						</p>
					</div>
					<div class="price-calc-tag">
						<p>
							<b>0</b> 원
						</p>
					</div>
				</div>
				<div class="icon">
					<img src="img/plus.png">
				</div>
				<div class="price-calc-target">
					<div class="price-calc-thumb">
						<p>
							<b>배송 요금</b>
						</p>
					</div>
					<div>
						<p>
							<b>3000 원</b>
						</p>
					</div>
				</div>
				<div class="icon">
					<img src="img/equal.png">
				</div>
				<div class="price-calc-target">
					<div class="price-calc-thumb">
						<p>
							<b>합계 요금</b>
						</p>
					</div>
					<div class="price-total-tag">
						<p>
							<b>0</b> 원
						</p>
					</div>
				</div>
			</div>
			<p id = "do">*도서지역은 배송비가 추가됩니다.</p>
		</div>

		<div class="user-info-input">
			<div class="order-user-info">
				<h4>주문자 정보</h4>
				<fieldset name="m_info">
				<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
				<table>
					<tr>
						<td>이름</td>
						<td><input type="text" id="username"
							placeholder="이름" maxlength="8" name="Mname" value="${mVo.name}"></td>
					</tr>
					<tr>
						<td>우편번호</td>
						<td><input type="text" placeholder="우편번호"
							name="Mzip" value="${mVo.zip}" readonly></td>
					</tr>
					<tr>
						<td rowspan="2">주소</td>
						<td><input type="text" placeholder="도로명주소" style="width: 500px" 
							name="Maddress1" value="${mVo.address1}" readonly></td>
					</tr>
					<tr>
						<td><input type="text" id="address-2" placeholder="상세주소" style="width: 500px" 
						 	name="Maddress2" value="${mVo.address2}" readonly></td>
					</tr>
						<!--  <input type="button" id="zip-codebtn" onclick="execDaumPostcode()" value="우편번호 찾기" name="codebtn">-->
					<tr>
						<td>연락처</td>
						<td><input type="tel" id="usertelnum" style="width: 120px" maxlength="11"
							name="Mphone" value="${mVo.phone}" readonly></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="email" id="useremail" style="width: 250px" 
							name="Memail" value="${mVo.email}" readonly></td>
					</tr>
				</table>
				</fieldset>
				
				<h4>배송지 정보</h4>
				<fieldset name="d_info">
				<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
				<table>
					<tr>
						<td>이름</td>
						<td><input type="text" id="username" placeholder="이름" maxlength="8" 
							name="d_name" value="${mVo.name}"></td>
						<td>주문자 정보와 동일 <input type="checkbox" id="equalchk" name="equalchk" onclick="equalCheck()"></td>
					</tr>
					<tr>
						<td>우편번호</td>
						<td><input type="text" id="zip-code" placeholder="우편번호" 
							name="d_zip" readonly> 
							<input type="button" id="r_zip-codebtn" onclick="execDaumPostcode()" value="우편번호 찾기"
							name="r_codebtn"></td>
					</tr>
					<tr>
						<td rowspan="2">주소</td>
						<td><input type="text" id="address-1" placeholder="도로명주소" style="width: 500px;" 
							name="d_address1" readonly></td>
					</tr>
					<tr>
						<td><input type="text" id="address-2" placeholder="상세주소" style="width:500px;"
						name="d_address2"></td>
					</tr>
					<tr>
						<td>연락처</td>
						<td><input type="tel" id="usertelnum" style="width: 120px" maxlength="11" 
							name="d_phone" value="${mVo.phone}"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="email" id="useremail" style="width: 250px" 
							name="d_email" value="${mVo.email}"></td>
					</tr>
					<tr>
						<td>배달원에게 할 말</td>
						<td><input type="text" id="delivery_comment" placeholder="30자 이내로 입력해주세요" aria-colspan="2"
							name="d_message" style="width: 400px" maxlength="30"></td>
					</tr>
				</table>
				</fieldset>
			</div>
		</div>
		<!--
         <div class="point-info">
            <h4>포인트 계산</h4>
            <div class="point-calc">
                <div><label for="price-sum">상품 가격</label>
                    <input type="text" id="price-sum" style="width: 120px" readonly></div>
                <div><label for="coupon-use">쿠폰 사용 </label>
                    <input type="text" id="coupon-use" style="width: 120px" readonly>
                    <input type="button" id="coupon-searchbtn" value="검색">
                </div>
                <div><label>적립되는 포인트 </label>
                    <input type="text" id="point-acc" style="width: 120px" readonly>
                </div>
                <div><label>포인트 사용 </label>
                    <input type="text" id="point-use" style="width: 120px" placeholder="사용할 포인트 입력"> 
                    <input type="button" id="point-searchbtn" value="입력"></div>
                <div><label>잔여 포인트 </label>
                    <input type="text" id="point-leftover" style="width: 120px" readonly></div>
                <br>
                <div><label>금액 합산</label>
                    <input type="text" id="finalsum" style="width: 180px; font-weight: bold;" readonly></div>
            </div>
        </div> -->
		<div class="payment-with-main">
			<h4>결제 수단</h4>
			<!-- 결제가 확인되어야만 오더테이블에 추가되도록 만들기. -->
			<div class="payment-with">
				<div class="payment-icon" onclick="requestPay(this)">
					<img src=img/payment-withoutbankbook.png>
					<p>무통장 입금</p>
				</div>

				<div class="payment-icon" onclick="requestPay(this)">
					<img src=img/payment-card.png>
					<p>신용 카드</p>
				</div>
				<div class="payment-icon" onclick="requestPay(this)">
					<img src=img/payment-mobile.jpg>
					<p>핸드폰 결제</p>
				</div>
				<div class="payment-icon" onclick="requestPay(this)">
					<img src=img/payment-bank.jpg>
					<p>실시간 계좌 이체</p>
				</div>
				<div class="payment-icon" onclick="requestPay(this)">
					<img src=img/payment-samsung.png>
					<p>삼성 페이</p>
				</div>
				<div class="payment-icon" onclick="requestPay(this)">
					<img src=img/payment-kakao.png>
					<p>카카오 페이</p>
				</div>
				<div class="payment-icon" onclick="requestPay(this)">
					<img src=img/payment-payco.jpg>
					<p>페이코</p>
				</div>
				<div class="payment-icon" onclick="requestPay(this)">
					<img src=img/payment-smilepay.jpg>
					<p>스마일 페이</p>
				</div>
				<div class="payment-icon" onclick="requestPay(this)">
					<img src=img/payment-gpay.png>
					<p>구글 페이</p>
				</div>
				<input type="submit" value="결제하기" id="paybtn" onclick="return confirm('결제 정보를 확인하였습니까?')">
			</div>
		</div>
		
	</form>
	<script>
		const userCode = "imp14397622";
		IMP.init(userCode);
	</script>
	<%@ include file="../common/footer.jsp"%>
</body>

</html>