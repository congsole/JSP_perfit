<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
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
<title>perfit | ${pVo.name}</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/detail.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/detail.css?sf">

</head>

<body class="home">
   <%@ include file="../common/header.jsp"%>
   <div class="main">
      <form name="frm" method="post" action="ProductServlet" >
      <input type="hidden" name="command" value="product_update"> 
      <input type="hidden" name="p_id" value="${pVo.p_id}">
         <div id="detail_01">
            <div id="detail_info">
               <p>
               원단<br><input type ="text" name="fabric" value="${pVo.fabric}">
               </p>
            </div>
               
            <div id="detail_pic">
               <ul id="detail_pic_01">
                  <c:if test="${ppVo.model1 != null}">
                     <li><img src="img_product/${ppVo.model1}" id="pic1"></li>
                  </c:if>
                  <c:if test="${ppVo.model2 != null}">
                     <li><img src="img_product/${ppVo.model2}" id="pic2"></li>
                  </c:if>
                  <c:if test="${ppVo.model3 != null}">
                     <li><img src="img_product/${ppVo.model3}" id="pic3"></li>
                  </c:if>
                  <c:if test="${ppVo.model4 != null}">
                     <li><img src="img_product/${ppVo.model4}" id="pic4"></li>
                  </c:if>
                  <c:if test="${ppVo.model5 != null}">
                     <li><img src="img_product/${ppVo.model5}" id="pic5"></li>
                  </c:if>
                  <c:if test="${ppVo.model6 != null}">
                     <li><img src="img_product/${ppVo.model6}" id="pic6"></li>
                  </c:if>
                  <c:if test="${ppVo.model7 != null}">
                     <li><img src="img_product/${ppVo.model7}" id="pic7"></li>
                  </c:if>
                  <c:if test="${ppVo.model8 != null}">
                     <li><img src="img_product/${ppVo.model8}" id="pic8"></li>
                  </c:if>
                  <c:if test="${ppVo.model9 != null}">
                     <li><img src="img_product/${ppVo.model9}" id="pic9"></li>
                  </c:if>

               </ul>

               <ul id="detail_pic_02">
                  <c:if test="${ppVo.model1 != null}">
                     <li><a href="#pic1"><img
                           src="img_product/${ppVo.model1}"></a></li>
                  </c:if>
                  <c:if test="${ppVo.model2 != null}">
                     <li><a href="#pic2"><img
                           src="img_product/${ppVo.model2}"></a></li>
                  </c:if>
                  <c:if test="${ppVo.model3 != null}">
                     <li><a href="#pic3"><img
                           src="img_product/${ppVo.model3}"></a></li>
                  </c:if>
                  <c:if test="${ppVo.model4 != null}">
                     <li><a href="#pic4"><img
                           src="img_product/${ppVo.model4}"></a></li>
                  </c:if>
                  <c:if test="${ppVo.model5 != null}">
                     <li><a href="#pic5"><img
                           src="img_product/${ppVo.model5}"></a></li>
                  </c:if>
                  <c:if test="${ppVo.model6 != null}">
                     <li><a href="#pic6"><img
                           src="img_product/${ppVo.model6}"></a></li>
                  </c:if>
                  <c:if test="${ppVo.model7 != null}">
                     <li><a href="#pic7"><img
                           src="img_product/${ppVo.model7}"></a></li>
                  </c:if>
                  <c:if test="${ppVo.model8 != null}">
                     <li><a href="#pic8"><img
                           src="img_product/${ppVo.model8}"></a></li>
                  </c:if>
                  <c:if test="${ppVo.model9 != null}">
                     <li><a href="#pic9"><img
                           src="img_product/${ppVo.model9}"></a></li>
                  </c:if>
               </ul>
            </div>

            <div id="detail_select">
               <h2>
               상품명<input type="text" name="name" value="${pVo.name}">
               </h2>
               <h2>상품 가격<input type ="text" name="price" value="${pVo.price}">&nbsp;원</h2>
               <pre>상세 정보 <input type ="text" name="description" value="${pVo.description}"></pre>

               <br> <br>

               <form method="post" id="options" name="frm" action="ProductServlet">
                  <c:if test="${mVo == null}">
                     <input type="hidden" name="command" value="member_login">
                  </c:if>
                  <c:if test="${mVo != null}">
                     <input type="hidden" name="command" value="shoppingBasket_add">
                     <input type="hidden" name="pid" value="${pVo.id}">
                     <input type="hidden" name="mid" value="${mVo.id}">
                  </c:if>
                  <h2>색&nbsp;&nbsp;&nbsp;상</h2>

                  <input type="text" name="color" id="color01"
                     value="${pVo.color_01}"> <label
                     for="color01">${pVo.color_01}</label>
                  
                     <input type="text" name="color" id="color02"
                        value="${pVo.color_02}">
                     <label for="color02">${pVo.color_02}</label>
                  
                  
                     <input type="text" name="color" id="color03"
                        value="${pVo.color_03}">
                     <label for="color03">${pVo.color_03}</label>
                  
                  
                     <input type="text" name="color" id="color04"
                        value="${pVo.color_04}">
                     <label for="color04">${pVo.color_04}</label>
                  
                  
                     <input type="text" name="color" id="color05"
                        value="${pVo.color_05}">
                     <label for="color05">${pVo.color_05}</label>
                  
                  
                     <input type="text" name="color" id="color06"
                        value="${pVo.color_06}">
                     <label for="color06">${pVo.color_06}</label>
                  
                  
                     <input type="text" name="color" id="color07"
                        value="${pVo.color_07}">
                     <label for="color07">${pVo.color_07}</label>
                  
                  
                     <input type="text" name="color" id="color08"
                        value="${pVo.color_08}">
                     <label for="color08">${pVo.color_08}</label>
                  
                  
                     <input type="text" name="color" id="color09"
                        value="${pVo.color_09}">
                     <label for="color09">${pVo.color_09}</label>
                  
                  
                     <input type="text" name="color" id="color10"
                        value="${pVo.color_10}">
                     <label for="color10">${pVo.color_10}</label>
               


                  <br> <br>

                  <h2>사이즈</h2>

                  <input type="text" name="size" id="size01"
                     value="${pVo.size_01}"> <label for="size01">${pVo.size_01}</label>
                  
                     <input type="text" name="size" id="size02"
                        value="${pVo.size_02}">
                     <label for="size02">${pVo.size_02}</label>
                  
               
                     <input type="text" name="size" id="size03"
                        value="${pVo.size_03}">
                     <label for="size03">${pVo.size_03}</label>
                  
                  
                     <input type="text" name="size" id="size04"
                        value="${pVo.size_04}">
                     <label for="size04">${pVo.size_04}</label>
                  
                  
                     <input type="text" name="size" id="size05"
                        value="${pVo.size_05}">
                     <label for="size05">${pVo.size_05}</label>
               
                  
                     <input type="text" name="size" id="size06"
                        value="${pVo.size_06}">
                     <label for="size06">${pVo.size_06}</label>
               
                  
                     <input type="text" name="size" id="size07"
                        value="${pVo.size_07}">
                     <label for="size07">${pVo.size_07}</label>
                  
                  
                     <input type="text" name="size" id="size08"
                        value="${pVo.size_08}">
                     <label for="size08">${pVo.size_08}</label>
               
                  
                     <input type="text" name="size" id="size09"
                        value="${pVo.size_09}">
                     <label for="size09">${pVo.size_09}</label>
                
                
                     <input type="text" name="size" id="size10"
                        value="${pVo.size_10}">
                     <label for="size10">${pVo.size_10}</label>
                  
                  </form>
                  <br> <br>
                  
                  <br> <br> <br> <br> 
                  <input type="reset" value="다시 작성하기">
                  <input type="submit" value="수정하기" id="directBuy">
               </form>
            </div>
         </div>
         
         <br> <Br>
         <div id="detail_02" class="detail">
            <h2>제품 상세</h2>
            <ul>
               <c:if test="${ppVo.detail1 != null}">
                  <li><img src="img_product/${ppVo.detail1}"></li>
               </c:if>
               <c:if test="${ppVo.detail2 != null}">
                  <li><img src="img_product/${ppVo.detail2}"></li>
               </c:if>
               <c:if test="${ppVo.detail2 != null || ppVo.detail3 != ''}">
                  <li><img src="img_product/${ppVo.detail3}"></li>
               </c:if>
               <c:if test="${ppVo.detail4 != null}">
                  <li><img src="img_product/${ppVo.detail4}"></li>
               </c:if>
               <c:if test="${ppVo.detail5 != null}">
                  <li><img src="img_product/${ppVo.detail5}"></li>
               </c:if>
               <c:if test="${ppVo.detail6 != null}">
                  <li><img src="img_product/${ppVo.detail6}"></li>
               </c:if>
               <c:if test="${ppVo.detail7 != null}">
                  <li><img src="img_product/${ppVo.detail7}"></li>
               </c:if>
         



            </ul>
         </div>
         <br> <Br>
         <div id="detail_03" class="detail">
            <h2>실측 사이즈</h2>
            <c:if test="${ppVo.detail8 != null}">
               <li><img src="img_product/${ppVo.detail8}"></li>
            </c:if>
            <c:if test="${ppVo.detail9 != null}">
               <img src="img_product/${ppVo.detail9}">
            </c:if>
            <Br> <Br> <Br> <Br>
         </div>
         <br> <Br>
   </div>
   



   <%@ include file="../common/footer.jsp"%>
</body>

</html>