<%-- <%@page import="org.apache.commons.collections.bag.SynchronizedSortedBag"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.human.unicorn.dto.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
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

    /* =========================
	  헤더
    ========================= */
    #header { background: #fff;}
    header .toparea { height: 50px; }
    header .topbar { vertical-align: middle; }
    header .top-item { float: right; margin-right: 20px; margin-top: 10px; font-size: 12px; }
    header .container-fluid { height: 100px; }

  </style>
</head>
<body class="main" style="margin-top: 0;">

  <div id="wrap">
    <header id="header" class="head">
      <div class="toparea">
      
				 <c:choose>
                  <c:when test="${not empty userList.name }">
                  <ul class="topbar">
                     <li class="top-item"><a href="support"
                        class="top-link" style="margin-right: 20px;">고객지원</a></li>
                     <% MemberDTO dto = (MemberDTO)session.getAttribute("userList");
                     if(dto.getGrade() == 2){
                        %>
                     <li class="top-item"><a href="managerMain"
                        class="top-link">관리자페이지</a></li>
                        <%
                     } else { %>
                        <li class="top-item"><a href="mypage"
                              class="top-link">마이페이지</a></li>
                     <% }
                     %>
                     <li class="top-item"><a href="cart"
                        class="top-link">장바구니</a></li>
                     <li class="top-item"><a href="orderlist"
                        class="top-link">주문조회</a></li>
                     <li class="top-item"><a href="/unicorn/logout" class="top-link">로그아웃</a></li>
                     <li class="top-item"><a href="#" class="top-link"><Strong>${userList.name }</Strong>&nbsp;
                           님</a>&nbsp; 환영합니다</li>
                  </ul>

               </c:when>
					<c:otherwise>
						<ul class="topbar">
							<li class="top-item"><a href="support"
								class="top-link" style="margin-right: 20px;">고객지원</a></li>
							<li class="top-item"><a href="mypage"
								class="top-link">마이페이지</a></li>
							<li class="top-item"><a href="/unicorn/cart"
								class="top-link">장바구니</a></li>
							<li class="top-item"><a href="orderlist"
								class="top-link">주문조회</a></li>
							<li class="top-item"><a href="/unicorn/login" class="top-link">로그인</a></li>
						</ul>

					</c:otherwise>
					
				</c:choose>
        
        
      </div>
      <!-- top area end-->
      <!-- nav bar -->
      <nav class="navbar navbar-expand-lg">
        <!-- expand-lg 지점에 도달하면 메뉴 사라지고 버튼 나타남 -->
        <div class="container-fluid">
          <a class="navbar-brand" href="main" style="font-family:'ImcreSoojin';">
            <h2> Noop Noop </h2>
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <!-- 버튼 나타나고 클릭시 target으로 -->
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <!-- collapse -->
            <div class="navbar-nav ms-5 hstack gap-4">
<!--               <a class="nav-link active" aria-current="page" href="index.jsp"><h6> Home </h6></a> -->
              <a class="nav-link" href="event"><h6> Event </h6></a>
              <a class="nav-link" href="productList"><h6> Product </h6></a>
              <a class="nav-link" href="productBestList"><h6> Best </h6></a>
              <div class="vr"></div>
              <a class="nav-link" href="aboutus"><h6> About us </h6></a>
            </div>

            <div class="searchbar ms-auto" style="float:right;">
              <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-warning" type="submit">
                  <img src="https://ifh.cc/g/TWFXdO.png">
                </button>
              </form>
            </div>
          </div>
        </div>
      </nav>
    </header>
    <!-- header end -->
    <section id="section" class="sectionbody">
    	<div class="sectionwrap" id=sectionwrap>



		</div>
</body>

</html>