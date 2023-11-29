<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page import="java.util.*"%>
<%@ page import="com.human.unicorn.dto.MemberDTO"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>index</title>
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<!-- font -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
/* div { border: 1px solid orange; } */

/* common */
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

/* =========================
  botton tabs
  ========================= */
.sectionbody .nav-link {
	width: 278px;
	text-align: center;
}

.returninfo {
	list-style: disc;
}

.table.table td {
	text-align: left;
	font-size: 13px;
}

/* =========================
  review tabs
  ========================= */
.table.table td {
	text-align: left;
	font-size: 13px;
}

.reviewcontainer {
	display: flex;
}

.reviewbutton {
	text-align: right;
	justify-content: flex-end;
	margin-right: 10px;
	margin-bottom: 50px;
}

.reviewcontainer .content-container {
	display: flex;
	flex-wrap: wrap;
	width: 750px;
	font-size: 13px;
}

.reviewcontainer .score {
	width: 10%;
	height: 30px;
	padding-left: 5px;
}

.reviewcontainer .scorevalue {
	width: 90%;
	height: 30px;
	font-weight: 1000;
	font-size: 14px;
	padding-left: 5px;
}

.reviewcontainer .id, .date, .report {
	height: 30px;
	margin-right: 10px;
}

.reviewcontainer .reviewcontent {
	width: 100%;
	height: 100px;
	padding-left: 5px;
	margin-top: 10px;
}

.reviewcontainer .id, .date, .report, .product, .productname,
	.productsize, .productcolor {
	color: #a0a0a0;
	padding-left: 5px;
}

.reviewcontainer .reviewcontent {
	overflow: hidden;
}

.reviewcontainer .reviewphoto {
	display: none;
}

.reviewcontainer .recommend {
	width: 15%;
	text-align: center;
	display: flex;
	justify-content: center;
	align-items: center;
}

.recommend .btn {
	border-radius: 10px;
}

.reviewcontainer .photo {
	width: 150px;
	text-align: center;
	display: flex;
	justify-content: center;
	align-items: center;
}

/* 툴팁 */
.custom-tooltip {
	border: 1px solid #d0ac88; -
	-bs-tooltip-bg: var(- -bs-white); -
	-bs-tooltip-color: var(- -bs-black);
}

/* q&a board css */
th {
	height: 50px;
	background-color: #d8c69c;
	text-align: center;
}

td {
	text-align: center;
	border-bottom: 1px solid #d8c69c;
	padding: 5px;
	font-size: 13px;
}

/* 페이지 css*/
.pageWrap {
	width: 100%;
	margin-top: 50px;
	display: flex;
	justify-content: center;
}

.page_button {
	border: 1px solid #a0a0a0;
	width: 35px;
	text-align: center;
	margin-right: 5px;
	margin-left: 5px;
	padding: 3px 0 3px 0;
}

.page_sidebutton {
	width: 35px;
	text-align: center;
}

.page_button:hover {
	cursor: pointer;
}

.page_sidebutton:hover {
	cursor: pointer;
}

.writeWrap {
	margin-top: 10px;
}

.write_QnA {
	width: 100px;
	background-color: #d0ac88;
	padding: 5px;
	text-align: center;
	float: right;
	color: white;
}

/* =========================
    제품 상세 이미지
  ========================= */
/*이미지 가격 박스 */
.Product-detail {
	display: flex;
}

.bigbox {
	display: flex;
	justify-content: center;
	margin-bottom: 10%;
}

.box2 {
	margin-left: 10px;
	margin-right: 10px;;
	width: 40%;
	padding-left: 50px;
}

/*이미지 */
.big-img {
	width: 600px;
	height: 400px;
}

.small-img {
	width: 600px;
	display: flex;
	justify-content: center;
}

.small1, .small2, .small3 {
	width: 100px;
	height: 80px;
	margin: 2%;
}

.imgg img {
	width: 100%;
	height: 100%;
}

.slider-container {
	width: 600px;
	height: 400px;
	overflow: hidden;
	position: relative;
}

.slider {
	width: 600px;
	height: 400px;
	display: flex;
	transition: transform 0.4s ease-in-out;
}

