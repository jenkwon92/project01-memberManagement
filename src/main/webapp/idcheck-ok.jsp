<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아이디 사용 가능</title>
	</head>
	<script type="text/javascript">
	function closePopup(){
		//현재 팝업을 띄운 본 창의 hidden flag 에서 인증받은 아이디를 할당
		opener.document.getElementById("flag").value="<%=request.getParameter("id")%>";
		opener.document.getElementById("pass").focus();
		//자신의 창을 종료
		self.close();
	}
	</script>
	<body>
		<%= request.getParameter("id")%>는 가능한 아이디 입니다.
		<input type="button" value="확인" onclick="closePopup()">
	</body>
</html>