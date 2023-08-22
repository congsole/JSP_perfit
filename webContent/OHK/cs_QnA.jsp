	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<script type="text/javascript" src="js/qna.js?SFD"></script>
	<link rel="stylesheet" type="text/css" href="css/common.css?sd">
	<link rel="stylesheet" type="text/css" href="css/QnA.css?sadad">
	
	
	</head>
	
	<body class="home">
		<%@ include file="../common/header.jsp"%>
	
	
	
	
		<h1>Q n A</h1>
		<p id="qbtn">
		<c:if test="${mVo != null}">
			<button id="bt">
				<a href="CscServlet?command=Qna_write_form">글 작성하기</a>
			</button>
		</c:if>
		<c:if test="${mVo == null }">
			<button id="bt" onclick="return Login()">
				<!--  <a href="ProductServlet?command=member_login_form"></a>-->글 작성하기
			</button>
		</c:if>
		</p>
		<div class="two">
			<table>
				<tr border-bottom="1px">
					<th class="q0">N O</th>
					<th class="q1">구 분</th>
					<th class="q2">제 목</th>
					<th class="q3">I D</th>
					<th class="q4">날 짜</th>
					<th class="q5">상 태</th>
				</tr>
				<c:forEach var="board" items="${qnaList}">
					<tr class="record">
						<td>${board.num}</td>
						<td><c:choose>
								<c:when test="${board.type eq 1}">
									배송                    	
	                        		</c:when>
								<c:when test="${board.type eq 2}">
									주문/결제                     	
	                        		</c:when>
								<c:when test="${board.type eq 3}">
									교환/환불              	
	                        		</c:when>
								<c:when test="${board.type eq 4}">
									회원정보                     	
	                        		</c:when>
								<c:otherwise>
	                        		서비스
	                        		</c:otherwise>
							</c:choose></td>
						<td><a href="CscServlet?command=Qna_view&num=${board.num}">
								${board.q_title} </a></td>
						<td>${board.id}</td>
						<td><fmt:formatDate value="${board.q_date}" /></td>
						<td>
							<c:choose>
								<c:when test= "${board.rep eq 1}">
								답변완료
								</c:when>
								<c:otherwise>
								답변대기
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	
	
	
	
		<div class="list">
			<a>≪</a> <a>＜</a>
			<ul>
				<li>1</li>
				<li>2</li>
				<li>3</li>
				<li>4</li>
			</ul>
			<a>＞</a> <a>≫</a>
			<form method="post" name="search" action="CscServlet?command=Qna_search" id="qnaform">
				<div class="search_btn_class">
					<select id="combo" name="searchField" form="qnaform">
						<option value="q_title" selected="selected">제목</option>
						<option value="ID">ID</option>
					</select>
	
					<p id="ser">
						<input type="search" name="word">
						<button id="search_btn">검색</button>
					</p>
	
				</div>
			</form>
		</div>
	
	
	
	
	
		<%@ include file="../common/footer.jsp"%>
	</body>
	
	</html>