<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*" %>
<%@ page import="com.human.unicorn.dto.NoticeDTO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
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
	justify-content: row;
	/* margin-top: 50px; */
	margin: auto;
}

.menubar {
	width: 250px;
}

.menubar_title {
	font-weight: bold;
	margin-top: 130px;
	margin-bottom: 10px;
}

.menubar_item {
	margin-bottom: 10px;
}

/*-----------------------------------------------------------------*/
.sectionContainer {
	width: 800px;
}

table {
	width: 100%;
}

.titleArea {
	text-align: center;
}

.thead {
	height: 50px;
	text-align: center;
	color: #d0ac88;
	border-bottom: 3px solid #d0ac88;
}

td {
	text-align: center;
	border-bottom: 1px solid rgb(221, 221, 221);
	padding: 10px;
}

.noticeTitle:hover {
	cursor: pointer;
}

.pageWrap {
	width: 100%;
	margin-top: 50px;
	display: flex;
	justify-content: center;
}

.page_button {
	border: 1px solid #d0ac88;
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
					<div class="titleArea">
						<h2>공지사항</h2>




						<p>공지사항입니다.</p>
					</div>
					<table>
						<colgroup>
							<col width="50px">
							<col width="550px">

							<col width="120px">

						</colgroup>
						<tr>
							<th class="thead">번호</th>
							<th class="thead">제목</th>

							<th class="thead">작성일</th>

						</tr>
						
						
<% // model에 넣은 "data" 가져오기
	Map data = (Map) request.getAttribute("data");
	int total = (Integer) data.get("total");
	
	int pageNum = (Integer) data.get("pageNum");
	// 한번에 보여줄 글 개수
	int countPerPage = (Integer) data.get("countPerPage");
	
	// 한번에 보여줄 페이지버튼의 개수
	int groupCount = 5;
	
	// 전체 페이지의 수
	// 올림 ( 전체 글의 수 / 한번에 보여줄 글의 수 )
	int totalPaging = (int)Math.ceil((double) total / countPerPage);
	
	// 현재 페이지가 몇번Wo에 있는지
	int position = (int)Math.ceil((double) pageNum / groupCount);
	
	int beginPaging = ((position-1) * groupCount) + 1;
	int endPaging = position * groupCount;
	
	
	int count = total - (countPerPage * (pageNum - 1));
	
	 Map map = (Map) request.getAttribute("data");
	 List<NoticeDTO> list = (List<NoticeDTO>) map.get("list");
	 
	for(NoticeDTO d : list){
		
		
	%>	
	
										
							<tr>
								<td><%= count %></td>
								<td class="noticeTitle"><a
									href="noticeDetails?noticeNo=<%=d.getNoticeNo() %>"><%=d.getNoticeTitle() %></a>
								</td>
								<td><%=d.getNoticeDate() %></td>

							</tr>
<% 
count--;
}
	
	%>
					</table>
					<div class="pageWrap">


	<%
	if(endPaging > totalPaging){
		endPaging = totalPaging;
	}
	
	if(beginPaging == 1) {
 		out.println("[이전]");
		
	} else {
		out.println("<a href='noticeList?pageNum="+ (beginPaging-1) +"'>[이전]</a>");
	}
	for(int i=beginPaging; i<=endPaging; i++){
		if(i == pageNum){
			out.println("<a href='noticeList?pageNum="+ i +"'><strong>["+ i +"]</strong></a>");
		} else {
			out.println("<a href='noticeList?pageNum="+ i +"'>["+ i +"]</a>");
		}
	}
	
	if(  endPaging == totalPaging){
		out.println("[다음]");
	} else {
		out.println("<a href='noticeList?pageNum="+ (endPaging+1) +"'>[다음]</a>");
	}
	%>

					</div>


				</div>
			</div>

		</div>


<%-- 		<jsp:include page="indexfooter.jsp" flush="true"/> --%>
	</section>

</body>
</html>