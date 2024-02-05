<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="userid" value="${mVo.id}"/>
<%
	pageContext.setAttribute("br","</br>");
	pageContext.setAttribute("cn","\n");
%>
	
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
<script type="text/javascript" src="js/notice.js?uysdasd"></script>
<link rel="stylesheet" type="text/css" href="css/common.css?w">

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 이 부분에 필요한 css와 js를 추가해주세요. -->
<script type="text/javascript" src="js/★☆자바스크립트파일명★☆.js"></script>
<link rel="stylesheet" type="text/css" href="css/notice_page.css?asds">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




<main>
        <h1><a href="CscServlet?command=notice_list">공지사항</a></h1>
    <form name="frm" action="CscServlet">
    <div>
        <div class="ozpage">
            <p id="title">${notice.n_title}</p>
            <p id="date"><fmt:formatDate value="${notice.n_date}"/></p>
        </div>
        <div class="oztext">
            <p>${fn:replace(notice.content, cn, br)}
            </p>
        </div>
        <c:if test="${notice.n_file != null }">
        <p id = "nfile"><img src="img_notice/${notice.n_file}"></p>
        </c:if>
        
    </div>
    <div class="wbttn">
    	<c:if test = "${fn:contains(userid, 'perfit')}">
        	<p class="pb"><input type="button" value="수정"
			onclick="location.href='CscServlet?command=notice_update_form&num=${notice.num}'"></p>&nbsp;&nbsp;&nbsp;&nbsp;
			
			<p class="pb" id="del">      
				<form action="CscServlet">
         			<input type="hidden" name="command" value="notice_delete">
         			<input type="hidden" name="num" value="${notice.num}">
         			<input type="submit" value="삭제" onclick="return delCheck()">
      			</form>
			</p>&nbsp;&nbsp;&nbsp;&nbsp;
    	</c:if>   
        <p class="pb"><input type="button" value="목록" onclick="location.href='CscServlet?command=notice_list'"></p>
    </div>
    <table class="dow">
        <tr id="lin">
            <td class="bf1"><b>이전 글</b></td>
            <td class="bf2"><a href="CscServlet?command=notice_view&num=${beforeNotice.num}">${beforeNotice.n_title }</a></td>
            <td class="bf3"><fmt:formatDate value="${afterNotice.n_date}"/></td>
        </tr>
        <tr>
            <td class="af1"><b>다음 글</b></td>
            <td class="af2"><a href="CscServlet?command=notice_view&num=${afterNotice.num}">${afterNotice.n_title }</a></td>
            <td class="af3"><fmt:formatDate value="${afterNotice.n_date}"/></td>
        </tr>
    </table>
    </form>        
        
    </main>
		
		
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>