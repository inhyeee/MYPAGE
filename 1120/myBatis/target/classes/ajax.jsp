<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button type="button" id="btn_get">join1 get 방식</button>
	<button type="button" id="btn_post">join1 post 방식</button>
	<div id="view"></div>

	<table border=1>
		<thead>
			<tr>
				<th>id</th>
				<th>pw</th>
				<th>name</th>
				<th>email</th>
				<th>age</th>
			</tr>
		</thead>
		<tbody id="memberList">
		</tbody>
	</table>

	<script>
		document.querySelector("#btn_get").addEventListener(
				"click",
				function() {
					let xhr = new XMLHttpRequest();
					let url = "http://localhost:8080/param/json1";
					xhr.open("GET", url)
					xhr.send();

					xhr.onload = function() {
						console.log(xhr.responseText);

						//json으로 보내줌
						let data = JSON.parse(xhr.responseText);
						console.log(data);

						let total = data.total;
						let name = data["name"];

						let list1 = data.list1;
						let html = "";
						for (let i = 0; i < list1.length; i++) {

							html += "<p>" + list1[i] + "</p>";

						}
						;

						let dto = data.dto;
						html = "";
						html = "id: " + dto.id + ", name: " + dto.name;

						// 			document.querySelector("#view").innerHTML = xhr.responseText;
						document.querySelector("#view").innerHTML = total + ' '
								+ name;
						document.querySelector("#view").innerHTML = html;

						/*
						<tr>
							<td>idid</td>
							<td>pwpw</td>
							<td>namename</td>
							<td>emailemail</td>
							<td>ageage</td>
						</tr>
						 */

						let list2 = data.list2;
						let html2 = "";
						for(let i=0; i<list2.length; i++){
							let dto = list2[i];
							
							let id = dto.id;
							let pw = dto.pw;
							let name = dto.name;
							let email = dto.email;
							let age = dto.age;
							
							html2 += "";
							html2 += "<tr>";
							html2 += "<td>" + id + "</td>";
							html2 += "<td>" + pw + "</td>";
							html2 += "<td>" + name + "</td>";
							html2 += "<td>" + email + "</td>";
							html2 += "<td>" + age + "</td>";
							html2 += "</tr>";
							
							document.querySelector("#memberList").innerHTML = html2;
						
							// 공공데이터 예제처럼
						}

					}
				});
		
		
		
		document.querySelector("#btn_post").addEventListener("click",function() {
			let xhr = new XMLHttpRequest();
			let url = "http://localhost:8080/param/json2";
			xhr.open("POST", url);
			xhr.setRequestHeader("Content-type", "application/json; charset-utf-8");
		
			let json = {
				id: "idid",
				pw: 1,
				name: "2",
				// email: "email",
				age: "3"
			};
			
			console.log(1, json);
			console.log(2,""+json);	//object 값 출력된다
			
			let sendData = JSON.stringify(json);
			
			console.log(3, sendData);
			
			
			// post는 send에 전달인자로 보낸다
			xhr.send(sendData);
		
			xhr.onload = function() {
				console.log(xhr.responseText);
			}
		})
		
		
		
		
		
		
	</script>
</body>
</html>