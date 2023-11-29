<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/*왼쪽 메뉴 -----------------------------------------------------------------*/
body {
	font-family: pretendard;
}

ul, ol, dl, li {
	list-style: none;
}

a {
	text-decoration: none;
	color: none;
	color: #000;
}

/* common end */
a:hover, a:active, a:focus {
	text-decoration: none;
}

@font-face {
	font-family: 'ImcreSoojin';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

#container {
	/* border: 1px solid blue; */
	margin: 50px auto;
}

.mainbar2 {
	/* border: 1px solid red; */
	width: 1200px;
	display: flex;
	justify-content: row;
	/* margin-top: 50px; */
	margin: auto;
}

.menubar {
	width: 250px;
}

.menubar_title {
	font-weight: bold;
	margin-top: 130px;
	margin-bottom: 10px;
}

.menubar_item {
	margin-bottom: 10px;
}

/*-----------------------------------------------------------------*/
.titleArea {
	display: flex;
	flex-direction: row;
	margin-bottom: 40px;
}

.titleHeader1 {
	width: 600px;
	border-right: 1px solid rgb(201, 201, 201);
}

.titleHeader2 {
	width: 240px;
	text-align: center;
}

.faqWrap {
	width: 840px;
	margin-bottom: 2px;
}

.faq_Q {
	border: 1px solid rgb(184, 184, 184);
	padding: 12px;
	padding-top: 15px;
	width: 100%;
	display: flex;
	flex-direction: row;
}

.faq_Q:hover {
	cursor: pointer;
}

.faq_A {
	background-color: rgb(233, 233, 233);
	padding: 10px;
	display: none;
}

.qIcon, .aIcon {
	font-size: 18px;
	width: 5%;
}

.aIcon {
	font-weight: bold;
}

.moreBtn {
	width: 50px;
	border: none;
	background-color: white;
	font-size: 20px;
}

.qDetails {
	width: 90%;
	font-size: 17px;
}
</style>
</head>
<body>
	<!-- section -->
	<section id="section" class="sectionbody">

		<div id="container">

			<div class="mainbar2">
				<div class="menubar">
					<ul>
						<li class="menubar_title">고객지원</li>
						<li class="menubar_item"><a href="noticeList">공지사항</a></li>
						<li class="menubar_item"><a href="FAQ">FAQ</a></li>
					</ul>
				</div>

				<div class="sectionContainer">


					<div class="titleArea">
						<div class="titleHeader1">
							<h2>FAQ</h2>
							<p>간단한 문의는 자주 묻는 질문에서 찾는 것이 문의 전화보다 더 빠를 수 있습니다.</p>
						</div>
						<div class="titleHeader2">
							<p>원하는 정보를 얻지 못하셨나요?</p>
							<h3>00-000-0000</h3>
						</div>
					</div>

					<div class="faqWrap">
						<div class="faq_Q" id="q1">
							<div class="qIcon">Q</div>
							<div class="qDetails">매트리스를 하루밖에 사용 안 했는데 왜 교환이 안되나요?</div>
							<input type="button" value="+" class="moreBtn" id="moreBtn1">
						</div>
						<div class="faq_A" id="a1">
							<span class="aIcon">A</span> 눕눕침대는 한 번 포장이 뜯기고 사용된 제품은 회사로 들어오지
							못하게 되어있습니다. 그 이유는 매트리스는 살이 직접 닿으며 사용하는 제품이므로 위생과도 직접적으로 관련이 있으며,
							품질에 대해서 고객님께 신뢰를 얻기 위한 노력 중의 하나로 이미 사용된 제품을 재활용하지 않는 다는 것을 보여드리기
							위함입니다. 고객님께서 불편하실 것을 알지만 회사에서 엄격하게 금지하고 있는 부분이므로 고객님의 넓은 아량으로
							이해해주시기 바랍니다.
						</div>
					</div>

					<div class="faqWrap">
						<div class="faq_Q" id="q2">
							<span class="qIcon">Q</span> <span class="qDetails">회원탈퇴는
								어떻게 하나요?</span> <input type="button" value="+" class="moreBtn"
								id="moreBtn2">
						</div>
						<div class="faq_A" id="a2">
							<span class="aIcon">A</span> 회원탈퇴는 로그인 후 상단의 마이페이지 - '탈퇴하기'를
							클릭하시면 됩니다. 회원 탈퇴와 함게 고객님의 정보는 재생될 수 없는 방법으로 완전 삭제되므로 안심하실 수 있습니다.
						</div>
					</div>

					<div class="faqWrap">
						<div class="faq_Q" id="q3">
							<span class="qIcon">Q</span> <span class="qDetails">마음에 안
								들면 바꿔도 되나요?</span> <input type="button" value="+" class="moreBtn"
								id="moreBtn3">
						</div>
						<div class="faq_A" id="a3">
							<span class="aIcon">A</span> 제품을 개봉하시지 않는(미개봉) 상품에 대해서는 교환 및 반품이
							가능하십니다.
						</div>
					</div>

					<div class="faqWrap">
						<div class="faq_Q" id="q4">
							<span class="qIcon">Q</span> <span class="qDetails">침대 구입
								후 A/S를 받으려고 하는데요?</span> <input type="button" value="+" class="moreBtn"
								id="moreBtn4">
						</div>
						<div class="faq_A" id="a4">
							<span class="aIcon">A</span> 침대구입 후 A/S를 받으시고자 한다면 눕눕침대의 A/S 센터에
							연락 바랍니다.
						</div>
					</div>

					<div class="faqWrap">
						<div class="faq_Q" id="q5">
							<span class="qIcon">Q</span> <span class="qDetails">매트릭스를
								세탁하고싶어요</span> <input type="button" value="+" class="moreBtn"
								id="moreBtn5">
						</div>
						<div class="faq_A" id="a5">
							<span class="aIcon">A</span> 최상단의 천만 약간 오염됐을 경우에는 솔에 세제를 묻혀서
							문질러줌으로써 간단하게 세탁할 수 있습니다. 가장 일반적인 세탁법은 매트리스 청소 대행 업체에 연락을 하여 세탁하는
							방법입니다.
						</div>
					</div>

				</div>

			</div>
		</div>

	</section>
	<!-- section end -->
	  <script>
        let length = document.querySelectorAll(".faqWrap").length;

        for(let i = 1; i <= length; i++) {
            document.getElementById("q" + i).addEventListener("click", function(){
               let a = document.getElementById("a" + i);
               if(a.style.display == "" || a.style.display == "none") {
                    a.style.display = 'block';
                    document.getElementById("moreBtn" + i).value = "-";
               } else {
                    a.style.display = 'none';
                    document.getElementById("moreBtn" + i).value = "+";
               }
            })
        }
    </script>
</body>
</html>