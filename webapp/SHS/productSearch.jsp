<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<title>perfit | 상세검색</title>
<script src="js/jquery.js"></script>
<script src="js/common.js"></script>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/search.css?46">




</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>



    <div id="search_wrap">
        <div id="search_left">
            <img src="img/detailed_size_top.png">
        </div>

        <div id="search_right">
            <form name="frm" id="detailed_search" action="ProductServlet">           
            <input type="hidden" name="command" value="product_search">
                <div>
                    <div class="middle">
                        <span>가격 PRICE</span>
                        <div class="multi-range-slider">
                            <input type="range" id="price-input-left" min="0" step="1000" max="1000000" value="0" name="price_L"
                                oninput="document.getElementById('price_left').innerHTML=(Math.min((this.value), document.getElementById('price-input-right').value-1) + '￦');">
                            <input type="range" id="price-input-right" min="0" step="1000" max="1000000" value="1000000" name="price_R"
                                oninput="document.getElementById('price_right').innerHTML=(Math.max((this.value), document.getElementById('price-input-left').value-(-1)) + '￦');">

                            <div class="slider price">
                                <div class="track">&nbsp;</div>
                                <div class="range price"></div>
                                <div class="thumb left price"></div>
                                <div class="thumb right price"></div>
                                <span
                                    style="float: left; color: rgb(200,200,200); transform: translateX(-21px)">0￦</span>
                                <span
                                    style="float: right; color: rgb(200,200,200); transform: translateX(22px)">1000000￦</span>
                                <span id="price_left"
                                    style="position: absolute; transform: translateX(-22px)">0￦</span>
                                <span id="price_right"
                                    style="position: absolute; transform: translateX(26px)">1000000￦</span>
                            </div>
                        </div>
                    </div>
                   

                    <div class="middle">
                        <span>총기장 LENGTH</span>
                        <div class="multi-range-slider">
                            <input type="range" id="length-input-left" min="0" max="150" value="0" name="total_length_L"
                                oninput="document.getElementById('length_left').innerHTML=(Math.min((this.value), document.getElementById('length-input-right').value-1) + 'cm');">
                            <input type="range" id="length-input-right" min="0" max="150" value="150" name="total_length_R"
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
                                    style="position: absolute; transform: translateX(-22px)">0cm</span>
                                <span id="length_right"
                                    style="position: absolute; transform: translateX(23px)">150cm</span>
                            </div>
                        </div>
                    </div>
                     
                    
                    

                    <div class="middle">
                        <span>어깨너비 SHOULDER</span>
                        <div class="multi-range-slider">
                            <input type="range" id="shoulder-input-left" min="0" max="100" value="0" name="shoulder_L"
                                oninput="document.getElementById('shoulder_left').innerHTML=(Math.min((this.value), document.getElementById('shoulder-input-right').value-1) + 'cm');">
                            <input type="range" id="shoulder-input-right" min="0" max="100" value="100" name="shoulder_R"
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
                                    style="position: absolute; transform: translateX(-22px)">0cm</span>
                                <span id="shoulder_right"
                                    style="position: absolute; transform: translateX(26px)">100cm</span>
                            </div>
                        </div>
                    </div>
                     
                    
                    <div class="middle">
                        <span>가슴단면 BUST</span>
                        <div class="multi-range-slider">
                            <input type="range" id="bust-input-left" min="0" max="100" value="0" name="bust_L"
                                oninput="document.getElementById('bust_left').innerHTML=(Math.min((this.value), document.getElementById('bust-input-right').value-1) + 'cm');">
                            <input type="range" id="bust-input-right" min="0" max="100" value="100" name="bust_R"
                                oninput="document.getElementById('bust_right').innerHTML=(Math.max((this.value), document.getElementById('bust-input-left').value-(-1)) + 'cm');">

                            <div class="slider bust">
                                <div class="track">&nbsp;</div>
                                <div class="range bust"></div>
                                <div class="thumb left bust"></div>
                                <div class="thumb right bust"></div>
                                <span
                                    style="float: left; color: rgb(200,200,200); transform: translateX(-21px)">0cm</span>
                                <span
                                    style="float: right; color: rgb(200,200,200); transform: translateX(22px)">100cm</span>
                                <span id="bust_left"
                                    style="position: absolute; transform: translateX(-22px)">0cm</span>
                                <span id="bust_right"
                                    style="position: absolute; transform: translateX(26px)">100cm</span>
                            </div>
                        </div>
                    </div>
                     

                    <div class="middle">
                        <span>허리단면 WAIST</span>
                        <div class="multi-range-slider">
                            <input type="range" id="waist-input-left" min="0" max="100" value="0" name="waist_L"
                                oninput="document.getElementById('waist_left').innerHTML=(Math.min((this.value), document.getElementById('waist-input-right').value-1) + 'cm');">
                            <input type="range" id="waist-input-right" min="0" max="100" value="100" name="waist_R"
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
                                    style="position: absolute; transform: translateX(-22px)">0cm</span>
                                <span id="waist_right"
                                    style="position: absolute; transform: translateX(26px)">100cm</span>
                            </div>
                        </div>
                    </div>
                     
                    <div class="middle">
                        <span>소매길이 SLEEVE</span>
                        <div class="multi-range-slider">
                            <input type="range" id="sleeve-input-left" min="0" max="100" value="0" name="sleeve_L"
                                oninput="document.getElementById('sleeve_left').innerHTML=(Math.min((this.value), document.getElementById('sleeve-input-right').value-1) + 'cm');">
                            <input type="range" id="sleeve-input-right" min="0" max="100" value="100" name="sleeve_R"
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
                                    style="position: absolute; transform: translateX(-22px)">0cm</span>
                                <span id="sleeve_right"
                                    style="position: absolute; transform: translateX(26px)">100cm</span>
                            </div>
                        </div>
                    </div>






                </div>
               
                <div id="search_check">
               		 <div id="search_type_select">
             			<input type="checkbox" onclick='selectAll3(this)' name="type_all" id="typeAll" value="typeAll">
                        <label for="typeAll" onclick='all_checked()'>&nbsp;전체선택/해제&nbsp;&nbsp;&nbsp;</label>
                        <input type="checkbox" onclick='checkSelectAll3()' name="type_chk" id="type1" value="OUTER">
                        <label for="type1" onclick="outer_is_checked()">&nbsp;&nbsp;OUTER&nbsp;&nbsp;</label>
                        <input type="checkbox" onclick='checkSelectAll3()' name="type_chk" id="type2" value="TOP">
                        <label for="type2" onclick="top_is_checked()">&nbsp;&nbsp;TOP&nbsp;&nbsp;</label>
                        <input type="checkbox" onclick='checkSelectAll3()' name="type_chk" id="type3" value="PANTS">
                        <label for="type3" onclick="pants_is_checked()">&nbsp;&nbsp;PANTS&nbsp;&nbsp;</label>
                        <input type="checkbox" onclick='checkSelectAll3()' name="type_chk" id="type4" value="SKIRT">
                        <label for="type4" onclick="skirt_is_checked()">&nbsp;&nbsp;SKIRT&nbsp;&nbsp;</label>
                        <input type="checkbox" onclick='checkSelectAll3()' name="type_chk" id="type5" value="ONEPIECE">
                        <label for="type5" onclick="onepiece_is_checked()">&nbsp;&nbsp;ONEPIECE&nbsp;&nbsp;</label>
             		</div>
             		
                    <div id="outer_cate" class="cate_none">
                        <h4>OUTER CATEGORY</h4>
                        <hr>
                        <input type="checkbox" onclick='selectAll5(this)' name="category_all" id="outerAll" value="outerAll">
                        <label for="outerAll">&nbsp;&nbsp;&nbsp;&nbsp;</label>전체선택/해제&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll5()' name="category_chk" id="outer1" value="Coat">
                        <label for="outer1">&nbsp;&nbsp;&nbsp;&nbsp;</label>코트&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll5()' name="category_chk" id="outer2" value="Jumper">
                        <label for="outer2">&nbsp;&nbsp;&nbsp;&nbsp;</label>점퍼&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll5()' name="category_chk" id="outer3" value="Cardigan">
                        <label for="outer3">&nbsp;&nbsp;&nbsp;&nbsp;</label>가디건&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll5()' name="category_chk" id="outer4" value="Padding">
                        <label for="outer4">&nbsp;&nbsp;&nbsp;&nbsp;</label>패딩&nbsp;&nbsp; <br />
                    </div>
                    <div id="top_cate" class="cate_none">
                        <h4>TOP CATEGORY</h4>
                        <hr>
                        <input type="checkbox" onclick='selectAll4(this)' name="category_all" id="topAll" value="topAll">
                        <label for="topAll">&nbsp;&nbsp;&nbsp;&nbsp;</label>전체선택/해제&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll4()' name="category_chk" id="top1" value="T-Shirts">
                        <label for="top1">&nbsp;&nbsp;&nbsp;&nbsp;</label>티셔츠&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll4()' name="category_chk" id="top2" value="Hood">
                        <label for="top2">&nbsp;&nbsp;&nbsp;&nbsp;</label>후드&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll4()' name="category_chk" id="top3" value="MANtoMAN">
                        <label for="top3">&nbsp;&nbsp;&nbsp;&nbsp;</label>맨투맨&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll4()' name="category_chk" id="top4" value="Knitted">
                        <label for="top4">&nbsp;&nbsp;&nbsp;&nbsp;</label>니트&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll4()' name="category_chk" id="top5" value="Sleeveless">
                        <label for="top5">&nbsp;&nbsp;&nbsp;&nbsp;</label>민소매&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll4()' name="category_chk" id="top6" value="Blouse">
                        <label for="top6">&nbsp;&nbsp;&nbsp;&nbsp;</label>블라우스&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll4()' name="category_chk" id="top7" value="Thirts">
                        <label for="top7">&nbsp;&nbsp;&nbsp;&nbsp;</label>셔츠&nbsp;&nbsp; <br />
                    </div>
                    <div id="pants_cate" class="cate_none">
                        <h4>PANTS CATEGORY</h4>
                        <hr>
                        <input type="checkbox" onclick='selectAll6(this)' name="category_all" id="pantsAll" value="pantsAll">
                        <label for="pantsAll">&nbsp;&nbsp;&nbsp;&nbsp;</label>전체선택/해제&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll6()' name="category_chk" id="pants1" value="Demin">
                        <label for="pants1">&nbsp;&nbsp;&nbsp;&nbsp;</label>데님&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll6()' name="category_chk" id="pants2" value="Slacks">
                        <label for="pants2">&nbsp;&nbsp;&nbsp;&nbsp;</label>슬랙스&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll6()' name="category_chk" id="pants3" value="Linen">
                        <label for="pants3">&nbsp;&nbsp;&nbsp;&nbsp;</label>리넨&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll6()' name="category_chk" id="pants4" value="Short">
                        <label for="pants4">&nbsp;&nbsp;&nbsp;&nbsp;</label>숏&nbsp;&nbsp; <br />
                    </div>
                    <div id="skirt_cate" class="cate_none">
                        <h4>SKIRT CATEGORY</h4>
                        <hr>
                        <input type="checkbox" onclick='selectAll7(this)' name="category_all" id="skirtAll" value="skirtAll">
                        <label for="skirtAll">&nbsp;&nbsp;&nbsp;&nbsp;</label>전체선택/해제&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll7()' name="category_chk" id="skirt1" value="Mini">
                        <label for="skirt1">&nbsp;&nbsp;&nbsp;&nbsp;</label>미니&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll7()' name="category_chk" id="skirt2" value="Medium">
                        <label for="skirt2">&nbsp;&nbsp;&nbsp;&nbsp;</label>미디움&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll7()' name="category_chk" id="skirt3" value="Long">
                        <label for="skirt3">&nbsp;&nbsp;&nbsp;&nbsp;</label>롱&nbsp;&nbsp; <br />
                    </div>
                    <div id="onepiece_cate" class="cate_none">
                        <h4>ONEPIECE CATEGORY</h4>
                        <hr>
                        <input type="checkbox" onclick='selectAll(this)' name="category_all" id="onepieceAll" value="onepieceAll">
                        <label for="onepieceAll">&nbsp;&nbsp;&nbsp;&nbsp;</label>전체선택/해제&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll()' name="category_chk" id="onepiece1" value="Mini">
                        <label for="onepiece1">&nbsp;&nbsp;&nbsp;&nbsp;</label>미니&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll()' name="category_chk" id="onepiece2" value="Medium">
                        <label for="onepiece2">&nbsp;&nbsp;&nbsp;&nbsp;</label>미디움&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll()' name="category_chk" id="onepiece3" value="Long">
                        <label for="onepiece3">&nbsp;&nbsp;&nbsp;&nbsp;</label>롱&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll()' name="category_chk" id="onepiece4" value="JumpSuits">
                        <label for="onepiece4">&nbsp;&nbsp;&nbsp;&nbsp;</label>점프수트&nbsp;&nbsp; <br />
                        <input type="checkbox" onclick='checkSelectAll()' name="category_chk" id="onepiece5" value="TwoPeice">
                        <label for="onepiece5">&nbsp;&nbsp;&nbsp;&nbsp;</label>투피스&nbsp;&nbsp; <br />
                    </div>
                    <div>
                        <h4>SHAPE CATEGORY</h4>
                        <hr>
                        <input type="checkbox" onclick='selectAll2(this)' name="shape_all" id="shapeAll" value="ShapeAll">
                        <label for="shapeAll">&nbsp;&nbsp;&nbsp;&nbsp;</label>전체선택/해제&nbsp;&nbsp; <br>
                        <input type="checkbox" onclick='checkSelectAll2()' name="shape_chk" id="shape1" value="InvertedTriangle">
                        <label for="shape1">&nbsp;&nbsp;&nbsp;&nbsp;</label>역삼각형&nbsp;&nbsp; <br>
                        <input type="checkbox" onclick='checkSelectAll2()' name="shape_chk" id="shape2" value="Rectangle">
                        <label for="shape2">&nbsp;&nbsp;&nbsp;&nbsp;</label>사각형&nbsp;&nbsp; <br>
                        <input type="checkbox" onclick='checkSelectAll2()' name="shape_chk" id="shape3" value="Triangle">
                        <label for="shape3">&nbsp;&nbsp;&nbsp;&nbsp;</label>삼각형&nbsp;&nbsp; <br>
                        <input type="checkbox" onclick='checkSelectAll2()' name="shape_chk" id="shape4" value="Circle">
                        <label for="shape4">&nbsp;&nbsp;&nbsp;&nbsp;</label>둥근형&nbsp;&nbsp; <br>
                        <input type="checkbox" onclick='checkSelectAll2()' name="shape_chk" id="shape5" value="Hourglass">
                        <label for="shape5">&nbsp;&nbsp;&nbsp;&nbsp;</label>모래시계형&nbsp;&nbsp; <br>
                    </div>
     
                    <div>
                        <input type="submit" value="상품검색" onclick="return allElemetsChecked()"><br><br>
                    </div>
                </div>
            </form>
        </div>
    </div>

		
		

	<%@ include file="../common/footer.jsp"%>
	<script src="js/search.js?wdswo"></script>
</body>

</html>