.slider img {
	width: 100%;
	height: 100%;
}

.slider-button-pr, .slider-button-ne {
	position: absolute;
	bottom: 10px;
	background-color: #8d8b8b;
	color: #fff;
	padding: 5px 10px;
	cursor: pointer;
}

.slider-button-ne {
	left: 55%;
	transform: translateX(-55%);
}

.slider-button-pr {
	left: 45%;
	transform: translateX(-45%);
}

/* 작은 이미지 호버 효과*/
.small-image:hover {
	border: 3px solid #9b9b9b;
	border-radius: 3px;
}

.price {
	font-family: Arial;
	color: red;
	font-weight: 1000;
	font-size: 20px;
}

.form-select {
	width: 300px;
}

#quantity-select {
	width: 300px;
}

.quantity-selection button {
	font-weight: 500;
}

.top-button, .bottom-button {
	display: none;
	position: fixed;
	background-color: transparent;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	height: 50px;
	width: 50px;
	position: fixed;
	right: 10px;
	transform: translateY(-50%);
	padding: 10px;
	border-radius: 10px;
	margin-right: 10px;
}

.top-button {
	top: 83%;
}

.bottom-button {
	top: 90%;
}

.top-button img, .bottom-button img {
	width: 160%; /* 이미지가 버튼에 꽉 차게 표시 */
}
/* 상품문의 css */
.titleArea { 	text-align: center; padding-bottom: 50px; padding-top: 50px; border-bottom: 1px solid #919191; user-select: none; }

.link { border: 1px solid #919191; border-radius: 10px; font-size: 13px; padding: 5px; color: #919191; }

.inquiryBtn { background-color: #d0ac88; color: white; width: 120px; border: none; border-radius: 10px; font-size: 15px; height: 27px; }

.inquiryBtn:hover, .cencleBtn:hover, .writeBtn:hover, .closeBtn:hover, .Qtitle:hover { cursor: pointer; }

.inquiryWrap { padding: 15px; border-bottom: 1px solid #cacaca; user-select: none; }

.Qtitle { width: 100%; display: flex; flex-direction: row; padding-top: 10px; }

#Qicon { width: 10%; text-align: center; font-weight: bold; font-size: 15px; }

#inquiryTitle { width: 50%; }

#inquiryName, #inquiryDate { width: 15%; text-align: center; }

#answerStatus { width: 10%; text-align: center; }

.Qdetails {
	padding: 30px 70px 30px 130px; background-color: #e9e1d9; border-bottom: 1px solid rgb(207, 207, 207); }

.dContainer { display: none; }

.Awrap { display: flex; flex-direction: row; padding: 20px 70px 20px 100px; background-color: #e9e1d9; }

#inquiryAnswer { width: 85%; padding-left: 20px; }

#Aicon { font-weight: bold; }

#writeTitle { width: 400px; height: 30px; font-size: 16px; padding: 10px; outline: none; border: 1px solid #919191; }

#writeDetails { margin-top: 5px; width: 400px; height: 350px; font-size: 16px; padding: 10px; resize: none; outline: none; border: 1px solid #919191; }

.writeWrap { border: 1px solid black; background-color: white; width: 450px; display: none; height: 600px; padding: 15px; position: fixed; bottom: 120px; left: 400px; }

.closeBtnWrap { text-align: end; font-weight: bold; font-size: 20px; }

button { background-color: white; border: none; font-size: 20px; font-weight: bold; }

.buttonWrap { margin-top: 20px; text-align: center; }

.cencleBtn { padding: 10px; border: 1px solid #919191; color: #919191; background-color: white; width: 100px; }

.writeBtn { padding: 10px; border: 1px solid #d0ac88; color: white; background-color: #d0ac88; width: 100px; }

.info { font-size: 11px; color: #919191; }

</style>
</head>

<body class="main" style="margin-top: 0;">

					<%
			
					int productNo = Integer.parseInt(request.getParameter("productNo"));
					%>
	<button class="top-button" onclick="scrollToTop()">
		<img src="https://ifh.cc/g/1MrkVC.png" alt="To Top">
	</button>
	<button class="bottom-button" onclick="scrollToBottom()">
		<img src="https://ifh.cc/g/xSLhk2.png" alt="To Bottom">
	</button>

	<div>
		<button class="top-button" onclick="scrollToTop()">Top</button>
		<button class="bottom-button" onclick="scrollToBottom()">Bottom</button>
	</div>
	<!-- header end -->
	<!-- section -->
	
	<section id="section" class="sectionbody">
		<!-- 상품상세 -->
		<div class="bigbox">

			<!-- 상품이미지 -->
			<div class="box1">
				<div class="imgg">
					<div class="big-img">
						<img id="bigImage" src="${productDetails[0].mainImg1}" alt="">
					</div>

					<div class="small-img">
						<div class="small1 small-image"
							onmouseover="changeImage('bigImage', '${productDetails[0].mainImg1}')">
							<img src="${productDetails[0].mainImg1}" alt="">
						</div>

						<div class="small2 small-image"
							onmouseover="changeImage('bigImage', '${productDetails[0].mainImg2}')">
							<img src="${productDetails[0].mainImg2}" alt="">
						</div>
						<div class="small3 small-image"
							onmouseover="changeImage('bigImage', '${productDetails[0].mainImg3}')">
							<img src="${productDetails[0].mainImg3}" alt="">
						</div>

					</div>
				</div>

			</div>


			<!-- 상품옵션,가격 -->
			<form action="cartinfo" class="cartinfo2">
		<input type="hidden" value="<%= productNo%>" name="productNo"> 
				<div class="box2">
					<div class="Product-option">
						<div class="brand mb-3">
							<h3>Noop Noop</h3>
						</div>


						<div class="name mb-3">${productDetails[0].productName}</div>

						<div class="price mb-2">${productDetails[0].productPrice}</div>


						<select class="form-select" id="size-select" name="optionNo"
							onchange="updateTotalPrice()">
							<option value="${productOptions[0].optionNo}"
								data-price="${productOptions[0].price}" name="optionNo">${productOptions[0].productSize}</option>
							<option value="${productOptions[1].optionNo}"
								data-price="${productOptions[1].price}" name="optionNo">${productOptions[1].productSize}</option>
							<option value="${productOptions[2].optionNo}"
								data-price="${productOptions[2].price}" name="optionNo">${productOptions[2].productSize}</option>
							<option value="${productOptions[3].optionNo}"
								data-price="${productOptions[3].price}" name="optionNo">${productOptions[3].productSize}</option>
						</select>


					</div>

					<div class="quantity-selection" style="width: 450px;">

						<label for="quantity-select"> 수량을 입력해주세요 </label> <input
							type="number" id="quantity-select" class="form-control mt-2"
							value="1" min="1" onchange="updateTotalPrice()" name="cartCount">

						<h5 style="text-align: right; margin-right: 20px;">
							<br>총 결제금액: <span id="total-price"></span>
							<div style="font-size: 13px; margin-top: 10px; color: #939393">100만원
								이상부터 무료배송이 가능합니다.</div>
						</h5>
						<br>
						<button type="submit" class="btn btn-outline-success"
							style="width: 130px; height: 60px;" value=1 name="type">장바구니에
							담기</button>
						<button type="submit" class="btn btn-outline-success"
							style="width: 130px; height: 60px;" value=2 name="type">
							관심상품에 담기</button>
						<button type="submit" class="btn btn-outline-success"
							style="width: 150px; height: 60px;" value=3 name="type">구매</button>
					</div>
				</div>
			</form>
		</div>

		<section id="section" class="sectionbody">

			<!-- nav tabs 기본형태 -->
			<div class="container mt-3">
				<ul class="nav nav-tabs justify-content-between">
					<li class="nav-item"><a href="#productdetails"
						class="nav-link " data-bs-toggle="tab" id="productdetails-tab">상세정보</a></li>
					<li class="nav-item"><a href="#review" class="nav-link active"
						data-bs-toggle="tab" id="review-tab">리뷰</a></li>
					<li class="nav-item"><a href="#productqna" class="nav-link "
						data-bs-toggle="tab" id="qna-tab">Q&A</a></li>
					<li class="nav-item"><a href="#cancleinfo" class="nav-link "
						data-bs-toggle="tab" id="canclinfo-tab">반품/교환정보</a></li>
				</ul>
				<!-- Tab panes 상세정보-->
				<div class="tab-content">
					<div class="tab-pane container " id="productdetails">
					<div class="titleArea">
						<h3 class="title mt-3">상세정보</h3>
						<hr>

						<div class="infoimg">
							<div>
								<img src="${productImages[0].img}" alt="" style="width: 100%;">
							</div>
							<br>
							<div>
								<img src="${productImages[1].img}" alt="" style="width: 100%;">

							</div>
							<br>
							<div>
								<img src="${productImages[2].img}" alt="" style="width: 100%;">
							</div>
							<br>

						</div>

					</div>
					<table width="100%">
						<colgroup>
							<col width="20%">
							<col width="20%">
							<col width="25%">
							<col width="40%">
						</colgroup>
						<tr>
							<th>브랜드</th>
							<th>noopnoop</th>
							<th>상품 이름</th>
							<th>${productDetails[0].productName}</th>

						</tr>
						<tr>
							<td>제조사</td>
							<td>${productDetails[0].company}</td>
							<td>안전관리등급</td>
							<td>1등급</td>

						</tr>
						<tr>
							<td>원재료</td>
							<td>${productDetails[0].fabric}</td>
							<td>사용대상</td>
							<td>전연령</td>
						</tr>
						<tr>
							<td>구성품</td>
							<td>상세페이지참조</td>
							<td>배송/설치비용</td>
							<td>지역별 상이</td>
						</tr>
						<tr>
							<td>제조일자</td>
							<td>2022년 이후</td>
							<td>품질보증기준</td>
							<td>제품 이상 시 공정거래위원회 고시 <br>소비자분쟁해결기준에 의거 보상합니다.
							</td>
						</tr>
					</table>

				</div>
					<!-- =========================
          review tabs 
          ========================= -->
					<div class="tab-pane container active" id="review">

						<div class="sectioncontainer">
							<div class="titleArea">
								<h3 class="title mt-3">Review</h3>
								<hr>
							</div>
							<div class="reviewarea">


								<c:forEach var="review" items="${data.list }">

									<div class="reviewcontainer mt-3">
										<div class="profile">
											<img src="https://ifh.cc/g/9QpqRb.jpg" width="30px"
												style="opacity: 0.4;" alt="">
										</div>
										<div class="content-container">
											<div class="id">${review.id }</div>
											<div class="date">${review.reviewdate }</div>
											<div class="score"></div>
											<div class="scorevalue">
												<c:forEach var="i" begin="1" end="${review.reviewrates}">
													<span style="color: orange;">&#9733;</span>
												</c:forEach>
												&nbsp; ${review.reviewrates }
											</div>
											<div class="content-container">
												<div class="productname">상품명 :</div>
												<div class="product me-1">${review.productname }</div>
												<div>/</div>
												<!-- 			                  <div class="productsize me-1">  </div> -->


												<div class="reviewcontent">${review.reviewdetails }</div>
											</div>
											<div class="reviewphoto">photozone</div>
										</div>

										<div class="photo">
											<img src=${review.reviewimg }>
										</div>

										<div class="recommend">
											<button type="button" class="btn btn-outline-warning"
												data-bs-toggle="tooltip" data-bs-placement="top"
												data-bs-custom-class="custom-tooltip"
												data-bs-title="리뷰가 도움이 되셨나요?">
												<img src="https://ifh.cc/g/zPXGj2.png" width="15px;" alt="">
												<span class="likecount" style="color: #000;">0</span>
											</button>
											<div class="deletearea">
												<button class="btn btn-outline-secondary">삭제</button>
											</div>
										</div>
									</div>
									<div class="buttongroup">
										<button type="button" class="btn btn-outline-info btn-sm"
											id="modifyreview">수정</button>
										<form id="deletereview" action="deleteReview"
											style="display: inline;">
											<input type="submit" class="btn btn-outline-info btn-sm"
												value="삭제"> <input type="hidden" name="reviewno"
												value="${review.reviewno}">
										</form>
									</div>
									<hr>
								</c:forEach>

								<!-- 리뷰 1개 끝 -->
								<!-- 리뷰 1개 클래스로 구역 설정-->
								<div class="container mt-2">
									<ul class="pagination justify-content-center">
										<%
										// model에 넣은 "data" 값 가져오기
										Map data = (Map) request.getAttribute("data");
										int total = (Integer) data.get("total");

										int pageNum = (Integer) data.get("pageNum");
										//한 번에 보여줄 글의 개수 
										int countPerPage = (Integer) data.get("countPerPage");

										//한 번에 보여줄 페이지의 개수
										int groupCount = 2;

										//전체 페이지의 수
										// (올림 처리) (전체 글의 수 / 한번에 보여줄 글의 수)
										int totalPaging = (int) Math.ceil((double) total / countPerPage);
										// 12 / 5 >> 2.4 >> ceil결과 3.0 >> int 변수에 저장 >> 3

										//현재 페이지가 몇번째 그룹에 있는지
										int position = (int) Math.ceil((double) pageNum / groupCount);

										// 현재 그룹에 첫번째 페이지 번호
										int beginPaging = ((position - 1) * groupCount) + 1;
										int endPaging = position * groupCount;

										if (endPaging > totalPaging) {
											endPaging = totalPaging;
										}

										if (beginPaging == 1) {
											out.println("<li class='page-item disabled'><a href='review?pageNum=" + (beginPaging - 1)
											+ "' class='page-link'>[ 이전 ]</a></li>");
										} else {
											out.println("<li class='page-item active'><a href='review?pageNum=" + (beginPaging - 1)
											+ "' class='page-link'>[ 이전 ]</a></li>");
										}
										%>

										<%
										for (int i = beginPaging; i <= endPaging; i++) {

											if (i == pageNum) {
												out.println("<li class='page-item'><a href='review?pageNum=" + i + "' ' class='page-link'><strong>[ " + i
												+ " ]</strong></a></li>");
											} else {
												out.println("<li class='page-item'><a href='review?pageNum=" + i + "'class='page-link'>[ " + i + " ]</a></li>");
											}
										}

										if (endPaging == totalPaging) {
											out.println("<li class='page-item disabled'><a href='review?pageNum=" + (endPaging + 1)
											+ "' class='page-link'>[ 다음 ]</a></li>");
										} else {
											out.println("<li class='page-item active'><a href='review?pageNum=" + (endPaging + 1)
											+ "' class='page-link'>[ 다음 ]</a></li>");
										}
										%>
									</ul>
								</div>


							</div>
						</div>
					</div>



					<!-- =========================
          review tabs 끝
          ========================= -->

					<%
			
						MemberDTO userList = (MemberDTO) session.getAttribute("userList");
				
					%>
					<div class="tab-pane container " id="productqna">

						<div class="sectioncontainer">
							<div class="titleArea">
								<h3 class="title mt-3">상품문의</h3>
								<p>상품에 관한 문의만 답변 가능하며 답변 완료까지 1~2일이 소요될 수 있습니다.</p>
								<a href="FAQ" class="link">자주묻는질문 바로가기</a> <input type="button"
									value="상품문의하기" class="inquiryBtn" id="inquiryBtn">


							</div>

							<input type="hidden" value="<%= userList.getUserno()%>" id="userNo" name="userNo"> 
							<input type="hidden" value="<%= productNo%>" id="productNo" name="productNo"> 


							<c:forEach var="inquiry" items="${inquiry }" varStatus="status">

								<div class="inquiryWrap" id="inquiryWrap${status.index }">
									<div class="Qtitle" id="Qtitle${status.index }">
										<div id="Qicon">Q</div>
										<div id="inquiryTitle">${inquiry.inquiryTitle }</div>
										<div id="inquiryName">${inquiry.getId()}</div>
										<div id="inquiryDate">${inquiry.inquiryDate }</div>
										<div id="answerStatus">
											<c:choose>
												<c:when test="${not empty inquiry.answerDetails }">
													<p style="font-weight: bold">답변완료</p>
												</c:when>
												<c:otherwise>
													<p>답변대기</p>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
									<div class="dContainer" id="dContainer${status.index }">
										<div class="Qdetails">
											<div id="inquiryDetails">${inquiry.inquiryDetails }</div>
										</div>

										<c:if test="${not empty inquiry.answerDetails }">
											<div class="Awrap">
												<div id="Aicon">A</div>
												<div id="inquiryAnswer">${inquiry.answerDetails }</div>
												<div id="answerDate">${inquiry.answerDate }</div>
											</div>
										</c:if>

									</div>
								</div>

							</c:forEach>

							<div class="writeWrap" id="writeWrap">

								<div class="closeBtnWrap">
									<button class="closeBtn">X</button>
								</div>
								<input type="text" placeholder="제목을 입력해주세요" id="writeTitle">
								<textarea id="writeDetails"> 문의내용을 입력해주세요</textarea>
								<p class="info">문의내역 및 답변은 마이페이지 > 상품문의에서 조회 가능합니다.</p>
								<p class="info">근거 없는 비방 목적의 글 또는 개인 정보 노출된 글의 경우 통보 없이 삭제될
									수 있습니다.</p>
								<p class="info">상품 관련없는 문의는 자주묻는질문을 이용해주세요</p>

								<div class="buttonWrap">
									<input type="button" class="cencleBtn" value="취소"> <input
										type="button" class="writeBtn" value="등록">
								</div>
							</div>
						</div>
					</div>


					<div class="pageWrap"></div>
					<!-- 반품 교환정보 tab -->
					<div class="tab-pane container " id="cancleinfo">
						<h3 class="title mt-3">반품/교환정보</h3>
						<hr>
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<td colspan="4" style="text-align: center;">
											<p style="font-weight: 1000; font-size: 20px;">반품 / 교환 안내</p>
										</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="background-color: #d8c69c; text-align: center;">판매자
											지정택배사</td>
										<td colspan="3">한진 택배</td>
									</tr>
									<tr>
										<td style="background-color: #d8c69c; text-align: center;">반품배송비</td>
										<td>편도 100,000원(최초 배송비 무료인 경우 200,000원 부과)</td>
										<td style="background-color: #d8c69c; text-align: center;">교환배송비</td>
										<td>200,000원</td>
									</tr>
									<tr>
										<td rowspan="2"
											style="background-color: #d8c69c; text-align: center; vertical-align: middle;">반품교환
											사유에<br> 따른 요청 가능 기간
										</td>
										<td colspan="3">구매자 단순 변심은 상품 수령후 7일 이내(구매자 반품배송비 부담)</td>
									</tr>
									<tr>
										<td colspan="3">표시/광고와 상이, 계약 내용과 다르게 이행된 경우 상품 수령 후 3개월
											이내 혹은 표시/광고와 다른 사실을 안 날로부터 30일 이내 둘 중 하나 경과 시 반품/교환 불가</td>
									</tr>
									<tr>
										<td
											style="background-color: #d8c69c; text-align: center; vertical-align: middle;">반품/교환
											불가능 사유</td>
										<td colspan="3">
											<ul class="returninfo" style="margin-left: -30px;">
												<li>1. 반품 요청 기간이 지난 경우</li>
												<li>2. 구매자의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우</li>
												<li>3. 구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우</li>
												<li>4. 시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우</li>
												<li>5. 고객의 요청사항에 맞춰 제작에 들어가는 맞춤제작 상품의 경우</li>
												<li>6. 복제가 가능한 상품 등의 포장을 훼손한 경우</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						</div>


					</div>
				</div>
			</div>

</section>


			<script>
			
			
			let key = "${param.key}";
			console.log(key);
			if(key === "productdetails"){
				
				$("#productdetails-tab").addClass("active");
				$("#review-tab").removeClass("active");
				$("#qna-tab").removeClass("active");
				$("#cancleinfo-tab").removeClass("active");
				
				$("#productdetails").addClass("show active");
				$("#review").removeClass("show active");
				$("#qna").removeClass("show active");
				$("#cancleinfo").removeClass("show active");
				
			}else if(key === "review"){
				
				$("#productdetails-tab").removeClass("active");
				$("#review-tab").addClass("active");
				$("#qna-tab").removeClass("active");
				$("#cancleinfo-tab").removeClass("active");
				
				$("#productdetails").removeClass("show active");
				$("#review").addClass("show active");
				$("#qna").removeClass("show active");
				$("#cancleinfo").removeClass("show active");
				
			}else if(key === "qna"){
				
				$("#productdetails-tab").removeClass("active");
				$("#review-tab").removeClass("active");
				$("#qna-tab").addClass("active");
				$("#cancleinfo-tab").removeClass("active");
				
				$("#productdetails").removeClass("show active");
				$("#review").removeClass("show active");
				$("#qna").addClass("show active");
				$("#cancleinfo").removeClass("show active");
				
			}else if(key === "cancleinfo"){
				
				$("#productdetails-tab").removeClass("active");
				$("#review-tab").removeClass("active");
				$("#qna-tab").removeClass("active");
				$("#cancleinfo-tab").addClass("active");
				
				$("#productdetails").removeClass("show active");
				$("#review").removeClass("show active");
				$("#qna").removeClass("show active");
				$("#cancleinfo").addClass("show active");
				
			}


			   // 리뷰 좋아요 스크립트
			   var tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
			   var tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));
				
			   // 리뷰 쓰기 이동
//			    var reviewList = ${data.reviewList}
			   
			   
			   document.getElementById("modifyreview").addEventListener("click", function(){
				   		$.ajax({
				   			url : "writereview",
				   			type : "get",
//			 	   			data : { reviewrates: reviewList.reviewrates, reviewdetails : reviewList.reviewdetails},
				   			success:function(data) {
				   				$(".reviewarea").html(data);
				  				},
				  				error:function() {
				  					console.log("error");
				  				}
				   		});
				   });
			   		

			   //위에 이미지 호버 스크립트 /
			   function changeImage(targetId, newImageUrl) {
			      var targetImage = document.getElementById(targetId);
			      targetImage.src = newImageUrl;
			   }
			   
			   
				document.querySelector("#deletereview").addEventListener('submit', function (event) {
			        event.preventDefault(); 
			        if (confirm('정말로 삭제하시겠습니까?')) {
			            this.submit();
			        } else {
			        	window.location.href='review';
			        }
			    });

				// inquiry 스크립트 ---------------------------------
				  let length = document.querySelectorAll(".inquiryWrap").length;
			    for (let i = 0; i < length; i++) {
			        let Qtitle = document.getElementById("Qtitle" + i);
			        console.log("Qtitle" + document.getElementById("Qtitle0"));
			        console.log(Qtitle);
			        Qtitle.addEventListener("click", function () {
			            let dContainer = document.getElementById("dContainer" + i);
			            if (dContainer.style.display == 'none') {
			                dContainer.style.display = 'block';
			            } else {
			                dContainer.style.display = 'none';
			            }
			        })
			    }

			    // 상품문의 글쓰는 화면 띄우기
			    document.querySelector(".inquiryBtn").addEventListener("click", function () {
			        let writeWrap = document.getElementById("writeWrap");
			        writeWrap.style.display = 'block';
			        
			        let inquiryContainer = document.getElementById("inquiryContainer");


			    })

			    // x 버튼
			    document.querySelector(".closeBtn").addEventListener("click", function () {
			        let writeWrap = document.getElementById("writeWrap");
			        writeWrap.style.display = 'none';

			        
			    })

			    // 취소버튼
			    document.querySelector(".cencleBtn").addEventListener("click", function () {
			        if (confirm("취소하시겠습니까?")) {
			            let writeWrap = document.getElementById("writeWrap");
			            writeWrap.style.display = 'none';
			        }

			    })
					 
			      let writeTitle = document.getElementById("writeTitle");
			     	let writeDetails = document.getElementById("writeDetails");
			      console.log("writeTitle" + writeTitle.value)
			    // 등록버튼
			    document.querySelector(".writeBtn").addEventListener("click", function () {
			        if (confirm("등록하시겠습니까?")) {
			      	 
			      	  if(writeTitle.value == "" || writeTitle.value == null){
								
			      		  alert("제목은 필수입니다.");
			      		  
			      	  } else {
			      		  alert("상품문의가 등록되었습니다.");
			      		  let writeWrap = document.getElementById("writeWrap");
			                writeWrap.style.display = 'none';
			                      
			             	  let userNo = document.getElementById("userNo").value;
			                let productNo = document.getElementById("productNo").value;
			                console.log(writeTitle)
			                console.log(writeDetails)
			                  	
			                 submitInquiry(writeTitle.value,writeDetails.value,userNo,productNo); 
			                 writeTitle.value = "";
			                 writeDetails.value="문의내용을 입력해주세요";
			      	  }
			      	  
			            
			        }

			    })
			    
			      function submitInquiry(writeTitle,writeDetails,userNo,productNo) {
				    	  $.ajax({
				    		  type : "POST",
				    		  url : "insertInquiry",
				    		  data : {
				    			  inquiryTitle : writeTitle,
				    			  inquiryDetails : writeDetails,
				    			  userNo : userNo,
				    			  productNo : productNo
				    		  },
				    		  error : function(error){
				    			  console.log("error");
				    		  },
				    		  success: function(data) {
				    			  console.log("success");
				    			  location.reload();
				    		  }
				    	  });
				      }
				      
			
				//구매페이지,장바구니 페이지에 연결해야함

				var buyButton = document.getElementById("buy-button");
				var cartButton = document.getElementById("cart-button");

				var sizeSelect = document.getElementById("size-select");
				var quantitySelect = document.getElementById("quantity-select");
				var totalPriceSpan = document.getElementById("total-price");

				// info.productPrice로 pricePerUnit 변수 설정
				var pricePerUnit = '${info.productPrice}'.replace(/,/g, ''); // ,를 제거하여 문자열을 숫자로 변환
				var salePrice = '${info.salePrice}';

				function updateTotalPrice() {
					var sizeSelect = document.getElementById("size-select");
					var selectedOption = sizeSelect.options[sizeSelect.selectedIndex];

					// 선택된 옵션의 가격 정보
					var selectedPrice = selectedOption.dataset.price;

					// 수량 가져오기
					var selectedQuantity = document
							.getElementById("quantity-select").value;

					// 총 결제금액 계산
					var totalPrice = selectedQuantity * selectedPrice;

					// totalPrice가 1,000,000 미만이면 5,000을 추가
					if (totalPrice < 1000000) {
						totalPrice += 50000;
					}

					// 총 결제 금액을 원화 형식으로 표시
					var formattedTotalPrice = totalPrice.toLocaleString() + '원';

					// 총 결제금액 업데이트
					document.getElementById("total-price").textContent = formattedTotalPrice;
				}

				// 초기 총 결제금액 설정
				updateTotalPrice();

				// 구매 버튼 클릭 시 동작
				// buyButton.addEventListener("click", () => {
				//   var selectedSize = sizeSelect.value;
				//   var selectedQuantity = quantitySelect.value;
				//   // 선택된 사이즈와 수량을 이용해 구매 동작을 수행하세요.
				// });

				// 장바구니 버튼 클릭 시 동작
				// cartButton.addEventListener("click", () => {
				//   var selectedSize = sizeSelect.value;
				//   var selectedQuantity = quantitySelect.value;
				//   // 선택된 사이즈와 수량을 이용해 장바구니에 담기 동작을 수행하세요.
				// });

				window.onscroll = function() {
					scrollFunction();
				};

				function scrollFunction() {
					if (document.body.scrollTop > 1
							|| document.documentElement.scrollTop > 1) {
						document.querySelector(".top-button").style.display = "block";
					} else {
						document.querySelector(".top-button").style.display = "block";
					}

					if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
						document.querySelector(".bottom-button").style.display = "block";
					} else {
						document.querySelector(".bottom-button").style.display = "block";
					}
				}

				function scrollToTop() {
					document.body.scrollTop = 0;
					document.documentElement.scrollTop = 0;
				}

				function scrollToBottom() {
					window.scrollTo(0, document.body.scrollHeight);
				}
			</script>
</body>

</html>