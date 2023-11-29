<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	  푸터
    ========================= */
    footer .toparea { height: 50px; }
    footer .topbar { vertical-align: middle; }
    footer .top-item { float: right; margin-right: 20px; margin-top: 0px; font-size: 12px; }
    footer .logo { padding-left: 15px; }

    .footercontainer { font-size: 11px; font-weight: 1000; line-height: 4;}
    .footercontent { color:rgb(59, 59, 59); font-weight: 300; margin-right: 30px; }

  </style>
</head>
<body class="main" style="margin-top: 0;">

    <!-- section end -->

    <hr class="hr mt-5 style="color: #d0ac88;">
    <footer id="footer" class="footer">  
        <div class="toparea">
          <ul class="topbar">
            <li class="top-item"><a href="#none" class="top-link" style="margin-right: 50px;">이용안내</a></li>
            <li class="top-item"><a href="#none" class="top-link">개인정보처리방침</a></li>
            <li class="top-item"><a href="#none" class="top-link">이용약관</a></li>
            <li class="top-item"><a href="#none" class="top-link">인재채용</a></li>
            <li class="top-item"><a href="#none" class="top-link">회사소개</a></li>
          </ul>
        </div>
        <div class="logo" style="margin-top: -70px;"> 
          <a class="logo" href="/unicorn/main" style="font-family:'ImcreSoojin';">
            <h2> Noop Noop </h2>
          </a>
        </div>
        <div class="footercontainer">
          쇼핑몰 기본정보 <br>
          상호명 <span class="footercontent"> Noop Noop </span>
          대표 <span class="footercontent"> Unicorn </span>
          대표전화 <span class="footercontent"> 000-000-0000 </span>
          사업자등록번호 <span class="footercontent"> 000-000-0000 </span><br>
          통신판매업 신고번호 개인정보보호책임자 <span class="footercontent"> 유니콘 </span>
          주소 <span class="footercontent"> 충남 천안시 동남구 대흥로 134</span>

        </div>


    </footer>
  </div>

</body>
</html>