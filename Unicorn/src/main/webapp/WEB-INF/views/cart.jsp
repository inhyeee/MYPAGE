<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page import="java.util.*"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>장바구니</title>
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
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

<style>
/* div { border: 1px solid orange; } */
/* common */
body {
	font-family: pretendard;
}

ul, ol, dl, li {
	list-style: none;
}

a {
	text-decoration: none;
	color: none;
	color: #000;
}

/* common end */
a:hover, a:active, a:focus {
	text-decoration: none;
}

@font-face {
	font-family: 'ImcreSoojin';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

/* =========================
            헤더
          ========================= */
header .toparea {
	height: 50px;
}

header .topbar {
	vertical-align: middle;
}

header .top-item {
	float: right;
	margin-right: 20px;
	margin-top: 10px;
	font-size: 12px;
}

header .container-fluid {
	height: 100px;
}

/* =========================
            푸터
          ========================= */
footer .toparea {
	height: 50px;
}

footer .topbar {
	vertical-align: middle;
}

footer .top-item {
	float: right;
	margin-right: 20px;
	margin-top: 0px;
	font-size: 12px;
}

footer .logo {
	padding-left: 15px;
}

.footer .container {
	font-size: 11px;
	font-weight: 1000;
	line-height: 4;
}

.footercontent {
	color: rgb(59, 59, 59);
	font-weight: 300;
	margin-right: 30px;
}

/* 섹션 css */
td {
	text-align: center;
}

.sectionContainer {
	padding: 30px 120px 50px 120px;
	background-color: #ffffff;
}

.basketHead {
	font-size: 32px;
	margin-bottom: 20px;
	color: black;
	margin-right: 70%;
	min-width: 120px;
}

/* 체크박스 */
.custom-checkbox {
	position: relative;
	padding-left: 30px;
	padding-bottom: 30px;
	cursor: pointer;
}

.custom-checkbox input {
	position: absolute;
	opacity: 0;
	cursor: pointer;
}

.checkmark {
	position: absolute;
	top: 0;
	left: 0;
	height: 25px;
	width: 25px;
	background-color: #ffffff;
	border: 1px solid #a6a8aa;
	border-radius: 5px;
}

.checkmark:after {
	content: "";
	position: absolute;
	display: none;
}

.custom-checkbox input:checked ~.checkmark:after {
	display: block;
}

.custom-checkbox .checkmark:after {
	left: 7px;
	top: 2px;
	width: 10px;
	height: 14px;
	border: solid #8f775f;
	border-width: 0 3px 3px 0;
	transform: rotate(45deg);
}

.infoContainer {
	min-width: 800px;
	border: 1px solid #a6a8aa;
	border-radius: 10px;
	padding: 2px;
	margin-bottom: 10px;
}

/* order css */
.orderTable {
	background-color: white;
	margin-bottom: 5px;
}

.goodsimg {
	width: 100%;
	height: 130px;
}

.amountBox {
	display: flex;
	justify-content: center;
}

.amountBtn {
	width: 30px;
	background-color: white;
	border: 1px solid rgb(218, 218, 218);
}

.modifyBtn {
	background-color: white;
	border-radius: 5px;
	border: 1px solid rgb(218, 218, 218);
	color: rgb(92, 92, 92);
}

.price {
	font-size: 20px;
	font-weight: bold;
}
/* 총 비용 박스 */
.totalBody {
	position: relative;
}

.totalContainer {
	width: 100%;
	position: fixed;
	background-color: #d0ac88;
	height: 100px;
	bottom: 10px;
	padding-top: 20px;
	z-index: 99;
}

.totalCost {
	font-size: 24px;
	font-weight: bold;
}

.orderButton {
	width: 80%;
	height: 60px;
	background-color: white;
	border-radius: 5px;
	border: 1px solid black;
	font-weight: bold;
}

.operator {
	font-size: 30px;
}

.cartHeader {
	display: flex;
}

.deleteBtn {
	width: 70px;
	min-width: 70px;
	background-color: white;
	border: 1px solid rgb(165, 165, 165);
	height: 40px;
	margin-right: 20px;
	border-radius: 5px;
	color: rgb(165, 165, 165);
}

.selectAllBtn {
	width: 70px;
}
</style>
</head>



<%-- <%@ include file="indexheader.jsp"%> --%>
<body class="main" style="margin-top: 0;">

	<!-- header end -->
	<hr class="hr mt-5" style="color: #d0ac88;">
	<!-- section -->
	<section id="section" class="sectionbody">
		<form action="clickBtn">

			<div class="sectionContainer">

				<c:choose>
					<c:when test="${flag}">
						<c:choose>
							<c:when test="${ not empty cartList }">
								<div class="cartHeader">
									<div class="basketHead">장바구니</div>
									<input type="submit" name="btn" value="삭제" class="deleteBtn">

								</div>

								<!-- ============= 주문리스트 ================-->
								<c:forEach var="cart" items="${cartList }" varStatus="status">
									<div class="infoContainer" id="infoContainer${status.index }">

										<table width="100%">
											<colgroup>
												<col width="5%">
												<col width="20%">
												<col width="20%">
												<col width="15%">
												<col width="20%">
												<col width="20%">
											</colgroup>

											<tr>
												<td rowspan="3"><label class="custom-checkbox"
													for="check${status.index }"> <input type="checkbox"
														id="check${status.index }" name="cartNoList"
														value="${cart.cartNo }"> <span class="checkmark"></span>
												</label></td>

												<td rowspan="3"><img src="${cart.mainImg1 }"
													class="goodsimg"></td>
												<td style="font-weight: bold; font-size: 18px;">${cart.productName }</td>
												<td>수량</td>
												<td>배송비</td>
												<td>결제예상금액</td>
											</tr>

											<tr>
												<td>사이즈: ${cart.productSize }</td>
												<td>
													<div class="amountBox" id="amountBoxWrap">
														<input type="button" value="-" class="amountBtn"
															id="minusBtn${status.index }"> <input type="text"
															value="${cart.cartCount }" class="amountBtn"
															id="amount${status.index }"> <input type="button"
															value="+" class="amountBtn" id="plusBtn${status.index }">
														<input type="hidden" id="cartno${status.index }"
															value="${cart.cartNo }">
													</div>
												</td>
												<td rowspan="2" class="price"
													id="order_deliveryFee${status.index }">0</td>
												<td rowspan="2" class="price" id="exPrice${status.index }"></td>
											</tr>

											<tr>
												<td>판매가: ${cart.price} <input type="hidden"
													value="${cart.price}" id="order_fee${status.index }">
												</td>

												<td><input type="button" value="수량변경" class="modifyBtn"
													id="modifyBtn${status.index }"></td>

											</tr>
										</table>
									</div>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<div class="basketHead">장바구니</div>
								<p>장바구니에 담긴 상품이 없습니다.</p>
								<!-- ============= 주문리스트 끝 ================-->
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>


						<div class="basketHead">장바구니</div>
						<p>로그인 후 이용 가능한 페이지 입니다.</p>
					</c:otherwise>
				</c:choose>
			</div>
			<!--  섹션 컨테이너 끝 (섹션 끝은 아님)-->

			<!-- 고정된 토탈 박스 -->

			<div class="totalContainer">
				<table width="100%">
					<colgroup>
						<col width="15%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
						<col width="20%">
						<col width="15%">
					</colgroup>
					<tr>
						<td>선택상품금액</td>
						<td rowspan="2" class="operator">+</td>
						<td>총 배송비 <input type="hidden" name="deliveryFee"
							id="delivery" value="0">
						</td>
						<td rowspan="2" class="operator">=</td>
						<td>총 주문금액</td>
						<td rowspan="2"><input type="submit" class="orderButton"
							value="주문하기" name="btn"></td>

					</tr>

					<tr>
						<td class="totalCost" id="total_checkedFee">0 원</td>
						<td class="totalCost" id="total_deliveryFee">0 원</td>
						<td class="totalCost" id="total_fee">0 원</td>
					</tr>
				</table>

			</div>


		</form>

	</section>

	<!-- section end -->
	<%-- 	<c:import url="http://localhost:8080/Unicorn/indexfooter.jsp" /> --%>
	<div style="height: 150px;"></div>


	<script>
		let containerNum = document.querySelectorAll(".infoContainer");
		for (let i = 0; i < containerNum.length; i++) {

			// 체크박스 관련
			let check = document.getElementById("check" + i);
			let infoContainer = document.getElementById("infoContainer" + i);

			check.addEventListener("change", function() {
				console.log("click");
				if (this.checked) {
					// 테두리 색상 변경
					infoContainer.style.border = "3px solid #d0ac88";
					doTotal()

				} else {
					infoContainer.style.border = "1px solid #a6a8aa";
					
					doTotal()

				}

			});
			
			
			
			// 상품에 배송비 표시
			doDeliveryFee();
			function doDeliveryFee(){
				let tmp_price = document.getElementById("order_fee" +  i );
				 let tmp_amount = document.getElementById("amount" + i);
				 
				 
				let price = Number(tmp_price.value);
				let amount = Number(tmp_amount.value);
				
				console.log("price:" + price);
				console.log(amount);
				
				if((price * amount) >= 1000000) {
					console.log("백만원보다 큼");
					let deliveryFee = document.getElementById("order_deliveryFee" + i);
					deliveryFee.innerHTML = "0 원";
					let exPrice = document.getElementById("exPrice" + i);
					exPrice.innerHTML = ((price * amount)).toLocaleString() + " 원";
					
				} else if((price * amount) < 1000000) {
					let deliveryFee = document.getElementById("order_deliveryFee" + i);
					deliveryFee.innerHTML = "50,000 원";
					let exPrice = document.getElementById("exPrice" + i);
					exPrice.innerHTML = ((price * amount) + 50000).toLocaleString() + " 원";
				}
				
				
			}
			
			
			// 수량 변경하기 관련
		      let plus = document.getElementById("plusBtn" + i);
		      let minus = document.getElementById("minusBtn" + i);
		      let amount = document.getElementById("amount" + i);
		      let modifyBtn = document.getElementById("modifyBtn" + i);
		      let cartNo = document.getElementById("cartno" + i);
		      
		      let modifyAmount = Number(amount.value);
		      let modifyCartNo = cartNo.value;
		      
		      modifyBtn.addEventListener("click", function(){
		    	 console.log("수량변경 클릭" + i); 
		    	 submitAmount();
		    	 alert("변경되었습니다");
		    	 
		      });
		      
		      function submitAmount() {
		    	  $.ajax({
		    		  type : "POST",
		    		  url : "modify",
		    		  data : {
		    			  cartNo : modifyCartNo,
		    			  cartCount : modifyAmount
		    		  },
		    		  error : function(error){
		    			  console.log("error");
		    		  },
		    		  success: function(data) {
		    			  console.log("success");
		    		  }
		    	  });
		      }
		      
		    
				
		      
		      plus.addEventListener("click", function () {
		    
		          modifyAmount += 1;
		          amount.value = modifyAmount;
		          
		          let tmp_price = document.getElementById("order_fee" +  i );
				  let price = tmp_price.value;
		          
		          let exPrice = document.getElementById("exPrice" + i);
				  exPrice.innerHTML = (Number(price)*modifyAmount).toLocaleString() + " 원";
				  doTotal();
				  doDeliveryFee();
				
		        });
		        minus.addEventListener("click", function () {
		          if (modifyAmount > 1) {
		        	  modifyAmount -= 1;
		              amount.value = modifyAmount;
		            
		              let tmp_price = document.getElementById("order_fee" +  i );
					  let price = tmp_price.value;
			          
			          let exPrice = document.getElementById("exPrice" + i);
					  exPrice.innerHTML = (Number(price)*modifyAmount).toLocaleString() + " 원";
					  doTotal();
					  doDeliveryFee();
		          }
		        });
		        
		        
		        
		        
		        // totalBox
		        let total_checkedFee = document.getElementById("total_checkedFee");
		        
		        function doTotal(){
		        	let total_checkedFee = document.getElementById("total_checkedFee");
		            let total_deliveryFee = 0;
		            let totalFee = 0; 
		            
		            let infoContainers = document.querySelectorAll(".infoContainer");
		            infoContainers.forEach((Container, idx) => {
		                let checkbox = document.getElementById("check" + idx);

		                if (checkbox.checked) {
		                  let order_fee = document.getElementById("order_fee" +  idx );
		                  let order_deliveryFee = document.getElementById("order_deliveryFee" + idx);
		                 
		                  let totalAmount = Number(amount.value);
							
		                  
		                  let orderFee = Number(order_fee.value);
		                  let deliveryFee = Number(order_deliveryFee.textContent);
		                  

		                  totalFee += (orderFee * totalAmount);
		                  total_deliveryFee += deliveryFee;
		                  
		                  if(totalFee < 1000000){
		                	  total_deliveryFee = 50000;
		                  } else {
		                	  total_deliveryFee = 0;
		                  }
		                }
		              });
		            total_checkedFee.innerHTML = totalFee.toLocaleString() + " 원";
		            document.getElementById("total_deliveryFee").innerHTML = total_deliveryFee.toLocaleString() + " 원";
		            document.getElementById("delivery").value = total_deliveryFee;
		            document.getElementById("total_fee").innerHTML = (totalFee + total_deliveryFee).toLocaleString() + " 원";
		        }
		}
		
		
	
// 		function selectAll(selectAll)  {
// 			  const checkboxes 
// 			       = document.getElementsByName('cartNoList');
			  
// 			  checkboxes.forEach((checkbox) => {
// 			    checkbox.checked = selectAll.checked;
// 			    doTotal();
// 			    checkedBox();
// 			  })
// 			}
		
		
	</script>


</body>

</html>