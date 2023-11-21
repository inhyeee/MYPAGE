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
<title>나의 위시리스트</title>
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

/* ==================== 고정 사이드메뉴*/
.wishlist {
	width: 900px
}

.wishlist_title {
	/* border: 1px solid red; */
	border-bottom: 2px solid gray;
	padding: 20px;
	font-weight: bold;
}

.wishlist_area {
	/*       border-bottom: 1px solid gray; */
	width: 900px;
	margin-top: 30px;
	padding-bottom: 30px;
}

table {
	border: 1px solid gray;
	margin: auto;
	margin-bottom: 20px;
}

.wishlist_img {
	width: 300px;
	height: 200px;
}

.wishlist_cart, .wishlist_remove {
	text-align: right;
	padding-right: 20px;
}

.cart_btn, .remove_btn {
	border: none;
	font-weight: bold;
	font-size: 20px;
 	background-color: white;
	color: #d8c69c;
}

.wishlist_goods {
	padding: 10px;
	font-size: 20px;
/* 	color: gray; */
}

.wishlist_select {
	padding: 10px;
	font-size: 13px;
	color: gray;
}

.wishlist_price {
	padding: 10px;
}

.paging {
	margin-bottom: 50px;
	text-align: center;
}

/*-----------------------------------------------------------------*/
</style>
</head>
<%-- <c:import url="indexheader.jsp"/> --%>
<body class="main" style="margin-top: 0;">
<div id="wrap">

	<!-- header end -->

	<!-- section -->
	<section id="section" class="sectionbody">

		<div id="container">

			<div class="mainbar2">
				<div class="menubar">
					<ul>
						<li class="menubar_title">나의 쇼핑정보</li>
						<li class="menubar_item"><a href="mypage_orderlist.jsp">주문내역
								조회</a></li>
						<li class="menubar_item"><a href="mypage_point.jsp">적립금
								내역</a></li>
						<li class="menubar_item"><a href="coupon">쿠폰 내역</a></li>
					</ul>

					<ul>
						<li class="menubar_title">활동 정보</li>
						<li class="menubar_item"><a href="shopping_basket.jsp">나의
								장바구니</a></li>
						<li class="menubar_item"><a href="wishlist">나의
								위시리스트</a></li>
						<li class="menubar_item"><a href="inquiry">나의 게시글</a></li>
					</ul>

					<ul>
						<li class="menubar_title">나의 정보</li>
						<li class="menubar_item"><a href="modifyList">회원정보 수정</a></li>
						<li class="menubar_item"><a href="logout.jsp">로그아웃</a></li>
					</ul>


				</div>

<div class="wishlist">
	<div class="wishlist_title">나의 위시리스트</div>

	<div class="wishlist_area">

	<div>TOTAL ( ${data.total } )</div><br>
		<c:forEach var="dto" items="${data.wishlist }">

			<form action="deleteWishlist" method="post">

				<table class="wishlist_item">
					<colgroup>
						<col width="300px">
						<col width="250px">
						<col width="250px">
					</colgroup>
					<tr>
						<td rowspan="2"><img class="wishlist_img"
							src="${dto.mainimg1 }"></td>
						<td class="wishlist_goods" colspan="2">${dto.productname }</td>
						<!-- <td ></td> -->
					</tr>

					<tr>
						<!-- <td></td> -->
<!-- 						<td class="wishlist_cart"><input type="button" -->
<!-- 							class="cart_btn" value="장바구니"></td> -->
						<td colspan="2" class="wishlist_remove">
						<input type="submit" class="remove_btn" value="X"></td>
						<input type="hidden" name="wishlistno" value="${dto.wishlistno }">
					</tr>
				</table>
			</form>
		</c:forEach>

	</div>
	
			<div class="paging">
		<%@ page import="java.util.*"%>
		
		<% // model에 넣은 "data" 값 가져오기
			Map data = (Map)request.getAttribute("data");
		
			int total = (Integer)data.get("total");
			int pageNum = (Integer)data.get("pageNum");
			// 한번에 보여줄 글의 개수
			int countPerPage = (Integer)data.get("countPerPage");
			
			// 전체 페이지의 개수
			// 올림처리( 전체 글의 수 / 한번에 보여줄 글의 수 )
			// int / int = int가 나오기때문에 올림처리위해서 하나이상은 double로 바꿔주어야한다
			// 12 / 5 >> 2.4 >> ceil 결과 3.0 >> int 변수에 저장(강제 형변환)
			int totalPaging = (int)Math.ceil((double) total / countPerPage);
		
			// 한 그룹당의 개수
			// 한번에 보여줄 페이지(하단)의 개수
			int groupCount = 3;
		
			// 현재 페이지가 몇번째 그룹에 있는지
			int position =  (int)Math.ceil((double) pageNum / groupCount);
			
			// 현재 속한 그룹에 첫번째 페이지 번호
			int beginPaging = ((position-1) * groupCount ) + 1;
			int endPaging = position * groupCount;
			
			if(endPaging > totalPaging) {
				endPaging = totalPaging;
			}
			
		%>
		
		<%-- 전체 페이지 수 : <%=totalPaging %> <br> --%>
			
			<%
			if(beginPaging == 1){
			out.print("[이전]");			
			} else {
			out.print("<a href='wishlist?pageNum="+(beginPaging - 1)+"'>[이전]</a>");		
			}
			
		
			for(int i=beginPaging; i<=endPaging; i++){
				if(i == pageNum){
					// 현재페이지는 글씨 굵게
					out.println("<a href='wishlist?pageNum="+i+"'><strong>[" + i + "]</strong></a>");			
				} else{
					out.println("<a href='wishlist?pageNum="+i+"'>[" + i + "]</a>");
				}
			}
		
			
			if(endPaging == totalPaging){
				out.print("[다음]");			
				} else {
				out.print("<a href='wishlist?pageNum="+(endPaging + 1)+"'>[다음]</a>");		
				}
			%>
		
		</div>
		
	</div>
	
  </div>

 </div>
</div>

</section>
	<!-- section end -->
</div>

	<%-- <c:import url="indexfooter.jsp"/> --%>

<script>


  let remove_btns = document.querySelectorAll(".remove_btn");
  // 삭제하기
  for (let i=0; i < remove_btns.length; i++){
  	remove_btns[i].addEventListener("click", function(){
  	 	 alert("삭제되었습니다.");
     })
   };
        
        
</script>



</body>

</html>