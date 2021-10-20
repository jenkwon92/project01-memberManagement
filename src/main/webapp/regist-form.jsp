<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="css/home.css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css"
	rel="stylesheet">
</head>
<body>
	<div class="regist-form">
		<form action="" >
			<input type="text" class="text-field" placeholder="아이디" required="required" >
			<button type="button" class="submit-btn">중복확인</button><br>
			 <input type="password" class="text-field" placeholder="패스워드" required="required" ><br> 
			 <input type="password" class="text-field" placeholder="패스워드확인" required="required" ><br>
			 <input type="text" class="text-field" placeholder="이름" required="required" ><br>
			<input type="text" class="text-field" placeholder="주소" required="required"><br>
			<button type="submit" class="submit-btn">가입하기</button>
		</form>
	</div>
</body>
</html>