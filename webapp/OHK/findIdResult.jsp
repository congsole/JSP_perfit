<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="perfit.dao.MemberDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/id_result.css">
<link rel="stylesheet" type="text/css" href="css/login.css">


</head>
<body class="home">
	<%@ include file="../common/header.jsp"%>




    <div id="login_container">
        <div class="title_wrap">
        	<c:if test="${id != null}">
        		<h1>회원님의 아이디는<br>"${id}"<br>
        							입니다.</h1>
      		
        	
          				<br><br><br><br><br><br><br><br>
                <div class="fr">
                	<a href="ProductServlet?command=member_login_form">
                		<input type="submit" id="login_btn" value="로그인 하기" onclick="id_search()">
                	</a><br><br>
                	<a href="ProductServlet?command=member_pwd_find_form">
                		<input type="submit" id="login_btn" value="비밀번호 찾기" onclick="id_search()">
                	</a>
                </div>
             
             </c:if>
             <c:if test="${id == null}">
        		<h1><b>㉧∀㉧</b><br> 등록되지 않은<br>정보 입니다.<br></h1>
        						
      		
        	
          				<br><br><br><br><br><br><br><br>
                <div class="fr">
                	<a href="ProductServlet?command=member_id_find_form">
                		<input type="submit" id="login_btn" value="다시 입력하기" onclick="id_search()">
                	</a>
                </div>
             </c:if>
         </div>
           
            
      
       
    	</div>		
		
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>