<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

    .container { height: 500px; margin-top:500px; }
    /* =========================
	  button
    ========================= */
    .buttonWrap { width: 70%;  display: flex; justify-content: space-around; align-items: center; margin: auto; margin-top: 100px;}
    .buttonWrap .btn { width: 40%; height: 200px; border-radius: 40px;}
    .btn.btn-outline-warning { color: #d0ac88; border: 1px solid #d0ac88; }
    .btn.btn-outline-warning:hover { background-color: #d0ac88; color: #fff; }
    .btn.btn-outline-secondary { color:#6c757d;}
    .btn.btn-outline-secondary:hover { color: #fff;}
    

</style>
<body class="main" style="margin-top: 0;">

  <div id="wrap">
    
    <!-- section -->
    <section id="section" class="sectionbody">
      <div class="container mt-5">
        <hr>
        <div class="buttonWrap ">
          <button type="button" class="btn btn-outline-secondary" id="supportbutton1"><p class="display-6"><strong>공지사항</strong></p></button>
          <button type="button" class="btn btn-outline-warning" id="supportbutton2"><p class="display-6"><strong>FAQ</strong></p></button>
        </div>
      </div>
      
      </section>
  </div>

  <!-- section end -->

  
  
<script>
    document.querySelector("#supportbutton1").addEventListener("click", function(){
      window.location.href = "noticeList"
    });
    document.querySelector("#supportbutton2").addEventListener("click", function(){
      window.location.href = "FAQ"
    });



  

</script>
</body>

</html>