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

<c:if test="${MEMBER  eq null}">  
로그인 안되어있음    <br>
<a href="login.kd">로그인하러가기</a>  <br>
<a href="memberForm.kd">회원가입하러 가기</a>    
</c:if>
 
<c:if test="${MEMBER  ne null}"> 
 로그인 되어 있습니다 <br>
  id : ${MEMBER.memId } <br>
  name : ${MEMBER.memName } <br>
  <a href="/free/freeList.kd">게시판으로</a>
  <a href="logout.kd">로그아웃</a>       </c:if>



</body>
</html>