<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아이디 중복일 때 팝업</title>
	</head>
	<script>
	function closePopup(){
		opener.document.getElementById("id").value="";
		opener.document.getElementById("id").focus();
		self.close();
	}
	</script>
	<body>
		<%= request.getParameter("id")%>는 중복입니다🙄 <br> 다른 아이디를 입력해주세요<br>
		<button onclick="closePopup()">확인</button>
	</body>
</html>