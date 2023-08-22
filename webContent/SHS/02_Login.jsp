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
<link rel="icon" type="image/x-icon" href="../img/favicon.png">
<!--타이틀 옆에 작은 로고-->
<title>perfit | 로그인</title>

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<link rel="stylesheet" type="text/css" href="../css/common.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 이 부분에 필요한 css와 js를 추가해주세요. -->
<script type="text/javascript" src="../js/★☆자바스크립트파일명★☆.js"></script>
<link rel="stylesheet" type="text/css" href="../css/login.css">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




    <div id="login_container">
        <div class="title_wrap"><h1>로그인</h1></div>
        <form id="login_form">
            <table>
                <tr>
                    <!-- <td class="la"><label>아이디</label></td> -->
                    <td class="co"><input type="text" placeholder="ID" name="ID"></td>
                </tr>
                <tr>
                    <!-- <td class="la"><label>비밀번호</label></td> -->
                    <td class="co"><input type="password" placeholder="Password" name="Password"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" class="login_cb" id="lgncb1" value="IDsave">
                        <label for="lgncb1">&nbsp;&nbsp;&nbsp;&nbsp;</label><b>아이디 저장&nbsp;&nbsp;</b>
                        <input type="checkbox" class="login_cb" id="lgncb2" value="autoLogin">
                        <label for="lgncb2">&nbsp;&nbsp;&nbsp;&nbsp;</label><b>자동 로그인&nbsp;&nbsp;</b>
                    </td>
                </tr>
                <tr>
                    <td class="co">
                        <input type="submit" id="login_btn" value="LogIn">
                        <p><a href="#">아이디 찾기&nbsp;&nbsp;</a><b> | </b><a href="#">&nbsp;&nbsp;비밀번호 찾기&nbsp;&nbsp;</a><b> | </b><a href="#">&nbsp;&nbsp;회원가입 </a></p>
                    </td>
                </tr>
                
            </table>
            
        </form>
       
    </div>		
		
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>