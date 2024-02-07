<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
<title>perfit | ${pVo.name}</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/detail.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/detail.css">

</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>
	<div class="main">
		<div id="detail_01">
			<div id="detail_info">${pVo.fabric}</div>
			<div id="detail_pic">
				<ul id="detail_pic_01">
					<c:if test="${ppVo.model1 != null && ppVo.model1 != ''}">
						<li><img src="img_product/${ppVo.model1}" id="pic1"></li>
					</c:if>
					<c:if test="${ppVo.model2 != null && ppVo.model2 != ''}">
						<li><img src="img_product/${ppVo.model2}" id="pic2"></li>
					</c:if>
					<c:if test="${ppVo.model3 != null && ppVo.model3 != ''}">
						<li><img src="img_product/${ppVo.model3}" id="pic3"></li>
					</c:if>
					<c:if test="${ppVo.model4 != null && ppVo.model4 != ''}">
						<li><img src="img_product/${ppVo.model4}" id="pic4"></li>
					</c:if>
					<c:if test="${ppVo.model5 != null && ppVo.model5 != ''}">
						<li><img src="img_product/${ppVo.model5}" id="pic5"></li>
					</c:if>
					<c:if test="${ppVo.model6 != null && ppVo.model6 != ''}">
						<li><img src="img_product/${ppVo.model6}" id="pic6"></li>
					</c:if>
					<c:if test="${ppVo.model7 != null && ppVo.model7 != ''}">
						<li><img src="img_product/${ppVo.model7}" id="pic7"></li>
					</c:if>
					<c:if test="${ppVo.model8 != null && ppVo.model8 != ''}">
						<li><img src="img_product/${ppVo.model8}" id="pic8"></li>
					</c:if>
					<c:if test="${ppVo.model9 != null && ppVo.model9 != ''}">
						<li><img src="img_product/${ppVo.model9}" id="pic9"></li>
					</c:if>

				</ul>

				<ul id="detail_pic_02">
					<c:if test="${ppVo.model1 != null && ppVo.model1 != ''}">
						<li><a href="#pic1"><img src="img_product/${ppVo.model1}"></a></li>
					</c:if>
					<c:if test="${ppVo.model2 != null && ppVo.model2 != ''}">
						<li><a href="#pic2"><img src="img_product/${ppVo.model2}"></a></li>
					</c:if>
					<c:if test="${ppVo.model3 != null && ppVo.model3 != ''}">
						<li><a href="#pic3"><img src="img_product/${ppVo.model3}"></a></li>
					</c:if>
					<c:if test="${ppVo.model4 != null && ppVo.model4 != ''}">
						<li><a href="#pic4"><img src="img_product/${ppVo.model4}"></a></li>
					</c:if>
					<c:if test="${ppVo.model5 != null && ppVo.model5 != ''}">
						<li><a href="#pic5"><img src="img_product/${ppVo.model5}"></a></li>
					</c:if>
					<c:if test="${ppVo.model6 != null && ppVo.model6 != ''}">
						<li><a href="#pic6"><img src="img_product/${ppVo.model6}"></a></li>
					</c:if>
					<c:if test="${ppVo.model7 != null && ppVo.model7 != ''}">
						<li><a href="#pic7"><img src="img_product/${ppVo.model7}"></a></li>
					</c:if>
					<c:if test="${ppVo.model8 != null && ppVo.model8 != ''}">
						<li><a href="#pic8"><img src="img_product/${ppVo.model8}"></a></li>
					</c:if>
					<c:if test="${ppVo.model9 != null && ppVo.model9 != ''}">
						<li><a href="#pic9"><img src="img_product/${ppVo.model9}"></a></li>
					</c:if>
				</ul>
			</div>

			<div id="detail_select">
				<h2>${pVo.name}</h2>
				<h2><fmt:formatNumber value="${pVo.price}" pattern="#,###"/> 원</h2>
				<pre>${pVo.description}</pre>

				<br>
				<br>

				<form method = "post" id="options" name ="frm" action="ProductServlet">
	               <c:if test="${mVo == null}">
	               	<input type="hidden" name="command" value="member_login">
	               </c:if>
	               <c:if test="${mVo != null}">
	               	<input type="hidden" id="comm" name="command" value="">
	               	<input type="hidden" name="pid" value="${pVo.id}">
	               	<input type="hidden" name="mid" value="${mVo.id}">

					</c:if>
					<h2>색&nbsp;&nbsp;&nbsp;상</h2>

					<input type="radio" name="color" id="color01" value="${pVo.color_01}" style="display: none">
					<label for="color01">${pVo.color_01}</label>
					<c:if test="${pVo.color_02 != ''}">
						<input type="radio" name="color" id="color02" value="${pVo.color_02}" style="display: none">
						<label for="color02">${pVo.color_02}</label>
					</c:if>
					<c:if test="${pVo.color_03 != ''}">
						<input type="radio" name="color" id="color03" value="${pVo.color_03}"
							style="display: none">
						<label for="color03">${pVo.color_03}</label>
					</c:if>
					<c:if test="${pVo.color_04 != ''}">
						<input type="radio" name="color" id="color04" value="${pVo.color_04}"
							style="display: none">
						<label for="color04">${pVo.color_04}</label>
					</c:if>
					<c:if test="${pVo.color_05 != ''}">
						<input type="radio" name="color" id="color05" value="${pVo.color_05}"
							style="display: none">
						<label for="color05">${pVo.color_05}</label>
					</c:if>
					<c:if test="${pVo.color_06 != ''}">
						<input type="radio" name="color" id="color06" value="${pVo.color_06}"
							style="display: none">
						<label for="color06">${pVo.color_06}</label>
					</c:if>
					<c:if test="${pVo.color_07 != ''}">
						<input type="radio" name="color" id="color07" value="${pVo.color_07}"
							style="display: none">
						<label for="color07">${pVo.color_07}</label>
					</c:if>
					<c:if test="${pVo.color_08 != ''}">
						<input type="radio" name="color" id="color08" value="${pVo.color_08}"
							style="display: none">
						<label for="color08">${pVo.color_08}</label>
					</c:if>
					<c:if test="${pVo.color_09 != ''}">
						<input type="radio" name="color" id="color09" value="${pVo.color_09}"
							style="display: none">
						<label for="color09">${pVo.color_09}</label>
					</c:if>
					<c:if test="${pVo.color_10 != ''}">
						<input type="radio" name="color" id="color10" value="${pVo.color_10}"
							style="display: none">
						<label for="color10">${pVo.color_10}</label>
					</c:if>


					<br> <br>

					<h2>사이즈</h2>

					<input type="radio" name="size" id="size01" style="display: none" value="${pVo.size_01}">
					<label for="size01">${pVo.size_01}</label>
					<c:if test="${pVo.size_02 != ''}">
						<input type="radio" name="size" id="size02" style="display: none" value="${pVo.size_02}">
						<label for="size02">${pVo.size_02}</label>
					</c:if>
					<c:if test="${pVo.size_03 != ''}">
						<input type="radio" name="size" id="size03" style="display: none" value="${pVo.size_03}">
						<label for="size03">${pVo.size_03}</label>
					</c:if>
					<c:if test="${pVo.size_04 != ''}">
						<input type="radio" name="size" id="size04" style="display: none" value="${pVo.size_04}">
						<label for="size04">${pVo.size_04}</label>
					</c:if>
					<c:if test="${pVo.size_05 != ''}">
						<input type="radio" name="size" id="size05" style="display: none" value="${pVo.size_05}">
						<label for="size05">${pVo.size_05}</label>
					</c:if>
					<c:if test="${pVo.size_06 != ''}">
						<input type="radio" name="size" id="size06" style="display: none" value="${pVo.size_06}">
						<label for="size06">${pVo.size_06}</label>
					</c:if>
					<c:if test="${pVo.size_07 != ''}">
						<input type="radio" name="size" id="size07" style="display: none" value="${pVo.size_07}">
						<label for="size07">${pVo.size_07}</label>
					</c:if>
					<c:if test="${pVo.size_08 != ''}">
						<input type="radio" name="size" id="size08" style="display: none" value="${pVo.size_08}">
						<label for="size08">${pVo.size_08}</label>
					</c:if>
					<c:if test="${pVo.size_09 != ''}">
						<input type="radio" name="size" id="size09" style="display: none" value="${pVo.size_09}">
						<label for="size09">${pVo.size_09}</label>
					</c:if>
					<c:if test="${pVo.size_10 != ''}">
						<input type="radio" name="size" id="size10" style="display: none" value="${pVo.size_10}">
						<label for="size10">${pVo.size_10}</label>
					</c:if>
