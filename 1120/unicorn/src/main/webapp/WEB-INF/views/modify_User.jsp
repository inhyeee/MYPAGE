<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
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
</head>
<style>
/* div { border: 1px solid orange; } */

/* common */
body { font-family: pretendard; }
ul, ol, dl, li { list-style: none; }
a { text-decoration: none; color: none; color: #000; }
/* common end */
a:hover, a:active, a:focus { text-decoration: none; }

@font-face {
	font-family: 'ImcreSoojin';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
	font-weight: normal;
	font-style: normal;
}



/* 고정 사이드메뉴 ====================*/
#container {
	/* border: 1px solid blue; */
	margin: 50px auto;
}

.mainbar2 {
	/* border: 1px solid red; */
	width: 1200px;
	display: flex;
	justify-content: space-between;
	/* margin-top: 50px; */
	margin: auto;
}

.menubar {
	width: 250px;
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

/*==================== 고정 사이드메뉴 */
.profile {
	width: 900px
}

/* 회원정보 수정 table ==================== */
.profile_title {
	/* border: 1px solid red; */
	border-bottom: 2px solid gray;
	padding: 20px;
	font-weight: bold;
}

.profile_item {
/* 	border: 1px solid red; */
	/* border-bottom: 1px solid gray; */
	/* margin-top: 30px; */
	padding: 80px;
	text-align: center;
}

.profile_table_title {
	width: 200px;
	text-align: left;
	height: 40px;
}

.profile_table_item {
	width: 500px;
	height: 40px;
}

/* 저장 버튼 ====================*/
.savebtn {
	margin: 50px auto;
	width: 100px;
	background-color: #d8c69c;
	color: white;
	border: none;
}
</style>



<%-- <%@ include file="indexheader.jsp" %> --%>
<body class="main" style="margin-top: 0;">



		<!-- section -->
		<section id="section" class="sectionbody">

			<div id="container">

				<div class="mainbar2">
					<div class="menubar">
						<ul>
							<li class="menubar_title">나의 쇼핑정보</li>
							<li class="menubar_item"><a href="mypage_orderlist.jsp">주문내역 조회</a></li>
							<li class="menubar_item"><a href="mypage_point.jsp">적립금 내역</a></li>
							<li class="menubar_item"><a href="coupon">쿠폰 내역</a></li>
						  </ul>
			  
						  <ul>
							<li class="menubar_title">활동 정보</li>
							<li class="menubar_item"><a href="shopping_basket.jsp">나의 장바구니</a></li>
							<li class="menubar_item"><a href="wishlist">나의 위시리스트</a></li>
							<li class="menubar_item"><a href="inquiry">나의 게시글</a></li>
						  </ul>
			  
						  <ul>
							<li class="menubar_title">나의 정보</li>
							<li class="menubar_item"><a href="modifyList">회원정보 수정</a></li>
							<li class="menubar_item"><a href="logout.jsp">로그아웃</a></li>
						  </ul>

					</div>

					<form method="POST" action="modifyList">
						<div class="profile">
							<div class="profile_title">회원정보</div>
							<div class="profile_item">
								<table class="profile_table">
									<tr>
										<td class="profile_table_title">이름</td>
										<td><input class="profile_table_item" type="text"
											name="name" id="name" value="${userDTO.name}">
											</td>
									</tr>
									<tr>
										<td class="profile_table_title">아이디</td>
										<td><input class="profile_table_item" type="text"
											name="id" id="id" value="${userDTO.id}"></td>
									</tr>
									<tr>
										<td class="profile_table_title">비밀번호 변경</td>
										<td><input class="profile_table_item" type="password"
											name="pw" id="pw"></td>
									</tr>
									<tr>
										<td class="profile_table_title">핸드폰 번호</td>
										<td><input class="profile_table_item" type="text"
											name="tel" id="tel" value="${userDTO.tel}"></td>
									</tr>
									<tr>
										<td class="profile_table_title">이메일</td>
										<td><input class="profile_table_item" type="text"
											name="email" id="email" value="${userDTO.email}"></td>
									</tr>
									<tr>
										<td class="profile_table_title">주소</td>
										<td><input class="profile_table_item" type="text"
											name="address" id="address" value="${userDTO.address}"></td>
									</tr>
								</table>
								<div>
									<input class="savebtn" type="submit" value="저장">
									<input type="hidden" name="userno" value=${userDTO.userno }>
								</div>

							</div>
						</div>
						
						
						
						
					</div>
				</div>
			</form>


		</section>
		<!-- section end -->


	</div>
	
</body>
<%-- <c:import url="indexfooter.jsp"/> --%>

<script>
let savebtn = document.querySelector(".savebtn"); //저장 버튼
let pw = document.querySelector("#pw");
let phoneNumber = document.querySelector("#tel");
let email = document.querySelector("#email");
let address = document.querySelector("#address");

function modifyInfo() {
	if(pw.value === "" || address.value === "" || email.value === "" || tel.value === "") {
		alert("올바른 정보를 입력해주세요.");
	} else {
	alert("저장되었습니다.");
	}
}


savebtn.addEventListener("click", function(){
	modifyInfo();
});



</script>
</html>