<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입폼</title>
<link rel="stylesheet" type="text/css" href="css/topnav.css">
<link rel="stylesheet" type="text/css" href="css/home.css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css"
	rel="stylesheet">
</head>
<body>
	<div class="topnav">
		<a class="active" href="index.jsp">Home</a>
	</div>
	<div class="login-form">
		<hr>
		<%-- 가입하기 submit 을 누르면 
		    패스워드와 패스워드 확인란에 동일한 패스워드를 입력했을 때만 submit 되게 javascript로 
		    구현해본다 
		    일치하지 않으면 alert으로 패스워드와 패스워드 확인이 일치하지 않습니다 후 전송하지 않는다 
	 --%>
		<%
		String path = (String) request.getAttribute("path");
		%>

		<script type="text/javascript">
			function checkRegForm() {
				if (document.getElementById("pass").value != document
						.getElementById("confirmPass").value) {
					alert("패스워드와 패스워드 확인이 일치하지 않습니다");
					return false; //false를 리턴하면 전송되지 않는다 
				}
			}

			function checkId() {
				let mid = document.getElementById("id");
				if (mid.value == "") {
					alert("아이디를 입력하세요!");
					idComp.focus();
				} else {
					window.open("IdCheckServlet?id=" + mid.value, "mypopup",
							"width=450, height=150, top=150,left=400");
				}
			}
		</script>
		<form action="RegisterMemberServlet" method="post"
			onsubmit="return checkRegForm()">
			<input type="text" name="id" id="id" class="text-field"
				placeholder="아이디" required="required"> <input type="hidden"
				id="flag" value="">
			<button type="button" class="submit-btn" onclick="checkId()">중복확인</button>
			<br> <input type="password" name="password" id="pass"
				class="text-field" required="required" placeholder="패스워드"><br>
			<input type="password" name="confirmPassword" id="confirmPass"
				class="text-field" required="required" placeholder="패스워드확인"><br>
			<input type="text" name="name" class="text-field" placeholder="이름"
				required="required"><br> <input type="text"
				name="address" class="text-field" placeholder="주소"
				required="required"><br> <br>
			<button type="submit" class="submit-btn">가입하기</button>
		</form>
	</div>
</body>
</html>