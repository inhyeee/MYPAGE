<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>나의 게시글</title>
  <!-- bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
  <!-- font -->
  <link rel="stylesheet" type="text/css"
    href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />


  <style>
/*     div { border: 1px solid orange; } */

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
/*       border: 1px solid blue; */
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

    .board_list {
      /* border: 1px solid red; */
      width: 900px
    }

    .board_list_title {
      /* border: 1px solid blue; */
      border-bottom: 2px solid gray;
      padding: 20px;
      font-weight: bold;
    }

    .board_list_item {
      border-bottom: 1px solid gray;
      padding: 10px;
      margin-top: 20px;
      text-align: left;
    }

    .board_btn {
      text-align: right;
      padding: 0 10px 10px 0;
    }

    .delete_btn {
      border: none;
      width: 50px;
      color: gray;
    }

    /* 게시글 table ====================*/
    .board_top {
      background-color: #d8c69c;
      color: white;
      text-align: center;
      height: 50px;
    }
  
    .board_top_title {
      background-color: #d8c69c;
      color: white;
      text-align: left;
      height: 50px;
    }

    .board_num,
    .board_category,
    .board_date {
      height: 50px;
      text-align: center;
      border-bottom: 1px solid rgb(190, 190, 190);
    }

    .board_title {
      height: 50px;
      text-align: left;
      border-bottom: 1px solid rgb(190, 190, 190);
    }

    .board_title:hover {
      cursor: pointer;
    }
    
    .nolist {
    	padding-top : 20px;
    	text-align: center;
    }

    /* 페이지 넘버 ====================*/
    .oderbar_num {
      /* border: 1px solid blue; */
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }

    .oderbar_num_item {
      /* border: 1px solid gray; */
      width: 30px;
      height: 30px;
      margin: 5px;
      text-align: center;
    }

    .allcheck, .check {
      margin: 5px;
    }
  </style>
</head>

<body class="main" style="margin-top: 0;">

<%-- 	<c:import url="indexheader.jsp"/> --%>

  	<div id="wrap">
    
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

          <div class="board_list">
            <div class="board_list_title">
              나의 게시글
            </div>
            
		<form method="post" action="deleteInquiry">
		
            <div class="board_list_item">
              <div class="board_btn"><input class="delete_btn" type="submit" value="삭제"></div>
              <div class="board_list_table">
                <table>
                  <colgroup>
                    <col width="50px">
                    <col width="50px">
                    <col width="250px">
                    <col width="500px">
                    <col width="100px">
                  </colgroup>
                  <tr>
                    <td class="board_top"><input class="allcheck" name="checked" value="-1" type="checkbox"></td>
                    <td class="board_top">번호</td>
                    <td class="board_top">제품</td>
                    <td class="board_top_title">제목</td>
                    <td class="board_top">날짜</td>
                  </tr>
                  
					<c:if test="${empty inquiry }">
						<td class="nolist" colspan="5">작성한 글이 없습니다.</td>
					</c:if>
					<%int count = 1; %>
             		<c:forEach var="dto" items="${inquiry}">
                  <tr>
                    <td><input class="check" name="list_remove" value="${dto.inquiryno }" type="checkbox"></td>
                    <td class="board_num"> <%= count %></td>
                    <td class="board_category">${dto.productname}</td>
                    <td class="board_title">${dto.inquirytitle}</td>
                    <td class="board_date">${dto.inquirydate}</td>
                  </tr>
					<%count++;%>
             		</c:forEach>
                </table>
                
                
		</form>

                <div class="oderbar_num">
                  <div class="oderbar_num_item"><<</div>
                      <div class="oderbar_num_item"><</div>
                      <div class="oderbar_num_item">1</div>
                      <div class="oderbar_num_item">></div>
                      <div class="oderbar_num_item">>></div>
                    </div>

                  </div>
                </div>

              </div>

            </div>

          </div>


    </section>
    <!-- section end -->

   
  </div>
<%--   <c:import url="indexfooter.jsp"/> --%>

  <script>

    // 전체선택 체크박스
    let allcheck = document.querySelector(".allcheck");
    // 항목별 체크박스
    let check = document.querySelector(".check");

    allcheck.addEventListener("click", function () {
      let ischecked = allcheck.checked;
      // 전체선택
      if (ischecked) {
        let check = document.querySelectorAll(".check");
        for (let checkbox of check) {
          checkbox.checked = true;
        }
        // 전체선택 해제
      } else {
        let check = document.querySelectorAll(".check");
        for (let checkbox of check) {
          checkbox.checked = false;
        }
      }
    })
 

    </script>

</body>

</html>