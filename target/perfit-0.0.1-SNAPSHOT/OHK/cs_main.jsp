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
<title>perfit | 고객센터</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/qna.js?F"></script>
<link rel="stylesheet" type="text/css" href="css/common.css?23">
<link rel="stylesheet" type="text/css" href="css/center_main.css?dssdadsa">
</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>
  <div class="cen">
        <div class="head">
            <h1>고객센터</h1><br>
            
            <div class="grid">

                <div class="one">
                    <table>
                        <tr>
                            <td>
                                <h2><a href="CscServlet?command=notice_list">공지사항</a></h2>
                                <hr>
                            </td>
                        </tr>

                        	<tr>
                            <td>
                            	
                        <ul>
                        	<c:forEach var="board" items="${noticeList}" varStatus="status">
                        		<c:if test = "${status.count<5}">
                        			
                            	<li class="no">${board.num}<a href="CscServlet?command=notice_view&num=${board.num}"> ${board.n_title}</a></li>
                            	<br>
                            	</c:if>
                            </c:forEach>
                        </ul>
                       
                       
						
                          	 </td>
                        	</tr>

                    </table>
                </div>
                <div class="one">
                    <table>
                        <tr>
                            <td>
                                <h2><a href="CscServlet?command=FAQ_list">자주 묻는 질문</a></h2>
                                <hr>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <ul>
                                    <li>Q.결제 취소한 금액은 언제 돌려받을 수 있나...</li><br>
                                    <li>Q.배송은 언제 되나요?</li><br>
                                    <li>Q.무통장 결제로 입금했는데 확인되지 않아요.</li><br>
                                    <li>Q.반품이나 교환이 불가능한 상품은 어떤 것이...</li>
                                </ul>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="one">
                    <table>
                        <tr>
                            <td>
                                <h2><a href="CscServlet?command=Qna_list">Q n A</a></h2>
                                <hr>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <ul>
                                    <c:forEach var="board" items="${qnaList}" varStatus="status">
                        				<c:if test = "${status.count<5}">
                        			
                            				<li class="no">${board.num}<a href="CscServlet?command=Qna_view&num=${board.num}"> ${board.q_title}</a></li>
                            				<br>
                            			</c:if>
                            		</c:forEach>
                                </ul>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="one">
                    <table>
                     <c:if test="${mVo != null}">
                        <tr>
                       
                            <td>
                                <h2><a href="ProductServlet?command=myPage">마이 페이지</a></h2>
                                <hr>
                            </td>
                        </tr>
                        <tr id="ex_btn">
                            <td><button><a href="ProductServlet?command=myPage">마이 페이지<br> 바로가기</a></button></td>
                        </tr>
                     </c:if>
                     <c:if test="${mVo == null}">
                        <tr>
                       
                            <td>
                                <h2><a href="ProductServlet?command=member_login_form">마이 페이지</a></h2>
                                <hr>
                            </td>
                        </tr>
                        <tr id="ex_btn">
                            <td><button onclick="return Login()">
                            <!--  <a href="ProductServlet?command=member_login_form"></a>-->마이 페이지<br> 바로가기</button></td>
                        </tr>
                     </c:if>      
                    </table>
                </div>
            </div>

        </div>
    </div>




		
		
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>