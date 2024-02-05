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
<title>perfit | 공지사항</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css?Q">
<link rel="stylesheet" type="text/css" href="css/notice_page_write.css">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




<main>
        <h1>공지사항</h1>
     <form name="frm" method="post" action="CscServlet">
			<input type="hidden" name="command" value="notice_update"> 
			<input type="hidden" name="num" value="${notice.num}">
    <div>
        <div class="ozpage">
            <p id="title"><input type = "text" name ="n_title" value="${notice.n_title}" placeholder="제목을 입력하세요." 
                onfocus="this.placeholder=''" onblur="this.placeholder='제목을 입력하세요.'"></p>
        </div>
        <div class="oztext">
            <p><textarea id="txt" cols="79" rows="15" name="content" placeholder="내용을 입력하세요." 
                onfocus="this.placeholder=''" onblur="this.placeholder='내용을 입력하세요.'">${notice.content}</textarea>
            </p>
        </div>
        <p id = "nfile"><input type = "file" name="n_file" value="${notice.n_file}"><img src="img_notice/${notice.n_file}"></p>
    </div>
    <div class="wbt">
        <p class="pb"><button type = "submit" onclick="return boardCheck()">수정하기</button></p>
        <p class="pb"><button type = "reset">초기화</button></p>
        <p class="pb"><button id ="bt" onclick="location.href='CscServlet?command=notice_list'">목록</button></p>
    </div>
    	      
    </form>    
            
        
    </main>
		
		
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>