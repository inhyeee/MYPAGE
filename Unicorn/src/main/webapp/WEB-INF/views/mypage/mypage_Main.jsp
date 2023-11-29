<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>
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
	  헤더
    ========================= */
#header {
	background: #fff;
}

header .toparea {
	height: 50px;
}

header .topbar {
	vertical-align: middle;
}

header .top-item {
	float: right;
	margin-right: 20px;
	margin-top: 10px;
	font-size: 12px;
}

header .container-fluid {
	height: 100px;
}

/* =========================
	  푸터
    ========================= */
footer .toparea {
	height: 50px;
}

footer .topbar {
	vertical-align: middle;
}

footer .top-item {
	float: right;
	margin-right: 20px;
	margin-top: 0px;
	font-size: 12px;
}

footer .logo {
	padding-left: 15px;
}

.footer .container {
	font-size: 11px;
	font-weight: 1000;
	line-height: 4;
}

.footercontent {
	color: rgb(59, 59, 59);
	font-weight: 300;
	margin-right: 30px;
}

/* 고정 사이드메뉴 ====================*/
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
}

.menubar_item {
	margin-bottom: 10px;
}

.menubar:hover {
	cursor: pointer;
}

/* ==================== 고정 사이드메뉴*/
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
}

.mypage2 {
	font-size: 25px;
	text-align: center;
	margin-top: 20px;
}

.none_id {
	text-align: center;
	color: gray;
	font-size: 15px;
	padding: 20px;
}

/* 총 주문, 적립금, 쿠폰====================*/
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
	width: 400px;
	height: 150px;
}

.mainbar_title {
	font-size: 17px;
	font-weight: bold;
}

/* 주문내역 조회 ====================*/
.orderbar_title {
	border-bottom: 2px solid gray;
	padding: 20px;
	font-weight: bold;
}

.orderbar_item {
	width: 900px;
	margin: auto;
	margin-top: 20px;
}

.order_detail {
	margin-bottom: 10px;
	text-align: right;
}

.detail_btn {
	border: none;
	background-color: white;
	color: gray;
	font-size: 15px;
}

th, td {
	height: 40px;
	text-align: center;
	vertical-align: middle;
}

.table_top {
	background-color: #d8c69c;
	color: white;
}

.table_date {
	width: 200px;
}

.table_name {
	width: 500px;
}

.table_price {
	width: 200px;
}

/* 페이지 넘버 ====================*/
.oderbar_num {
	display: flex;
	justify-content: center;
	margin-top: 20px;
}

.oderbar_num_item {
	width: 30px;
	height: 30px;
	margin: 5px;
	text-align: center;
}
</style>
</head>

<body class="main" style="margin-top: 0;">

	<section id="section" class="sectionbody">
		<div id="container">
			<div class="mypage">마이페이지</div>

<%-- 			<c:choose> --%>
<%-- 				<c:when test="${empty dto}"> --%>
<!-- 					<div class="none_id">로그인 후 이용가능합니다.</div> -->
<%-- 				</c:when> --%>
<%-- 				<c:otherwise> --%>
					<div class="mypage2">안녕하세요, ${dto.name } 님 !</div>

					<div class="mainbar_wrap">
						<div class="mainbar">
							<table class="mainbar_item">
								<tr>
									<td class="mainbar_title">총 주문</td>
								</tr>
								<tr>
									<td><a href="orderlist">${totalOrder } 건</a></td>
								</tr>
							</table>
							<!--           <table class="mainbar_item"> -->
							<!--             <tr> -->
							<!--               <td class="mainbar_title">적립금</td> -->
							<!--             </tr> -->
							<!--             <tr> -->
							<!--               <td>0 원</td> -->
							<!--             </tr> -->
							<!--           </table> -->
							<table class="mainbar_item">
								<tr>
									<td class="mainbar_title">쿠폰</td>
								</tr>
								<tr>
									<td><a href="coupon">${total } 개</a></td>
								</tr>
							</table>
						</div>
					</div>


			<div class="mainbar2">
				<div class="menubar">
					<ul>
						<li class="menubar_title">나의 쇼핑정보</li>
						<li class="menubar_item"><a href="mypage">HOME</a></li>
						<li class="menubar_item"><a href="orderlist">주문조회</a></li>
						<li class="menubar_item"><a href="coupon">나의 쿠폰</a></li>
					</ul>

					<ul>
						<li class="menubar_title">활동 정보</li>
						<li class="menubar_item"><a href="cart">나의 장바구니</a></li>
						<li class="menubar_item"><a href="wishlist">나의 위시리스트</a></li>
						<li class="menubar_item"><a href="inquiry">나의 게시글</a></li>
					</ul>

					<ul>
						<li class="menubar_title">나의 정보</li>
						<li class="menubar_item"><a href="modifyList">회원정보 수정</a></li>
						<li class="menubar_item"><a href="logout">로그아웃</a></li>
					</ul>
				</div>


						<div class="orderbar">
							<div class="orderbar_title">주문내역 조회</div>
							<div class="orderbar_item">

								<div class="order_detail">
									<a href="orderlist">자세히보기</a>
								</div>
								<table>
									<tr>
										<td class="table_top">주문번호</td>
										<td class="table_top">상품명</td>
										<td class="table_top">금액</td>
									</tr>
									<c:forEach var="list" items="${orderlist}">
										<tr>
											<td class="table_date">${list.orderstatus}</td>
											<td class="table_name">${list.productname }</td>
											<td class="table_price">${list.totalprice }</td>
										</tr>
									</c:forEach>
								</table>
							</div>

						</div>
<%-- 					</c:otherwise> --%>
<%-- 				</c:choose> --%>

			</div>
	</section>

</body>

</html>