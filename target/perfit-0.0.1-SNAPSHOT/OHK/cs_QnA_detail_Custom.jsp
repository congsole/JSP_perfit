<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
pageContext.setAttribute("br", "</br>");
pageContext.setAttribute("cn", "\n");
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
<title>perfit | Q n A</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/qna.js?fsf"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css"
	href="css/QnA_detail_user.css?asd">



</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




	<main>


		<h1>
			<a href="CscServlet?command=Qna_list">Q n A</a>
		</h1>
		<div>
			<div class="ozpage">
				<p id="title">${qna.q_title}</p>
				<p id="date">
					<fmt:formatDate value="${qna.q_date}" />
				</p>
			</div>
			<div class="oztext">
				<p>${fn:replace(qna.content, cn, br)}<br>
				</p>
			</div>
			<c:if test ="${qna.q_file!=null }">
			<div class="oztext" id="qimg">
				<p>
					<img src="img_Qna/${qna.q_file}">
				</p>
			</div>
			</c:if>
		</div>
		<div class="subb">
			<div class="wbt">
				<p class="pb">
					<input type="button" value="목록"
						onclick="location.href='CscServlet?command=Qna_list'">
				</p>
			</div>
			<c:if test="${fn:contains(userid, 'perfit') || qna.id == mVo.id }">
				
				<div class="wbt">
					<p class="pb">
					<form action="CscServlet">
						<input type="hidden" name="command" value="Qna_delete"> 
						<input type="hidden" name="num" value="${qna.num}"> 
						<input type="submit" value="삭제" onclick="return delCheck()">
					</form>
					</p>

				</div>
			</c:if>
			
			<c:if test="${qna.id == mVo.id}">
				<div class="wbt">
					<p class="pb">
						<input type="button" value="수정"
							onclick="location.href='CscServlet?command=Qna_update_form&num=${qna.num}'">
					</p>

					<!--  <p class="pb">
					<form action="CscServlet">
						<input type="hidden" name="command" value="Qna_delete"> 
						<input type="hidden" name="num" value="${qna.num}"> 
						<input type="submit" value="삭제" onclick="return delCheck()">
					</form>
					</p>

					<p class="pb">
						<input type="button" value="목록"
							onclick="location.href='CscServlet?command=Qna_list'">
					</p>-->
				</div>
			</c:if>
			
			
		</div>
		<c:if test="${qna.answer != null }">
			<div class="comuser">
				<p>
					<b># 답변</b><span><fmt:formatDate value="${qna.a_date}" /></span>
				</p>
				<hr>
				<p>${fn:replace(qna.answer, cn, br)}</p>
			</div>
		</c:if>

		<c:if test="${fn:contains(userid, 'perfit')}">
			<c:if test="${qna.answer == null}">
				<div class="comment">
					<form action="CscServlet">
						<input type="hidden" name="command" value="Qna_answer"> <input
							type="hidden" name="num" value="${qna.num}">
						<p style="font-size: 30px;">
							<b>＃답변</b>
						</p>
						<p>
							<textarea name="answer" id="com" rows="10" value="안뇽"></textarea>
						</p>
						<p id="cbtt">
							<input type="reset" value="다시 작성"> <input type="submit"
								value="등록">
						</p>
					</form>
				</div>
			</c:if>
			<c:if test="${qna.answer != null}">
				<div class="comment">
					<form action="CscServlet" name="frm" method="post">
						<input type="hidden" name="command" value="Qna_answer"> 
						<input type="hidden" name="num" value="${qna.num}" id="nummmm">
						<p style="font-size: 30px;">
							<b>＃답변</b>
						</p>
						<p>
							<textarea name="answer" id="com" rows="10" value="안뇽">${qna.answer}</textarea>
						</p>
						<p id="cbtt">

							<input type="submit" value="수정"> 
							<input type="button" value="삭제"
								onclick="location.href='CscServlet?command=Qna_answer_delete&num=${qna.num}'">
						</p>
					</form>
				</div>
			</c:if>


		</c:if>
		
		

	</main>





	<%@ include file="../common/footer.jsp"%>
</body>

</html>