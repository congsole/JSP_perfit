<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>perfit | Q n A 작성하기</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css?we">
<link rel="stylesheet" type="text/css" href="css/QnA_write.css?sassddadsa">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




<h1>Q n A</h1>
    <!-- <p id="qbtn"><button id="bt">글 작성하기</button></p> -->
            <form name="frm" method="post" action="CscServlet">
			<input type="hidden" name="command" value="Qna_update"> 
			<input type="hidden" name="num" value="${qna.num}">
                <div class="three">
                    <table>
                        <tr border-bottom="1px">
                            <th class="q1">문의 작성</th>
                            <th class="q2"></th>
                            <th class="q3"></th>
                            <th class="q4"></th>
                            <th class="q5"></th>
                            <th class="q6"></th>
                        </tr>
                        <tr>
                        	<td class="no">문의 유형</td>
                       		<c:choose>
                        		<c:when test="${qna.type eq 1}">
								<td><input type="radio" name="type" value="1" checked>배송</td>
	                            <td><input type="radio" name="type" value="2">주문/결제</td>
	                            <td><input type="radio" name="type" value="3">교환/환불</td>
	                            <td><input type="radio" name="type" value="4">회원정보</td>
	                            <td><input type="radio" name="type" value="5">서비스</td>                       	
                        		</c:when>
                        		<c:when test="${qna.type eq 2}">
								<td><input type="radio" name="type" value="1">배송</td>
	                            <td><input type="radio" name="type" value="2" checked>주문/결제</td>
	                            <td><input type="radio" name="type" value="3">교환/환불</td>
	                            <td><input type="radio" name="type" value="4">회원정보</td>
	                            <td><input type="radio" name="type" value="5">서비스</td>                       	
                        		</c:when>
                        		<c:when test="${qna.type eq 3}">
								<td><input type="radio" name="type" value="1">배송</td>
	                            <td><input type="radio" name="type" value="2">주문/결제</td>
	                            <td><input type="radio" name="type" value="3" checked>교환/환불</td>
	                            <td><input type="radio" name="type" value="4">회원정보</td>
	                            <td><input type="radio" name="type" value="5">서비스</td>                       	
                        		</c:when>
                        		<c:when test="${qna.type eq 4}">
								<td><input type="radio" name="type" value="1">배송</td>
	                            <td><input type="radio" name="type" value="2">주문/결제</td>
	                            <td><input type="radio" name="type" value="3">교환/환불</td>
	                            <td><input type="radio" name="type" value="4"checked>회원정보</td>
	                            <td><input type="radio" name="type" value="5">서비스</td>                       	
                        		</c:when>
                        		<c:otherwise>
                        		<td><input type="radio" name="type" value="1">배송</td>
	                            <td><input type="radio" name="type" value="2">주문/결제</td>
	                            <td><input type="radio" name="type" value="3">교환/환불</td>
	                            <td><input type="radio" name="type" value="4">회원정보</td>
	                            <td><input type="radio" name="type" value="5" checked>서비스</td>
                        		</c:otherwise>
                        
                        	</c:choose>
                            
                          
                        </tr>
                        <tr>
                            <td class="no">회원 ID</td>
                            <td colspan="5" style="text-align: left;"><input type="text" name="id" value="${qna.id}" readonly></td>
                        </tr>
                        <tr>
                            <td class="no">제목</td>
                            <td colspan="5"  style="text-align: left;"><input type ="text" name="q_title" value="${qna.q_title}"></td>
                        </tr>
                        <tr>
                            <td class="no">문의 내용</td>
                            <td colspan="5" style="text-align: left;"><textarea id ="quest" cols="79" rows="15" name="content">${qna.content}</textarea></td>
                            
                        </tr>
                        <tr>
                            <td class="no">사진</td>
                            <td colspan="5"  style="text-align: left;"><input type="file" name="file" value="${qna.q_file}"><img src="img_Qna/${qna.q_file}"></td>
                        </tr>
                       

                       

                    </table>
                </div>
                <div class="make_btn">
                       <p id="ser"><button id="search_btn" type="reset">취소</button></p>
                       <p id="ser"><button id="search_btn" type="submit" onclick="return boardCheck()">수정확인</button></p>
                </div>
                </div>

            </form>
		
		
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>