<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@page import="java.util.List"%>









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
<link rel="stylesheet" type="text/css" href="css/common.css?as">
<link rel="stylesheet" type="text/css" href="css/notice.css">
<c:set var="userid" value="${mVo.id }"/>


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




				<h1>공지사항</h1>
				<c:if test = "${fn:contains(userid, 'perfit')}">
				<p id="qbtn">
					<button id="bt"><a href="CscServlet?command=notice_write_form"">글 작성하기</a></button>
				</p>
				</c:if>
                <div class="two">
                    <table>
                        <tr border-bottom="1px">
                            <th class="b1">No</th>
                            <th class="b2">Notice</th>
                            <th class="b3">Date</th>
                        </tr>
                        <c:forEach var="board" items="${noticeList}">
                        <tr>
                            <td class="no">${board.num}</td>
                            <td><a href="CscServlet?command=notice_view&num=${board.num}">
							${board.n_title}</a></td>
                            <td><fmt:formatDate value="${board.n_date}" /></td>
                        </tr>
                       </c:forEach>
                    </table>
                </div>
                <div class="list">
                    <a>≪</a>
                    <a>＜</a>
                        <ul>
                            <li>1</li>
                            <li>2</li>
                            <li>3</li>
                            <li>4</li>
                        </ul>
                    <a>＞</a>
                    <a>≫</a>
                </div>

		
		
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>