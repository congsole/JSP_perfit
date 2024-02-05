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
<title>perfit | 배송조회</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/os.css?sd">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




	<!--os = 배송조회(order search) -->
	<!--여기서부터 신승진 배송 조회 작업물-->
	<div class="os-logo-con">
		<div class="os-logo">
			<div class="quickshortcut">
				<a href="OrderServlet?command=myPage_form">마이페이지</a><span>&nbsp;-&nbsp;배송
					조회</span>
			</div>
			<h2>배송 조회</h2>
		</div>
		<div class="delivery-search-shortcut"
			onclick="location.href='OrderServlet?command=shoppingBasket_form'">
			<p>장바구니</p>
		</div>
	</div>
	<!--배송 조회 상단-->
	<div class="os-main">
		<div class="os-searchbar2">


			<!-- 상품 표 -->
			<table class="os-items" border="1">
				<thead>
					<tr id="tablehead">
						<th>주문번호</th>
						<th>주문상세번호</th>
						<th>상품번호</th>
						<th>이미지</th>
						<th>상품명</th>
						<th>사이즈</th>
						<th>색상</th>
						<th>수량</th>
						<th>가격</th>
						<th>합계</th>
						<th>etc.</th>
					</tr>
				</thead>
				<!-- 일단 이건 예시임 나중에 연동 달 것-->
				<tbody>
					<c:forEach var="order" items="${orderDetailList}">
						<tr class="tablebody">
							<td id="goodsorderdate">
								<p>${order.order_num}</p>
							</td>
							<td id="goodsorderdate">
								<p>${order.order_detail_num}</p>
							</td>

							<td id="goodsinfo">
								<p>${order.p_id}</p>
							</td>
							<td id="goodsinfo">
								<p>
									<img src="img_product/${order.p_img}">
								</p>
							</td>
							<td id="goodsinfo">
								<p>${order.p_name}</p>
							</td>
							<td id="goodsinfo">
								<p>${order.p_size}</p>
							</td>
							<td id="goodsinfo">
								<p>${order.p_color}</p>
							</td>
							<td id="goodsinfo">
								<p>${order.p_amount}</p>
							</td>
							<td id="goodsinfo">
								<p>${order.p_price}원</p>
							</td>
							<td id="goodsinfo">
								<p>${order.p_price*order.p_amount}원</p>
							</td>

							<td id="goodsreview">
								<div onclick="location.href = '#'">후기 작성</div>
								<div onclick="location.href = '#'">환불 신청</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- 나중에 페이지 연동 달기 -->
			<div class="page-controller">
				<a href="#">&lt;&lt;</a> <span>1</span> <a href="#">&gt;&gt;</a>
			</div>
		</div>
	</div>





		<%@ include file="../common/footer.jsp"%>
</body>

</html>