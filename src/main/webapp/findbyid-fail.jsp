<%@page import="org.kosta.project01.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원찾기 실패</title>
</head>
<body>
<script type="text/javascript">
	alert("<%=request.getParameter("id")%> 에 해당하는 회원이 존재하지 않습니다");
	location.href="index.jsp";
</script>
</body>
</html>