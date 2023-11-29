<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관동의</title>
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
        body {
            font-family: pretendard;
        }

        /* ul, ol, dl, li { list-style: none; } */
        /* a { text-decoration: none; color: none; color: #000; } */
        /* common end */
        /* a:hover, a:active, a:focus { text-decoration: none; } */

        @font-face {
            font-family: 'ImcreSoojin';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        body {
            font-family: pretendard;
        }

        /* div {
            border: 1px solid red;
        } */

        #all {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            /* height: 100vh; */
            text-align: center;
        }

        h4 {
            display: flex;
            margin: 10px;
            margin-top: 50px;
            margin-bottom: 50px;
            font-size: 27px;
        }

        h3 {
            /* font-size: 24px; */
            margin: 30px;
        }

        hr {
            border: 2px solid #d0ac88;
        }

        .chk {
            width: 540px;
            padding: 20px;
            overflow: auto;
            height: 100px;
            font-size: 14px;
        }

        .next-button {
            width: 300px;
            height: 50px;
            font-size: medium;
            margin: 30px;
            border-radius: 5px;
            border: 2px solid #d0ac88;
            background-color: white;
        }

        .c1 {
            margin: 20px;
            display: flex;
        }

        .c3 {
            display: flex;
        }

        .div1 {
            display: flex;
            /* font-size: large; */
            /* margin-bottom: 10px; */
        }

        .chk2 {
            display: flex;
            margin-left: 20px;
            margin-top: 30px;
        }

        .button2,
        .button3,
        .close1,
        .close2 {
            display: flex;
            margin-left: 320px;
            cursor: pointer;
        }

        a {
            color: black;
            text-decoration-line: none;
        }

        /* 체크박스 스타일 */
        input[type="checkbox"] {
            /* 체크박스 기본 스타일 제거 */
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            /* 다양한 브라우저 지원을 위한 속성 추가 */
            width: 20px;
            /* 체크박스 크기 조절 */
            height: 20px;
            /* 체크박스 크기 조절 */
            border: 2px solid #d0ac88;
            /* 체크박스 테두리 스타일 및 색상 */
            background-color: #fff;
            /* 체크박스 배경 색상 */
            cursor: pointer;
            /* 포인터 모양 변경 */
        }

        /* 체크됐을 때의 스타일 */
        input[type="checkbox"]:checked {
            background-color: #d0ac88;
            /* 체크된 상태일 때의 배경 색상 */
            border-color: #d0ac88;
            /* 체크된 상태일 때의 테두리 색상 */
        }
    </style>
</head>

<body>
    <h3>
        <a href="main" style="font-family:'ImcreSoojin';"> Noop Noop </a>
    </h3>
    <div id="all">
        <div class="c2">
            <div>
                <h4>이용약관 및 동의</h4>
            </div>
            <hr>
            <form method="post" action="signup">
                <div>
                    <div class="c1">
                        <div class="div1">
                            <div class="check_wrap">
                                <input type="checkbox" class="allchk">
                            </div>
                            <label>&nbsp;전체동의하기</label>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="c2">
                        <div class="c1">
                            <div class="div1">
                                <div class="check_wrap">
                                    <input type="checkbox" class="essential" id="check_btn1" />
                                </div>
                                <label><span>&nbsp;[필수]</span>&nbsp;이용약관 동의</label>
                            </div>
                            <div class="button2" id="showButton1">보기</div>
                            <div class="close1" id="hideButton1">접기</div>
                        </div>
                        <div class="chk" id="content1">여러분을 환영합니다. 개인정보보호법에 따라 개인정보의
                            항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한
                            사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다. 어쩌구저쩌구 여러분을 환영합니다. 개인정보보호법에
                            따라 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시
                            불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다. 어쩌구저쩌구</div>
                        <div class="c1">
                            <div class="div1">
                                <div class="check_wrap">
                                    <input type="checkbox" class="essential" id="check_btn2" />
                                </div>
                                <label><span>&nbsp;[필수]</span>&nbsp;정보수집 동의</label>
                            </div>
                            <div class="button3" id="showButton2">보기</div>
                            <div class="close2" id="hideButton2">접기</div>
                        </div>

                        <div class="chk" id="content2">여러분을 환영합니다. 개인정보보호법에 따라 개인정보의
                            항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한
                            사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다. 어쩌구저쩌구 여러분을 환영합니다. 개인정보보호법에
                            따라 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시
                            불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다. 어쩌구저쩌구</div>
                    </div>
                </div>
                <hr>
                <div class="chk2">[선택] 마케팅 정보 동의</div>
                <div class="c3">
                    <div class="c1">
                        <div class="div1">
                            <div class="check_wrap">
                                <input type="checkbox" class="select">
                            </div>
                            <label>&nbsp;이메일</label>
                        </div>
                    </div>
                    <div class="c1">
                        <div class="div1">
                            <div class="check_wrap">
                                <input type="checkbox" class="select">
                            </div>
                            <label>&nbsp;SMS / 알림톡</label>
                        </div>
                    </div>
                </div>
        </div>

        <div>
            <div>
                <a href="이수연_sign_up.html">
                    <button type="submit" class="next-button" disabled>다음</button>
                </a>
            </div>
        </div>
        </form>
    </div>
