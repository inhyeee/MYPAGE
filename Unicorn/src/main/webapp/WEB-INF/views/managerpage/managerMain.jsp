<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>manager_main</title>



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
	width: 20%;
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

.manu {
	margin: auto;
	width: auto;
}

.manu_big {
	background-color: #dfd1b3;
	height: 300px;
	width: 400px;
	margin: 10px;
	cursor: pointer;
}

.manu_img1 {
	width: 90%;
	margin-top: 13%;
	margin-left: 5%;
}

.manu_img2 {
	width: 90%;
	margin-top: -8%;
	margin-left: 10%;
}

.manu_img3 {
	width: 100%;
}

.manu_img4 {
	width: 120%;
	margin-top: -30%;
	margin-left: -10%;
}

.manu_top, .manu_bottom {
	display: flex;
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
<!-- 						<li class="menubar_item"><a href="">후기</a></li> -->
					</ul>

					<ul>
						<li class="menubar_title" id="menu_product">제품 관리</li>
						<li class="menubar_item"><a href="managerProductInsert">제품
								추가</a></li>
						<li class="menubar_item"><a href="managerProduct">제품 수정 |
								삭제</a></li>
					</ul>

					<ul>
						<li class="menubar_title"><a href="managerCoupon">쿠폰 관리</a></li>
						<li class="menubar_item"><a href="managerCoupon">쿠폰 관리</a></li>
						<li class="menubar_item"><a href="managerCouponInsert">쿠폰
								생성</a></li>
						<!-- 						<li class="menubar_item"><a href="">쿠폰 지급</a></li> -->
					</ul>

				</div>
				<div class="manu">
					<div class="manu_top">

						<div class="manu_big" id="manu_member">
							<a href="managerMember"> <img class="manu_img1"
								src="https://ifh.cc/g/rTLctO.png" alt="">
							</a>
						</div>

						<div class="manu_big" id="manu_post">
							<a href="managerEvent"> <img class="manu_img2"
								src="https://ifh.cc/g/7zkyfo.png" alt="">
							</a>
						</div>
					</div>
					<div class="manu_bottom">
						<div class="manu_big" id="manu_product">
							<a href="managerProduct"> <img class="manu_img3"
								src="https://ifh.cc/g/XmARHy.png" alt="">
							</a>
						</div>
						<div class="manu_big" id="manu_coupon">
							<a href="managerCoupon"> <img class="manu_img4"
								src="https://ifh.cc/g/ydshQa.png" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>


		</div>



	</section>
	<!-- section end -->


	<script>
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