<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="perfit.dto.ProductPictureVO"%>
<%@ page import="perfit.dto.ProductVO"%>
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
<title>perfit | ${type}</title>

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
			<c:if test="${type == 'search'}"> 검색결과 </c:if>
		</h1>

		<h3>
			<ul>
			<c:choose>
				<c:when test="${type == 'OUTER'}">
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=OUTER&category=Jacket">&nbsp;&nbsp;자켓&nbsp;&nbsp;</a> |</li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=OUTER&category=Coat">&nbsp;&nbsp;코트&nbsp;&nbsp;</a> |</li>
					<li id="3rd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=OUTER&category=Jumper">&nbsp;&nbsp;점퍼&nbsp;&nbsp;</a> |</li>
					<li id="4th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=OUTER&category=Cardigan">&nbsp;&nbsp;가디건&nbsp;&nbsp;</a> |</li>
					<li id="5th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=OUTER&category=Padding">&nbsp;&nbsp;패딩&nbsp;&nbsp;</a></li>
				</c:when>
				<c:when test="${type == 'TOP'}">
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=T-Shirts">&nbsp;&nbsp;티셔츠&nbsp;&nbsp;</a> |</li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=Hood">&nbsp;&nbsp;후드&nbsp;&nbsp;</a> |</li>
					<li id="3rd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=MANtoMAN">&nbsp;&nbsp;맨투맨&nbsp;&nbsp;</a> |</li>
					<li id="4th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=Knitted">&nbsp;&nbsp;니트&nbsp;&nbsp;</a> |</li>
					<li id="5th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=Sleeveless">&nbsp;&nbsp;민소매&nbsp;&nbsp;</a> |</li>
					<li id="6th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=Blouse">&nbsp;&nbsp;블라우스&nbsp;&nbsp;</a> |</li>
					<li id="7th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=Shirts">&nbsp;&nbsp;셔츠&nbsp;&nbsp;</a></li>
				</c:when>
				<c:when test="${type == 'PANTS'}">
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=PANTS&category=Denim">&nbsp;&nbsp;데님&nbsp;&nbsp;</a> |</li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=PANTS&category=Slacks">&nbsp;&nbsp;슬랙스&nbsp;&nbsp;</a> |</li>
					<li id="3rd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=PANTS&category=Linen">&nbsp;&nbsp;리넨&nbsp;&nbsp;</a> |</li>
					<li id="4td_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=PANTS&category=Short">&nbsp;&nbsp;숏&nbsp;&nbsp;</a></li>
				</c:when>
				<c:when test="${type == 'SKIRT'}">
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=SKIRT&category=Mini">&nbsp;&nbsp;미니&nbsp;&nbsp;</a> |</li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=SKIRT&category=Medium">&nbsp;&nbsp;미디움&nbsp;&nbsp;</a> |</li>
					<li id="3rd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=SKIRT&category=Long">&nbsp;&nbsp;롱&nbsp;&nbsp;</a></li>
				</c:when>
				<c:when test="${type == 'ONEPIECE'}">
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=ONEPIECE&category=Mini">&nbsp;&nbsp;미니&nbsp;&nbsp;</a> |</li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=ONEPIECE&category=Medium">&nbsp;&nbsp;미디움&nbsp;&nbsp;</a> |</li>
					<li id="3rd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=ONEPIECE&category=Long">&nbsp;&nbsp;롱&nbsp;&nbsp;</a> |</li>
					<li id="4th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=ONEPIECE&category=JumpSuits">&nbsp;&nbsp;점프수트&nbsp;&nbsp;</a> |</li>
					<li id="5th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=ONEPIECE&category=TwoPeice">&nbsp;&nbsp;투피스&nbsp;&nbsp;</a></li>
				</c:when>
				<c:when test="${type == 'search'}"> <li> [ ${word} ]의 검색결과입니다.</li> </c:when>
				<c:otherwise>
					<li>상세검색 결과입니다.</li>
				</c:otherwise>
				</c:choose>
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
											<img class="mainImage" src="img_product/${ppVo.model1}">
										</c:when>
										<c:otherwise>
											<img src="img_product/racoon.png">
										</c:otherwise>
									</c:choose>

								</c:if>
							</c:forEach>

							<p>${pVo.name}</p>
							<p><fmt:formatNumber value="${pVo.price}" pattern="#,###"/>원</p>
							
							<br>
							<hr>
							<ul id="color_list">
								<c:if test="${pVo.color_01 != null && pVo.color_01 != '' && pVo.color_01 != ' '}">
									<li id="1_color" style="color: ${pVo.color_01};">♥</li>
								</c:if>
								<c:if test="${pVo.color_02 != null && pVo.color_02 != '' && pVo.color_02 != ' '}">
									<li id="2_color" style="color: ${pVo.color_02};">♥</li>
								</c:if>

								<c:if test="${pVo.color_03!=null && pVo.color_03 != '' && pVo.color_03 != ' '}">
									<li id="3_color" style="color: ${pVo.color_03};">♥</li>
								</c:if>
								<c:if test="${pVo.color_04!=null && pVo.color_04 != '' && pVo.color_04 != ' '}">

									<li id="4_color" style="color: ${pVo.color_04};">♥</li>
								</c:if>
								<c:if test="${pVo.color_05!=null && pVo.color_05 != '' && pVo.color_05 != ' '}">

									<li id="5_color" style="color: ${pVo.color_05};">♥</li>
								</c:if>
								<c:if test="${pVo.color_06!=null && pVo.color_06 != '' && pVo.color_06 != ' '}">

									<li id="6_color" style="color: ${pVo.color_06};">♥</li>
								</c:if>
								<c:if test="${pVo.color_07!=null && pVo.color_07 != '' && pVo.color_07 != ' '}">

									<li id="7_color" style="color: ${pVo.color_07};">♥</li>
								</c:if>
								<c:if test="${pVo.color_08!=null && pVo.color_08 != '' && pVo.color_08 != ' '}">

									<li id="8_color" style="color: ${pVo.color_08};">♥</li>
								</c:if>
								<c:if test="${pVo.color_09!=null && pVo.color_09 != '' && pVo.color_09 != ' '}">

									<li id="9_color" style="color: ${pVo.color_09};">♥</li>
								</c:if>
								<c:if test="${pVo.color_10!=null && pVo.color_10 != '' && pVo.color_10 != ' '}">

									<li id="10_color" style="color: ${pVo.color_10};">♥</li>
								</c:if>
							</ul>
						</div> <!-- prod -->
					</a>
				</c:if>
			</c:forEach>




		</div>

		<div class='pull-right'>
			<ul class="pagination">
				<c:if test="${pageVO.prev }">
					<li class="paginate_button previous"><a
						href="ProductServlet?command=Product_list&pageNum=${pageVO.startPage -1}&amount=${pageVO.amount}&type=${type}&category=${category}">Previous</a></li>
				</c:if>
				<c:forEach var="num" begin="${pageVO.startPage}" end="${pageVO.endPage}">
					<li class="paginate_button ${PageVO.pageNum eq num ? 'active' : ''}">
						<a href="ProductServlet?command=Product_list&pageNum=${num}&amount=${pageVO.amount}&type=${type}&category=${category}">${num}</a>
					</li>
				</c:forEach>

				<c:if test="${pageVO.next}">
					<li class="paginate_button next"><a href="ProductServlet?command=Product_list&pageNum=${pageVO.startPage +1}&amount=${pageVO.amount}&type=${type}&category=${category}">Next</a></li>
				</c:if>
			</ul>

		</div>
		<!--  end pull-right -->
		
	</div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>