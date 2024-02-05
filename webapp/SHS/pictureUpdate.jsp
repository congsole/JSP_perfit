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
<script type="text/javascript" src="js/detail.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">

</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




	<div class="main">
	
		<form action="ProductServlet">
			<input type="hidden" name="command" value="picture_update">
			<input type="hidden" name="id" value="${pVo.id}">
			<h1 style="color: red;">[${pVo.id}] ${pVo.name}</h1>
			<hr><br>
			
			<h1> 착용 사진 </h1>
			착용샷 1 : <input type="file" name="model1" value="${ppVo.model1}"> <br>
			착용샷 2 : <input type="file" name="model2" value="${ppVo.model2}"> <br>
			착용샷 3 : <input type="file" name="model3" value="${ppVo.model3}"> <br>
			착용샷 4 : <input type="file" name="model4" value="${ppVo.model4}"> <br>
			착용샷 5 : <input type="file" name="model5" value="${ppVo.model5}"> <br>
			착용샷 6 : <input type="file" name="model6" value="${ppVo.model6}"> <br>
			착용샷 7 : <input type="file" name="model7" value="${ppVo.model7}"> <br>
			착용샷 8 : <input type="file" name="model8" value="${ppVo.model8}"> <br>
			착용샷 9 : <input type="file" name="model9" value="${ppVo.model9}"> <br>
			
			<br><hr><br>
			
			<h1> 상세 사진 </h1>
			상세샷 1 : <input type="file" name="detail1" value="${ppVo.detail1}"> <br>
			상세샷 2 : <input type="file" name="detail2" value="${ppVo.detail2}"> <br>
			상세샷 3 : <input type="file" name="detail3" value="${ppVo.detail3}"> <br>
			상세샷 4 : <input type="file" name="detail4" value="${ppVo.detail4}"> <br>
			상세샷 5 : <input type="file" name="detail5" value="${ppVo.detail5}"> <br>
			상세샷 6 : <input type="file" name="detail6" value="${ppVo.detail6}"> <br>
			상세샷 7 : <input type="file" name="detail7" value="${ppVo.detail7}"> <br>
			상세샷 8 : <input type="file" name="detail8" value="${ppVo.detail8}"> <br>
			상세샷 9 : <input type="file" name="detail9" value="${ppVo.detail9}"> <br>
			
			<br><hr>
			
			<input type="submit" value="전  송"> <br>
			
		</form>






	</div>




	<%@ include file="../common/footer.jsp"%>
</body>

</html>