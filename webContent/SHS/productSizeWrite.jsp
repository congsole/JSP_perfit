<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<style>
.main form{width:500px; margin:0 auto;}
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
<script type="text/javascript" src="js/size.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">

</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




	<div class="main">
		<h1 style="color: red;">[${pVo.id}] ${pVo.name}</h1>
		<img src="img_product/${ppVo.model1}" style="width:300px; height: 500px;">
		<form action="ProductServlet">
			<input type="hidden" name="command" value="size_write">
			<input type="hidden" name="id" value="${pVo.id}">
			<input type="hidden" name="type" value="${pVo.type}">
			<input type="hidden" name="category" value="${pVo.category}">
		<c:if test="${pVo.size_01 != null }">	
			<hr><br>
			<h1> 사이즈 : <input type="text" name="p_size" value="${pVo.size_01}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder" value="0"> <br>
			가슴단면 : <input type="text" name="bust" value="0" id="bust"> <br>
			허리단면 : <input type="text" name="waist" value="0" id="waist"> <br>
			총장 : <input type="text" name="total_length" value="0"> <br>
			팔길이 : <input type="text" name="arm_length" value="0"> <br>
			팔단면 : <input type="text" name="arm" value="0"> <br>
			밑위 : <input type="text" name="rise" value="0"> <br>
			엉덩이단면 : <input type="text" name="hip" value="0" id="hip"> <br>
			허벅지단면 : <input type="text" name="thigh" value="0"> <br>
			밑단 : <input type="text" name="hem" value="0"> <br>
			shape : <input type="text" name="shape" readonly>
			<button type="button" onclick="resultP()">계산하기</button> <br>
			<input type="submit" value="전  송"> <br><br>
			<br><hr><br>
		</c:if>
		</form>
		<form action="ProductServlet">
			<input type="hidden" name="command" value="size_write">
			<input type="hidden" name="id" value="${pVo.id}">
			<input type="hidden" name="type" value="${pVo.type}">
			<input type="hidden" name="category" value="${pVo.category}">
		<c:if test="${pVo.size_02 != null }">	
			<hr><br>	
			<h1> 사이즈 : <input type="text" name="p_size" value="${pVo.size_02}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder" value=""> <br>
			가슴단면 : <input type="text" name="bust" value="" id="bust"> <br>
			허리단면 : <input type="text" name="waist" value="" id="waist"> <br>
			총장 : <input type="text" name="total_length" value=""> <br>
			팔길이 : <input type="text" name="arm_length" value=""> <br>
			팔단면 : <input type="text" name="arm" value=""> <br>
			밑위 : <input type="text" name="rise" value=""> <br>
			엉덩이단면 : <input type="text" name="hip" value="" id="hip"> <br>
			허벅지단면 : <input type="text" name="thigh" value=""> <br>
			밑단 : <input type="text" name="hem" value=""> <br>
			shape : <input type="text" name="shape" readonly>
			<button type="button" onclick="resultP()">계산하기</button> <br>
		<input type="submit" value="전  송"> <br><br>
			<br><hr><br>
		</c:if>
		</form>
		<form action="ProductServlet">
			<input type="hidden" name="command" value="size_write">
			<input type="hidden" name="id" value="${pVo.id}">
			<input type="hidden" name="type" value="${pVo.type}">
			<input type="hidden" name="category" value="${pVo.category}">
		<c:if test="${pVo.size_03 != null }">	
			<hr><br>	
			<h1> 사이즈 : <input type="text" name="p_size" value="${pVo.size_03}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder" value=""> <br>
			가슴단면 : <input type="text" name="bust" value="" id="bust"> <br>
			허리단면 : <input type="text" name="waist" value="" id="waist"> <br>
			총장 : <input type="text" name="total_length" value=""> <br>
			팔길이 : <input type="text" name="arm_length" value=""> <br>
			팔단면 : <input type="text" name="arm" value=""> <br>
			밑위 : <input type="text" name="rise" value=""> <br>
			엉덩이단면 : <input type="text" name="hip" value="" id="hip"> <br>
			허벅지단면 : <input type="text" name="thigh" value=""> <br>
			밑단 : <input type="text" name="hem" value=""> <br>
			shape : <input type="text" name="shape" readonly>
			<button type="button" onclick="resultP()">계산하기</button> <br>
		<input type="submit" value="전  송"> <br><br>
			<br><hr><br>
		</c:if>
		</form>
		<form action="ProductServlet">
			<input type="hidden" name="command" value="size_write">
			<input type="hidden" name="id" value="${pVo.id}">
			<input type="hidden" name="type" value="${pVo.type}">
			<input type="hidden" name="category" value="${pVo.category}">
		<c:if test="${pVo.size_04 != null }">	
			<hr><br>	
			<h1> 사이즈 : <input type="text" name="p_size" value="${pVo.size_04}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder" value=""> <br>
			가슴단면 : <input type="text" name="bust" value="" id="bust"> <br>
			허리단면 : <input type="text" name="waist" value="" id="waist"> <br>
			총장 : <input type="text" name="total_length" value=""> <br>
			팔길이 : <input type="text" name="arm_length" value=""> <br>
			팔단면 : <input type="text" name="arm" value=""> <br>
			밑위 : <input type="text" name="rise" value=""> <br>
			엉덩이단면 : <input type="text" name="hip" value="" id="hip"> <br>
			허벅지단면 : <input type="text" name="thigh" value=""> <br>
			밑단 : <input type="text" name="hem" value=""> <br>
			shape : <input type="text" name="shape" readonly>
			<button type="button" onclick="resultP()">계산하기</button> <br>
		<input type="submit" value="전  송"> <br><br>
			<br><hr><br>
		</c:if>
		</form>
		<form action="ProductServlet">
			<input type="hidden" name="command" value="size_write">
			<input type="hidden" name="id" value="${pVo.id}">
			<input type="hidden" name="type" value="${pVo.type}">
			<input type="hidden" name="category" value="${pVo.category}">
		<c:if test="${pVo.size_05 != null }">	
			<hr><br>	
			<h1> 사이즈 : <input type="text" name="p_size" value="${pVo.size_01}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder" value=""> <br>
			가슴단면 : <input type="text" name="bust" value="" id="bust"> <br>
			허리단면 : <input type="text" name="waist" value="" id="waist"> <br>
			총장 : <input type="text" name="total_length" value=""> <br>
			팔길이 : <input type="text" name="arm_length" value=""> <br>
			팔단면 : <input type="text" name="arm" value=""> <br>
			밑위 : <input type="text" name="rise" value=""> <br>
			엉덩이단면 : <input type="text" name="hip" value="" id="hip"> <br>
			허벅지단면 : <input type="text" name="thigh" value=""> <br>
			밑단 : <input type="text" name="hem" value=""> <br>
			shape : <input type="text" name="shape" readonly>
			<button type="button" onclick="resultP()">계산하기</button> <br>
		<input type="submit" value="전  송"> <br><br>
			<br><hr><br>
		</c:if>
		</form>
		<form action="ProductServlet">
			<input type="hidden" name="command" value="size_write">
			<input type="hidden" name="id" value="${pVo.id}">
			<input type="hidden" name="type" value="${pVo.type}">
			<input type="hidden" name="category" value="${pVo.category}">
		<c:if test="${pVo.size_06 != null }">	
			<hr><br>	
			<h1> 사이즈 : <input type="text" name="p_size" value="${pVo.size_06}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder" value=""> <br>
			가슴단면 : <input type="text" name="bust" value="" id="bust"> <br>
			허리단면 : <input type="text" name="waist" value="" id="waist"> <br>
			총장 : <input type="text" name="total_length" value=""> <br>
			팔길이 : <input type="text" name="arm_length" value=""> <br>
			팔단면 : <input type="text" name="arm" value=""> <br>
			밑위 : <input type="text" name="rise" value=""> <br>
			엉덩이단면 : <input type="text" name="hip" value="" id="hip"> <br>
			허벅지단면 : <input type="text" name="thigh" value=""> <br>
			밑단 : <input type="text" name="hem" value=""> <br>
			shape : <input type="text" name="shape" readonly>
			<button type="button" onclick="resultP()">계산하기</button> <br>
		<input type="submit" value="전  송"> <br><br>
			<br><hr><br>
		</c:if>
		</form>
		<form action="ProductServlet">
			<input type="hidden" name="command" value="size_write">
			<input type="hidden" name="id" value="${pVo.id}">
			<input type="hidden" name="type" value="${pVo.type}">
			<input type="hidden" name="category" value="${pVo.category}">
		<c:if test="${pVo.size_07 != null }">	
			<hr><br>	
			<h1> 사이즈 : <input type="text" name="p_size" value="${pVo.size_07}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder" value=""> <br>
			가슴단면 : <input type="text" name="bust" value="" id="bust"> <br>
			허리단면 : <input type="text" name="waist" value="" id="waist"> <br>
			총장 : <input type="text" name="total_length" value=""> <br>
			팔길이 : <input type="text" name="arm_length" value=""> <br>
			팔단면 : <input type="text" name="arm" value=""> <br>
			밑위 : <input type="text" name="rise" value=""> <br>
			엉덩이단면 : <input type="text" name="hip" value="" id="hip"> <br>
			허벅지단면 : <input type="text" name="thigh" value=""> <br>
			밑단 : <input type="text" name="hem" value=""> <br>
			shape : <input type="text" name="shape" readonly>
			<button type="button" onclick="resultP()">계산하기</button> <br>
		<input type="submit" value="전  송"> <br><br>
			<br><hr><br>
		</c:if>
		</form>
		<form action="ProductServlet">
			<input type="hidden" name="command" value="size_write">
			<input type="hidden" name="id" value="${pVo.id}">
			<input type="hidden" name="type" value="${pVo.type}">
			<input type="hidden" name="category" value="${pVo.category}">
		<c:if test="${pVo.size_08 != null }">	
			<hr><br>	
			<h1> 사이즈 : <input type="text" name="p_size" value="${pVo.size_08}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder" value=""> <br>
			가슴단면 : <input type="text" name="bust" value="" id="bust"> <br>
			허리단면 : <input type="text" name="waist" value="" id="waist"> <br>
			총장 : <input type="text" name="total_length" value=""> <br>
			팔길이 : <input type="text" name="arm_length" value=""> <br>
			팔단면 : <input type="text" name="arm" value=""> <br>
			밑위 : <input type="text" name="rise" value=""> <br>
			엉덩이단면 : <input type="text" name="hip" value="" id="hip"> <br>
			허벅지단면 : <input type="text" name="thigh" value=""> <br>
			밑단 : <input type="text" name="hem" value=""> <br>
			shape : <input type="text" name="shape" readonly>
			<button type="button" onclick="resultP()">계산하기</button> <br>
		<input type="submit" value="전  송"> <br><br>
			<br><hr><br>
		</c:if>
		</form>
		<form action="ProductServlet">
			<input type="hidden" name="command" value="size_write">
			<input type="hidden" name="id" value="${pVo.id}">
			<input type="hidden" name="type" value="${pVo.type}">
			<input type="hidden" name="category" value="${pVo.category}">
		<c:if test="${pVo.size_09 != null }">	
			<hr><br>	
			<h1> 사이즈 : <input type="text" name="p_size" value="${pVo.size_09}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder" value=""> <br>
			가슴단면 : <input type="text" name="bust" value="" id="bust"> <br>
			허리단면 : <input type="text" name="waist" value="" id="waist"> <br>
			총장 : <input type="text" name="total_length" value=""> <br>
			팔길이 : <input type="text" name="arm_length" value=""> <br>
			팔단면 : <input type="text" name="arm" value=""> <br>
			밑위 : <input type="text" name="rise" value=""> <br>
			엉덩이단면 : <input type="text" name="hip" value="" id="hip"> <br>
			허벅지단면 : <input type="text" name="thigh" value=""> <br>
			밑단 : <input type="text" name="hem" value=""> <br>
			shape : <input type="text" name="shape" readonly>
			<button type="button" onclick="resultP()">계산하기</button> <br>
		<input type="submit" value="전  송"> <br><br>
			<br><hr><br>
		</c:if>
		</form>
		<form action="ProductServlet">
			<input type="hidden" name="command" value="size_write">
			<input type="hidden" name="id" value="${pVo.id}">
			<input type="hidden" name="type" value="${pVo.type}">
			<input type="hidden" name="category" value="${pVo.category}">
		<c:if test="${pVo.size_10 != null }">	
			<hr><br>	
			<h1> 사이즈 : <input type="text" name="p_size" value="${pVo.size_10}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder" value=""> <br>
			가슴단면 : <input type="text" name="bust" value="" id="bust"> <br>
			허리단면 : <input type="text" name="waist" value="" id="waist"> <br>
			총장 : <input type="text" name="total_length" value=""> <br>
			팔길이 : <input type="text" name="arm_length" value=""> <br>
			팔단면 : <input type="text" name="arm" value=""> <br>
			밑위 : <input type="text" name="rise" value=""> <br>
			엉덩이단면 : <input type="text" name="hip" value="" id="hip"> <br>
			허벅지단면 : <input type="text" name="thigh" value=""> <br>
			밑단 : <input type="text" name="hem" value=""> <br>
			shape : <input type="text" name="shape" readonly>
			<button type="button" onclick="resultP()">계산하기</button> <br>
			<input type="submit" value="전  송"> <br><br>
			<br><hr><br>
		</c:if>
		</form>
	






	</div>




	<%@ include file="../common/footer.jsp"%>
</body>

</html>