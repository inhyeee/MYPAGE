<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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

/*왼쪽 메뉴 -----------------------------------------------------------------*/
#container {
	/* border: 1px solid blue; */
	margin: 50px auto;
}

.mainbar2 {
	/* border: 1px solid red; */
	width: 1200px;
	display: flex;
	flex-direction: row;
	/* margin-top: 50px; */
	margin: auto;
}

.menubar {
	width: 250px;
}

.menubar_title {
	font-weight: bold;
	margin-top: 0px;
	margin-bottom: 10px;
}

.menubar_item {
	margin-bottom: 10px;
}

/*-----------------------------------------------------------------*/
.sectionContainer {
	width: 950px;
	margin-bottom: 50px;
}

.titleWrap {
	border-top: 2px solid #d0ac88;
	padding-top: 20px;
	display: flex;
}

#notice_title {
	font-size: 18px;
	font-weight: bold;
	margin-right: 600px;
}

#notice_time {
	margin-right: 15px;
}

.titleDetail {
	display: flex;
	margin-left: 500px;
}

#userId {
	font-size: 16px;
}

#time {
	font-size: 15px;
	color: #7e7e7e;
	margin-left: 30px;
}

#views {
	color: #7e7e7e;
	margin-left: 30px;
}

/* 메인 css */
.mainArea {
	margin-top: 20px;
	border-top: 1px solid #cacaca;
	border-bottom: 1px solid #cacaca;
	padding-top: 15px;
	padding-bottom: 20px;
	min-height: 200px;
}

/* 그외 */
.listButton {
	width: 100px;
	padding: 10px;
	margin-top: 10px;
	text-align: center;
	border: 1px solid #d0ac88;
	float: right;
}

.listButton:hover {
	cursor: pointer;
}
</style>
</head>
<body>
	<%-- <%@ include file="indexheader.jsp" %> --%>
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
					
						<div class="titleWrap">
							<h4>${details.noticeTitle }</h4>

							<div class="titleDetail">
								
								<div id="time">${details.noticeDate }</div>

							</div>
						</div>

						<div class="mainArea">
							${details.noticeDetails }
						</div>
						
						<div class="buttonWrap">
							<div class="listButton">목록</div>
						</div>
				</div>
			</div>

		</div>

	</section>
	<%--   <jsp:include page="indexfooter.jsp" flush="true"/> --%>
	<script>
		document.querySelector(".listButton").addEventListener("click",
				function() {
					window.location.href = "noticeList"
				});
	</script>
</body>
</html>