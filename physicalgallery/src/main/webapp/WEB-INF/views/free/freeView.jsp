<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>

<table border="1">
	<tr><td>글번호</td>   <td width="500">${freeBoard.boNo }</td></tr>
	<tr><td>제목</td>    <td width="500">${freeBoard.boTitle }</td></tr>
	<tr><td>분류</td>    <td width="500">${freeBoard.boCategory }</td></tr>
	<tr><td>작성자</td>   <td width="500">${freeBoard.boWriter }</td></tr>
	<tr><td>내용</td>    <td width="500"><pre>${freeBoard.boContent }</pre></td></tr>
	<tr><td>등록일</td>   <td width="500">${freeBoard.boRegDate }</td></tr>
	<tr> <td> <a href="freeEdit.kd?boNo=${freeBoard.boNo }">수정</a></td><td><a href="freeDelete.kd">삭제</a></td></tr>
</table>
<a href="freeList.kd">게시판으로</a>


</body>
</html>