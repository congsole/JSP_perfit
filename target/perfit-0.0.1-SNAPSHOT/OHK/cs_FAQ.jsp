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
<title>perfit | F A Q</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<link rel="stylesheet" type="text/css" href="css/common.css?q">
<script type="text/javascript" src="js/FAQ.js"></script>
<link rel="stylesheet" type="text/css" href="css/FAQ.css">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




<main>
        <div class="frequent_question">
            <h1>자주 묻는 질문</h1>
            
        
            <div class="tb">
                <table class="tc">
                    <tr>
                        <td class="d2"><button type="button" class="collapsible" onclick="collapse(this);">
                            <b>Q.</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;결제 취소한 금액은 언제 돌려받을 수 있나요?
                                    </button>
                            <div class="content">
                                <p><b>A.</b><br>
                                    영업 일 기준 3~4일 이내에 취소 처리되어<br>
                                    환불조치 될 예정입니다.<br>
                                    관련 문의사항 있을 시<br>
                                    고객센터 > Q n A 로 문의하시면<br>
                                    자세한 안내 받으실 수 있습니다</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="d2"><button type="button" class="collapsible" onclick="collapse(this);"><b>Q.</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;배송은 언제 되나요?</button>
                            <div class="content">
                                <p><b>A.</b><br>
                                	영업일 기준영업일 기준 오후 1시 이전 결제 완료 주문건 :당일 출고됩니다. (일부 상품 제외)<br>
									공휴일의 경우 다음 영업일에 출고됩니다.<br>
									(출고된 경우 서울/수도권 지역은 대부분 다음날 수령, 지방은 1~3일 이내에 배송됩니다.<br>
									따라서 전체 배송 기간은 (업무일 기준) 3일~7일 정도 소요되며, 일부 택배사 사정에 따라 변동될 수 있습니다.)<br>
									※ 주문 상품이 재고 부족일 경우 부득이하게 배송 시간은 달라질 수 있는 점 양해 부탁드립니다.
                                	</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="d2"><button type="button" class="collapsible" onclick="collapse(this);"><b>Q.</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;무통장 결제로 입금했는데 확인되지 않아요.</button>
                            <div class="content">
                                <p><b>A.</b><br>
                                무통장입금 건은 입금 후 영업시간이내 1~2시간 이후에 확인이 가능하며,<br>
								주문 후 7일 이내로 입금 확인이 안될 경우 주문이 자동으로 취소 처리됩니다.<br>
								▼자동 입금이 되지 않는 4가지 경우▼<br>
								1. 입금자명이 다를 경우 - 주문 시 기재한 입금자명과 실제 입금자명이 다를 경우 연락 부탁드립니다.<br>
								2. 결제 금액과 입금 금액이 불일치할 경우 -<br>
								결제 금액과 입금 금액이 일치하지 않을 경우 연락 부탁드리며,<br>
								초과 입금해주신 금액은 환불 처리 가능합니다.<br>
								3. 같은 주문서가 중복으로 존재할 경우 동일한 결제 정보의 주문서가 두 개 이상일 경우 자동 입금 연결이 되지 않습니다.<br>
								4. 구매의사가 없는 주문서의 경우 마이페이지 주문내역에서 취소하시고, 입금해주신 금액은 환불 처리 가능합니다.</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="d2"><button type="button" class="collapsible" onclick="collapse(this);"><b>Q.</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;반품이나 교환이 불가능한 상품은 어떤 것이 있나요.</button>
                            <div class="content">
                                <p><b>A.</b><br>
                                	제품 수령 후 7일이내에 청약철회를 하지 않은 경우<br>
									제품의 하자 없이 섭취나 포장을 개봉한 경우<br>
									고객 부주의로 인한 상품의 변형, 훼손 또는 파손되는 경우<br>
									교환 및 반품 의사를 통보하지 않고 반품한 경우<br>
									위의 경우 반품/교환/환불 및 기타 처리가 되지 않습니다.<br>
									자세한 문의는 Q&A나 고객센터로 문의해주세요.<br>
                                </p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="d2"><button type="button" class="collapsible" onclick="collapse(this);"><b>Q.</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;배송주소지를 변경하고 싶어요</button>
                            <div class="content">
                                <p><b>A.</b><br>
                                	주문상태가 [배송준비중]일때 까지 가능합니다.<br>
									고객센터 010-9606-1196 로 연락 주시면 빠른 처리해 드리겠습니다.<br>
									질문과답변 게시판에 글로 남겨주셨을 경우 확인이 늦어 발송처리가 먼저 이루어 질수 있으니<br>
									고객센터로 연락 부탁드립니다.<br>
                                </p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="d2"><button type="button" class="collapsible" onclick="collapse(this);"><b>Q.</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;무통장 이체했는데 계속 주문접수로 보여요.</button>
                            <div class="content">
                                <p><b>A.</b><br>
                                	이체 후 입금확인에 15분~30분 정도가 소요되며, 입금확인이 되면 SMS 로 알림이 발송됩니다.<br>
									단, SMS는 순차적으로 발송되어 지연이 있을 수 있으므로,<br> 
									롯데홈 PC 혹은 모바일의 [마이롯데 > 배송조회] 메뉴에서 '주문접수' 상태가 '결제완료' 로 변경됨을<br>
									통해 빠르게 확인하실 수 있습니다.
                                </p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="d2"><button type="button" class="collapsible" onclick="collapse(this);"><b>Q.</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소득공제용과 지출증빙 차이는 무엇인가요?</button>
                            <div class="content">
                                <p><b>A.</b><br>
                                	현금영수증에는 소득공제용과 지출증빙용이 있습니다.<br>
									-소득공제용 : 사업자가 아닌 개인이 연말정산시 소득공제용으로 사용합니다.<br>
									-지출증빙용 : 사업자가 부가세 신고시, 매입세액공제용으로 사용합니다.
                                </p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="d2"><button type="button" class="collapsible" onclick="collapse(this);"><b>Q.</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주문을 따로따로했는데 묶음배송이 가능한가요?</button>
                            <div class="content">
                                <p><b>A.</b><br>
                                시스템상 자동으로 묶음 발송처리는 어렵습니다.<br>
								아예 다시 주문해주시거나,<br>
								별도로 배송 받으셔야됩니다.
                                </p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="d2"><button type="button" class="collapsible" onclick="collapse(this);"><b>Q.</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주문하고 결제까지 했는데 왜 품절이 되죠?</button>
                            <div class="content">
                                <p><b>A.</b><br>
                                부득이하게 원단및 부자재가 품절될경우 제작이 불가하게 되어 품절될수 있습니다.<br>
								이럴경우 전화나 문자(해외배송이신경우 메일로)로 연락을 드리고 있습니다.<br>
								지연되다가 품절이 되는 경우에도 확인되는데로 바로 연락을 드립니다.<br>
								품절된 상품은 다른 상품으로 변경이나 환불, 예치적립등 고객님 원하시는대로 처리해드리니 염려하지 않으셔도 됩니다.<br>
								또한, 물건수령후에 상품이 품절된경우엔 동일상품으로 교환이 어려우십니다.<br>
								이경우 다른상품으로 교환 혹은 환불로만 처리 가능하신점 양해 부탁드립니다.<br>
								(불량으로 인한 동일상품 교환일경우에도 처리가 어려우신점 양해 부탁드립니다.)
                                </p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="d2"><button type="button" class="collapsible" onclick="collapse(this);"><b>Q.</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기재되어있는 사이즈와 차이가 나요</button>
                            <div class="content">
                                <p><b>A.</b><br>
                                사이즈의 경우 사이즈를 측정하는 부위나 방법에 따라 차이가 있는데요,<br>
								기재되어있는 사이즈와 1~5cm정도 차이가 있으실 수 있답니다.<br>
								그리고 동일한 상품에 동일 사이즈이더라도 제작을 할 때 기계로 완벽하게 찍어내는게 아닌<br>
								수작업도 동반이 되기 때문에 조금씩 차이가 나는 경우가 있습니다<br>
								니트류의 경우 늘어짐이 있는 소재여서 측정하는 방법이나 위치에 따라<br>
								많이 차이가 나는 경우가 있으시구요,<br>
								소재가 반듯하게 모양이 잡히지 않은 제품들의 경우에는 정확하게 측정이<br>
								어려워 차이가 날 수 있습니다.<br>
                                </p>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
   
        
    </main>
		
		
		
		

	<%@ include file="../common/footer.jsp"%>
</body>

</html>