<%@page import="org.kosta.project01.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원찾기 성공</title>
<link rel="stylesheet" type="text/css" href="css/table.css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css"
	rel="stylesheet">

</head>
<%
MemberVO vo = (MemberVO) request.getAttribute("memberVO");
%>
<body>
	<div class="topnav">
		<a class="active" href="index.jsp">Home</a>
	</div>
	<div class="table-form">
		<p>회원검색 결과</p>
		<table class="table">
			<thead>
				<tr>
					<th>id</th>
					<th>name</th>
					<th>address</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%=vo.getId()%></td>
					<td><%=vo.getName()%></td>
					<td><%=vo.getAddress()%></td>
				<tr>
			</tbody>
		</table>
	</div>
</body>
</html>