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
button {
    width: 150px;
    margin: 10px auto;
    font-family: '경기천년제목 Light';
    background-color: rgb(210,124,125); 
    font-size: 30px;
    color: rgb(246,246,246);
    border: none;
    font-weight: bold;
    padding: 10px;
    line-height: 1.5em;
}
button:hover {
    background-color: rgb(34,34,34); 
}
button:active {
    background-color: rgb(180,120,120); 

}
</style>
<link rel="icon" type="image/x-icon" href="img/favicon.png">
<title>perfit | 체형검사</title>

<script src="js/jquery.js"></script>
<script src="js/common.js"></script>
<script src="js/size.js"></script>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/personalSize.css?D">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




	<div id="personal_size_con">
		<div id="guide">
			<h1>측정 가이드</h1>
			<ul>
				<li><img src="img/어깨너비.jpg" alt="어깨너비">
					<h4>어깨너비</h4>
					<p>
						양쪽 어깨 끝 뼈의 간격을 측정해 주세요. <br> ※ 뒤 목점을 지나 곡선으로 측정합니다.
					</p></li>
				<li><img src="img/상동.jpg" alt="가슴둘레">
					<h4>가슴둘레</h4>
					<p>
						양쪽 겨드랑이를 통과하여 가슴의 둘레를 측정해 주세요.<br> ※ 줄자의 안쪽으로 손가락을 넣어 여유 있게
						측정해 주시기 바랍니다.
					</p></li>
				<li><img src="img/팔길이.jpg" alt=팔길이">
					<h4>팔길이</h4>
					<p>어깨끝점에서 손목까지의 길이를 측정해 주세요.</p></li>
				<li><img src="img/팔통.jpg" alt="팔둘레">
					<h4>팔둘레</h4>
					<p>어깨와 팔꿈치 사이의 가장 두꺼운 부분을 측정해 주세요.</p></li>
				<li><img src="img/허리.jpg" alt="허리둘레">
					<h4>허리둘레</h4>
					<p>허리의 가장 가는 부분의 둘레를 측정해 주세요.</p></li>
				<li><img src="img/허벅지.jpg" alt="허벅지 둘레">
					<h4>허벅지</h4>
					<p>사타구니와 무릎 사이에서 가장 두꺼운 부분의 둘레를 측정해 주세요.</p></li>
				<li><img src="img/힙둘레.jpg" alt="엉덩이">
					<h4>엉덩이둘레</h4>
					<p>엉덩이의 가장 튀어나온 부분의 둘레를 측정해 주세요.</p></li>
				<li><img src="img/다리길이.jpg" alt="다리길이">
					<h4>다리길이(안심길이)</h4>
					<p>사타구니에서 복숭아뼈 중심까지의 길이를 측정해 주세요.</p></li>
			</ul>
		</div>

		<form id="personal_size" name="frm" method="post"
			action="ProductServlet">
			<input type="hidden" name="command" value="member_size"> 
			<input type="text" name="memberShape" id="memberShape" style="border: none; color: rgb(210, 210, 210); text-align: center; width: 450px;" readonly>
			<table>
				<tr>
					<td colspan="3">
						<div class="title_wrap">
							<h1>너의 사이즈는</h1>
						</div>
					</td>
				</tr>
				<c:if test="${mVo != null}">
					<tr>
						<td>키</td>
						<c:if test="${mVo.height != null}">
							<td><input type="text" name="height" value="${mVo.height}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<c:if test="${mVo.height == null}">
							<td><input type="text" name="height" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<td>cm</td>
					</tr>
					<tr>
						<td>몸무게</td>
						<c:if test="${mVo.weight != null}">
							<td><input type="text" name="weight" value="${mVo.weight}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<c:if test="${mVo.weight == null}">
							<td><input type="text" name="weight" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<td>kg</td>
					</tr>
					<tr>
						<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>어깨
							너비</td>
						<c:if test="${mVo.shoulder != null}">
							<td><input type="text" name="shoulder"
								value="${mVo.shoulder}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<c:if test="${mVo.shoulder == null}">
							<td><input type="text" name="shoulder" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<td>cm</td>
					</tr>
					<tr>
						<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>가슴
							둘레</td>
						<c:if test="${mVo.bust != null}">
							<td><input type="text" name="bust" value="${mVo.bust}"
								id="bust" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<c:if test="${mVo.bust == null}">
							<td><input type="text" name="bust" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<td>cm</td>
					</tr>
					<tr>
						<td>팔 길이</td>
						<c:if test="${mVo.arm_length != null}">
							<td><input type="text" name="arm_length"
								value="${mVo.arm_length}"></td>
						</c:if>
						<c:if test="${mVo.arm_length == null}">
							<td><input type="text" name="arm_length" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<td>cm</td>
					</tr>
					<tr>
						<td>팔 둘레</td>
						<c:if test="${mVo.arm_size != null}">
							<td><input type="text" name="arm_size" value="${mVo.arm_size}"></td>
						</c:if>
						<c:if test="${mVo.arm_size == null}">
							<td><input type="text" name="arm_size" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<td>cm</td>
					</tr>
					<tr>
						<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>허리
							둘레</td>
						<c:if test="${mVo.waist != null}">
							<td><input type="text" name="waist" value="${mVo.waist}"
								id="waist" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<c:if test="${mVo.waist == null}">
							<td><input type="text" name="waist" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<td>cm</td>
					</tr>
					<tr>
						<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>엉덩이 둘레</td>
						<c:if test="${mVo.hip != null}">
							<td><input type="text" name="hip" value="${mVo.hip}" id="hip" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
							</td>
						</c:if>
						<c:if test="${mVo.hip == null}">
							<td><input type="text" name="hip" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<td>cm</td>
					</tr>
					<tr>
						<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>허벅지
							둘레</td>
						<c:if test="${mVo.thigh != null}">
							<td><input type="text" name="thigh" value="${mVo.thigh}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<c:if test="${mVo.thigh == null}">
							<td><input type="text" name="thigh" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<td>cm</td>
					</tr>
					<tr>
						<td>다리 길이</td>
						<c:if test="${mVo.leg_length != null}">
							<td><input type="text" name="leg_length"
								value="${mVo.leg_length}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<c:if test="${mVo.leg_length == null}">
							<td><input type="text" name="leg_length" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						</c:if>
						<td>cm</td>
					</tr>





				</c:if>
				<c:if test="${mVo == null}">
					<tr>
						<td>키</td>
						<td><input type="text" name="height" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						<td>cm</td>
					</tr>
					<tr>
						<td>몸무게</td>
						<td><input type="text" name="weight" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						<td>kg</td>
					</tr>
					<tr>
						<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>어깨
							너비</td>
						<td><input type="text" name="shoulder" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						<td>cm</td>
					</tr>
					<tr>
						<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>가슴
							둘레</td>
						<td><input type="text" name="bust" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						<td>cm</td>
					</tr>
					<tr>
						<td>팔 길이</td>
						<td><input type="text" name="arm_length" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						<td>cm</td>
					</tr>
					<tr>
						<td>팔 둘레</td>
						<td><input type="text" name="arm_size" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						<td>cm</td>
					</tr>
					<tr>
						<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>허리
							둘레</td>
						<td><input type="text" name="waist" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						<td>cm</td>
					</tr>
					<tr>
						<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>엉덩이
							둘레</td>
						<td><input type="text" name="hip" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						<td>cm</td>
					</tr>
					<tr>
						<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>허벅지
							둘레</td>
						<td><input type="text" name="thigh" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						<td>cm</td>
					</tr>
					<tr>
						<td>다리 길이</td>
						<td><input type="text" name="leg_length" value="0" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
						<td>cm</td>
					</tr>


				</c:if>
				<tr>
					<td colspan="3"
						style="color: rgb(210, 125, 124); font-size: 15px; text-align: left; text-align: center;"><br>
					<br> <b><sup>＊</sup>필수 입력 필드</b><br>
					<br></td>
				</tr>
				<tr>
					<td colspan="3"><input type="submit" value="결과보기"
						onclick="resultS()"> &nbsp;&nbsp; <input type="reset"
						value="초기화"><br>
					<br>
					<br></td>
				</tr>

			</table>
		</form>
		
		<c:if test="${mVo == null || mVo.shape == null || mVo.shape == 'none'}">
		<div id="result">	
			<div id="question">
			<br><Br><Br><br><br><br><br>
				<img src="img/question.png">
			</div>
		</div>
		</c:if>
		
		<c:if test="${mVo.shape == 'InvertedTriangle'}">
		<div id="result">

			<h1>체형 측정 결과</h1>

			<div class="result above" id="result_above">
				<div class="shape img"><img src="img/female_body_shape_inverted_triangle.jpg"></div>
				<div class="shape name">
					<h2>역삼각형</h2>
					<button type="button" onclick="location.href=''">추천상품 보러가기</button>
				</div>
			</div>

			<div class="shape describe" id="result_below">

				<h4>분석</h4>
				<ol>
					<li>넓은 어깨와 큰 가슴으로 무게감 있는 상체.</li>
					<li>상대적으로 넓은 상체와 좁은 하체 사이의 균형잡힌 실루엣 만들기!</li>
				</ol>

				<h4>
					<span>Tip!</span> 어깨 라인을 확대하지 않기
				</h4>
				<ul style="list-style-type: disc;">
					<li>어깨와 다른 어깨 부분을 넓히는 넓은 목선을 피합니다.</li>
					<li>목과 어깨 주위의 큰 장식이나 패턴을 피합니다.</li>
				</ul>

				<h4>
					<span>Tip!</span> 하체에 시선 집중시키기
				</h4>
				<ul style="list-style-type: disc;">
					<li>하의에 볼륨과 관심을 더해 상체를 상대적으로 작아보이게 합니다.</li>
					<li>타이트한 바지는 상체를 더욱 돋보이게 만드므로 피합니다.</li>
				</ul>
			</div>
		</div>
		</c:if>
		<c:if test="${mVo.shape == 'Rectangle'}">
		<div id="result">

			<h1>체형 측정 결과</h1>

			<div class="result above" id="result_above">
				<div class="shape img"><img src="img/female_body_shape_rectangle.jpg"></div>
				<div class="shape name">
					<h2>사각형</h2>
					<button type="button" onclick="location.href=''">추천상품 보러가기</button>
				</div>
			</div>

			<div class="shape describe" id="result_below">

				<h4>분석</h4>
				<ol>
					<li>상체와 하체가 균형 잡힌 형태.</li>
					<li>허리라인을 잡아서 상하체를 분리시키기!</li>
				</ol>

				<h4>
					<span>Tip!</span> 곡선을 강조하기
				</h4>
				<ul style="list-style-type: disc;">
					<li>사각형이나 직선적인 넥라인은 피합니다.</li>
					<li>둥근 넥라인 또는 큰 장식이나 패턴을 가진 상의로 상체에 주의를 끌게 해줍니다.</li>
				</ul>

				<h4>
					<span>Tip!</span> 허리선을 잡아주기
				</h4>
				<ul style="list-style-type: disc;">
					<li>어두운 색의 벨트로 허리를 강조하여 상하체를 분리하면 좋습니다.</li>
					<li>어깨나 허리 아래에 주름으로 볼륨을 주는 옷이 좋습니다.</li>
				</ul>
			</div>
		</div>
		</c:if>
		<c:if test="${mVo.shape == 'Triangle'}">
		<div id="result">

			<h1>체형 측정 결과</h1>

			<div class="result above" id="result_above">
				<div class="shape img"><img src="img/female_body_shape_triangle.jpg"></div>
				<div class="shape name">
					<h2>삼각형</h2>
					<button type="button" onclick="location.href=''">추천상품 보러가기</button>
				</div>
			</div>

			<div class="shape describe" id="result_below">

				<h4>분석</h4>
				<ol>
					<li>우리나라에서 가장 흔한 체형, 상체보다 하체가 발달한 체형.</li>
					<li>시선을 상체에 집중시키기!</li>
				</ol>

				<h4>
					<span>Tip!</span> 상체에 시선이 머무르도록!
				</h4>
				<ul style="list-style-type: disc;">
					<li>밝은 색의 상의, 어두운 색의 하의로 상체를 강조합니다.</li>
					<li>허리라인을 드러내어 장점을 돋보이게 합니다.</li>
				</ul>

				<h4>
					<span>Tip!</span> 상체가 작아지지 않도록!
				</h4>
				<ul style="list-style-type: disc;">
					<li>브이넥은 상체를 더욱 좁아보이게 하므로 피합니다.</li>
					<li>오프숄더로 어깨를 강조하는 것은 좋습니다.</li>
				</ul>
			</div>
		</div>
		</c:if>
		<c:if test="${mVo.shape == 'Circle'}">
		<div id="result">

			<h1>체형 측정 결과</h1>

			<div class="result above" id="result_above">
				<div class="shape img"><img src="img/female_body_shape_round.jpg"></div>
				<div class="shape name">
					<h2>둥근형</h2>
					<button type="button" onclick="location.href=''">추천상품 보러가기</button>
				</div>
			</div>

			<div class="shape describe" id="result_below">

				<h4>분석</h4>
				<ol>
					<li>둥글고 넓은 어깨 라인, 단조로운 하체. </li>
					<li>팔다리로 시선을 분산시키기!</li>
				</ol>

				<h4>
					<span>Tip!</span> 복부를 슬림하게!
				</h4>
				<ul style="list-style-type: disc;">
					<li>복부를 잘 감싸주며 엉덩이 쪽에 플레어 라인이 잡힌 셔츠가 좋습니다.</li>
					<li>기장이 짧거나 타이트한 핏의 상의는 피합니다.</li>
				</ul>

				<h4>
					<span>Tip!</span> 팔과 다리로 시선을 분산시키기!
				</h4>
				<ul style="list-style-type: disc;">
					<li>폭이 넓은 바지는 균형잡힌 실루엣을 만들어줍니다.</li>
					<li>어깨에 패드가 있거나 소매에 디테일이 많은 상의가 좋습니다.</li>
				</ul>
			</div>
		</div>
		</c:if>
		<c:if test="${mVo.shape == 'Hourglass'}">
		<div id="result">

			<h1>체형 측정 결과</h1>

			<div class="result above" id="result_above">
				<div class="shape img"><img src="img/female_body_shape_hourglass.jpg"></div>
				<div class="shape name">
					<h2>모래시계형</h2>
					<button type="button" onclick="location.href=''">추천상품 보러가기</button>
				</div>
			</div>

			<div class="shape describe" id="result_below">

				<h4>분석</h4>
				<ol>
					<li>상체와 하체의 균형잡힌 형태.</li>
					<li>자연스러운 실루엣의 의상이 좋아요!</li>
				</ol>

				<h4>
					<span>Tip!</span> 자연스러운 균형을 유지하기!
				</h4>
				<ul style="list-style-type: disc;">
					<li>상의에 장식이나 디테일이 있는 경우 하의도 볼륨을 주면 좋습니다.</li>
					<li>적당히 핏 되는 의상이 잘 어울립니다.</li>
				</ul>

				<h4>
					<span>Tip!</span> 장점을 보여주기!
				</h4>
				<ul style="list-style-type: disc;">
					<li>하이웨스트 바지는 장점을 강조하고 상하체 균형을 유지시켜 좋습니다. </li>
					<li>뻣뻣한 원단이나 너무 직선형의 의상은 피합니다.</li>
				</ul>
			</div>
		</div>
		</c:if>
	</div>



	<%@ include file="../common/footer.jsp"%>
</body>

</html>