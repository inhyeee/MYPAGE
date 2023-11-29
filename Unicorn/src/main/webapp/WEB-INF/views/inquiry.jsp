<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page import="java.util.*"%>

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
	/* 	text-align: center; */
	/* 	border-bottom: 1px solid #d8c69c; */
	padding: 5px;
	font-size: 13px;
}

/* 상품문의 css */
.titleArea {
	text-align: center;
	padding-bottom: 50px;
	padding-top: 50px;
	border-bottom: 1px solid #919191;
	user-select: none;
}

.link {
	border: 1px solid #919191;
	border-radius: 10px;
	font-size: 13px;
	padding: 5px;
	color: #919191;
}

.inquiryBtn {
	background-color: #d0ac88;
	color: white;
	width: 120px;
	border: none;
	border-radius: 10px;
	font-size: 15px;
	height: 27px;
}

.inquiryBtn:hover, .cencleBtn:hover, .writeBtn:hover, .closeBtn:hover,
	.Qtitle:hover {
	cursor: pointer;
}

.inquiryWrap {
	padding: 15px;
	border-bottom: 1px solid #cacaca;
	user-select: none;
}

.Qtitle {
	width: 100%;
	display: flex;
	flex-direction: row;
	padding-top: 10px;
}

#Qicon {
	width: 10%;
	text-align: center;
	font-weight: bold;
	font-size: 15px;
}

#inquiryTitle {
	width: 50%;
}

#inquiryName, #inquiryDate {
	width: 15%;
	text-align: center;
}

#answerStatus {
	width: 10%;
	text-align: center;
}

.Qdetails {
	padding: 30px 70px 30px 130px;
	background-color: #e9e1d9;
	border-bottom: 1px solid rgb(207, 207, 207);
}

.dContainer {
	display: none;
}

.Awrap {
	display: flex;
	flex-direction: row;
	padding: 20px 70px 20px 100px;
	background-color: #e9e1d9;
}

#inquiryAnswer {
	width: 85%;
	padding-left: 20px;
	;
}

#Aicon {
	font-weight: bold;
}

#writeTitle {
	width: 400px;
	height: 30px;
	font-size: 16px;
	padding: 10px;
	outline: none;
	border: 1px solid #919191;
}

#writeDetails {
	margin-top: 5px;
	width: 400px;
	height: 350px;
	font-size: 16px;
	padding: 10px;
	resize: none;
	outline: none;
	border: 1px solid #919191;
}

.writeWrap {
	border: 1px solid black;
	background-color: white;
	width: 450px;
	display: none;
	height: 600px;
	padding: 15px;
	position: fixed;
	bottom: 120px;
	left: 400px;
}

.closeBtnWrap {
	text-align: end;
	font-weight: bold;
	font-size: 20px;
}

button {
	background-color: white;
	border: none;
	font-size: 20px;
	font-weight: bold;
}

.buttonWrap {
	margin-top: 20px;
	text-align: center;
}

.cencleBtn {
	padding: 10px;
	border: 1px solid #919191;
	color: #919191;
	background-color: white;
	width: 100px;
}

.writeBtn {
	padding: 10px;
	border: 1px solid #d0ac88;
	color: white;
	background-color: #d0ac88;
	width: 100px;
}

