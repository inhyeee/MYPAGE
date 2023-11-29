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
  botton tabs
  ========================= */    
  .sectionbody .nav-link { width: 278px; text-align: center; }
  .returninfo { list-style: disc ;}
  .table.table td { text-align: left; font-size: 13px; }


/* =========================
	  review tabs
    ========================= */
    .table.table td { text-align: left; font-size: 13px;}
    .reviewprofile { width: 70px;}
    .reviewscore { width: 70px;}
    .reviewid { width:80px;}

    /* =========================
	  별점
    ========================= */
    .star-rating { border:solid 1px #ccc; display:flex; flex-direction: row-reverse; font-size:1.5em;
     				justify-content:space-around; padding:0 .2em; text-align:center; width:5em; }

	.star-rating input { display:none; }

	.star-rating label { color:#ccc; cursor:pointer; }

	.star-rating :checked ~ label { color:#f90; }

	.star-rating label:hover, .star-rating label:hover ~ label { color:#fc0; }

    /* =========================
	  textreview
    ========================= */
    .textreviewtitle { margin-top: 50px;}
    textarea { resize: none; width: 80%; height: 200px; border: 0.5px solid #a0a0a0; border-radius: 5px; }
    textarea:focus { outline-color: #d8c69c;}

    .buttonWrap { display: flex; flex-direction: row; }
    .button-item { width: 49%; text-align: center; }

    #cancelButton { margin-right: 2%; border: 1px solid #d0ac88; padding: 10px; color: #d0ac88; width: 100px;}
    #finishButton { color: white; background-color: #d0ac88; padding: 10px; width: 100px;}
    #cancelButton:hover, #finishButton:hover { cursor: pointer; }
    ::placeholder { font-size: 13px; }


  /* q&a board css */

  th{ height: 50px; background-color: #d8c69c; text-align: center; }
  td{ text-align: center; border-bottom: 1px solid #d8c69c; padding: 5px; font-size: 13px;}

  /* 페이지 css*/
  .pageWrap{ width: 100%; margin-top: 50px; display: flex; justify-content: center; }
  .page_button{ border: 1px solid #a0a0a0; width: 35px; text-align: center; margin-right: 5px; margin-left: 5px; padding: 3px 0 3px 0; }
  .page_sidebutton { width: 35px; text-align: center; }
  .page_button:hover{ cursor: pointer; }
  .page_sidebutton:hover{ cursor: pointer; }
  .writeWrap{ margin-top: 10px; }
  .write_QnA{ width: 100px; background-color: #d0ac88; padding: 5px; text-align: center; float: right; color: white; }


  /* =========================
    제품 상세 이미지
  ========================= */
  /*이미지 가격 박스 */
  .Product-detail { display: flex; }
  .bigbox{ display: flex; justify-content: center; margin-bottom: 10%; }
  .box2{ margin-left:10px; margin-right: 10px; ; width: 40%; padding-left: 50px;}

  /*이미지 */
  .big-img { width: 600px; height: 400px; }
  .small-img { width: 600px; display: flex; justify-content: center; }
  .small1, .small2,.small3{ width: 100px; height: 80px; margin: 2%; }
  .imgg img { width: 100%; height: 100%; } 
  .slider-container { width: 600px; height: 400px; overflow: hidden; position: relative; }
  .slider { width: 600px; height: 400px; display: flex; transition: transform 0.4s ease-in-out; }
  .slider img { width: 100%; height: 100%; }
  .slider-button-pr,.slider-button-ne { position: absolute; bottom: 10px; background-color: #8d8b8b; color: #fff; padding: 5px 10px; cursor: pointer; }
  .slider-button-ne{ left: 55%; transform: translateX(-55%); }
  .slider-button-pr{ left: 45%; transform: translateX(-45%); }
  
  /* 작은 이미지 호버 효과*/
  .small-image:hover { border: 3px solid #9b9b9b; border-radius: 3px; }
  .price { font-family:Arial;  color: red; font-weight: 1000; font-size: 20px;}
  .form-select { width: 300px;}
  #quantity-select { width: 300px; }  
  


  .top-button, .bottom-button { display: none; position: fixed; background-color: transparent;  color: white; border: none; border-radius: 5px; cursor: pointer; height: 50px; width: 50px; position: fixed;
 right: 10px; transform: translateY(-50%); padding: 10px; border-radius: 10px; margin-right: 10px;
  }

  .top-button{ top: 83%; }
  .bottom-button{ top: 90%; }
  .top-button img, .bottom-button img { width: 160%; /* 이미지가 버튼에 꽉 차게 표시 */ }

  </style>
</head>
<body>
	<form action="reviewmodify">
	<input type=hidden value="${review.userno }">
            <div class="sectioncontainer">
              <h5> 별점 </h5>
              <div class="rating">
				<div class="star-rating">
				  <input type="radio" id="5-stars" name="reviewrates" value="5" />
				  <label for="5-stars" class="star">&#9733;</label>
				  <input type="radio" id="4-stars" name="reviewrates" value="4" />
				  <label for="4-stars" class="star">&#9733;</label>
				  <input type="radio" id="3-stars" name="reviewrates" value="3" />
				  <label for="3-stars" class="star">&#9733;</label>
				  <input type="radio" id="2-stars" name="reviewrates" value="2" />
				  <label for="2-stars" class="star">&#9733;</label>
				  <input type="radio" id="1-star" name="reviewrates" value="1" />
				  <label for="1-star" class="star">&#9733;</label>
				</div>
              </div>
              <!-- 리뷰 쓰기 -->
              <div class="textreview">
                <h5 class="textreviewtitle"> 리뷰 </h5>
                <textarea placeholder="다른 고객님에게 도움이 되도록 상품에 대한 솔직한 평가를 남겨주세요" class="textareareview" name="reviewdetails">
                </textarea>
             </div>
             <h5 class="addphoto mt-3" > 사진 첨부 </h5>
             <div class="mb-3">
             <input class="form-control" style="width: 400px;" type="file" id="formFileMultiple" multiple>
            </div>


             <div class="buttonWrap mt-5">
              <div class="button-item" id="cancelButton">취소</div>
              <input type="submit" class="button-item" id="finishButton" value="등록">
              </form>
            </div>

            </div>
          </div>
          <!-- =========================
          review tabs 끝
          ========================= -->
          
          
      </div>
  </div>


        <!-- section end -->

  </div>
</div>
  <script>
    // 취소버튼
    document.querySelector("#cancelButton").addEventListener("click", function () {
      if (confirm("작성을 취소하시겠습니까?")) {
        window.location.href = "review"
      }
    });

    // 등록버튼 - 제목 및 내용 필수 입력
    document.querySelector("#finishButton").addEventListener("click", function () {
      let textBody = document.querySelector(".textareareview");

        if (textBody.value == "") {
          alert("리뷰하실 내용을 입력해주세요");
        } else {
          if (confirm("등록하시겠습니까?")) {
//             window.location.href = "ProductDetails.#menu1";
//             history.back();
//             document.querySelector("#menu2").click();
          }
        }
      });
    

    // 별점
//     ratingToPercent(); {
//       const score = +this.restaurant.averageScore * 20;
//       return score + 1.5;
//  };

  
  </script>
</body>
</html>