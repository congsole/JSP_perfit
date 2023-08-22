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
<title>perfit | 상세검색</title>

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/common.js"></script>

<link rel="stylesheet" type="text/css" href="../css/common.css">
<link rel="stylesheet" type="text/css" href="../css/search.css?sdf">




</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>



    <div id="search_wrap">
        <div id="search_left">
            <img src="../img/detailed_size_top.png">
        </div>

        <div id="search_right">
            <form id="detailed_search">
                <div>
                    <div class="middle">
                        <span>가격 PRICE</span>
                        <div class="multi-range-slider">
                            <input type="range" id="price-input-left" min="0" step="1000" max="100000" value="40000"
                                oninput="document.getElementById('price_left').innerHTML=(Math.min((this.value), document.getElementById('price-input-right').value-1) + '￦');">
                            <input type="range" id="price-input-right" min="0" step="1000" max="100000" value="80000"
                                oninput="document.getElementById('price_right').innerHTML=(Math.max((this.value), document.getElementById('price-input-left').value-(-1)) + '￦');">

                            <div class="slider price">
                                <div class="track">&nbsp;</div>
                                <div class="range price"></div>
                                <div class="thumb left price"></div>
                                <div class="thumb right price"></div>
                                <span
                                    style="float: left; color: rgb(200,200,200); transform: translateX(-21px)">0￦</span>
                                <span
                                    style="float: right; color: rgb(200,200,200); transform: translateX(22px)">100000￦</span>
                                <span id="price_left"
                                    style="position: absolute; transform: translateX(-22px)">40000￦</span>
                                <span id="price_right"
                                    style="position: absolute; transform: translateX(26px)">80000￦</span>
                            </div>
                        </div>
                    </div>
                   

                    <div class="middle">
                        <span>총기장 LENGTH</span>
                        <div class="multi-range-slider">
                            <input type="range" id="length-input-left" min="0" max="150" value="40"
                                oninput="document.getElementById('length_left').innerHTML=(Math.min((this.value), document.getElementById('length-input-right').value-1) + 'cm');">
                            <input type="range" id="length-input-right" min="0" max="150" value="110"
                                oninput="document.getElementById('length_right').innerHTML=(Math.max((this.value), document.getElementById('length-input-left').value-(-1)) + 'cm');">

                            <div class="slider length">
                                <div class="track">&nbsp;</div>
                                <div class="range length"></div>
                                <div class="thumb left length"></div>
                                <div class="thumb right length"></div>
                                <span
                                    style="float: left; color: rgb(200,200,200); transform: translateX(-21px)">0cm</span>
                                <span
                                    style="float: right; color: rgb(200,200,200); transform: translateX(22px)">150cm</span>
                                <span id="length_left"
                                    style="position: absolute; transform: translateX(-22px)">40cm</span>
                                <span id="length_right"
                                    style="position: absolute; transform: translateX(23px)">110cm</span>
                            </div>
                        </div>
                    </div>
                     
                    
                    

                    <div class="middle">
                        <span>어깨너비 SHOULDER</span>
                        <div class="multi-range-slider">
                            <input type="range" id="shoulder-input-left" min="0" max="100" value="25"
                                oninput="document.getElementById('shoulder_left').innerHTML=(Math.min((this.value), document.getElementById('shoulder-input-right').value-1) + 'cm');">
                            <input type="range" id="shoulder-input-right" min="0" max="100" value="75"
                                oninput="document.getElementById('shoulder_right').innerHTML=(Math.max((this.value), document.getElementById('shoulder-input-left').value-(-1)) + 'cm');">

                            <div class="slider shoulder">
                                <div class="track">&nbsp;</div>
                                <div class="range shoulder"></div>
                                <div class="thumb left shoulder"></div>
                                <div class="thumb right shoulder"></div>
                                <span
                                    style="float: left; color: rgb(200,200,200); transform: translateX(-21px)">0cm</span>
                                <span
                                    style="float: right; color: rgb(200,200,200); transform: translateX(22px)">100cm</span>
                                <span id="shoulder_left"
                                    style="position: absolute; transform: translateX(-22px)">25cm</span>
                                <span id="shoulder_right"
                                    style="position: absolute; transform: translateX(26px)">75cm</span>
                            </div>
                        </div>
                    </div>
                     
                    
                    <div class="middle">
                        <span>가슴단면 CHEST</span>
                        <div class="multi-range-slider">
                            <input type="range" id="chest-input-left" min="0" max="100" value="25"
                                oninput="document.getElementById('chest_left').innerHTML=(Math.min((this.value), document.getElementById('chest-input-right').value-1) + 'cm');">
                            <input type="range" id="chest-input-right" min="0" max="100" value="75"
                                oninput="document.getElementById('chest_right').innerHTML=(Math.max((this.value), document.getElementById('chest-input-left').value-(-1)) + 'cm');">

                            <div class="slider chest">
                                <div class="track">&nbsp;</div>
                                <div class="range chest"></div>
                                <div class="thumb left chest"></div>
                                <div class="thumb right chest"></div>
                                <span
                                    style="float: left; color: rgb(200,200,200); transform: translateX(-21px)">0cm</span>
                                <span
                                    style="float: right; color: rgb(200,200,200); transform: translateX(22px)">100cm</span>
                                <span id="chest_left"
                                    style="position: absolute; transform: translateX(-22px)">25cm</span>
                                <span id="chest_right"
                                    style="position: absolute; transform: translateX(26px)">75cm</span>
                            </div>
                        </div>
                    </div>
                     

                    <div class="middle">
                        <span>허리단면 WAIST</span>
                        <div class="multi-range-slider">
                            <input type="range" id="waist-input-left" min="0" max="100" value="25"
                                oninput="document.getElementById('waist_left').innerHTML=(Math.min((this.value), document.getElementById('waist-input-right').value-1) + 'cm');">
                            <input type="range" id="waist-input-right" min="0" max="100" value="75"
                                oninput="document.getElementById('waist_right').innerHTML=(Math.max((this.value), document.getElementById('waist-input-left').value-(-1)) + 'cm');">

                            <div class="slider waist">
                                <div class="track">&nbsp;</div>
                                <div class="range waist"></div>
                                <div class="thumb left waist"></div>
                                <div class="thumb right waist"></div>
                                <span
                                    style="float: left; color: rgb(200,200,200); transform: translateX(-21px)">0cm</span>
                                <span
                                    style="float: right; color: rgb(200,200,200); transform: translateX(22px)">100cm</span>
                                <span id="waist_left"
                                    style="position: absolute; transform: translateX(-22px)">25cm</span>
                                <span id="waist_right"
                                    style="position: absolute; transform: translateX(26px)">75cm</span>
                            </div>
                        </div>
                    </div>
                     
                    <div class="middle">
                        <span>소매길이 SLEEVE</span>
                        <div class="multi-range-slider">
                            <input type="range" id="sleeve-input-left" min="0" max="100" value="25"
                                oninput="document.getElementById('sleeve_left').innerHTML=(Math.min((this.value), document.getElementById('sleeve-input-right').value-1) + 'cm');">
                            <input type="range" id="sleeve-input-right" min="0" max="100" value="75"
                                oninput="document.getElementById('sleeve_right').innerHTML=(Math.max((this.value), document.getElementById('sleeve-input-left').value-(-1)) + 'cm');">

                            <div class="slider sleeve">
                                <div class="track">&nbsp;</div>
                                <div class="range sleeve"></div>
                                <div class="thumb left sleeve"></div>
                                <div class="thumb right sleeve"></div>
                                <span
                                    style="float: left; color: rgb(200,200,200); transform: translateX(-21px)">0cm</span>
                                <span
                                    style="float: right; color: rgb(200,200,200); transform: translateX(22px)">100cm</span>
                                <span id="sleeve_left"
                                    style="position: absolute; transform: translateX(-22px)">25cm</span>
                                <span id="sleeve_right"
                                    style="position: absolute; transform: translateX(26px)">75cm</span>
                            </div>
                        </div>
                    </div>
                     <script type="text/javascript" src="../js/search.js"></script>





                </div>
               
                <div id="search_check">
                    <div>
                        <h4>TOP CATEGORY</h4>
                        <hr>
                        <input type="checkbox" onclick='selectAll(this)' name="category_all" id="topAll" value="topAll">
                        <label for="topAll">&nbsp;&nbsp;&nbsp;&nbsp;</label>전체선택/해제&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll()' name="category_chk" id="top1" value="티셔츠">
                        <label for="top1">&nbsp;&nbsp;&nbsp;&nbsp;</label>티셔츠&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll()' name="category_chk" id="top2" value="후드/맨투맨">
                        <label for="top2">&nbsp;&nbsp;&nbsp;&nbsp;</label>후드/맨투맨&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll()' name="category_chk" id="top3" value="니트">
                        <label for="top3">&nbsp;&nbsp;&nbsp;&nbsp;</label>니트&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll()' name="category_chk" id="top4" value="민소매">
                        <label for="top4">&nbsp;&nbsp;&nbsp;&nbsp;</label>민소매&nbsp;&nbsp; <br />
        
                    </div>
                    <div>
                        <h4>SHAPE CATEGORY</h4>
                        <hr>
                        <input type="checkbox" onclick='selectAll2(this)' name="shape_all" id="shapeAll" value="ShapeAll">
                        <label for="shapeAll">&nbsp;&nbsp;&nbsp;&nbsp;</label>전체선택/해제&nbsp;&nbsp; <br>
                        <input type="checkbox" onclick='checkSelectAll2()' name="shape_chk" id="shape1" value="역삼각형">
                        <label for="shape1">&nbsp;&nbsp;&nbsp;&nbsp;</label>역삼각형&nbsp;&nbsp; <br>
                        <input type="checkbox" onclick='checkSelectAll2()' name="shape_chk" id="shape2" value="사각형">
                        <label for="shape2">&nbsp;&nbsp;&nbsp;&nbsp;</label>사각형&nbsp;&nbsp; <br>
                        <input type="checkbox" onclick='checkSelectAll2()' name="shape_chk" id="shape3" value="삼각형">
                        <label for="shape3">&nbsp;&nbsp;&nbsp;&nbsp;</label>삼각형&nbsp;&nbsp; <br>
                        <input type="checkbox" onclick='checkSelectAll2()' name="shape_chk" id="shape4" value="둥근형">
                        <label for="shape4">&nbsp;&nbsp;&nbsp;&nbsp;</label>둥근형&nbsp;&nbsp; <br>
                        <input type="checkbox" onclick='checkSelectAll2()' name="shape_chk" id="shape5" value="모래시계형">
                        <label for="shape5">&nbsp;&nbsp;&nbsp;&nbsp;</label>모래시계형&nbsp;&nbsp; <br>
                    </div>
                    <div>
                        <input type="submit" value="상품검색"><br><br>
                        <input type="submit" value="리뷰검색">
                    </div>
                </div>
            </form>
        </div>
    </div>

		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>