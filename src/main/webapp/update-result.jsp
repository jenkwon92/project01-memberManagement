<%@page import="org.kosta.project01.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 결과 화면</title>
<link rel="stylesheet" type="text/css" href="css/home.css">
<link rel="stylesheet" type="text/css" href="css/topnav.css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css"
	rel="stylesheet">
</head>
<div class="topnav">
		<a class="active" href="index.jsp">Home</a>
	</div>
<body>
	<%
	MemberVO vo = (MemberVO) session.getAttribute("mvo");
	%>
	<div class="regist-form">
	<p>회원정보 수정 결과</p>
	<input type="text" class="text-field" name="memberId" readonly="readonly"
		placeholder="<%=vo.getId()%>">

	<input type="text" class="text-field" name="memberName" readonly="readonly" required="required"
		placeholder="<%=vo.getName()%>">
	<input type="text" class="text-field" name="memberPass" readonly="readonly" required="required"
		placeholder="<%=vo.getPassword()%>">
	<input type="text" class="text-field" name="memberAddress" readonly="readonly" required="required"
		placeholder="<%=vo.getAddress()%>">
	<a href="index.jsp">홈으로</a>
	</div>
</body>
</html>