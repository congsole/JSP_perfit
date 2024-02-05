<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<style>
@font-face {
	font-family: '경기천년제목 Light';
	src: local('경기천년제목 Light'), url('font/Title_Light.woff') format('woff'),
		url('font/Title_Light.otf') format('opentype')
}
</style>
<link rel="icon" type="image/x-icon" href="img/favicon.png">
<title>perfit | 상품 목록</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/ProductList.css">


</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<div id="prod_list_wrap">
		<br> <br> <br>
		<h1>
			<c:if test="${type == 'OUTER'}"> OUTER </c:if>
			<c:if test="${type == 'TOP'}"> TOP </c:if>
			<c:if test="${type == 'PANTS'}"> PANTS </c:if>
			<c:if test="${type == 'SKIRT'}"> SKIRT </c:if>
			<c:if test="${type == 'ONEPIECE'}"> ONEPIECE </c:if>
		</h1>

		<h3>
			<ul>
				<c:if test="${type == 'OUTER'}">
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;코트&nbsp;&nbsp;</a> |</li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;점퍼&nbsp;&nbsp;</a> |</li>
					<li id="3nd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;가디건&nbsp;&nbsp;</a> |</li>
					<li id="4rd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;패딩&nbsp;&nbsp;</a> |</li>
				</c:if>
				<c:if test="${type == 'TOP'}">
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;티셔츠&nbsp;&nbsp;</a> |</li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;후드&nbsp;&nbsp;</a> |</li>
					<li id="3nd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;맨투맨&nbsp;&nbsp;</a> |</li>
					<li id="4rd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;니트&nbsp;&nbsp;</a> |</li>
					<li id="5th_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;민소매&nbsp;&nbsp;</a></li>
				</c:if>
				<c:if test="${type == 'PANTS'}">
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;데님&nbsp;&nbsp;</a> |</li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;슬랙스&nbsp;&nbsp;</a> |</li>
					<li id="3nd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;리넨&nbsp;&nbsp;</a> |</li>
					<li id="4rd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;숏&nbsp;&nbsp;</a> |</li>
				</c:if>
				<c:if test="${type == 'SKIRT'}">
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;미니&nbsp;&nbsp;</a> |</li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;미디움&nbsp;&nbsp;</a> |</li>
					<li id="3nd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;롱&nbsp;&nbsp;</a> |</li>
				</c:if>
				<c:if test="${type == 'ONEPIECE'}">
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;미니&nbsp;&nbsp;</a> |</li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;미디움&nbsp;&nbsp;</a> |</li>
					<li id="3nd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;롱&nbsp;&nbsp;</a> |</li>
					<li id="4rd_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;점프수트&nbsp;&nbsp;</a> |</li>
					<li id="5th_category"><a style="color: rgb(34, 34, 34)"
						href="#">&nbsp;&nbsp;투피스&nbsp;&nbsp;</a></li>
				</c:if>


			</ul>
		</h3>
		<br> <br> <br>
		<div id="prod_list">
			<c:forEach var="pVo" items="${productList}">
				<c:if test="${pVo.type eq type}">
					<a href="ProductServlet?command=Product_view&id=${pVo.id}">
						<div class="prod">
							<c:forEach var="ppVo" items="${pictureList}">
								<c:if test="${ppVo.id eq pVo.id}">
									<c:choose>
										<c:when test="${ppVo.model1 != null}">
											<img id="mainImage" src="img_product/${ppVo.model1}">
										</c:when>
										<c:otherwise>
											<img src="img_product/racoon.png">
										</c:otherwise>
									</c:choose>

								</c:if>
							</c:forEach>

							<p>${pVo.name}</p>
							<p>${pVo.price}원</p>
							<br>
							<hr>
							<ul id="color_list">
								<c:if test="${pVo.color_01 != null}">
									<li id="1_color" style="color: ${pVo.color_01};">♥</li>
								</c:if>
								<c:if test="${pVo.color_02 != null}">
									<li id="2_color" style="color: ${pVo.color_02};">♥</li>
								</c:if>

								<c:if test="${pVo.color_03!=null}">
									<li id="3_color" style="color: ${pVo.color_03};">♥</li>
								</c:if>
								<c:if test="${pVo.color_04!=null}">

									<li id="4_color" style="color: ${pVo.color_04};">♥</li>
								</c:if>
								<c:if test="${pVo.color_05!=null}">

									<li id="5_color" style="color: ${pVo.color_05};">♥</li>
								</c:if>
								<c:if test="${pVo.color_06!=null}">

									<li id="6_color" style="color: ${pVo.color_06};">♥</li>
								</c:if>
								<c:if test="${pVo.color_07!=null}">

									<li id="7_color" style="color: ${pVo.color_07};">♥</li>
								</c:if>
								<c:if test="${pVo.color_08!=null}">

									<li id="8_color" style="color: ${pVo.color_08};">♥</li>
								</c:if>
								<c:if test="${pVo.color_09!=null}">

									<li id="9_color" style="color: ${pVo.color_09};">♥</li>
								</c:if>
								<c:if test="${pVo.color_10!=null}">

									<li id="10_color" style="color: ${pVo.color_10};">♥</li>
								</c:if>
							</ul>
						</div> <!-- prod -->
					</a>
				</c:if>
			</c:forEach>




		</div>

		<ul id="prod_page_no">
			<li>&lt;&lt;</li>
			<li>&lt;</li>
			<li>1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
			<li>6</li>
			<li>7</li>
			<li>8</li>
			<li>9</li>
			<li>&gt;</li>
			<li>&gt;&gt;</li>
		</ul>
	</div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>