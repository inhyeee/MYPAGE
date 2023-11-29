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
  <title>About us</title>
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
    header .toparea { height: 50px; }
    header .topbar { vertical-align: middle; }
    header .top-item { float: right; margin-right: 20px; margin-top: 10px; font-size: 12px; }
    header .container-fluid { height: 100px; }

     /* =========================
	  introduce
    ========================= */    
    .introduce { width: 50%; }
    .introduceimg { width: 350px; opacity: 0.5; display: block; margin: 0 auto; margin-top: 40px;} 

     /* =========================
	  푸터
    ========================= */
    footer .toparea { height: 50px; }
    footer .topbar { vertical-align: middle; }
    footer .top-item { float: right; margin-right: 20px; margin-top: 0px; font-size: 12px; }
    footer .logo { padding-left: 15px; }

    .footer .container { font-size: 11px; font-weight: 1000; line-height: 4;}
    .footercontent { color:rgb(59, 59, 59); font-weight: 300; margin-right: 30px; }

    

  </style>
  
</head>
<body class="main" style="margin-top: 0;">

    <!-- header end -->
    <!-- section -->
    <section id="section" class="sectionbody">

      <div class="section-container d-flex">
        <div class="introduce">
          <img class="introduceimg" src="https://ifh.cc/g/cZygHB.png" alt="">
        </div>
        <div class="introduce mt-5 ms-3">
            <h1 class="introtitle" style="font-family: 'ImcreSoojin';">Team Unicorn</h1>
            <br>
            <p><strong><span style="color:green; font-size:22px;"> NO OP</span></strong>eration <br>
            <p style="font-size:18px;"> 잠드는 순간에는 <br>아무 일도, 아무 걱정도 없이 <br>편안하게.
             
        </div>
      </div>
      <div class="location mt-5">
        <h2 class="location mt-3 ms-3"> 오시는 길</h2>

        <div id="map" style="height:500px; border: 1px solid gray;"></div>

        <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3d11f28c480bd349414a8b27a4a9cd5d&libraries=services"></script>
        <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = {
                center: new kakao.maps.LatLng(36.80728917,  127.1471611), // 지도의 중심좌표
                level: 3, // 지도의 확대 레벨
                mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
            }; 

        // 지도를 생성한다 
        var map = new kakao.maps.Map(mapContainer, mapOption); 

        // 지도에 마커를 생성하고 표시한다
        var marker = new kakao.maps.Marker({
            position: new kakao.maps.LatLng(36.80728917,  127.1471611), // 마커의 좌표
            map: map // 마커를 표시할 지도 객체
        });

      </script>
      </div>  
      <div class="location-text mt-2 ms-2 mb-5">
        <h5 class="loc mt-3">천안시 동남구 대흥로 126 8층 Team unicorn</h5></div>
   
    



    </section>
    <!-- section end -->

  </div>
</body>

</html>