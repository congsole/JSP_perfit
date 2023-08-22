<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var = "userid" value = "${mVo.id}"/>
<header>
	<div id="top_menu">

		<c:if test="${mVo != null}">
			<c:choose>

				<c:when test="${fn:contains(userid, 'perfit')}">
					<a style="color: yellow;">♥ 관리자 로그인 ♥&nbsp;&nbsp;</a>
					<a style="color: yellow;" href="ProductServlet?command=Product_write_form"> 상품등록 ♥&nbsp;&nbsp;</a>
					<a style="color: yellow;" href="ProductServlet?command=member_list"> 회원목록 ♥&nbsp;&nbsp;</a>
					<a style="color: yellow;" href="OrderServlet?command=order_manage"> 주문관리 ♥&nbsp;&nbsp;</a>
				</c:when>
				<c:when test="${mVo.nickname != null}">
 					<a>♥ ${mVo.nickname}님 환영합니다 ♥ &nbsp;&nbsp;&nbsp;</a>
				</c:when>
				<c:otherwise>
					<a>♥ ${mVo.id}님 환영합니다 ♥ &nbsp;&nbsp;&nbsp;</a>
				</c:otherwise>
			</c:choose>
			<form action="ProductServlet">
				<input type="hidden" name="command" value="member_logout">
				<input type="submit" value="로그아웃">
			</form>
			<a href="ProductServlet?command=myPage">|&nbsp;&nbsp;마이페이지&nbsp;&nbsp;|</a>
			<a href="ProductServlet?command=shoppingBasket_form">&nbsp;&nbsp;장바구니&nbsp;&nbsp;|</a> 
		</c:if>
		<c:if test="${mVo == null}">
			<a href="ProductServlet?command=member_login_form">&nbsp;&nbsp;로그인&nbsp;&nbsp;|</a> 
			<a href="ProductServlet?command=member_join_form">&nbsp;&nbsp;회원가입&nbsp;&nbsp;|</a>
			<a href="ProductServlet?command=member_login_form">&nbsp;&nbsp;장바구니&nbsp;&nbsp;|</a> 
		</c:if>

		<a href="CscServlet?command=main_list">&nbsp;&nbsp;고객센터&nbsp;&nbsp;</a>
	</div>

	<a href="ProductServlet?command=main"><img src="img/logo_big.png"></a>

	<div id="head_wrap">
		<form id="main_search" method="post" action="ProductServlet?command=header_search">
			<div>
				&nbsp;&nbsp;&nbsp;
				<img src="img/magnifier.png" width="20px" height="20px">&nbsp;&nbsp; 
				<input type="search" name="word"> 
				<input type="submit" value="&nbsp;검색하기&nbsp;"> 
				&nbsp;
			</div>
		</form>

	</div>

	<hr>

	<nav id="main_menu">
		<!--제이쿼리 ch07 효과-->
		<ul>
			<li id="slideToggle"><a href="#">&nbsp;&nbsp;&nbsp;<span
					style="font-size: 25px;">≡</span> CATEGORY&nbsp;&nbsp;&nbsp;
			</a></li>
			<li>|</li>
			<li><a href="ProductServlet?command=Product_list&type=OUTER">&nbsp;&nbsp;&nbsp;OUTER&nbsp;&nbsp;&nbsp;</a></li>
			<li><a href="ProductServlet?command=Product_list&type=TOP">&nbsp;&nbsp;&nbsp;TOP&nbsp;&nbsp;&nbsp;</a></li>
			<li><a href="ProductServlet?command=Product_list&type=PANTS">&nbsp;&nbsp;&nbsp;PANTS&nbsp;&nbsp;&nbsp;</a></li>
			<li><a href="ProductServlet?command=Product_list&type=SKIRT">&nbsp;&nbsp;&nbsp;SKIRT&nbsp;&nbsp;&nbsp;</a></li>
			<li><a href="ProductServlet?command=Product_list&type=ONEPIECE">&nbsp;&nbsp;&nbsp;ONEPIECE&nbsp;&nbsp;&nbsp;</a></li>
			<li>|</li>
			<li class="pink_btn"><a href="ProductServlet?command=product_search_form">&nbsp;&nbsp;&nbsp;상세검색&nbsp;&nbsp;&nbsp;</a></li>
			<li class="pink_btn"><a href="ProductServlet?command=member_size_form">&nbsp;&nbsp;&nbsp;체형검사&nbsp;&nbsp;&nbsp;</a></li>
		</ul>
	</nav>
	<div id="slideMenu">

		<div id="slideMenu_left">
			<h2>상품 카테고리</h2>
			<div>
				<h4>OUTER</h4>
				<ul>
					<li>자켓</li>
					<li>코드</li>
					<li>점퍼</li>
					<li>가디건</li>
					<li>패딩</li>
				</ul>
				<Br>
				<h4>TOP</h4>
				<ul>
					<li>티셔츠</li>
					<li>후드/맨투맨</li>
					<li>니트</li>
					<li>민소매</li>
				</ul>
			</div>

			<div>
				<h4>SHIRT/BLOUSE</h4>
				<ul>
					<li>무지</li>
					<li>패턴</li>
					<li>리본/타이</li>
					<li>오프숄더</li>
					<li>레이스</li>
				</ul>
				<br>
				<h4>PANTS</h4>
				<ul>
					<li>데님</li>
					<li>슬렉스</li>
					<li>린넨</li>
					<li>반바지</li>
					<li>점프수트</li>
				</ul>
			</div>

			<div>
				<h4>SKIRT</h4>
				<ul>
					<li>미니</li>
					<li>미디</li>
					<li>롱</li>
					<li>H라인</li>
					<li>A라인</li>
					<li>플리츠</li>
					<li>머메이드</li>
				</ul>
			</div>
			<div>
				<h4>ONEPIECE</h4>
				<ul>
					<li>미니</li>
					<li>미디</li>
					<li>롱</li>
					<li>H라인</li>
					<li>A라인</li>
					<li>투피스</li>
					<li>플레어</li>
				</ul>
			</div>
		</div>

		<div id="slideMenu_right">
			<h2>체형 카테고리</h2>
			<ul>
				<li><img src="img/역삼각형.png"><br>역삼각형</li>
				<li><img src="img/사각형.png"><br>사각형</li>
				<li><img src="img/삼각형.png"><br>삼각형</li>
				<li><img src="img/둥근형.png"><br>둥근형</li>
				<li><img src="img/모래시계형.png"><br>모래시계형</li>
			</ul>
			<div id="mapa">
				<h4>마이페이지</h4>
				<ul>
					<li>배송조회</li>
					<li>주문내역</li>
					<li>장바구니</li>
					<li>포인트</li>
				</ul>
			</div>
			<div id="nusa">
				<h4>너의 사이즈는...?</h4>
				<ul>
					<li>내 사이즈 입력하러 가기 >></li>
					<li>상품 사이즈 검색하러 가기 >></li>
					<li>퍼펙트 핏 찾으러 가기 >></li>
					<li>퍼스널 핏 찾으러 가기 >></li>
				</ul>
			</div>
		</div>

	</div>
</header>
