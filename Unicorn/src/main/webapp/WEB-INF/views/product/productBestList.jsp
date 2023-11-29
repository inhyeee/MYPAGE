<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>
<%@ page import="com.human.unicorn.dto.ProductDTO"%>


<!DOCTYPE html>
<html>
<head>
<title>product</title>
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
<meta charset="UTF-8">
<title>제품 목록</title>
<style>
.bestText {
	font-weight: 900;
	font-size: 40px;
	margin-left: 7%;
	margin-top: 5%;
}

.productContainer {
	/* 	border: 2px solid black; */
	width: 90%;
	margin: auto;
	margin-top: 50px;
	display: flex;
	flex-wrap: wrap;
	gap: 7px;
	display: flex;
}

.productList {
	width: 45%;
	height: 300px;
	margin: auto;
	/*border: 1px solid red;*/
	margin-bottom: 90px;
}

.productList>img {
	width: 100%;
	height: 100%;
}

.topNum {
	font-weight: 700;
	font-size: 30px;
}

body img:hover {
	cursor: pointer;
}
</style>
</head>
<%-- <%@ include file="indexheader.jsp"%> --%>
<body>

	<div class="bestText">Best Product</div>

	<div class="productContainer">
		<c:forEach var="productDTO" items="${top10List}" varStatus="status">
			<div class="productList"
				onclick="openProductPage(${productDTO.productNo})">
				<div class="topNum">Top${status.index + 1}</div>
				<img src="${productDTO.mainImg1}" alt="">
				<div class="pd">${productDTO.productName}</div>
				<div class="price">${productDTO.productPrice}원</div>
			</div>
		</c:forEach>
	</div>



	<script>

function openProductPage(productNum) {
    window.location.href = "productDetail?productNum="+productNum;
}
</script>
</body>

</html>
