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
<title>perfit | 주문 내역</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/os.css">
<script type="text/javascript" src="js/orderList.js"></script>
</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




<!--os = 배송조회(order search) -->
        <!--여기서부터 신승진 배송 조회 작업물-->
        <div class = "os-logo-con">
            <div class = "os-logo">
                <div class = "quickshortcut">
                    <a href = "OrderServlet?command=myPage">마이페이지</a><span>&nbsp;-&nbsp;배송 조회</span>
                </div>
                <h2>주문 내역</h2>
            </div>
            <div class = "delivery-search-shortcut" onclick="location.href='OrderServlet?command=shoppingBasket_form'">
                <p>장바구니</p>
            </div>
        </div>
        <!--배송 조회 상단-->
        <div class = "os-main">
            <div class = "os-searchbar">
                <div class = "os-date-searcher">
                    <label class = "os-date-obj">
                        <input type="radio" name="date" id="date1" value="one-month" onclick="calendar()">
                        <span>1개월</span>
                    </label>
                    <label class = "os-date-obj">
                        <input type="radio" name="date" id="date2" value="three-month" onclick="calendar()">
                        <span>3개월</span>
                    </label>
                    <label class = "os-date-obj">
                        <input type="radio" name="date" id="date3" value="half-year" onclick="calendar()">
                        <span>6개월</span>
                    </label>
                    <label class = "os-date-obj">
                        <input type="radio" name="date" id="date4" value="one-year" onclick="calendar()">
                        <span>1년</span>
                    </label>
                </div>
                <div class = "os-term-searcher">
                <form method="post" name="frm" action="OrderServlet?command=orderSearch">
                    <label>기간 검색</label>
                    <input type="date" name="dateStart" id="dateStart">
                    <label>에서</label>
                    <input type="date" name="dateLast" id="dateLast">
                    
                    <!-- 준성이 거 물어보기 -->
                    <select class = "form-control" name="searchField">
                        <option value = "order_date">주문일자</option>
                        <option value = "order_num">주문번호</option>
                    </select>
                    <input type="text" class = "form-control" name="searchText" placeholder="검색어 입력">
                    <input type="submit" id="os-searchbtn" value="검색" onclick="textCheck()">
                </form>
                </div>
            </div>
            <!-- 상품 표 -->
            <table class="os-items" border="1">
                <thead>
                    <tr id = "tablehead">
                        <th>주문번호</th>
                        <th>주문일</th>
                        <th>발송일</th>
                        <th> etc. </th>
                    </tr>
                </thead>
                <!-- 일단 이건 예시임 나중에 연동 달 것-->
                <tbody>
                	<c:if test="${orderList.size() == 0}">
						<tr class="tablebody">
							<td id="goodsnone" colspan="9"><h2>검색 결과가 없습니다.</h2></td>
						</tr>
					</c:if>
                
                    <c:forEach var = "order" items="${orderList}">
	                    <tr class = "tablebody" onclick="location.href='ProductServlet?command=order_detail&order_num=${order.order_num}'" style="cursor: pointer;">
	                    	<td id = "goodsorderdate">
	                            <p>${order.order_num}</p>
	                        </td>
	                      
	                        <td id = "goodsinfo">
	                            <p>${order.order_date}</p>
	                        </td>
	                        <td id = "goodsorderstatus">
	                        <c:if test="${order.d_date eq null}"><p>발송준비중</p></c:if>
	                        <c:if test="${order.d_date != null}"><p>${order.d_date}</p></c:if>
	                        </td>
	                        <td id = "goodsreview">
	                            <div onclick = "location.href = '#'">후기 작성</div>
	                            <div onclick = "location.href = '#'">환불 신청</div>
	                        </td>
	                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <!-- 나중에 페이지 연동 달기 -->
            <div class = "page-controller">
                <a href = "#">&lt;&lt;</a>
                <span>1</span>
                <a href = "#">&gt;&gt;</a>
            </div>
        </div>
		
		
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>