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
			<h1> 사이즈 : <input type="text" name="p_size1" value="${pVo.size_01}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder1" value="0"> <br>
			가슴단면 : <input type="text" name="bust1" value="0" id="bust"> <br>
			허리단면 : <input type="text" name="waist1" value="0" id="waist"> <br>
			총장 : <input type="text" name="total_length1" value="0"> <br>
			팔길이 : <input type="text" name="arm_length1" value="0"> <br>
			팔단면 : <input type="text" name="arm1" value="0"> <br>
			밑위 : <input type="text" name="rise1" value="0"> <br>
			엉덩이단면 : <input type="text" name="hip1" value="0" id="hip"> <br>
			허벅지단면 : <input type="text" name="thigh1" value="0"> <br>
			밑단 : <input type="text" name="hem1" value="0"> <br>
			shape : <input type="text" name="shape" readonly>
			<button type="button" onclick="resultP()">계산하기</button> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_02 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size2" value="${pVo.size_02}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder2" value="0"> <br>
			가슴단면 : <input type="text" name="bust2" value="0"> <br>
			허리단면 : <input type="text" name="waist2" value="0"> <br>
			총장 : <input type="text" name="total_length2" value="0"> <br>
			팔길이 : <input type="text" name="arm_length2" value="0"> <br>
			팔단면 : <input type="text" name="arm2" value="0"> <br>
			밑위 : <input type="text" name="rise2" value="0"> <br>
			엉덩이단면 : <input type="text" name="hip2" value="0"> <br>
			허벅지단면 : <input type="text" name="thigh2" value="0"> <br>
			밑단 : <input type="text" name="hem" value="0"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_03 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size3" value="${pVo.size_03}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder3" value="0"> <br>
			가슴단면 : <input type="text" name="bust3" value="0" > <br>
			허리단면 : <input type="text" name="waist3" value="0" > <br>
			총장 : <input type="text" name="total_length3" value="0"> <br>
			팔길이 : <input type="text" name="arm_length3" value="0"> <br>
			팔단면 : <input type="text" name="arm3" value="0"> <br>
			밑위 : <input type="text" name="rise3" value="0"> <br>
			엉덩이단면 : <input type="text" name="hip3" value="0" > <br>
			허벅지단면 : <input type="text" name="thigh3" value="0"> <br>
			밑단 : <input type="text" name="hem3" value="0"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_04 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size4" value="${pVo.size_04}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder4" value="0"> <br>
			가슴단면 : <input type="text" name="bust4" value="0" > <br>
			허리단면 : <input type="text" name="waist4" value="0" > <br>
			총장 : <input type="text" name="total_length4" value="0"> <br>
			팔길이 : <input type="text" name="arm_length4" value="0"> <br>
			팔단면 : <input type="text" name="arm4" value="0"> <br>
			밑위 : <input type="text" name="rise4" value="0"> <br>
			엉덩이단면 : <input type="text" name="hip4" value="0" > <br>
			허벅지단면 : <input type="text" name="thigh4" value="0"> <br>
			밑단 : <input type="text" name="hem4" value="0"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_05 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size5" value="${pVo.size_01}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder5" value="0"> <br>
			가슴단면 : <input type="text" name="bust5" value="0" > <br>
			허리단면 : <input type="text" name="waist5" value="0"> <br>
			총장 : <input type="text" name="total_length5" value="0"> <br>
			팔길이 : <input type="text" name="arm_length5" value="0"> <br>
			팔단면 : <input type="text" name="arm5" value="0"> <br>
			밑위 : <input type="text" name="rise5" value="0"> <br>
			엉덩이단면 : <input type="text" name="hip5" value="0"> <br>
			허벅지단면 : <input type="text" name="thigh5" value="0"> <br>
			밑단 : <input type="text" name="hem5" value="0"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_06 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size6" value="${pVo.size_06}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder6" value="0"> <br>
			가슴단면 : <input type="text" name="bust6" value="0"> <br>
			허리단면 : <input type="text" name="waist6" value="0"> <br>
			총장 : <input type="text" name="total_length6" value="0"> <br>
			팔길이 : <input type="text" name="arm_length6" value="0"> <br>
			팔단면 : <input type="text" name="arm6" value="0"> <br>
			밑위 : <input type="text" name="rise6" value="0"> <br>
			엉덩이단면 : <input type="text" name="hip6" value="0"> <br>
			허벅지단면 : <input type="text" name="thigh6" value="0"> <br>
			밑단 : <input type="text" name="hem6" value="0"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_07 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size7" value="${pVo.size_07}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder7" value="0"> <br>
			가슴단면 : <input type="text" name="bust7" value="0"> <br>
			허리단면 : <input type="text" name="waist7" value="0"> <br>
			총장 : <input type="text" name="total_length7" value="0"> <br>
			팔길이 : <input type="text" name="arm_length7" value="0"> <br>
			팔단면 : <input type="text" name="arm7" value="0"> <br>
			밑위 : <input type="text" name="rise7" value="0"> <br>
			엉덩이단면 : <input type="text" name="hip7" value="0"> <br>
			허벅지단면 : <input type="text" name="thigh7" value="0"> <br>
			밑단 : <input type="text" name="hem7" value="0"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_08 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size8" value="${pVo.size_08}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder8" value="0"> <br>
			가슴단면 : <input type="text" name="bust8" value="0"> <br>
			허리단면 : <input type="text" name="waist8" value="0"> <br>
			총장 : <input type="text" name="total_length8" value="0"> <br>
			팔길이 : <input type="text" name="arm_length8" value="0"> <br>
			팔단면 : <input type="text" name="arm8" value="0"> <br>
			밑위 : <input type="text" name="rise8" value="0"> <br>
			엉덩이단면 : <input type="text" name="hip8" value="0"> <br>
			허벅지단면 : <input type="text" name="thigh8" value="0"> <br>
			밑단 : <input type="text" name="hem8" value="0"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_09 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size9" value="${pVo.size_09}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder9" value="0"> <br>
			가슴단면 : <input type="text" name="bust9" value="0"> <br>
			허리단면 : <input type="text" name="waist9" value="0"> <br>
			총장 : <input type="text" name="total_length9" value="0"> <br>
			팔길이 : <input type="text" name="arm_length9" value="0"> <br>
			팔단면 : <input type="text" name="arm9" value="0"> <br>
			밑위 : <input type="text" name="rise9" value="0"> <br>
			엉덩이단면 : <input type="text" name="hip9" value="0"> <br>
			허벅지단면 : <input type="text" name="thigh9" value="0"> <br>
			밑단 : <input type="text" name="hem9" value="0"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_10 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size10" value="${pVo.size_10}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder10" value="0"> <br>
			가슴단면 : <input type="text" name="bust10" value="0"> <br>
			허리단면 : <input type="text" name="waist10" value="0"> <br>
			총장 : <input type="text" name="total_length10" value="0"> <br>
			팔길이 : <input type="text" name="arm_length10" value="0"> <br>
			팔단면 : <input type="text" name="arm10" value="0"> <br>
			밑위 : <input type="text" name="rise10" value="0"> <br>
			엉덩이단면 : <input type="text" name="hip10" value="0"> <br>
			허벅지단면 : <input type="text" name="thigh10" value="0"> <br>
			밑단 : <input type="text" name="hem10" value="0"> <br>
			<br><hr><br>
		</c:if>
			<input type="submit" value="전  송"> <br><br>
		</form>
	</div>




	<%@ include file="../common/footer.jsp"%>
</body>

</html>