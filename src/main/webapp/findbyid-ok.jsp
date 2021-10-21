<%@page import="org.kosta.project01.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원찾기 성공</title>
</head>
<body>
<% MemberVO vo = (MemberVO)request.getAttribute("memberVO"); %>
<p>회원검색 결과</p>
<table>
	<thead>
		<tr>
			<th>id</th>
			<th>name</th>
			<th>address</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><%=vo.getId() %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getAddress() %></td>
		<tr>
	</tbody>
</table>
</body>
</html>