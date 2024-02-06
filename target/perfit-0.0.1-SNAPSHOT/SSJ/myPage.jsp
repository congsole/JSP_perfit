<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="perfit.dto.MemberVO" %>
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
<title>perfit | 마이페이지</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css?456">
<link rel="stylesheet" type="text/css" href="css/mypage.css?Sf">
<script type="text/javascript" src="js/myPage.js?SDf"></script>


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>
		<div class = "mypage">
        <!--여기서부터 신승진 마이페이지 작업물-->
        <div class = "mypage-logo">
            <h2>마이 페이지</h2>
        </div>
        <!--마이 페이지 상단-->
        <div class = "mypage-main">
            <div class = "left-contents">
            
                <div class= "profile-img">
                    <div class = "userinfo-img">
                        <!--이미지 파일은 예시로 나중에 받아오는 식으로 교체-->
                        <img src = "img/${mVo.mem_pic}" alt="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;^-^">
                    </div>
                </div>
                <div class = "userinfo-txt">
                    <div class = "name">
	                    <c:if test="${mVo != null}">
	                    	<c:choose>
	                    		<c:when test="${mVo.nickname != null}">
	                    			<a>${mVo.nickname}님</a>
	                    		</c:when>
	                    		<c:otherwise>
	                    			<a>${mVo.id}님</a>
	                    		</c:otherwise>
	                    	</c:choose>
	                    </c:if>
                        <div class = "setting" onclick = "location.href = 'MemberServlet?command=member_update_form'">
                            <img src = "img/setting.png">수정</div>
                    </div>
                    <div class = "email"><p>${mVo.email}</p></div>
                </div>
            </div>
             
            <!--<div class = "right-contents">
                쿠폰 포인트 받아오기 나중에 작성
                <div class = "coupon">쿠폰 보유
                    <div class = "coupon-holdings">1개</div>
                </div> 
                <div class = "point">포인트 보유
                <br>
                    <div class = "coupon-holdings"><p></p>point</div>
                </div>
            </div> -->
        </div>
        <!--주문 현황 판-->
        <div class = "order-current-status-main">
            <div class = "order-current-display" onclick = "location.href = 'OrderServlet?command=orderSearch_form'">
            <!--나중에 주문 현황 링크 및 건수에 연동 걸기-->
                <div class = "order-current-status">
                    <img src="img/shoppingcart.gif">
                    <p>주문 현황</p>
                    <span>${all}</span>
                </div>
                <!-- <div class = "order-current-1">
                    <img src="img/onlinepay.gif">
                    <p>결제 완료</p>
                    <span>0</span>
                </div> -->
                <div class = "order-current-2">
                    <img src="img/hanger.gif">
                    <p>상품 준비</p>
                    <span>${first}</span>
                </div>
                <!--<div class = "order-current-3">
                    <img src="img/box.gif">
                    <p>출고 시작</p>
                    <span>0</span>
                </div> -->
                <div class = "order-current-4">
                    <img src="img/truck.gif">
                    <p>배송 시작</p>
                    <span>${second}</span>
                </div>
                <div class = "order-current-5">
                    <img src="img/mailbox.gif">
                    <p>배송 완료</p>
                    <span>${third}</span>
                </div>
            </div>
        </div>
        <!--여기서부터 중단 사이즈 메인-->
        <div class = "size-status-main">
            <div class = "size-status-display">
                <div class = "size-status-left">
                    <!--나중에 이미지 변동 만들기-->
                    <img src = "img/fitex.jpg">
                    <div class = "size-status-check">
                        <p>당신의 체형은?</p>
                        <!--나중에 이미지 변동할 때 문구 변경 만들기-->
                        <!--<h4></h4>
                        <p>입니다.</p>
                         -->
                    </div>
                </div>
                <div class = "size-status-right">
                    <div class = "size-status-view">
                        <label class = "size-status-switch">
                            <span>숨기기<input type="checkbox" id="statusYN" onclick = "statuscheck()"></span>
                        </label>
	                        <table class = "size-status-txt">
	                        	<tr>
	                        		<th class = "statusAlert"></th>
	                        	</tr>
		                        <tr class = "statustr">
		                        	<th>키</th><td><input type="text" class="status" size="5" value="${mVo.height}" readonly></td><th>cm</th>
		                        </tr>
		                        <tr class = "statustr">
		                        	<th>몸무게</th><td><input type="text" class="status" size="5" value="${mVo.weight}" readonly></td><th>kg</th>
		                        </tr>
		                        <tr class = "statustr">
		                        	<th>어깨너비</th><td><input type="text" class="status" size="5" value="${mVo.shoulder}" readonly></td><th>cm</th>
		                        </tr>
		                        <tr class = "statustr">
		                        	<th>가슴둘레</th><td><input type="text" class="status" size="5" value="${mVo.bust}" readonly></td><th>cm</th>
		                        </tr>
		                        <tr class = "statustr">
		                        	<th>팔둘레</th><td><input type="text" class="status" size="5" value="${mVo.arm_size}" readonly></td><th>cm</th>
		                        </tr>
		                        <tr class = "statustr">
		                       		<th>팔길이</th><td><input type="text" class="status" size="5" value="${mVo.arm_length}" readonly></td><th>cm</th>
		                        </tr>	
		                        <tr class = "statustr">
		                        	<th>허리둘레</th><td><input type="text" class="status" size="5" value="${mVo.waist}" readonly></td><th>cm</th>
		                        </tr>
		                        <tr class = "statustr">
		                        	<th>허벅지둘레</th><td><input type="text" class="status" size="5" value="${mVo.thigh}" readonly></td><th>cm</th>
		                        </tr>
		                        <tr class = "statustr">
		                        	<th>엉덩이둘레</th><td><input type="text" class="status" size="5" value="${mVo.hip}" readonly></td><th>cm</th>
		                        </tr>
		                        <tr class = "statustr">
		                        	<th>다리길이</th><td><input type="text" class="status" size="5" value="${mVo.leg_length}" readonly></td><th>cm</th>
		                        </tr>
	                        </table>
                        <div class ="size-status-correction" onclick="location.href = 'ProductServlet?command=member_size_form'">
                            <img src = "img/setting.png"> 수정</div>
                    </div>
                    <!-- 나중에 이미지로 -->
                    <div class = "size-status-icon" onclick="location.href = 'ProductServlet?command=product_search_form'">
                        <p>☆옷 추천 바로가기☆</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- 여기서부터 바로가기 나중에 받아와서 주소 완성-->
        <div class = "shortcuts-main">
            <div class = "shortcuts-view">
               		<div class = "mypagebox" onclick="location.href = 'OrderServlet?command=order_list'"><p>주문 내역</p></div>
                    <div class = "mypagebox" onclick="location.href = 'OrderServlet?command=shoppingBasket_form'"><p>장바구니</p></div>
                	<div class = "mypagebox" onclick="location.href = '#'"><p>리뷰 확인</p></div>
                	<div class = "mypagebox" onclick="location.href = '#'"><p>환불 계좌 등록</p></div>
                	<div class = "mypagebox" onclick="location.href = 'MemberServlet?command=member_update_form'"><p>회원 정보 조회 수정</p></div>
                	<div class = "mypagebox" onclick="location.href = '#'"><p>포인트 내역 조회</p></div>
            </div>
        </div>
        </div>
	<%@ include file="../common/footer.jsp"%>
</body>

</html>