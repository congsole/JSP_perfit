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
<title>perfit | 너의 사이즈는</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/main.css?Ss">
<script type="text/javascript" src="js/analytics.js"></script>
<script type="text/javascript" src="js/modernizr.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>





	<div class="main">


		<div class="main_section01">
			<div>
				<a href="#" class="jcarousel-control-prev"
					data-jcarouselcontrol="true">‹</a>
			</div>
			<div class="jcarousel-wrapper" style="width: 80%;">
				<div class="jcarousel" style="width: 100%;" data-jcarousel="true">
					<ul class="clearfix"
						style="transition-duration: 0s; transition-timing-function: ease; transition-property: all; transform: translate3d(0px, 0px, 0px);">
						<li style="width: 100%;"><img src="img/slide1.jpg"
							width="100%" height="100%" alt=""></li>
						<li style="width: 100%;"><img src="img/slide2.jpg"
							width="100%" height="100%" alt=""></li>
						<li style="width: 100%;"><img src="img/slide3.jpg"
							width="100%" height="100%" alt=""></li>
						<li style="width: 100%;"><img src="img/slide4.jpg"
							width="100%" height="100%" alt=""></li>
					</ul>
				</div>
				<p class="jcarousel-pagination" data-jcarouselpagination="true">
					<a href="#1" class="active">1</a> <a href="#2">2</a> <a href="#3">3</a>
					<a href="#4">4</a>
				</p>
			</div>
			<div>
				<a href="#" class="jcarousel-control-next"
					data-jcarouselcontrol="true">›</a>
			</div>
		</div>
		<script>
			
		</script>
		<div class="main_section02">
			<h2>이 상품 어때요?</h2>
			<!--  -->
			<div class="main_prod">
				<c:forEach var="pVo" items="${productList1}" varStatus="status">
						<a href="ProductServlet?command=Product_view&id=${pVo.id}"> <c:forEach
								var="ppVo" items="${pictureList1}">
								<c:if test="${ppVo.id eq pVo.id}">
									<c:choose>
										<c:when test="${ppVo.model1 != null}">
											<img class="thumbNail" style="width: 188px; height: 195px"
												src="img_product/${ppVo.model1}">
										</c:when>
										<c:otherwise>
											<img src="img/prod_small.png">
										</c:otherwise>
									</c:choose>

								</c:if>
							</c:forEach>
						</a>
				</c:forEach>
			</div>
		</div>

		<div class="main_section03">
			<img src="img/point1.PNG"> <img src="img/point2.PNG"> <img
				src="img/포인트3.PNG"> <img src="img/포인트4.PNG">
		</div>

		<div class="main_section02">
			<h2>오늘 최다 주문!</h2>
			<div class="main_prod">
				<c:forEach var="pVo" items="${productList2}" varStatus="status">
						<a href="ProductServlet?command=Product_view&id=${pVo.id}"> <c:forEach
								var="ppVo" items="${pictureList2}">
								<c:if test="${ppVo.id eq pVo.id}">
									<c:choose>
										<c:when test="${ppVo.model1 != null}">
											<img class="thumbNail" style="width: 188px; height: 195px"
												src="img_product/${ppVo.model1}">
										</c:when>
										<c:otherwise>
											<img src="img/prod_small.png">
										</c:otherwise>
									</c:choose>
								</c:if>
							</c:forEach>
						</a>
				</c:forEach>
			</div>
		</div>
	</div>


	<%@ include file="../common/footer.jsp"%>
</body>

</html>