<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

		body {
			margin-top: 100px;
			font-family: 'Trebuchet MS', serif;
			line-height: 1.6
		}

		.container {
			width: 550px;
			margin: 0 auto;
		}

		ul.tabs {
			margin: 0px;
			padding: 0px;
			list-style: none;
		}

		ul.tabs li {
			background: none;
			color: #222;
			display: inline-block;
			padding: 10px 15px;
			cursor: pointer;
		}

		ul.tabs li.current {
			background: #ededed;
			color: #222;
		}

		.tab-content {
			display: none;
			background: #ededed;
			padding: 15px;
		}

		.tab-content.current {
			display: inherit;
		}

		li>input {
			display: none;
		}

		input:checked+label {
			color: red;
			font-weight: bold;
		}

		form {
			width: 500px;
			margin: 0 auto;
			/* border: 1px solid red; */
		}

		table {
			width: 350px;
			margin: 0 auto;
			/* border: 1px solid red; */
		}

		table td {
			width: 200px;
			/* border: 1px solid red; */
		}
		.btntd {
			text-align: center;
		}
		.btntd>input {
			width: 100px;
			height: 50px;
			font-weight: bold;
			font-size: 20px;
		}
	</style>
	<link rel="icon" type="image/x-icon" href="img/favicon.png">
	<title>perfit | 상품 등록</title>

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<link rel="stylesheet" type="text/css" href="css/common.css">



</head>

