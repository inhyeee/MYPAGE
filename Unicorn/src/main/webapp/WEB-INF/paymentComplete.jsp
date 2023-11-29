<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

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

    
    .paymentComplete { margin-top: 150px;  text-align: center; height:250px;}

    .buttonWrap { display: flex; flex-direction: row; justify-content: center;}
    .button-item { width: 49%; text-align: center; height: 70px; line-height: 3; font-size: 18px;}

    #cancelButton { margin-right: 2%; border: 1px solid #d0ac88; padding: 10px; color: #d0ac88; width: 200px; }
    #finishButton { color: white; background-color: #d0ac88; padding: 10px; width: 200px;}
    #cancelButton:hover, #finishButton:hover { cursor: pointer; }
    ::placeholder { font-size: 13px; }
    
  </style>
</head>
<body class="main" style="margin-top: 0;">

  
    <!-- section -->
    <section id="section" class="sectionbody">

      <div class="paymentComplete">
        <h2> 결제가 완료되었습니다</h2>
        <div class="buttonWrap mt-5">
	        <a href="/unicorn/main">
	          <div class="button-item" id="cancelButton">홈으로</div>
	        </a>
	        <a href="/unicorn/order">
	          <div class="button-item" id="finishButton">주문조회 바로가기</div>
          	</a>
	        </div>
      </div>


    </section>
    <!-- section end -->

  </div>
</body>

</html>