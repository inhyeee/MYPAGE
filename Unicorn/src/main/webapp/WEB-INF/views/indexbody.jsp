<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*" %>
<%@ page import="com.human.unicorn.dto.IndexbodyDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>index</title>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
  crossorigin="anonymous"></script>
<!-- font -->
<link rel="stylesheet" type="text/css"
  href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
<title>Insert title here</title>
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

    
     /* =========================
	  섹션 캐러셀 슬라이드
    ========================= */    
    #demo { margin-top: 200px;}


    /* =========================
	  best item
    ========================= */   
    
    .img-wrap { margin-right: 20px; margin-bottom: 20px; width: 350px; height: 300px; }
    .imgcontent { color:#888; font-size: 13px }
    .btn.btn-outline-dark { margin-top: -10px;}



    /* =========================
	  new item
    ========================= */   
    /* new - item*/
    .new-item { height: 800px; position: relative; }
    .new-title { width: 500px; font-weight: bold; font-size: 52px; position: relative; }
    .new-detail { width: 600px; font-size: 28px; position: relative; }
    .new-readmore{ width: 70px; height: 40px; padding: 10px; position: relative;
        background-color: rgb(237, 218, 189); font-weight: bold; border-radius: 5px; }

    /* new - item*/
    .new-item { height: 800px; position: relative; }
    .new-title { width: 500px; font-weight: bold; font-size: 50px; position: relative; }
    .new-detail { width: 600px; font-size: 28px; position: relative;}
    .new-readmore{ width: 70px; height: 40px; padding: 10px; position: relative; background-color: #d0ac88 ; font-weight: bold; border-radius: 5px; text-align: center; }

    /* 새상품 1 이미지& 위치 조정 */
    #new-item1 {
      background-image: url("https://p.turbosquid.com/ts-thumb/L5/fPVQZK/CzLlq5lO/03/png/1586281684/1920x1080/fit_q87/8faf3fe307ed07168372161fc592754ba653d995/03.jpg"); background-size: cover; }
    #new-title1{ top: 100px; left: 100px; }
    #new-detail1{ top: 90px; left: 100px; }
    #new-readmore1{ top: 100px; left: 100px; color: white; }

    /* 새상품 2 이미지& 위치 조정 */
    #new-item2{
      background-image: url("https://p.turbosquid.com/ts-thumb/Tc/X6JZPf/Kr/renderdemuestra1/jpg/1639339611/1920x1080/fit_q87/ce28a85e2e42bed18a8ea4fe3b05b2043bc367fc/renderdemuestra1.jpg"); background-size: cover; }
    #new-title2{ top: 100px; left: 50%; }
    #new-detail2{ top: 90px; left: 50%; }
    #new-readmore2{ top: 100px; left: 70%; color: white; }


  </style>
</head>

<body class="main" style="margin-top: 0;">

  <div id="wrap">
 
    <!-- section -->
    <section id="section" class="sectionbody">

      <!-- 캐러셀 슬라이드 : 좌우로 넘어가는 슬라이드(쇼핑몰 등)-->
      <div id="demo" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
          <button data-bs-target="#demo" data-bs-slide-to="1"></button>
          <button data-bs-target="#demo" data-bs-slide-to="2"></button>
          <button data-bs-target="#demo" data-bs-slide-to="3"></button>
          <button data-bs-target="#demo" data-bs-slide-to="4"></button>

        </div>

        <!-- indicators 숫자와 이미지 개수 같게  -->
        <div class="carousel-inner">
          <div class="carousel-item active">
            <!-- 이미지 자리 -->
            <img src="https://ifh.cc/g/RRjV6Z.jpg" height="650px" class="d-block w-100">
          </div>
          <div class="carousel-item">
            <!-- 이미지 자리 -->
            <img src="https://ifh.cc/g/Lhmn6o.jpg" height="650px" class="d-block w-100">
          </div>
          <div class="carousel-item">
            <!-- 이미지 자리 -->
            <img src="https://ifh.cc/g/1RndrM.jpg" height="650px" class="d-block w-100">
          </div>
          <div class="carousel-item">
            <!-- 이미지 자리 -->
            <img src="https://ifh.cc/g/rPJ2Hz.jpg" height="650px" class="d-block w-100">
          </div>
          <div class="carousel-item">
            <!-- 이미지 자리 -->
            <img src="https://ifh.cc/g/h8rFTx.jpg" height="650px" class="d-block w-100">
          </div>

        </div>

        <button class="carousel-control-prev" data-bs-target="#demo" data-bs-slide="prev">
          <span class="carousel-control-prev-icon"></span>
          </button>
          <button class="carousel-control-next" data-bs-target="#demo" data-bs-slide="next">
            <!-- 아이콘 배치 -->
            <span class="carousel-control-next-icon"></span>
          </button>
          </div>
          
          <div class="container mt-5">
            <h2>Best</h2>
            
                <div class="bestcontainer d-flex flex-wrap flex-row ">

                    <div class="img-wrap mt-3 d-inline-block">
                      <a href="ProductDetails.jsp">
                        <img class="bestimg m-auto" src="https://ifh.cc/g/WTJ8NH.jpg" width="100%" alt="">
                        <div class="imgtitle"> Blue&Wood tone bed
                        </div>
                        <div class="imgcontent">noop noop
                        </div>
                      </a>
                    </div>

                    <div class="img-wrap mt-3 d-inline-block">
                      <a href="ProductDetails.jsp">
                        <img class="bestimg m-auto" src="https://ifh.cc/g/oXBBxt.jpg" width="100%" alt="">
                        <div class="imgtitle"> White&Cornflowerblue tone bed
                        </div>
                        <div class="imgcontent">noop noop
                        </div>
                      </a>
                    </div>

                    <div class="img-wrap mt-3 d-inline-block">
                      <a href="ProductDetails.jsp">
                        <img class="bestimg m-auto" src="https://ifh.cc/g/kjkXlN.jpg" width="100%"  height="230px" alt="">
                        <div class="imgtitle"> Mark-champs bed
                        </div>
                        <div class="imgcontent">noop noop
                        </div>
                      </a>
                    </div>

                    <div class="img-wrap mt-3 d-inline-block">
                      <a href="ProductDetails.jsp">
                        <img class="bestimg m-auto" src="https://ifh.cc/g/J90Fbn.jpg" width="100%"  height="230px" alt="">
                        <div class="imgtitle"> Fred-Grey bed
                        </div>
                        <div class="imgcontent">noop noop
                        </div>
                      </a>
                    </div>
                  </div>
                  <div class="button d-flex justify-content-center">
                     <a href="ProductBestList.jsp">
                    <button type="button" class="btn btn-outline-secondary">더보기</button></a>
                  </div>
                   

              
            </div>
          
<c:forEach var="list" items="${list }">
    <!-- new item -->
    <div class="new-container mt-5">
    <!-- new item 1 -->
    <div class="new-item" id="new-item1"  
    style="background-image: url('${list.mainImg3}'); background-size: cover;">
    
      <div class="new-title" id="new-title1">
      ${list.productname}
      </div>
      <div class="new-detail" id="new-detail1">
       ${list.productex}
       </div>
       <a class="new-readmore" id="new-readmore1" href="productDetail?productNo=3">더보기</a>
       
      
       </div>
    </div>
</c:forEach>

    </section>
    <!-- section end -->

  </div>
</body>
</html>