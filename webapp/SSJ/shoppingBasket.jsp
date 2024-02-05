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
<title>perfit | 장바구니</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/sb.css">

</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>

	<!-- sb = 장바구니(shopping bascket) -->
	<!--여기서부터 신승진 마이페이지 작업물-->
	<div class="sb-logo-con">
		<div class="sb-logo">
			<div class="quickshortcut">
				<a href="OrderServlet?command=myPage">마이페이지</a><span>&nbsp;-&nbsp;장바구니</span>
			</div>
			<h2>장바구니</h2>
		</div>
		<div class="delivery-search-shortcut"
			onclick="location.href='OrderServlet?command=order_list'">
			<p>주문 내역</p>
		</div>
	</div>
	<!--장바구니 상단-->
	<div class="sb-main">
		<div class="sb-searchbar">
			<div class="sb-search-condition">
				<form method="post"
					action="OrderServlet?command=shoppingBasket_search">
					<select class="form-control" name="searchField">
						<option value="cart_num">번호</option>
						<option value="p_name">상품 이름</option>
					</select> <input type="text" class="form-control" name="searchText"
						placeholder="검색어 입력"> <input type="submit"
						id="sb-searchbtn" value="검색">
				</form>
			</div>
		</div>
		<!-- 검색 끝 -->
		<!-- 상품 표 -->
		<form method="post" name="frm" action="OrderServlet">
			<input type="hidden" name="command">
			<div class="sb-selector">
				<input type="submit" id="sb-deletebtn" value="삭제" onclick="return deleteChecked()">
			</div><br>
			<table class="sb-items" border="1">
				<tr id="tablehead">
					<th><input type="checkbox" name="shoppingbasket" onclick='selectAll(this);priceSum()'></th>
					<th>번호</th>
					<th>이미지</th>
					<th>상품명</th>
					<th>색상</th>
					<th>사이즈</th>
					<th>옵션</th>
					<th>수량</th>
					<th>금액</th>
				</tr>
				<c:if test="${sbList.size() == 0}">
					<tr class="tablebody">
						<td id="goodsnone" colspan="9"><h2>검색 결과가 없습니다.</h2></td>
					</tr>
				</c:if>

				<c:forEach var="sbVo" items="${sbList}">
					<tr class="tablebody">
						<td id="goodscheck">
							<input type="checkbox" name="goodsprice" value="${sbVo.price}" onclick="priceSum();numCheck()">
							<input type="checkbox" name="sbVo_num" value="${sbVo.cart_num}" style="display: none;">
							<input type="hidden" name="goodsamount" value="${sbVo.amount}"></td>
						<td id="goodsnum">${sbVo.cart_num}</td>
						<td id="goodsimg"><img src="img_product/${sbVo.img}"></td>
						<td id="goodsinfo">${sbVo.name}</td>
						<td id="goodscolor">${sbVo.color}</td>
						<td id="goodssize">${sbVo.size}</td>
						<td id="goodsoption">${sbVo.option}</td>
						<td id="goodsamount">${sbVo.amount}<span> 개</span></td>
						<td id="goodsprice"><fmt:formatNumber value="${sbVo.price*sbVo.amount}" pattern="#,###"/><span> 원</span></td>
					</tr>
				</c:forEach>
			</table>
			<input type="hidden" class="sblist" name="sblist"
				value="${sbList.size()}">
			<!-- 나중에 스프링으로 페이지 연동 달기 -->
			<div class="page-controller">
				<a href="#">&lt;&lt;</a> <span>1</span> <a href="#">&gt;&gt;</a>
			</div>
			<div class="price-calc">
				<div class="price-calc-target">
					<div class="price-calc-thumb">
						<p>
							<b>선택한 상품 요금</b>
						</p>
					</div>
					<div class="price-calc-tag">
						<p>
							<b>0</b> <span> 원</span>
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

					<div class="price-calc-tag">
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
							<b>요금 합계</b>
						</p>
					</div>
					<div class="price-calc-tag price-total-tag">
						<p>
							<b>0</b><span> 원</span>
						</p>
					</div>
				</div>
			</div>
			<div>
				<div class="buybtn-con">
					<input type="submit" value="구매" id="buybtn"
						onclick="return buyChecked()" style='cursor: pointer;'>
				</div>
			</div>
		</form>
	</div>
	<!-- sb 메인 끝-->
	<%@ include file="../common/footer.jsp"%>
	<script type="text/javascript" src="js/sb.js?Fd"></script>
</body>

</html>