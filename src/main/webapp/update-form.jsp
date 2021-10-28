<%@page import="org.kosta.project01.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정폼</title>
<link rel="stylesheet" type="text/css" href="css/home.css">
<link rel="stylesheet" type="text/css" href="css/topnav.css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
</head>
<body>
	<div class="topnav">
		<a class="active" href="index.jsp">Home</a>
	</div>
	<%
	MemberVO vo = (MemberVO) session.getAttribute("mvo");
	if (vo != null) {
	%>
	<div class="regist-form">
	<p>회원정보 수정</p>
	<form action="UpdateMemberServlet" method="post">
		<input type="text" class="text-field" name="memberId" readonly="readonly" placeholder="아이디" value="<%=vo.getId()%>"> 
		<input type="text" class="text-field" name="memberName" required="required" placeholder="이름" value="<%=vo.getName()%>"> 
		<input type="text" class="text-field" name="memberPass" required="required" placeholder="비밀번호" value="<%=vo.getPassword()%>"> 
		<input type="text" class="text-field" name="memberAddress" required="required" placeholder="주소" value="<%=vo.getAddress()%>">
		<button type="submit" class="submit-btn">수정</button>
	</form>
	<%
	} else {
	response.sendRedirect("index.jsp");//로그인 상태가 아니면 index.jsp로 이동시킨다 
	}
	%>
	</div>
</body>
</html>