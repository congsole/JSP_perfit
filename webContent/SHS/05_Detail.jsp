<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="icon" type="image/x-icon" href="../img/favicon.png">
<!--타이틀 옆에 작은 로고-->
<title>perfit | 상세보기</title>

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/detail.js"></script>
<link rel="stylesheet" type="text/css" href="../css/common.css">
<link rel="stylesheet" type="text/css" href="../css/detail.css?12">

</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>
 



    <div class="main"> 
        <div id="detail_01">
            <div id="detail_info">ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ폴리 에스터가 어쩌구 저쩌구 원산지 어쩌구 저쩌구 혼용률 아아아아아아아앙ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</div>
            <div id="detail_pic"><!--스크롤 달아야함-->

                <ul id="detail_pic_01">
                    <li><img src="../img/zara1.jpg" id="zara1"></li>
                    <li><img src="../img/zara2.jpg" id="zara2"></li>
                    <li><img src="../img/zara3.jpg" id="zara3"></li>
                    <li><img src="../img/zara4.jpg" id="zara4"></li>
                    <li><img src="../img/zara5.jpg" id="zara5"></li>
                    <li><img src="../img/zara6.jpg" id="zara6"></li>
                    <li><img src="../img/zara7.jpg" id="zara7"></li>
                    <li><img src="../img/zara8.jpg" id="zara8"></li>
                </ul>

                <ul id="detail_pic_02">
                    <li><a href="#zara1"><img src="../img/zara1.jpg"></a></li>
                    <li><a href="#zara2"><img src="../img/zara2.jpg"></a></li>
                    <li><a href="#zara3"><img src="../img/zara3.jpg"></a></li>
                    <li><a href="#zara4"><img src="../img/zara4.jpg"></a></li>
                    <li><a href="#zara5"><img src="../img/zara5.jpg"></a></li>
                    <li><a href="#zara6"><img src="../img/zara6.jpg"></a></li>
                    <li><a href="#zara7"><img src="../img/zara7.jpg"></a></li>
                    <li><a href="#zara8"><img src="../img/zara8.jpg"></a></li>
                </ul>
                <!-- <div><img src="../img/zara1.jpg"></div> -->
            </div>

            <div id="detail_select">
                <h2>솔트클린 반팔티셔츠</h2>
                <h2>14,500원</h2>
                <p>
                    브이넥 마감 순면 반팔 티셔츠.<br>
                    유연하고 가벼운 여름소재에 존재감이 뚜렷한 색감.
                </p>
                <br><br>
                <form id="options">
                    <h2>색&nbsp;&nbsp;&nbsp;상</h2>
                    <input type="radio" name="color" id="color01" style="display:none">
                    <label for="color01">피치핑크</label>
                    <input type="radio" name="color" id="color02" style="display:none">
                    <label for="color02">소프트카키</label>
                    <br><br>
                    <h2>사이즈</h2>
                    <input type="radio" name="size" id="size01" style="display:none">
                    <label for="size01">S</label>
                    <input type="radio" name="size" id="size02" style="display:none">
                    <label for="size02">M</label>                          
                    <input type="radio" name="size" id="size03" style="display:none">
                    <label for="size03">L</label>                          
                    <br><br>                <br><br>
                    <input type="button" value="바로구매" id="directBuy">&nbsp;
                    <input type="submit" value="장바구니" id="addToCart">
                </form>
            </div>
        </div>
        <br><Br>
        <div id="detail_02" class="detail"><h2>제품 상세</h2><Br><Br><Br><Br></div>
        <br><Br>
        <div id="detail_03" class="detail"><h2>실측 사이즈</h2><Br><Br><Br><Br></div>
        <br><Br>
    </div>		
		
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>