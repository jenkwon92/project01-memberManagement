<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
<link rel="stylesheet" type="text/css" href="css/home.css">
 <link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
</head>
<body>
	<div class="login-form">
		<%-- 아이디로 회원검색 --%>
		<form action="FindMemberByIdServlet">
			<input type="text" name="memberId" class="text-field" placeholder="아이디" required="required">
			<button type="submit" class="submit-btn">검색</button>
		</form>
		<p style="font-size: 14px; color : #9b9b9b">OR</p><br>
		
		<%-- 비로그인 상태일때는 로그인 폼을 제공한다 --%>
		<form>
			<input type="text" class="text-field" placeholder="아이디">
			<input type="password" class="text-field" placeholder="비밀번호"> 
			<button type="submit"  class="submit-btn">로그인</button>
		</form>
		<div class="links">
			<a href="#">회원가입</a>
		</div>
		
		<%-- 로그인 상태일때는 누구님 반갑습니다 , 로그아웃 링크를 제공한다 --%>
		<p style="font-size: 14px; color : #9b9b9b"> 님 반갑습니다</p>
		<form action="" ></form>  
		<div class="links">
			<a href="#" >로그아웃</a>
		</div>
		<br>
		
		<%-- 주소로 회원정보 조회 --%>
		<form action="FindMemberListByAddressServlet">
			<input type="text" name="address" class="text-field" placeholder="주소" required="required" >
			<button type="submit" class="submit-btn">조회</button>
		</form>		
		<%-- 회원 정보 수정 링크 --%>
		<div class="links">
			<a href="#">회원정보수정</a>
		</div>
	</div>
</body>
</html>