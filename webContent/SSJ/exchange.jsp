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
<link rel="icon" type="image/x-icon" href="img/favicon.png">
<!--타이틀 옆에 작은 로고-->
<title>perfit | ★☆페이지명★☆</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 이 부분에 필요한 css와 js를 추가해주세요. -->
<script type="text/javascript" src="js/exchange.js"></script>
<link rel="stylesheet" type="text/css" href="css/exchange.css">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>
      <div class="exchange">
          <h1>환불 신청</h1>
          <div class="exchange_table">
              <table class="ex_table">
                  <tr>
                      <th class="ext1">
                          <input type="checkbox" id="boxAll" name="selectall" value="selectall" onclick='selectAll(this)'/>
                          <label for="boxAll"></label>
                      </th>
                      <th class="ext2">주문 번호</th>
                      <th class="ext3">주문 상품명</th>
                      <th class="ext4">반품 수량</th>
                      <th class="ext5">주문 일시</th>
                      <th class="ext6">결제 금액</th>
                    
                  </tr>
                  <tr>
                      <td>
                          <input type="checkbox" id="box1" name="select" onclick='checkSelectAll()'>
                          <label for="box1"></label>
                      </td>
                      <td>AB123456</td>
                      <td>양말이 대박이야 짱이다</td>
                      <td><select>
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                      </select></td>
                      <td>2023.05.31</td>
                      <td>23,000원</td>
                  </tr>
                  <tr>
                      <td>
                          <input type="checkbox" id="box2" name="select" onclick='checkSelectAll()'>
                          <label for="box2"></label>
                      </td>
                      <td>BC123456</td>
                      <td>자켓이 짱이야 멋져</td>
                      <td><select>
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                      </select></td>
                      <td>2023.05.11</td>
                      <td>43,000원</td>
                  </tr>
                  <tr id="sum">
                      <td colspan="6">합계금액 : 66,000원</td>
                  </tr>
              </table>
          </div>
         </div>
          <div class="reason">
              
              <table class="reason_table">
                  <tr>
                      <td id="reason_title" rowspan="3"><b>반품 사유</b></td>
                      <td id="sel_reason">&nbsp; &nbsp;<b>반품 사유 선택</b>&nbsp; &nbsp;
                      <select>
                          <option value="선택">반품 사유 선택</option>
                          <option value="사이즈">사이즈가 안 맞아서</option>
                          <option value="배송">배송 문제로 인해</option>
                          <option value="디자인">디자인이 마음에 안 들어서</option>
                          <option value="상태">옷 상태가 안 좋아서</option>
                          <option value="기타">기타 이유로 인해</option>
                      </select></td>
                      
                  </tr>
                  
                  <tr>
                      <td id="sel_text"><textarea id="ex_reason" cols="50" rows="10"></textarea></td>
                  </tr>
              </table>
          </div>
          <div class="ex_button">
              <p id="ser">
                  <button class="exchange_btn" type="reset">초기화</button>
                  <button class="exchange_btn" type="submit">반품 신청</button>
              </p>
          </div>
	<%@ include file="../common/footer.jsp"%>
</body>

</html>