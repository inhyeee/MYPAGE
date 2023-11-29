<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
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
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

/* div {
            border: 1px solid red;
        } */
#all {
	justify-content: center;
	/* align-items: center; */
	text-align: center;
	margin-top: 100px;
	/* width: 100%; */
}

#logo {
	margin-top: 100px;
	text-align: center;
}

.save {
	display: flex;
	justify-content: center;
	margin-right: 150px;
}

.message {
	visibility: hidden;
	color: red;
	margin: auto;
	margin-left: 60px;
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

.idpw {
	display: flex;
	justify-content: center;
	/* margin-left: 40px; */
}

.ids {
	margin-right: 30px;
	cursor: pointer;
}

.l {
	margin-right: 20px;
	margin-left: 20px;
}

.pws {
	margin-left: 20px;
	margin-right: 20px;
	cursor: pointer;
}

.join {
	margin-left: 20px;
}

a {
	color: black;
	text-decoration-line: none;
}

input[type="text"], input[type="password"] {
	height: 40px;
	width: 300px;
	/* border: 1px solid gray; */
	/* border-radius: 5px; */
}

input[type="submit"] {
	width: 300px;
	height: 40px;
	margin: 30px;
	margin-left: 80px;
	border-radius: 5px;
	border: none;
	background-color: #d8c69c;
	color: white;
	font-size: medium;
	font-weight: bold
}

.kakao {
	margin-top: 50px;
	margin-left: 50px;
	/* cursor: pointer; */
}

.naver {
	margin-top: 5px;
	margin-left: 50px;
}

img {
	height: 40px;
}

#id1, #pw1 {
	visibility: hidden;
	color: red;
	font-size: 13px;
	margin-left: 250px;
	margin-bottom: 10px;
}
</style>
</head>

<body>
	<div id="logo">
		<a class="navbar-brand" href="main"
			style="font-family: 'ImcreSoojin';">
			<h2>Noop Noop</h2>
		</a>
	</div>
	<div id="all">
		<div class="input mt-5">
			<form method="post" action="login_Users">
				<div class="id">
					아이디 &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="id"
						class="id-input" placeholder="아이디를 입력하세요">
				</div>
				<div id="id1">아이디를 입력해주세요</div>
				<div class="pw">
					비밀번호 &nbsp; <input type="password" name="pw" class="pw-input"
						placeholder="비밀번호를 입력하세요">

				</div>
				<div id="pw1">비밀번호를 입력해주세요</div>
		</div>
		<!-- 				<div class="message" name="message">아이디 또는 비밀번호가 일치하지 않습니다.</div> -->
		<div class="save">
			<div class="check_wrap">
				<input type="checkbox" class="chk">
			</div>
			<label>&nbsp;아이디 저장</label>
		</div>
		<div class="button">
			<input type="submit" class="login-input" value="로그인">
		</div>
		</form>
		<div class="idpw">
			<div class="ids">
				<a href="idpw">아이디 찾기</a>
			</div>
			<div class="l">|</div>
			<div class="pws">
				<a href="idpw">비밀번호 찾기</a>
			</div>
			<div class="l">|</div>
			<div class="join">
				<a href="checked">회원가입</a>
			</div>
		</div>

		<div class="kakao">
			<span><a class="k1" href="javascript:kakaoLogin();"> <img
					src="https://www.gb.go.kr/Main/Images/ko/member/certi_kakao_login.png">
			</a></span>
		</div>

		<div class="naver">
			<span class="n1" id="naver_id_login"></span>
		</div>
	</div>
</body>



<script src="http://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
    window.Kakao.init("0fcb47a5d7823a96616fdbc6a560cd5e");

    function kakaoLogin() {
        window.Kakao.Auth.login({
            scope: 'profile_nickname, profile_image',
            success: function (authObj) {
                console.log(authObj);
                window.Kakao.API.request({
                    url: '/v2/user/me',
                    success: res => {
                        const kakao_account = res.kakao_account;
                        console.log(kakao_account);
                    }
                });
            }
        });
    }
</script>

<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>

