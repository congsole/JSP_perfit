<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var = "userid" value = "${mVo.id}"/>
<style>
	#slideMenu_left a {
		text-decoration: none
	}
</style>
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
				<c:when test="${mVo.nickname == null || mVo.nickname == ''}">
 					<a>♥ ${mVo.id}님 환영합니다 ♥ &nbsp;&nbsp;&nbsp;</a>
				</c:when>
				<c:otherwise>
					<a>♥ ${mVo.nickname}님 환영합니다 ♥ &nbsp;&nbsp;&nbsp;</a>
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
		<ul>
			<li id="slideToggle"><a href="#">&nbsp;&nbsp;&nbsp;<span style="font-size: 25px;">≡</span> CATEGORY&nbsp;&nbsp;&nbsp;</a></li>
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
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=OUTER&category=Jacket">&nbsp;&nbsp;자켓&nbsp;&nbsp;</a></li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=OUTER&category=Coat">&nbsp;&nbsp;코트&nbsp;&nbsp;</a></li>
					<li id="3rd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=OUTER&category=Jumper">&nbsp;&nbsp;점퍼&nbsp;&nbsp;</a></li>
					<li id="4th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=OUTER&category=Cardigan">&nbsp;&nbsp;가디건&nbsp;&nbsp;</a></li>
					<li id="5th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=OUTER&category=Padding">&nbsp;&nbsp;패딩&nbsp;&nbsp;</a></li>
				</ul>
				<Br>
				<h4>TOP</h4>
				<ul>
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=T-Shirts">&nbsp;&nbsp;티셔츠&nbsp;&nbsp;</a></li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=Hood">&nbsp;&nbsp;후드&nbsp;&nbsp;</a></li>
					<li id="3rd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=MANtoMAN">&nbsp;&nbsp;맨투맨&nbsp;&nbsp;</a></li>
					<li id="4th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=Knitted">&nbsp;&nbsp;니트&nbsp;&nbsp;</a></li>
					<li id="5th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=Sleeveless">&nbsp;&nbsp;민소매&nbsp;&nbsp;</a></li>
					<li id="6th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=Blouse">&nbsp;&nbsp;블라우스&nbsp;&nbsp;</a></li>
					<li id="7th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=TOP&category=Shirts">&nbsp;&nbsp;셔츠&nbsp;&nbsp;</a></li>
				</ul>
			</div>

			<div>
	
				<h4>PANTS</h4>
				<ul>
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=PANTS&category=Denim">&nbsp;&nbsp;데님&nbsp;&nbsp;</a></li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=PANTS&category=Slacks">&nbsp;&nbsp;슬랙스&nbsp;&nbsp;</a></li>
					<li id="3rd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=PANTS&category=Linen">&nbsp;&nbsp;리넨&nbsp;&nbsp;</a></li>
					<li id="4td_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=PANTS&category=Short">&nbsp;&nbsp;숏&nbsp;&nbsp;</a></li>
				</ul>
			</div>

			<div>
				<h4>SKIRT</h4>
				<ul>
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=SKIRT&category=Mini">&nbsp;&nbsp;미니&nbsp;&nbsp;</a></li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=SKIRT&category=Medium">&nbsp;&nbsp;미디움&nbsp;&nbsp;</a></li>
					<li id="3rd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=SKIRT&category=Long">&nbsp;&nbsp;롱&nbsp;&nbsp;</a></li>
				</ul>
			</div>
			<div>
				<h4>ONEPIECE</h4>
				<ul>
					<li id="1st_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=ONEPIECE&category=Mini">&nbsp;&nbsp;미니&nbsp;&nbsp;</a></li>
					<li id="2nd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=ONEPIECE&category=Medium">&nbsp;&nbsp;미디움&nbsp;&nbsp;</a></li>
					<li id="3rd_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=ONEPIECE&category=Long">&nbsp;&nbsp;롱&nbsp;&nbsp;</a></li>
					<li id="4th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=ONEPIECE&category=JumpSuits">&nbsp;&nbsp;점프수트&nbsp;&nbsp;</a></li>
					<li id="5th_category"><a style="color: rgb(34, 34, 34)"
						href="ProductServlet?command=Product_list&type=ONEPIECE&category=TwoPeice">&nbsp;&nbsp;투피스&nbsp;&nbsp;</a></li>
				</ul>
			</div>
		</div>

		<div id="slideMenu_right">
			<h2>체형 카테고리</h2>
			<ul>
				<li><img src="img/역삼각형.png"><br><a href="ProductServlet?command=recommend&shape=InvertedTriangle">역삼각형</a></li>
				<li><img src="img/사각형.png"><br><a href="ProductServlet?command=recommend&shape=Rectangle">사각형</a></li>
				<li><img src="img/삼각형.png"><br><a href="ProductServlet?command=recommend&shape=Triangle">삼각형</a></li>
				<li><img src="img/둥근형.png"><br><a href="ProductServlet?command=recommend&shape=Circle">둥근형</a></li>
				<li><img src="img/모래시계형.png"><br><a href="ProductServlet?command=recommend&shape=Hourglass">모래시계형</a></li>
			</ul>

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
