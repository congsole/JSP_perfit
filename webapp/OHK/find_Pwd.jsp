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
<title>perfit | 로그인</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/find_id.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/login.css">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




    <div id="login_container">
        <div class="title_wrap"><h1>비밀번호 찾기</h1></div>
        <form id="login_form" action="ProductServlet">
        <input type="hidden" name="command" value="member_pwd_find">
            <table>
                <tr>
                    <!-- <td class="la"><label>아이디</label></td> -->
                    <td class="co"><input type="text" placeholder="아이디를 입력하세요." name="id"></td>
                </tr>
                <tr>
                    <!-- <td class="la"><label>비밀번호</label></td> -->
                    <td class="co"><input type="text" placeholder="이름을 입력하세요." name="name"></td>
                </tr>
                <tr>
                    <td class="co"><input type="text" placeholder="전화번호를 입력하세요." name="phone"></td>
                </tr>
                <tr>
                    <td class="co">
                        <input type="submit" id="login_btn" value="비밀번호 찾기" onclick="id_search()">
                        <p><a href="ProductServlet?command=member_id_find_form">&nbsp;&nbsp;아이디 찾기&nbsp;&nbsp;</a>
                        <b> | </b><a href="ProductServlet?command=member_join_form">&nbsp;&nbsp;회원가입 </a></p>
                    </td>
                </tr>
                
            </table>
            
        </form>
       
    </div>		
		
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>