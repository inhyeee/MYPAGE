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
<title>manager_coupon_update</title>
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
	font-size: 20px;
	cursor: pointer;
}

.menubar_item {
	margin-bottom: 10px;
}

/* .menubar:hover {
            cursor: pointer;
        } */

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
	width: 330px;
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

.coupon_insert_users {
	margin-top: 20px;
	border-top: 2px solid gray;
	padding: 20px;
	font-weight: bold;
	border-top: 2px solid gray;
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
	width: 18%;
}

.table_bottom {
	background-color: #d8c69c;
	color: white;
	width: 7%;
}

.table_data {
	width: 55%;
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

.edit {
	text-align: right;
	padding: 10px;
}

.edit_btn {
	background-color: #d8c69c;
	border: none;
	color: white;
	width: 50px;
	height: 30px;
	font-size: 15px;
	font-weight: 700;
	cursor: pointer;
}

.tableEdit {
	width: 200%;
	height: 25px;
}

#notice_textarea {
	height: 200px;
}
</style>
</head>

<body class="main" style="margin-top: 0;">

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
						<li class="menubar_item"><a href="">후기</a></li>
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
					<div class="orderbar_title">쿠폰 수정</div>

					<form action="/unicorn/managerCouponDoUpdate" method="post">
						<div class="orderbar_item">
							<table>
								<tr>
									<td class="table_top">쿠폰 번호</td>
									<td class="table_data">${coupon.couponno}</td>
									<td><input class="tableEdit" type="hidden" name="couponno"
										value="${coupon.couponno}"></td>
								</tr>
								<tr>
									<td class="table_top">쿠폰명</td>
									<td class="table_data">${coupon.serialno}</td>
									<td><input class="tableEdit" type="text" name="serialno"></td>
								</tr>
								<tr>
									<td class="table_top">쿠폰 가격</td>
									<td class="table_data">${coupon.coupondc}</td>
									<td><input class="tableEdit" type="text" name="coupondc"></td>
								</tr>
								<tr>
									<td class="table_top">쿠폰 시작일</td>
									<td class="table_data">${coupon.startdate}</td>
									<td><input class="tableEdit" type="date" name="startdate"></td>
								<tr>
									<td class="table_top">쿠폰 만료일</td>
									<td class="table_data">${coupon.validdate}</td>
									<td><input class="tableEdit" type="date" name="validdate"></td>
								</tr>
								<tr>
									<td class="table_top">쿠폰 가능여부</td>
									<td class="table_data">${coupon.possible}</td>
									<td><select class="tableEdit" name="possible">
											<option value="가능">가능</option>
											<option value="불가능">불가능</option>
									</select></td>
								</tr>
							</table>
						</div>


						<div class="edit">
							<input class="edit_btn" type="submit" value="수정">
						</div>
					</form>

					<div class="coupon_insert_users">등록한 회원</div>

					<div class="orderbar_item">
						<table>
							<tr>
								<td class="table_bottom">회원 번호</td>
								<td class="table_bottom">회원명</td>
							</tr>
							<!-- for문 돌려서 제품 dto 꺼내기 -->
							<c:forEach var="member" items="${members}">
								<tr id="events">
									<td class="table_couponNo">${member.userno}</td>
									<td class="table_couponDc">${member.name}</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- section end -->




	<script>
		document.addEventListener('DOMContentLoaded', function() {
			var mypageElement = document.querySelector('.mypage');
			if (mypageElement) {
				mypageElement.addEventListener("click", function() {
					window.location.href = "managerMain";
				});
			}

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