.info {
	font-size: 11px;
	color: #919191;
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
</style>
</head>
<body class="main" style="margin-top: 0;">

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

		<!-- nav tabs 기본형태 -->
		<div class="container mt-3">
			<ul class="nav nav-tabs justify-content-between">
				<li class="nav-item"><a href="#home" class="nav-link active"
					data-bs-toggle="tab">상세정보</a></li>
				<li class="nav-item"><a href="#menu1" class="nav-link "
					data-bs-toggle="tab">리뷰</a></li>
				<li class="nav-item"><a href="#menu2" class="nav-link "
					data-bs-toggle="tab">Q&A</a></li>
				<li class="nav-item"><a href="#menu3" class="nav-link "
					data-bs-toggle="tab">반품/교환정보</a></li>
			</ul>
			<!-- Tab panes 상세정보-->
			<div class="tab-content">
				<div class="tab-pane container active" id="home">
					<div class="titleArea">
						<h3 class="title mt-3">상세정보</h3>
						<hr>

						<div class="infoimg">
							<div>
								<img src="${info.imagedetail}" alt="" style="width: 100%;">
							</div>
							<br>
							<div>
								<img src="https://ifh.cc/g/Qasqj5.jpg" alt=""
									style="width: 100%;">

							</div>
							<br>
							<div>
								<img src="https://ifh.cc/g/4XOrfh.jpg" alt=""
									style="width: 100%;">
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
							<th>${info.productbrand}</th>
							<th>상품 이름</th>
							<th>${info.productName}</th>

						</tr>
						<tr>
							<td>제조사</td>
							<td>${info.productcompany}</td>
							<td>모델명</td>
							<td>${info.productnumber}</td>

						</tr>
						<tr>
							<td>원산지</td>
							<td>${info.productmadein}</td>
							<td>사용대상</td>
							<td>${info.productuserage}</td>
						</tr>
						<tr>
							<td>구성품</td>
							<td>상세페이지참조</td>
							<td>배송/설치비용</td>
							<td>지역별 상이</td>
						</tr>
						<tr>
							<td>제조일자</td>
							<td>${info.productmadeday}</td>
							<td>품질보증기준</td>
							<td>제품 이상 시 공정거래위원회 고시 <br>소비자분쟁해결기준에 의거 보상합니다.
							</td>
						</tr>
					</table>

				</div>
				<!-- =========================
          review tabs 
          ========================= -->
				<div class="tab-pane container " id="menu1">

					<div class="sectioncontainer">
						<div class="titleArea">
							<h3 class="title mt-3">Review</h3>
							<hr>
						</div>
						<div class="reviewarea">
							<div class="reviewbutton">
								<button class="btn btn-outline-secondary">리뷰 쓰기</button>
							</div>





							<!-- 리뷰 반복 -->
							<!-- 리뷰 1개 클래스로 구역 설정-->
							<div class="reviewcontainer mt-3">
								<div class="profile">
									<img src="https://ifh.cc/g/9QpqRb.jpg" width="30px"
										style="opacity: 0.4;" alt="">
								</div>
								<div class="content-container">
									<div class="score"></div>
									<div class="scorevalue">#</div>
									<div class="id">#</div>
									<div class="date">
										<%-- 										<c:set var="now" value="#"> --%>
										<%-- 										</c:set> --%>
										<%-- 										<fmt:formatDate value="${ now }" pattern="yy.MM.dd."></fmt:formatDate> --%>
									</div>
									<div>|</div>
									<div class="report">신고</div>

									<div class="content-container">
										<div class="productname">상품명 :</div>
										<div class="product me-1"></div>
										<div>/</div>
										<div class="productsize me-1"></div>
										<div>/</div>
										<div class="productcolor"></div>
										<div class="reviewcontent"></div>
									</div>
									<div class="reviewphoto">photozone</div>
								</div>

								<div class="photo">
									<img src="#" width="100px" height="100px" alt="">
								</div>
								<div class="recommend">
									<button type="button" class="btn btn-outline-warning"
										data-bs-toggle="tooltip" data-bs-placement="top"
										data-bs-custom-class="custom-tooltip"
										data-bs-title="리뷰가 도움이 되셨나요?">
										<img src="https://ifh.cc/g/zPXGj2.png" width="15px" alt="">
										<span class="likecount" style="color: #000;">0</span>
									</button>
								</div>
							</div>


						</div>
					</div>
				</div>
				<!-- 리뷰 1개 끝 -->
				<!-- 리뷰 1개 클래스로 구역 설정-->

				<!-- =========================
          review tabs 끝
          ========================= -->
				<%
				
				int userno = (Integer) session.getAttribute("userno");
				int productno = Integer.parseInt(request.getParameter("productno"));
				%>
				<div class="tab-pane container " id="menu2">

					<div class="sectioncontainer">
						<div class="titleArea">
							<h3 class="title mt-3">상품문의</h3>
							<p>상품에 관한 문의만 답변 가능하며 답변 완료까지 1~2일이 소요될 수 있습니다.</p>
							<a href="FAQ" class="link">자주묻는질문 바로가기</a> <input type="button"
								value="상품문의하기" class="inquiryBtn" id="inquiryBtn">


						</div>

						<input type="hidden" value="<%=userno%>" id="userNo"> <input
							type="hidden" value="<%=productno%>" id="productNo">


						<c:forEach var="inquiry" items="${inquiry }" varStatus="status">

							<div class="inquiryWrap" id="inquiryWrap${status.index }">
								<div class="Qtitle" id="Qtitle${status.index }">
									<div id="Qicon">Q</div>
									<div id="inquiryTitle">${inquiry.inquiryTitle }</div>
									<div id="inquiryName">${inquiry.getProcessedId()}</div>
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
							<p class="info">근거 없는 비방 목적의 글 또는 개인 정보 노출된 글의 경우 통보 없이 삭제될 수
								있습니다.</p>
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
				<div class="tab-pane container " id="menu3">
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


		<!-- section end -->


		<script>
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
		      
          
          // inquiry 스크립트끝 ---------------------------------
		
   // 리뷰 좋아요 스크립트
   var tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
   var tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));

   // 리뷰 쓰기 이동
  	console.log("${boughtProduct}");
 	let boughtProduct = "${boughtProduct}";
 	let getproductName = "${info.productName}";
  	console.log("${info.productName}");
 	
   document.querySelector(".reviewbutton .btn").addEventListener("click", function(){
   	if( boughtProduct == getproductName) {
   		$.ajax({
   			url : "tabsreviewWrite.jsp",
   			type : "get",
   			success:function(data) {
   				$(".reviewarea").html(data);
  				},
  				error:function() {
  					console.log("error");
  				}
   		});
   		
   	} else {
   	  alert("구매하신 상품만 리뷰를 작성 할 수 있습니다.");
   	}
   });

   //위에 이미지 호버 스크립트 /
   function changeImage(targetId, newImageUrl) {
      var targetImage = document.getElementById(targetId);
      targetImage.src = newImageUrl;
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
      var selectedSize = sizeSelect.value;
      var selectedQuantity = quantitySelect.value;

      let sizeMultiplier = 1; // 기본 배율
      if (selectedSize === "SS") {
        sizeMultiplier = 1.2; // M 사이즈에 대한 배율 조정
      } else if (selectedSize === "Q") {
        sizeMultiplier = 1.3; // L 사이즈에 대한 배율 조정
      } else if (selectedSize === "K") {
        sizeMultiplier = 1.5; // XL 사이즈에 대한 배율 조정
      }

      var totalPrice = (selectedQuantity * parseFloat(pricePerUnit) * sizeMultiplier) - (selectedQuantity*salePrice);
      
      // totalPrice가 1,000,000 미만이면 5,000을 추가
      if (totalPrice < 1000000) {
        totalPrice += 5000;
      }
      
      // 총 결제 금액을 원화 형식으로 표시
      var formattedTotalPrice = totalPrice.toLocaleString() + '원';
      totalPriceSpan.textContent = formattedTotalPrice;
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

   window.onscroll = function () {
      scrollFunction();
   };

   function scrollFunction() {
      if (document.body.scrollTop > 1 || document.documentElement.scrollTop > 1) {
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