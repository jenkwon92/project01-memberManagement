<%@page import="org.kosta.project01.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>수정폼</title>
	</head>
	<body>
		<% 
		MemberVO vo = (MemberVO)session.getAttribute("MemberVO");
		%>
		회원정보 수정
		<form action="UpdateMemberServlet" method="post">
		<input type="text" name="memberId" readonly="readonly" placeholder="<%=vo.getId()%>">
		
		<input type="text" name="memberName" required="required" placeholder="<%=vo.getName()%>">
		<input type="text" name="memberPass" required="required" placeholder="비밀번호">
		<input type="text" name="memberAddress" required="required" placeholder="<%=vo.getAddress()%>">
		<button type="submit">수정</button>
		</form>
	</body>
</html>