</body>
<script>
    let checkAll = document.querySelector(".allchk"); // 전체동의 쿼리셀렉터로 불러오기
    let ischecked = false;

    checkAll.addEventListener("click", function () {
        console.log("click")
        ischecked = !ischecked;
        console.log(ischecked)

        let essentialCheckboxes = document.querySelectorAll(".essential"); // 필수동의
        essentialCheckboxes.forEach(function (checkbox) { // 필수안의 체크박스들 체크하게 만들기
            checkbox.checked = ischecked;
        });

        let selectcheckboxes = document.querySelectorAll(".select"); // 선택동의
        selectcheckboxes.forEach(function (checkbox) { // 선택동의 체크박스들 체크하게 만들기
            checkbox.checked = ischecked;
        });

        if (ischecked) {
            submitButton.disabled = false; // 전체동의가 선택되었을 때 버튼 활성화
        } else {
            submitButton.disabled = true; // 전체동의가 해제되었을 때 버튼 비활성화
        }
    })

    let submitButton = document.querySelector("button"); // 확인버튼 쿼리셀렉터로 불러오기

    let essentialCheckboxes = document.querySelectorAll(".essential"); // 필수동의 쿼리셀렉터로 불러오기
    let eschecked = false;

    let e1 = document.querySelector("#check_btn1"); // 선택버튼 쿼리셀렉터로 불러오기
    let e2 = document.querySelector("#check_btn2"); // 선택버튼 쿼리셀렉터로 불러오기

    // 필수 체크박스 상태 변경 시 버튼 활성화 여부 업데이트
    function updateSubmitButton() {
        if (e1.checked && e2.checked) { // 두개 선택이 되면
            submitButton.disabled = false; // 확인버튼 활성화
        } else {
            submitButton.disabled = true; // 확인버튼 비활성화
        }
    }

    // 체크박스 상태가 변경될 때마다 업데이트 함수 호출
    e1.addEventListener("change", updateSubmitButton);
    e2.addEventListener("change", updateSubmitButton);

    // 보기 버튼을 눌렀을때 약관동의 보이고 접기버튼 이벤트
    let showButton1 = document.getElementById('showButton1'); // 보기버튼 불러오기
    let showButton2 = document.getElementById('showButton2'); // 보기버튼 불러오기
    let content1 = document.getElementById('content1'); // 내용 불러오기

    let hideButton1 = document.getElementById('hideButton1'); // 접기버튼 불러오기
    let hideButton2 = document.getElementById('hideButton2'); // 접기버튼 쿼리셀렉터로 불러오기
    let content2 = document.getElementById('content2'); // 내용불러오기

    // 초기에는 접기 버튼을 숨김
    hideButton1.style.display = 'none';
    hideButton2.style.display = 'none';
    // 초기에는 약관내용 숨김
    content1.style.display = 'none';
    content2.style.display = 'none';

    // 보기 1
    showButton1.addEventListener('click', function () {
        console.log("click");
        content1.style.display = 'block'; // 내용을 보이게 함
        showButton1.style.display = 'none'; // 보기 버튼을 숨김
        hideButton1.style.display = 'block'; // 접기 버튼을 보이게 함
    });

    hideButton1.addEventListener('click', function () {
        console.log("click");
        content1.style.display = 'none'; // 내용을 보이게 함
        showButton1.style.display = 'block'; // 보기 버튼을 숨김
        hideButton1.style.display = 'none'; // 접기 버튼을 보이게 함
    });

    // 보기 2
    showButton2.addEventListener('click', function () {
        console.log("click");
        content2.style.display = 'block'; // 내용을 보이게 함
        showButton2.style.display = 'none'; // 보기 버튼을 숨김
        hideButton2.style.display = 'block'; // 접기 버튼을 보이게 함
    });

    hideButton2.addEventListener('click', function () {
        console.log("click");
        content2.style.display = 'none'; // 내용을 보이게 함
        showButton2.style.display = 'block'; // 보기 버튼을 숨김
        hideButton2.style.display = 'none'; // 접기 버튼을 보이게 함
    });
</script>

</html>