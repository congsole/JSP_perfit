<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="perfit.dto.ProductPictureVO"%>

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
<title>perfit | 검색결과 </title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/ProductList.css">


</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<div id="prod_list_wrap">
		<br> <br> <br>
		<h1>검색 결과</h1>

		<br> <br> <br>
		<div id="prod_list">
			<c:if test="${idList != null}">
				<c:forEach var="pVo" items="${productList}">
					<c:forEach var="id" items="${idList}">
						<c:if test="${pVo.id == id}">
							<a href="ProductServlet?command=Product_view&id=${pVo.id}">
								<div class="prod">
									<c:forEach var="ppVo" items="${pictureList}">
										<c:if test="${ppVo.id == pVo.id}">
											<c:choose>
												<c:when test="${ppVo.model1 == null}">
													<img class="mainImage" src="img_product/racoon.png">
												</c:when>
												<c:otherwise>
													<img class="mainImage" src="img_product/${ppVo.model1}">
												</c:otherwise>
											</c:choose>
										</c:if>
									</c:forEach>

									<p>${pVo.name}</p>
									<p><fmt:formatNumber value="${pVo.price}" pattern="#,###"/> 원</p>
									<br>
									<hr>
									<ul id="color_list">
										<c:if test="${pVo.color_01!=null&&pVo.color_01!=''&&pVo.color_01!=' '}">
											<li id="1_color" style="color: ${pVo.color_01};">♥</li>
										</c:if>
										<c:if test="${pVo.color_02!=null&&pVo.color_02!=''&&pVo.color_02!=' '}">
											<li id="2_color" style="color: ${pVo.color_02};">♥</li>
										</c:if>
										<c:if test="${pVo.color_03!=null&&pVo.color_03!=''&&pVo.color_03!=' '}">
											<li id="3_color" style="color: ${pVo.color_03};">♥</li>
										</c:if>
										<c:if test="${pVo.color_04!=null&&pVo.color_04!=''&&pVo.color_04!=' '}">
											<li id="4_color" style="color: ${pVo.color_04};">♥</li>
										</c:if>
										<c:if test="${pVo.color_05!=null&&pVo.color_05!=''&&pVo.color_05!=' '}">
											<li id="5_color" style="color: ${pVo.color_05};">♥</li>
										</c:if>
										<c:if test="${pVo.color_06!=null&&pVo.color_06!=''&&pVo.color_06!=' '}">
											<li id="6_color" style="color: ${pVo.color_06};">♥</li>
										</c:if>
										<c:if test="${pVo.color_07!=null&&pVo.color_07!=''&&pVo.color_07!=' '}">
											<li id="7_color" style="color: ${pVo.color_07};">♥</li>
										</c:if>
										<c:if test="${pVo.color_08!=null&&pVo.color_08!=''&&pVo.color_08!=' '}">
											<li id="8_color" style="color: ${pVo.color_08};">♥</li>
										</c:if>
										<c:if test="${pVo.color_09!=null&&pVo.color_09!=''&&pVo.color_09!=' '}">
											<li id="9_color" style="color: ${pVo.color_09};">♥</li>
										</c:if>
										<c:if test="${pVo.color_10!=null && pVo.color_10!=' ' && pVo.color_10!=''}">
											<li id="10_color" style="color: ${pVo.color_10};">♥</li>
										</c:if>
									</ul>
								</div>
							</a>

						</c:if>
					</c:forEach>
				</c:forEach>
			</c:if>
		</div>

		<c:if test="${idList == null}">
			<div id="prod_list">
				<c:forEach var="pVo" items="${productList}">
					<a href="ProductServlet?command=Product_view&id=${pVo.id}">
						<div class="prod">
							<c:forEach var="ppVo" items="${pictureList}">
								<c:if test="${ppVo.id eq pVo.id}">
									<c:choose>
										<c:when test="${ppVo.model1 != null}">
											<img class="mainImage" src="img_product/${ppVo.model1}">
										</c:when>
										<c:otherwise>
											<img class="mainImage" src="img_product/racoon.png">
										</c:otherwise>
									</c:choose>

								</c:if>
							</c:forEach>

							<p>${pVo.name}</p>
							<p><fmt:formatNumber value="${pVo.price}" pattern="#,###"/> 원</p>
							<br>
							<hr>
							<ul id="color_list">
										<c:if test="${pVo.color_01!=null&&pVo.color_01!=''&&pVo.color_01!=' '}">
											<li id="1_color" style="color: ${pVo.color_01};">♥</li>
										</c:if>
										<c:if test="${pVo.color_02!=null&&pVo.color_02!=''&&pVo.color_02!=' '}">
											<li id="2_color" style="color: ${pVo.color_02};">♥</li>
										</c:if>
										<c:if test="${pVo.color_03!=null&&pVo.color_03!=''&&pVo.color_03!=' '}">
											<li id="3_color" style="color: ${pVo.color_03};">♥</li>
										</c:if>
										<c:if test="${pVo.color_04!=null&&pVo.color_04!=''&&pVo.color_04!=' '}">
											<li id="4_color" style="color: ${pVo.color_04};">♥</li>
										</c:if>
										<c:if test="${pVo.color_05!=null&&pVo.color_05!=''&&pVo.color_05!=' '}">
											<li id="5_color" style="color: ${pVo.color_05};">♥</li>
										</c:if>
										<c:if test="${pVo.color_06!=null&&pVo.color_06!=''&&pVo.color_06!=' '}">
											<li id="6_color" style="color: ${pVo.color_06};">♥</li>
										</c:if>
										<c:if test="${pVo.color_07!=null&&pVo.color_07!=''&&pVo.color_07!=' '}">
											<li id="7_color" style="color: ${pVo.color_07};">♥</li>
										</c:if>
										<c:if test="${pVo.color_08!=null&&pVo.color_08!=''&&pVo.color_08!=' '}">
											<li id="8_color" style="color: ${pVo.color_08};">♥</li>
										</c:if>
										<c:if test="${pVo.color_09!=null&&pVo.color_09!=''&&pVo.color_09!=' '}">
											<li id="9_color" style="color: ${pVo.color_09};">♥</li>
										</c:if>
										<c:if test="${pVo.color_10!=null && pVo.color_10!=' ' && pVo.color_10!=''}">
											<li id="10_color" style="color: ${pVo.color_10};">♥</li>
										</c:if>
									</ul>
						</div> <!-- prod -->
					</a>

				</c:forEach>
			</div>
		</c:if>

		<div class='pull-right'>
			<ul class="pagination">
				<c:if test="${pageVO.prev }">
					<li class="paginate_button previous"><a
						href="ProductServlet?command=${command}&pageNum=${pageVO.startPage -1}&amount=${pageVO.amount}&word=${keyword}">Previous</a></li>
				</c:if>
				<c:forEach var="num" begin="${pageVO.startPage}" end="${pageVO.endPage}">
					<li class="paginate_button ${PageVO.pageNum eq num ? 'active' : ''}">
						<a href="ProductServlet?command=${command}&pageNum=${num}&amount=${pageVO.amount}&word=${keyword}">${num}</a>
					</li>
				</c:forEach>

				<c:if test="${pageVO.next}">
					<li class="paginate_button next"><a href="ProductServlet?command=${command}&pageNum=${pageVO.startPage +1}&amount=${pageVO.amount}&word=${keyword}">Next</a></li>
				</c:if>
			</ul>

		</div>
		<!--  end pull-right -->
	</div>

	<%@ include file="../common/footer.jsp"%>
</body>
</html>