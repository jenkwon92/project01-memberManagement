<%@page import="org.kosta.project01.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findbyaddress-result</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		@SuppressWarnings("unchecked")
		ArrayList<MemberVO> list = (ArrayList<MemberVO>) request.getAttribute("list");
			%>
	<div class="container">
		<br> <a href="index.jsp">Home</a><br> <br>
		<h3><%=request.getParameter("address")%>에 사는 회원리스트
		</h3>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (int i = 0; i < list.size(); i++) {
				%>
				<tr>
					<td><%=list.get(i).getId()%></td>
					<td><%=list.get(i).getName()%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>