<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>manager_notice</title>
<head>

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

/* °íÁ¤ »çÀÌµå¸Þ´º ====================*/
.mainbar2 {
	width: 1200px;
	display: flex;
	justify-content: space-between;
	margin: auto;
}

.menubar {
	width: 250px;
}

.orderbar {
	width: 900px;
}

.menubar_title {
	font-weight: bold;
	margin-top: 70px;
	margin-bottom: 10px;
	font-size: 20px;
	cursor: pointer;
}

.menubar_item {
	margin-bottom: 10px;
}

/* .menubar:hover {
            cursor: pointer;
        } */

/* ==================== °íÁ¤ »çÀÌµå¸Þ´º*/
#container {
	margin: auto;
}

.mypage {
	padding: 50px;
	font-size: 30px;
	font-weight: bold;
	text-align: center;
	color: white;
	background-color: #d8c69c;
	cursor: pointer;
}

.mypage2 {
	font-size: 20px;
	text-align: center;
	margin-top: 20px;
}

.none_id {
	text-align: center;
	color: gray;
	font-size: 15px;
	padding: 20px;
}

/* ÃÑ ÁÖ¹®, Àû¸³±Ý, ÄíÆù====================*/
.mainbar {
	display: flex;
	justify-content: space-around;
	width: 1000px;
	margin: 70px auto;
	text-align: center;
}

.mainbar_item {
	border: 1px solid rgb(179, 178, 178);
	border-radius: 10px;
	width: 330px;
	height: 150px;
}

.mainbar_title {
	font-size: 17px;
	font-weight: bold;
}

/* 페이지 넘버 ====================*/
.pageNum {
	margin-top: 20px;
	text-align: center;
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
	padding: 20px 70px 20px 100px;
	background-color: #e9e1d9;
}

#Aicon {
	font-weight: bold;
}

.answerText {
	width: 700px;
	height: 200px;
	resize: none;
	outline: none;
	border: none;
	margin-left: 20px;
	padding: 10px;
	text-align: start;
}

.submitBtn {
	margin-left: 680px;
	background-color: #e9e1d9;
	border: 1px solid rgb(179, 178, 178);
	width: 50px;
	height: 30px;
}

#Qimg {
	width: 80px;
	height: 80px;
}

.detailsWrap {
	display: flex;
	flex-direction: column;
	width:80%;
}
#pdname{
margin-left:30px;
margin-right:30px;
}
</style>
</head>
<body>
<body class="main" style="margin-top: 0;">
	<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
	<!-- header end -->

	<!-- section -->
	<section id="section" class="sectionbody">

		<div id="container">

			<div class="mypage">관리자 페이지</div>


			<div class="mypage2">안녕하세요, 관리자님!</div>


			<div class="mainbar2">
				<div class="menubar">
					<ul>
						<li class="menubar_title"><a href="managerMember">회원 관리</li>
						<li class="menubar_item"><a href="managerMember">회원 관리</a></li>
						
					</ul>

					<ul>
						<li class="menubar_title">게시글 관리</li>
						<li class="menubar_item"><a href="managerEvent">이벤트</a></li>
						<li class="menubar_item"><a href="managerNotice">공지사항</a></li>
						<li class="menubar_item"><a href="managerInquiry">Q&A</a></li>
<!-- 						<li class="menubar_item"><a href="">후기</a></li> -->
					</ul>

					<ul>
						<li class="menubar_title" id="menu_product">제품 관리</li>
						<li class="menubar_item"><a href="managerProductInsert">제품 추가</a></li>
						<li class="menubar_item"><a href="managerProduct">제품 수정 | 삭제</a></li>
					</ul>

					<ul>
						<li class="menubar_title"><a href="managerCoupon">쿠폰 관리</a></li>
						<li class="menubar_item"><a href="managerCoupon">쿠폰 관리</a></li>
						<li class="menubar_item"><a href="managerCouponInsert">쿠폰 생성</a></li>
<!-- 						<li class="menubar_item"><a href="">쿠폰 지급</a></li> -->
					</ul>

				</div>

				<div class="orderbar">

					<div class="orderbar_title">상품문의 관리</div>
<hr>

					<c:forEach var="inquiry" items="${data.list }" varStatus="status">
						<input type="hidden" id="inquiryno${status.index }"
							value="${inquiry.inquiryNo }">
						<div class="inquiryWrap" id="inquiryWrap${status.index }">

							<div class="Qtitle" id="Qtitle${status.index }">
								<img src="${inquiry.mainimg1 }" id="Qimg">

								<div class="detailsWrap">

									<div class="Qtitle">
										<div id="pdname"> 제품명: ${inquiry.productname }</div>
										<div id="pdno"> 제품번호: ${inquiry.productNo }</div>
									</div>

									<div class="Qtitle">
										<div id="Qicon">Q</div>
										<div id="inquiryTitle">${inquiry.inquiryTitle }</div>
										<div id="inquiryName">${inquiry.id}</div>
										<div id="inquiryDate">${inquiry.inquiryDate }</div>
										<div id="answerStatus"></div>

									</div>
