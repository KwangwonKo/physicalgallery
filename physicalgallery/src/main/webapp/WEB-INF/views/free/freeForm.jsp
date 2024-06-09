<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<title>게시판 작성</title>
</head>
<body>
	<form action="freeRegist.kd" method="post">
		<table border="1">
			<tr>
				<th>제목</th>
				<td width="400"><input type="text" name="boTitle" value="" required="required"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<c:if test="${MEMBER  ne null}"> 
				<td width="400"><input type="text" name="boWriter" value="${MEMBER.memId }" readonly></td>
  				</c:if>
  				<c:if test="${MEMBER eq null}">
				<td width="400"><input type="text" name="boWriter" value=""></td>
				</c:if>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td width="400"><input type="password" name="boPass" value="" required="required"></td>
			</tr>
			<tr>
				<th>분류</th>
				<td width="400"><input type="text" name="boCategory" value=""></td>
			</tr>
			<tr>
				<th>내용</th>
				<td width="400"><textarea cols="50" rows="20" name="boContent"> </textarea></td>
			</tr>

			<tr>
				<td>
					<button type="submit" > 등록</button>
				</td>
			</tr>
		</table>
	</form>



</body>
</html>