<body>
	<!-- 네이버 로그인 버튼 노출 영역 -->
	<!-- <div id="naver_id_login"></div> -->
	<!-- //네이버 로그인 버튼 노출 영역 -->
	<script type="text/javascript">
        var naver_id_login = new naver_id_login("QH5LGBr5LaK_qS0hAfho", "http://127.0.0.1:5501/2_project/naver_callback.html");
        var state = naver_id_login.getUniqState();
        naver_id_login.setButton("white", 40);
        naver_id_login.setDomain("YOUR_SERVICE_URL");
        naver_id_login.setState(state);
        naver_id_login.setPopup();
        naver_id_login.init_naver_id_login();
    </script>


	<script>
        document.addEventListener('DOMContentLoaded', function () {
            let idInput = document.querySelector('.input input[type="text"]');
            let pwInput = document.querySelector('.input input[type="password"]');
            let idMessage = document.getElementById('id1');
            let pwMessage = document.getElementById('pw1');
            let login = document.getElementById('.login-input');


            // 엔터 키를 누르면 다음 입력 필드로 이동하도록 설정
            idInput.addEventListener('keydown', function (event) {
                if (event.key == 'Enter') {
                    event.preventDefault(); // 엔터 키의 기본동작을 막음
                    pwInput.focus(); // 비밀번호 입력 필드로 포커스 이동
                }
            });


            pwInput.addEventListener('focus', function () { // 비밀번호 입력 필드를 선택(포커스)했을때
                let input1 = document.querySelector(".id-input")
                if (idInput.value == '') { // 아이디 입력 필드가 빈값이면
                    idMessage.style.visibility = 'visible'; // 아이디는 필수입니다 보이게 설정
                    input1.style.border = "1px solid red"; // 아이디 입력필드 빨간색 테두리 효과
                } else {
                    // let input1 = document.querySelector(".id-input")
                    idMessage.style.visibility = 'hidden'; // 아니면 안보이게 설정
                    input1.style.border = "1px solid gray"; // 아이디 입력필드 검정색 테두리 효과
                }
            });

            idInput.addEventListener('focus', function () { // 아이디 입력 필드를 선택(포커스)했을때
                if (idInput.value !== '') { // 아이디 입력 필드가 빈값이 아니면
                    input1.style.display = 'none'; // 테두리효과 안보이게 설정
                }
            });

            pwInput.addEventListener('!focus', function () { // 비밀번호 입력필드에서 포커스를 잃었을때
                pwMessage.style.visibility = 'hidden'; // 비밀번호는 필수입니다 안보이게 설정
                // let input1 = document.querySelector(".id-input")
                //   input1.style.border = "1px solid red"
            });

            // 아이디 저장 체크박스 이벤트
            document.querySelector('.chk').addEventListener('focus', function () { // 아이디 저장 체크박스 선택시
                let input1 = document.querySelector(".id-input")
                if (idInput.value == '') { // 아이디 입력 필드가 빈값이면
                    idMessage.style.visibility = 'visible'; // 아이디는 필수입니다 보이게 설정
                    input1.style.border = "1px solid red"; // 아이디 입력필드 빨간색 테두리 효과
                } else {
                    idMessage.style.visibility = 'hidden'; // 아이디는 필수입니다 보이게 설정
                    input1.style.border = "1px solid gray"; // 아이디 입력필드 회색 테두리 효과
                }
            });

            document.querySelector('.chk').addEventListener('focus', function () { // 아이디 저장 체크박스 선택시
                let input2 = document.querySelector(".pw-input")
                if (pwInput.value == '') { // 비밀번호 입력 필드가 빈값이거나 아이디 입력 필드가 빈값이면
                    pwMessage.style.visibility = 'visible'; // 비밀번호는 필수입니다 보이게 설정
                    input2.style.border = "1px solid red"; // 비밀번호 입력필드 빨간색 테두리 효과
                } else {
                    pwMessage.style.visibility = 'hidden'; // 아니면 안보이게 설정
                    input2.style.border = "1px solid gray"; // 아이디 입력필드 회색 테두리 효과
                }
            });

            // 로그인버튼 이벤트
            document.querySelector('.login-input').addEventListener('focus', function () { // 로그인버튼 선택시
                let input2 = document.querySelector(".pw-input")
                if (pwInput.value == '') { // 비밀번호 입력 필드가 빈값이면
                    pwMessage.style.visibility = 'visible'; // 비밀번호는 필수입니다 보이게 설정
                    input2.style.border = "1px solid red"; // 아이디 입력필드 빨간색 테두리 효과
                } else {
                    pwMessage.style.visibility = 'hidden'; // 아니면 안보이게 설정
                    input2.style.border = "1px solid gray"; // 아이디 입력필드 검정색 테두리 효과
                }
            });

            //          // 로그인 버튼 
            //          document.querySelector('login-input').addEventListener('click', function () {
            //              if(idInput == null || pwInput == null) {
            //                  alert("아이디 또는 비밀번호를 입력해주세요.")
            //              }
            //          });

            document.querySelector('.login-input').addEventListener('focus', function () { // 로그인버튼 선택시
                let input1 = document.querySelector(".id-input")
                if (idInput.value == '') { // 아이디 입력 필드가 빈값이면
                    idMessage.style.visibility = 'visible'; // 아이디는 필수입니다 보이게 설정   
                    input1.style.border = "1px solid red"; // 아이디 입력필드 빨간색 테두리 효과
                } else {
                    idMessage.style.visibility = 'hidden'; // 아니면 안보이게 설정
                    input1.style.border = "1px solid gray"; // 아이디 입력필드 검정색 테두리 효과
                }
            })
            
            var error = "${error}";
            
            
                if (error !== "") {
                    alert(error);
                }
              
        

            //         let idvalue = "123";              // 아이디값 저장
            //         let pwvalue = "123";             // 비밀번호값 저장

            //         document.querySelector('.login-input').addEventListener('click', function () { // 로그인버튼 선택시
            //             let id = document.querySelector(".id-input");
            //             let pw = document.querySelector(".pw-input");
            //             let message = document.querySelector(".message");

            //             if (id.value == '' || pw.value == '') {     // 아이디입력필드가 빈값이거나 비밀번호입력필드가 빈값이면
            //                 message.style.visibility = "hidden";    // 메세지 숨김

            //                 // 아이디 입력필드가 저장한값과 같거나 비밀번호 입력필드가 저장한값과 같으면 
            //             } else if (id.value == idvalue && pw.value == pwvalue) {
            //                 window.location.href = "윤여준_main_logout.html"       // 메인페이지로 이동 (로그인성공)

            //                 // 아니면
            //             } else {
            //                 message.style.visibility = "visible";           // 메세지 보여줌
            //             }

            //         });


        });
    </script>
    
<script
  src="https://code.jquery.com/jquery-3.7.1.js"></script>
  
  
</html>