</div>
									<c:choose>
										<c:when test="${not empty inquiry.answerDetails }">
											<p style="font-weight: bold; color: red;">답변완료</p>
										</c:when>
										<c:otherwise>
											<p>답변대기</p>
										</c:otherwise>
									</c:choose>
								
							</div>
							<div class="dContainer" id="dContainer${status.index }">
								<div class="Qdetails">
									<div id="inquiryDetails">${inquiry.inquiryDetails }</div>
								</div>


								<div class="Awrap">
									<div id="Aicon">A</div>
									<textarea class="answerText" id="answerText${status.index }">${inquiry.answerDetails }
											</textarea>
									<input type="submit" value="등록" class="submitBtn"
										id="submitBtn${status.index }">
								</div>
							</div>
						</div>

					</c:forEach>










					<%@ page import="java.util.Map"%>
					<div class="pageNum">
						<%
						// model에 넣은 "data" 가져오기
						Map data = (Map) request.getAttribute("data");

						// data가 null이 아닌 경우에만 처리
						if (data != null) {
							int total = (Integer) data.get("total");
							int pageNum = (Integer) data.get("pageNum");
							int countPerPage = (Integer) data.get("countPerPage");

							int totalPaging = (int) Math.ceil((double) total / countPerPage);
							int groupCount = 10;
							int position = (int) Math.ceil((double) pageNum / groupCount);
							int beginPaging = ((position - 1) * groupCount) + 1;
							int endPaging = position * groupCount;

							if (endPaging > totalPaging) {
								endPaging = totalPaging;
							}

							if (beginPaging == 1) {
								out.println("[이전]");
							} else {
								out.println("<a href='managerInquiry?pageNum=" + (beginPaging - 1) + "&countPerPage=" + countPerPage
								+ "'>[이전]</a>");
							}

							for (int i = beginPaging; i <= endPaging; i++) {
								if (i == pageNum) {
							out.println("<a href='managerInquiry?pageNum=" + i + "&countPerPage=" + countPerPage + "'><strong>[" + i
									+ "]</strong></a>");
								} else {
							out.println("<a href='managerInquiry?pageNum=" + i + "&countPerPage=" + countPerPage + "'>[" + i + "]</a>");
								}
							}

							if (endPaging == totalPaging) {
								out.println("[다음]");
							} else {
								out.println(
								"<a href='managerInquiry?pageNum=" + (endPaging + 1) + "&countPerPage=" + countPerPage + "'>[다음]</a>");
							}
						}
						%>

					</div>







				</div>
			</div>

		</div>


	</section>
	<!-- section end -->



	<script>
		// inquiry 스크립트 ---------------------------------
		let length = document.querySelectorAll(".inquiryWrap").length;
		for (let i = 0; i < length; i++) {

			let Qtitle = document.getElementById("Qtitle" + i);
			Qtitle.addEventListener("click", function() {
				let dContainer = document.getElementById("dContainer" + i);
				if (dContainer.style.display == 'none') {
					dContainer.style.display = 'block';
				} else {
					dContainer.style.display = 'none';
				}
			});

			let submitBtn = document.getElementById("submitBtn" + i);
			submitBtn
					.addEventListener(
							"click",
							function() {
								let inquiryno = document
										.getElementById("inquiryno" + i).value;
								let answerText = document
										.getElementById("answerText" + i).value;
								document.getElementById("answerText" + i).innerHTML = answerText;
								submitAnswer(inquiryno, answerText);

							});
		}

		function submitAnswer(inquiryno, answerText) {
			$.ajax({
				type : "POST",
				url : "insertAnswer",
				data : {
					inquiryNo : inquiryno,
					answerDetails : answerText

				},
				error : function(error) {
					console.log("error");
				},
				success : function(data) {
					console.log("success");
					location.reload();
				}
			});
		}

		// inquiry 스크립트 끝 ---------------------------------
		document
				.addEventListener(
						'DOMContentLoaded',
						function() {
							var mypageElement = document
									.querySelector('.mypage');
							if (mypageElement) {
								mypageElement
										.addEventListener(
												"click",
												function() {
													window.location.href = "managerMain";
												});
							}

							// 제품 행 요소 가져오기
							var productRows = document
									.querySelectorAll('#notices');
							// 제품 행에 클릭 이벤트 리스너 추가
							productRows
									.forEach(function(row) {
										row
												.addEventListener(
														'click',
														function(event) {
															// 클릭한 요소가 td이고 클래스가 table_noticeNo, table_noticeTitle, 또는 table_noticeDate 인 경우에만 처리
															if (event.target.tagName === 'TD'
																	&& (event.target.classList
																			.contains('table_noticeNo')
																			|| event.target.classList
																					.contains('table_noticeTitle') || event.target.classList
																			.contains('table_noticeDate'))) {
																// 클릭한 행에서 productNo 가져오기
																var noticeNo = row
																		.querySelector('.table_noticeNo').innerText;
																// productNo 값을 파라미터로하여 managerProductUpdate 페이지로 리디렉션
																window.location.href = 'managerNoticeUpdate?noticeNo='
																		+ noticeNo;
															}
														});
									});
						});
		document.addEventListener('DOMContentLoaded', function() {
			var productMenu = document.getElementById('menu_product');
			if (productMenu) {
				productMenu.addEventListener("click", function() {
					window.location.href = "managerProduct";
				});
			}
		});
	</script>
</body>


</html>