<body class="home">
   <%@ include file="../common/header.jsp"%>


	<form name="frm" method="post" action="ProductServlet">
	<input type="hidden" name="command" value="Product_write">
	<h1> 상품 등록</h1>
		<br><br>
		<div class="container">

			<ul class="tabs">
				<li class="tab-link current" data-tab="tab-1">
					<input type="radio" name="type" value="OUTER" id="outer" checked="true">
					<label for="outer">OUTER</label>
				</li>
				<li class="tab-link" data-tab="tab-2">
					<input type="radio" name="type" value="TOP" id="top">
					<label for="top">TOP</label>
				</li>


				<li class="tab-link" data-tab="tab-3">
					<input type="radio" name="type" value="PANTS" id="pants">
					<label for="pants">PANTS</label>
				</li>

				<li class="tab-link" data-tab="tab-4">
					<input type="radio" name="type" value="SKIRT" id="skirt">
					<label for="skirt">SKIRT</label>
				</li>

				<li class="tab-link" data-tab="tab-5">
					<input type="radio" name="type" value="ONEPIECE" id="onepiece">
					<label for="onepiece">ONEPIECE</label>
				</li>
			</ul>
			<script>
				$(document).ready(function () {
					$('ul.tabs li').click(function (e) {
						var tab_id = $(this).attr('data-tab');

						$('ul.tabs li').removeClass('current');
						$('.tab-content').removeClass('current');

						$(this).addClass('current');
						$("#" + tab_id).addClass('current');
						
						e.target.children[0].checked = true;
						
					})
				})
			</script>

			<div id="tab-1" class="tab-content current">
				<input type="radio" name="category" value="Jacket"> 재킷
				<input type="radio" name="category" value="Coat"> 코트
				<input type="radio" name="category" value="Jumper"> 점퍼
				<input type="radio" name="category" value="Cardigan"> 가디건
				<input type="radio" name="category" value="Padding"> 패딩
			</div>
			<div id="tab-2" class="tab-content">
				<input type="radio" name="category" value="T-Shirts"> 티셔츠
				<input type="radio" name="category" value="Hood"> 후드
				<input type="radio" name="category" value="MANtoMAN"> 맨투맨
				<input type="radio" name="category" value="Knitted"> 니트
				<input type="radio" name="category" value="Sleeveless"> 민소매
				<input type="radio" name="category" value="Blouse"> 블라우스
				<input type="radio" name="category" value="Thirts"> 티셔츠
			</div>
			<div id="tab-3" class="tab-content">
				<input type="radio" name="category" value="Demin"> 데님
				<input type="radio" name="category" value="Slacks"> 슬랙스
				<input type="radio" name="category" value="Linen"> 리넨
				<input type="radio" name="category" value="Short"> 반바지
			</div>
			<div id="tab-4" class="tab-content">
				<input type="radio" name="category" value="Mini"> 미니
				<input type="radio" name="category" value="Medium"> 미디움
				<input type="radio" name="category" value="Long"> 롱
			</div>
			<div id="tab-5" class="tab-content">
				<input type="radio" name="category" value="Mini"> 미니
				<input type="radio" name="category" value="Medium"> 미디움
				<input type="radio" name="category" value="Long"> 롱
				<input type="radio" name="category" value="JumpSuits"> 점프수트
				<input type="radio" name="category" value="TwoPeice"> 투피스
			</div>
		</div><!--대분류, 소분류 선택-->
		<br><br>
		<table>
			<tr>
				<th>상품명</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<th>설명</th>
				<td><textarea name="description" placeholder="오환국바보"></textarea></td>
			</tr>
			<tr>
				<th>소재</th>
				<td><input type="text" name="fabric"></td>
			</tr>
			<tr>
				<td colspan="2"><br>================ 옵션 : 색상 ================<br><br></td>
			</tr>
			<tr>
				<th>색상 01</th>
				<td><input type="text" name="color_01" placeholder="필수 입력"></td>
			</tr>
			<tr>
				<th>색상 02</th>
				<td><input type="text" name="color_02"></td>
			</tr>
			<tr>
				<th>색상 03</th>
				<td><input type="text" name="color_03"></td>
			</tr>
			<tr>
				<th>색상 04</th>
				<td><input type="text" name="color_04"></td>
			</tr>
			<tr>
				<th>색상 05</th>
				<td><input type="text" name="color_05"></td>
			</tr>
			<tr>
				<th>색상 06</th>
				<td><input type="text" name="color_06"></td>
			</tr>
			<tr>
				<th>색상 07</th>
				<td><input type="text" name="color_07"></td>
			</tr>
			<tr>
				<th>색상 08</th>
				<td><input type="text" name="color_08"></td>
			</tr>
			<tr>
				<th>색상 09</th>
				<td><input type="text" name="color_09"></td>
			</tr>
			<tr>
				<th>색상 10</th>
				<td><input type="text" name="color_10"></td>
			</tr>

			<tr>
				<td colspan="2"><br>================ 옵션 : 사이즈 ================<br><br></td>
			</tr>
			<tr>
				<th>사이즈 01</th>
				<td><input type="text" name="size_01"></td>
			</tr>
			<tr>
				<th>사이즈 02</th>
				<td><input type="text" name="size_02"></td>
			</tr>
			<tr>
				<th>사이즈 03</th>
				<td><input type="text" name="size_03"></td>
			</tr>
			<tr>
				<th>사이즈 04</th>
				<td><input type="text" name="size_04"></td>
			</tr>
			<tr>
				<th>사이즈 05</th>
				<td><input type="text" name="size_05"></td>
			</tr>
			<tr>
				<th>사이즈 06</th>
				<td><input type="text" name="size_06"></td>
			</tr>
			<tr>
				<th>사이즈 07</th>
				<td><input type="text" name="size_07"></td>
			</tr>
			<tr>
				<th>사이즈 08</th>
				<td><input type="text" name="size_08"></td>
			</tr>
			<tr>
				<th>사이즈 09</th>
				<td><input type="text" name="size_09"></td>
			</tr>
			<tr>
				<th>사이즈 10</th>
				<td><input type="text" name="size_10"></td>
			</tr>
			<tr>
				<td colspan="2"><br>================ 옵션 : 색상 ================<br><br></td>
			</tr>

			<tr>
				<th>세탁 및 주의사항</th>
				<td><input type="text" name="cleaning"></td>
			</tr>
			<tr>
				<th>제조국</th>
				<td><input type="text" name="country"></td>
			</tr>

			<tr>
				<th>제조사</th>
				<td><input type="text" name="company"></td>
			</tr>

			<tr>
				<th>품질보증</th>
				<td><input type="text" name="warranty"></td>
			</tr>

			<tr>
				<th>A/S</th>
				<td><input type="text" name="a_s"></td>
			</tr>
			<tr>
				<td colspan="2" class="btntd">
					<br><br>
					<input type="submit" value="등록" onclick="return boardCheck()"> 
					<input type="reset" value="리셋"> 
					<!-- 
					<input type="button" value="목록(회원)" onclick="location.href='ProductServlet?command=Product_list'">
					<input type="button" value="목록(관리자)" onclick="location.href='ProductServlet?command=product_list_admin'">
					 -->
					<br><br>
				</td>
			</tr>


		</table>

		
		<br><br>
	</form>
	
   <%@ include file="../common/footer.jsp"%>

</body>

</html>