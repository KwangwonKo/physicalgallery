<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%request.setCharacterEncoding("utf-8"); %>
</head>
<body>

	<form action="login.kd" method="post">
		id : <input type="text" name="id"  value=""> <br> 
		pw : <input type="password" name="pw" value=""> <br>
		<button type="submit">로그인</button> 
	</form>
	<a href="memberForm.kd">회원가입하러 가기</a> <br>
	<a href="/free/freeList.kd">게시판</a>

</body>
</html>