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
			<input type="hidden" name="command" value="size_update">
			<input type="hidden" name="id" value="${pVo.id}">
			<input type="hidden" name="type" value="${pVo.type}">
			<input type="hidden" name="category" value="${pVo.category}">
		
		<c:if test="${pVo.size_01 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size1" value="${pVo.size_01}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder1" value="${psVoList[0].shoulder}"> <br>
			가슴단면 : <input type="text" name="bust1" value="${psVoList[0].bust}" id="bust"> <br>
			허리단면 : <input type="text" name="waist1" value="${psVoList[0].waist}" id="waist"> <br>
			총장 : <input type="text" name="total_length1" value="${psVoList[0].total_length}"> <br>
			팔길이 : <input type="text" name="arm_length1" value="${psVoList[0].arm_length}"> <br>
			팔단면 : <input type="text" name="arm1" value="${psVoList[0].arm}"> <br>
			밑위 : <input type="text" name="rise1" value="${psVoList[0].rise}"> <br>
			엉덩이단면 : <input type="text" name="hip1" value="${psVoList[0].hip}" id="hip"> <br>
			허벅지단면 : <input type="text" name="thigh1" value="${psVoList[0].thigh}"> <br>
			밑단 : <input type="text" name="hem1" value="${psVoList[0].hem}"> <br>
			shape : <input type="text" name="shape" value="${pVo.shape}" readonly>
			<button type="button" onclick="resultP()">계산하기</button> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_02 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size2" value="${pVo.size_02}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder2" value="${psVoList[1].shoulder}"> <br>
			가슴단면 : <input type="text" name="bust2" value="${psVoList[1].bust}"> <br>
			허리단면 : <input type="text" name="waist2" value="${psVoList[1].waist}"> <br>
			총장 : <input type="text" name="total_length2" value="${psVoList[1].total_length}"> <br>
			팔길이 : <input type="text" name="arm_length2" value="${psVoList[1].arm_length}"> <br>
			팔단면 : <input type="text" name="arm2" value="${psVoList[1].arm}"> <br>
			밑위 : <input type="text" name="rise2" value="${psVoList[1].rise}"> <br>
			엉덩이단면 : <input type="text" name="hip2" value="${psVoList[1].hip}"> <br>
			허벅지단면 : <input type="text" name="thigh2" value="${psVoList[1].thigh}"> <br>
			밑단 : <input type="text" name="hem" value="${psVoList[1].hem}"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_03 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size3" value="${pVo.size_03}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder3" value="${psVoList[2].shoulder}"> <br>
			가슴단면 : <input type="text" name="bust3" value="${psVoList[2].bust}" > <br>
			허리단면 : <input type="text" name="waist3" value="${psVoList[2].waist}" > <br>
			총장 : <input type="text" name="total_length3" value="${psVoList[2].total_length}"> <br>
			팔길이 : <input type="text" name="arm_length3" value="${psVoList[2].arm_length}"> <br>
			팔단면 : <input type="text" name="arm3" value="${psVoList[2].arm}"> <br>
			밑위 : <input type="text" name="rise3" value="${psVoList[2].rise}"> <br>
			엉덩이단면 : <input type="text" name="hip3" value="${psVoList[2].hip}" > <br>
			허벅지단면 : <input type="text" name="thigh3" value="${psVoList[2].thigh}"> <br>
			밑단 : <input type="text" name="hem3" value="${psVoList[2].hem}"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_04 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size4" value="${pVo.size_04}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder4" value="${psVoList[3].shoulder}"> <br>
			가슴단면 : <input type="text" name="bust4" value="${psVoList[3].bust}" > <br>
			허리단면 : <input type="text" name="waist4" value="${psVoList[3].waist}" > <br>
			총장 : <input type="text" name="total_length4" value="${psVoList[3].total_length}"> <br>
			팔길이 : <input type="text" name="arm_length4" value="${psVoList[3].arm_length}"> <br>
			팔단면 : <input type="text" name="arm4" value="${psVoList[3].arm}"> <br>
			밑위 : <input type="text" name="rise4" value="${psVoList[3].rise}"> <br>
			엉덩이단면 : <input type="text" name="hip4" value="${psVoList[3].hip}" > <br>
			허벅지단면 : <input type="text" name="thigh4" value="${psVoList[3].thigh}"> <br>
			밑단 : <input type="text" name="hem4" value="${psVoList[3].hem}"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_05 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size5" value="${pVo.size_01}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder5" value="${psVoList[4].shoulder}"> <br>
			가슴단면 : <input type="text" name="bust5" value="${psVoList[4].bust}" > <br>
			허리단면 : <input type="text" name="waist5" value="${psVoList[4].waist}"> <br>
			총장 : <input type="text" name="total_length5" value="${psVoList[4].total_length}"> <br>
			팔길이 : <input type="text" name="arm_length5" value="${psVoList[4].arm_length}"> <br>
			팔단면 : <input type="text" name="arm5" value="${psVoList[4].arm}"> <br>
			밑위 : <input type="text" name="rise5" value="${psVoList[4].rise}"> <br>
			엉덩이단면 : <input type="text" name="hip5" value="${psVoList[4].hip}"> <br>
			허벅지단면 : <input type="text" name="thigh5" value="${psVoList[4].thigh}"> <br>
			밑단 : <input type="text" name="hem5" value="${psVoList[4].hem}"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_06 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size6" value="${pVo.size_06}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder6" value="${psVoList[5].shoulder}"> <br>
			가슴단면 : <input type="text" name="bust6" value="${psVoList[5].bust}"> <br>
			허리단면 : <input type="text" name="waist6" value="${psVoList[5].waist}"> <br>
			총장 : <input type="text" name="total_length6" value="${psVoList[5].total_length}"> <br>
			팔길이 : <input type="text" name="arm_length6" value="${psVoList[5].arm_length}"> <br>
			팔단면 : <input type="text" name="arm6" value="${psVoList[5].arm}"> <br>
			밑위 : <input type="text" name="rise6" value="${psVoList[5].rise}"> <br>
			엉덩이단면 : <input type="text" name="hip6" value="${psVoList[5].hip}"> <br>
			허벅지단면 : <input type="text" name="thigh6" value="${psVoList[5].thigh}"> <br>
			밑단 : <input type="text" name="hem6" value="${psVoList[5].hem}"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_07 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size7" value="${pVo.size_07}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder7" value="${psVoList[6].shoulder}"> <br>
			가슴단면 : <input type="text" name="bust7" value="${psVoList[6].bust}"> <br>
			허리단면 : <input type="text" name="waist7" value="${psVoList[6].waist}"> <br>
			총장 : <input type="text" name="total_length7" value="${psVoList[6].total_length}"> <br>
			팔길이 : <input type="text" name="arm_length7" value="${psVoList[6].arm_length}"> <br>
			팔단면 : <input type="text" name="arm7" value="${psVoList[6].arm}"> <br>
			밑위 : <input type="text" name="rise7" value="${psVoList[6].rise}"> <br>
			엉덩이단면 : <input type="text" name="hip7" value="${psVoList[6].hip}"> <br>
			허벅지단면 : <input type="text" name="thigh7" value="${psVoList[6].thigh}"> <br>
			밑단 : <input type="text" name="hem7" value="${psVoList[6].hem}"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_08 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size8" value="${pVo.size_08}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder8" value="${psVoList[7].shoulder}"> <br>
			가슴단면 : <input type="text" name="bust8" value="${psVoList[7].bust}"> <br>
			허리단면 : <input type="text" name="waist8" value="${psVoList[7].waist}"> <br>
			총장 : <input type="text" name="total_length8" value="${psVoList[7].total_length}"> <br>
			팔길이 : <input type="text" name="arm_length8" value="${psVoList[7].arm_length}"> <br>
			팔단면 : <input type="text" name="arm8" value="${psVoList[7].arm}"> <br>
			밑위 : <input type="text" name="rise8" value="${psVoList[7].rise}"> <br>
			엉덩이단면 : <input type="text" name="hip8" value="${psVoList[7].hip}"> <br>
			허벅지단면 : <input type="text" name="thigh8" value="${psVoList[7].thigh}"> <br>
			밑단 : <input type="text" name="hem8" value="${psVoList[7].hem}"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_09 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size9" value="${pVo.size_09}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder9" value="${psVoList[8].shoulder}"> <br>
			가슴단면 : <input type="text" name="bust9" value="${psVoList[8].bust}"> <br>
			허리단면 : <input type="text" name="waist9" value="${psVoList[8].waist}"> <br>
			총장 : <input type="text" name="total_length9" value="${psVoList[8].total_length}"> <br>
			팔길이 : <input type="text" name="arm_length9" value="${psVoList[8].arm_length}"> <br>
			팔단면 : <input type="text" name="arm9" value="${psVoList[8].arm}"> <br>
			밑위 : <input type="text" name="rise9" value="${psVoList[8].rise}"> <br>
			엉덩이단면 : <input type="text" name="hip9" value="${psVoList[8].hip}"> <br>
			허벅지단면 : <input type="text" name="thigh9" value="${psVoList[8].thigh}"> <br>
			밑단 : <input type="text" name="hem9" value="${psVoList[8].hem}"> <br>
			<br><hr><br>
		</c:if>
		
		<c:if test="${pVo.size_10 != null }">	
			<h1> 사이즈 : <input type="text" name="p_size10" value="${pVo.size_10}" readonly></h1>
			<h1> 상세 사이즈 </h1>
			어깨단면 : <input type="text" name="shoulder10" value="${psVoList[9].shoulder}"> <br>
			가슴단면 : <input type="text" name="bust10" value="${psVoList[9].bust}"> <br>
			허리단면 : <input type="text" name="waist10" value="${psVoList[9].waist}"> <br>
			총장 : <input type="text" name="total_length10" value="${psVoList[9].total_length}"> <br>
			팔길이 : <input type="text" name="arm_length10" value="${psVoList[9].arm_length}"> <br>
			팔단면 : <input type="text" name="arm10" value="${psVoList[9].arm}"> <br>
			밑위 : <input type="text" name="rise10" value="${psVoList[9].rise}"> <br>
			엉덩이단면 : <input type="text" name="hip10" value="${psVoList[9].hip}"> <br>
			허벅지단면 : <input type="text" name="thigh10" value="${psVoList[9].thigh}"> <br>
			밑단 : <input type="text" name="hem10" value="${psVoList[9].hem}"> <br>
			<br><hr><br>
		</c:if>
			<input type="submit" value="전  송"> <br><br>
		</form>
	</div>




	<%@ include file="../common/footer.jsp"%>
</body>

</html>