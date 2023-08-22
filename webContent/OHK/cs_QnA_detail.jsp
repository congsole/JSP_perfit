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
<!--타이틀 옆에 작은 로고-->
<title>perfit | Q n A</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css?45">
<link rel="stylesheet" type="text/css" href="css/QnA_detail.css?sadasd">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




<main>
        <h1>Q n A</h1>
    <div>
        <div class="ozpage">
            <p id="title"><b>배송 언제 옵니까</b></p>
            <p id="date">2023.05.23</p>
        </div>
        <div class="oztext">
            <p>배송이 3개월 째 안오고 있습니다<br>
               이게 도대체 어떻게 된 일이며<br>
               보상은 어떻게 해 주실건지<br>
               설명이 필요합니다<br>
               나쁜놈들아<br>
               a<br>
               b<br>
               c<br>
            </p>
        </div>
    </div>
    <p class="pb"><button id ="bt"><a href = "cs_QnA.jsp">목록</a></button></p>
    <div class="comment">
        <form>
            <p style="font-size: 30px;"><b>＃답변</b></p>
            <p><textarea id ="com" rows ="10"></textarea></p>
            <p id = "cbtt"><input type ="reset" value="다시 작성">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type ="submit" value="등록"></p>
        </form>
    </div>
            
        
    </main>
		
		
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>