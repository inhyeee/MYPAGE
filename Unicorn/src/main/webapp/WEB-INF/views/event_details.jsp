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

/* 섹션 css */
.sectionContainer {
	padding: 100px;
}

.titleArea {
	text-align: center;
	margin-bottom: 50px;
}

.titleWrap {
	border-top: 2px solid #d0ac88;
	padding-top: 20px;
	text-align: center;
}

#time {
	font-size: 18px;
	color: #7e7e7e;
}

/* 메인 css */
.mainArea {
	margin-top: 20px;
	margin-bottom: 20px;
	border-top: 1px solid #cacaca;
	border-bottom: 1px solid #cacaca;
	padding-top: 30px;
	padding-bottom: 20px;
	text-align: center;
}

.event-img {
	width: 50%;
	margin-bottom: 50px;
}

.mainText {
	margin-bottom: 50px;
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
	<%-- 	<%@ include file="indexheader.jsp"%> --%>
	<section id="section" class="sectionbody">
		<div class="sectionContainer">
			<div class="titleArea">
				<h1>Event</h1>
			</div>


			<div class="titleWrap">
				<h1>
					${event.eventTitle }</h1>
				<div id="time">
					${event.eventStart } ~ ${event.eventEnd }</div>
			</div>

			<div class="mainArea">
				<img src="${event.eventDetails}" class="event-img">
				
			</div>


			<div class="buttonWrap">
				<div class="listButton">목록</div>
			</div>
		</div>
	</section>
<%-- 	<jsp:include page="indexfooter.jsp" flush="true" /> --%>
	<script>
		document.querySelector(".listButton").addEventListener("click",
				function() {
					window.location.href = "eventList"
				});
	</script>
</body>
</html>