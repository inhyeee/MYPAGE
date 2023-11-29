<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ID/PW찾기</title>
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

body {
	font-family: pretendard;
}

/* div {
            border: 1px solid red;
        } */
#div1 {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	/* min-height: 100dvh; */
	text-align: center;
	margin-top: 30px;
}

h3 {
	margin: 30px;
}

.id {
	border-radius: 15px;
	width: 500px;
	margin: 30px;
}

.pw {
	/* border: 1px solid #d0ac88; */
	border-radius: 15px;
	width: 500px;
	margin: 30px;
}

input[type=text], input[type=email] {
	width: 300px;
	height: 35px;
	border: 1px solid gray;
	border-radius: 5px;
}

input[type=submit] {
	width: 250px;
	height: 35px;
	margin: 10px;
	margin-top: 20px;
	background-color: #d8c69c;
	color: white;
	font-size: medium;
	font-weight: bold
}

.login {
	padding: 20px;
	display: flex;
	justify-content: center;
	font-size: 17px;
}

a {
	color: #d0ac88;
	text-decoration-line: none;
}

.mail1, .mail2, .name1, .name2, .id1 {
	margin-top: 15px;
}

.success, .success1 {
	display: none;
	display: flex;
	justify-content: center;
	font-size: 17px;
}

.button, .button1 {
	background-color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 14px;
}

.div2 {
	margin-bottom: 10px;
	margin-left: 10px;
	text-align: left;
}

img {
	width: 25px;
}

.span {
	font-size: 20px;
	/* color: #d0ac88; */
}

hr {
	border: 2px solid #d0ac88;
}

a {
	color: black;
	text-decoration-line: none;
}
</style>
</head>



<script>
	window.addEventListener("load", function() {
		search()
	})

	function search() {
		let id1 = document.querySelector(".id1"); // 비밀번호찾기 아이디입력필드를 쿼리셀렉터로 불러오기
		let name1 = document.querySelector(".name1"); // 아이디찾기 이름입력필드를 쿼리셀렉터로 불러오기
		let name2 = document.querySelector(".name2"); // 비밀번호찾기 이름입력필드를 쿼리셀렉터로 불러오기
		let mail1 = document.querySelector(".mail1"); // 아이디 찾기 메일입력필드를 쿼리셀렉터로 불러오기
		let mail2 = document.querySelector(".mail2"); // 비밀번호 찾기 메일입력필드를 쿼리셀렉터로 불러오기
		let button = document.querySelector(".button"); // 아이디찾기 버튼 쿼리셀렉터로 불러오기
		let button1 = document.querySelector(".button1"); // 아이디찾기 버튼 쿼리셀렉터로 불러오기

		let success = document.querySelector(".success"); // 아이디 문구 쿼리셀렉터로 불러오기
		let success1 = document.querySelector(".success1"); // 아이디 문구 쿼리셀렉터로 불러오기

		name1.addEventListener('keydown', function(event) { // 이름
			console.log("Enter");
			if (event.key === 'Enter') {
				event.preventDefault();
				mail1.focus();
			}
		});

		name2.addEventListener('keydown', function(event) { // 이름
			console.log("Enter");
			if (event.key === 'Enter') {
				event.preventDefault();
				id1.focus();
			}
		});

		id1.addEventListener('keydown', function(event) { // 이름
			console.log("Enter");
			if (event.key === 'Enter') {
				event.preventDefault();
				mail2.focus();
			}
		});

		var error = "${error}";
		if (error !== "") {
			alert(error);
		}
	}
</script>

<body>
	<h3>
		<a href="main" style="font-family: 'ImcreSoojin';"> Noop Noop </a>
	</h3>
	<form method="post" action="find_id">
		<div id="div1">
			<div class="id">
				<div class="div2">
					<span class="span">아이디 찾기</span>
				</div>
				<hr>
				<div class="idid">
					<input type="text" class="name1" name="name" placeholder="이름 입력">
					<input type="email" class="mail1" name="email"
						placeholder="이메일주소 입력">
				</div>
				<div class="bt1">
					<input type="submit" class="button" value="찾기">
				</div>

				<div class="success">${message}</div>
			</div>
	</form>
	<form method="post" action="find_pw">
		<div class="pw">
			<div class="div2">
				<span class="span">비밀번호 찾기</span>
			</div>
			<hr>
			<div class="pwpw">
				<input type="text" class="name2" name="name" placeholder="이름 입력">
				<input type="text" class="id1" name="id" placeholder="아이디 입력">
				<input type="email" class="mail2" name="email" placeholder="이메일 입력">
			</div>
			<div class="bt2">
				<input type="submit" class="button1" value="찾기">
			</div>
			<div class="success1">${pwmessage}</div>
		</div>
		</div>
	</form>
	<div class="login">
		<a href="login">로그인하기</a>
	</div>
	</div>
</body>

</html>