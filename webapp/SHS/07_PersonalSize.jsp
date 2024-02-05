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
<title>perfit | 체형검사</title>

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type="text/javascript" src="../js/★☆자바스크립트파일명★☆.js"></script>
<link rel="stylesheet" type="text/css" href="../css/personalSize.css">


</head>

<body class="home">
	<%@ include file="../common/header.jsp"%>




	<div id="personal_size_con">
		<div id="guide">
			<h1>측정 가이드</h1>
			<ul>
				<li><img src="../img/어깨너비.jpg" alt="어깨너비">
					<h4>어깨너비</h4>
					<p>
						양쪽 어깨 끝 뼈의 간격을 측정해 주세요. <br> ※ 뒤 목점을 지나 곡선으로 측정합니다.
					</p></li>
				<li><img src="../img/상동.jpg" alt="가슴둘레">
					<h4>가슴둘레</h4>
					<p>
						양쪽 겨드랑이를 통과하여 가슴의 둘레를 측정해 주세요.<br> ※ 줄자의 안쪽으로 손가락을 넣어 여유 있게
						측정해 주시기 바랍니다.
					</p></li>
				<li><img src="../img/팔길이.jpg" alt="팔길이">
					<h4>팔길이</h4>
					<p>어깨끝점에서 손목까지의 길이를 측정해 주세요.</p></li>
				<li><img src="../img/팔통.jpg" alt="팔둘레">
					<h4>팔둘레</h4>
					<p>어깨와 팔꿈치 사이의 가장 두꺼운 부분을 측정해 주세요.</p></li>
				<li><img src="../img/허리.jpg" alt="허리둘레">
					<h4>허리둘레</h4>
					<p>허리의 가장 가는 부분의 둘레를 측정해 주세요.</p></li>
				<li><img src="../img/허벅지.jpg" alt="허벅지 둘레">
					<h4>허벅지</h4>
					<p>사타구니와 무릎 사이에서 가장 두꺼운 부분의 둘레를 측정해 주세요.</p></li>
				<li><img src="../img/힙둘레.jpg" alt="엉덩이">
					<h4>엉덩이둘레</h4>
					<p>엉덩이의 가장 튀어나온 부분의 둘레를 측정해 주세요.</p></li>
				<li><img src="../img/다리길이.jpg" alt="다리길이">
					<h4>다리길이(안심길이)</h4>
					<p>사타구니에서 복숭아뼈 중심까지의 길이를 측정해 주세요.</p></li>
			</ul>
		</div>

		<form id="personal_size">

			<table>
				<tr>
					<td colspan="3">
						<div class="title_wrap">
							<h1>너의 사이즈는</h1>
						</div>
					</td>
				</tr>
				<tr>
					<td>키</td>
					<td><input type="text" name="height"></td>
					<td>cm</td>
				</tr>
				<tr>
					<td>몸무게</td>
					<td><input type="text" name="weight"></td>
					<td>cm</td>
				</tr>
				<tr>
					<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>어깨 너비</td>
					<td><input type="text" name="shoulder"></td>
					<td>cm</td>
				</tr>
				<tr>
					<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>가슴 둘레</td>
					<td><input type="text" name="chest"></td>
					<td>cm</td>
				</tr>
				<tr>
					<td>팔 길이</td>
					<td><input type="text" name="armLength"></td>
					<td>cm</td>
				</tr>
				<tr>
					<td>팔 둘레</td>
					<td><input type="text" name="armSize"></td>
					<td>cm</td>
				</tr>
				<tr>
					<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>허리 둘레</td>
					<td><input type="text" name="waistSize"></td>
					<td>cm</td>
				</tr>
				<tr>
					<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>허벅지
						둘레</td>
					<td><input type="text" name="thighSize"></td>
					<td>cm</td>
				</tr>
				<tr>
					<td><sup style="color: rgb(210, 125, 124)"><b>＊</b></sup>엉덩이
						둘레</td>
					<td><input type="text" name="HipSize"></td>
					<td>cm</td>
				</tr>
				<tr>
					<td>다리 길이</td>
					<td><input type="text" name="legLength"></td>
					<td>cm</td>
				</tr>
				<tr>
					<td colspan="3"
						style="color: rgb(210, 125, 124); font-size: 15px; text-align: left;">
						<b><sup>＊</sup>필수 입력 필드</b>
					</td>
				</tr>
				<tr>

					<td colspan="3">
						<button type="button" id="temporary">임시</button> &nbsp;&nbsp; <input
						type="submit" value="결과 보기"> &nbsp;&nbsp; <input
						type="reset" value="초기화">
					</td>
				</tr>

			</table>
		</form>
		<script>
            //getElemenyByClass --> 배열로 가져온다. 주의하자.
            $('button').bind('click', function () {
                var questionBox = document.getElementById("question");
                var aboveBox = document.getElementById("result_above");
                var describeBox = document.getElementById("result_below");
                questionBox.style.display = "none";
                aboveBox.style.display = "flex";
                describeBox.style.display = "block";
            });
    </script>
		<div id="result">

			<h1>체형 측정 결과</h1>
			<div id="question">
				<img src="../img/question.png">
			</div>
			<div class="result above" id="result_above">
				<div class="shape img">
					<!-- <img src="../img/역삼각.jpg"> -->
				</div>
				<div class="shape name">
					<h2>역삼각형 체형!</h2>
					<p>역 삼각형 체형은 넓은 어깨 및 / 또는 엉덩이로 좁아지는 가슴 이 특징이다. 넓은 어깨는 종종 몸 모양을
						운동 한 것 처럼 보이게 한다.</p>
				</div>
			</div>

			<div class="shape describe" id="result_below">

				<h4>분석</h4>
				<ol>
					<li>역삼각형 체형은 넓은 어깨와 큰 가슴으로 상체에 무게감이 있다.</li>
					<li>허리라인이 드러나지 않음</li>
					<li>넓은 어깨에 비해 엉덩이가 평평하고 직선적이다.</li>
					<li>스포티하고 운동적, 체격적인 이미지이다.</li>
					<li>이 형태의 목표는 넓은 어깨, 가슴 및 등을 좁은 하체와 균형을 이루어 균형 잡힌 실루엣을 만드는
						것입니다.</li>
					<li>허리에 곡선을 만들어 허리선을 확실히 드러내고, 힙과 하의는 곡선을 만들어 주는 의상을 초이스한다.</li>
				</ol>

				<h4>
					<span>Tip!</span> 어깨 라인을 확대하지 않기
				</h4>
				<ul style="list-style-type: disc;">
					<li>어깨와 다른 어깨 부분을 넓히는 넓은 목선을 피한다.</li>
					<li>목과 어깨 주위의 장식과 패턴을 피한다.<br> (만약, 실제 어깨점보다 어깨 장식의 위치나
						시작이 안쪽으로 들어갈 경우에는 긍정적인 효과를 볼 수 도 있다.)
					</li>
					<li>상체를 깨끗하고 깔끔하게 유지한다.</li>
				</ul>

				<h4>
					<span>Tip!</span> 허리는 오목! 엉덩이 주위에 커브 만들기
				</h4>
				<ul style="list-style-type: disc;">
					<li>엉덩이와 하의에 볼륨과 관심을 더해 어깨를 작게 만든다.</li>
					<li>엉덩이를 넓히기 위해 하체에 볼륨과 시선을 끄는 옷을 선택한다.</li>
					<li>상의 보다 밝은 색상을 입거나 세부 사항을 추가하여 다리에 시선이 오도록 한다.</li>
					<li>스키니와 타이트한 바지는 상의와 더욱 대비되게 만드므로 피하도록한다.</li>
				</ul>
			</div>
		</div>
	</div>




	<%@ include file="../common/footer.jsp"%>
</body>

</html>