<br> <br>
					<h2>수량</h2>
					<input type="number" name="amount" id="amount "value="1">
					<br> <br> <br> <br> 
					<input type="submit" value="바로구매" id="directBuy" onclick="return buyCheck()">&nbsp; 
					<input type="submit" value="장바구니" id="addToCart" onclick="return cartCheck()">
				</form>
			
			</div>
		</div>
		<br>
		<Br>
		<div id="detail_02" class="detail">
			<h2>제품 상세</h2>
			<ul>
					<c:if test="${ppVo.detail1 != ''}">
						<li><img src="img_product/${ppVo.detail1}"></li>
					</c:if>
					<c:if test="${ppVo.detail2 != ''}">
						<li><img src="img_product/${ppVo.detail2}"></li>
					</c:if>
					<c:if test="${ppVo.detail3 != ''}">
						<li><img src="img_product/${ppVo.detail3}"></li>
					</c:if>
					<c:if test="${ppVo.detail4 != ''}">
						<li><img src="img_product/${ppVo.detail4}"></li>
					</c:if>
					<c:if test="${ppVo.detail5 != ''}">
						<li><img src="img_product/${ppVo.detail5}"></li>
					</c:if>
					<c:if test="${ppVo.detail6 != ''}">
						<li><img src="img_product/${ppVo.detail6}"></li>
					</c:if>
					<c:if test="${ppVo.detail7 != ''}">
						<li><img src="img_product/${ppVo.detail7}"></li>
					</c:if>




				</ul>
		</div>
		<br>
		<Br>
		<div id="detail_03" class="detail">
			<h2>실측 사이즈</h2>
								<c:if test="${ppVo.detail8 != ''}">
						<li><img src="img_product/${ppVo.detail8}"></li>
					</c:if>
			<c:if test="${ppVo.detail9 != ''}">
				<img src="img_product/${ppVo.detail9}">
			</c:if>
			<Br>
			<Br>
			<Br>
			<Br>
		</div>
		<br>
		<Br>
	</div>




	<%@ include file="../common/footer.jsp"%>
</body>

</html>