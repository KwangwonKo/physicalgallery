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
<table id="mytable" align="center">
<c:if test="${MEMBER  ne null}"> 
 로그인 되어 있습니다 <br>
  id : ${MEMBER.memId } <br>
  <a href="/login/logout.kd">로그아웃</a>
</c:if>
<c:if test="${MEMBER eq null}"> 
  <a href="/login/login.kd">로그인하러 가기</a><br/>
</c:if><br>
<a href="freeForm.kd">글쓰기</a>
<h4>게시물 개수: ${totalCnt}</h4>
<table border="1">
	<thead>
		<tr>
			<td>글번호</td>
			<td>제목</td>
			<td>글 분류</td>
			<td>작성자</td>
			<td>등록일</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${freeBoardList }" var="freeBoard">
			<tr>
				<td>${freeBoard.boNo }</td>
				<td><a href="freeView.kd?boNo=${freeBoard.boNo }"> ${freeBoard.boTitle } </a> </td>
				<td>${freeBoard.boCategory }</td>
				<td>${freeBoard.boWriter }</td>
				<td>${freeBoard.boRegDate }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<a href="freeList.kd?curPage=1">&laquo;</a>
<a href="freeList.kd?curPage=${paging.curPage-1 }">&lt;</a>
<c:forEach begin="${paging.firstPage }"  end="${paging.lastPage }" var="i">
   	<a href="freeList.kd?curPage=${i }"  >  
   		<c:if test="${i eq paging.curPage }">  <span style="color: red">  ${i } </span> </c:if>
   		<c:if test="${i ne paging.curPage }">  ${i } </c:if> 
   	</a>
</c:forEach>
<a href="freeList.kd?curPage=${paging.curPage+1 }">&gt;</a>
<a href="freeList.kd?curPage=${paging.totalPageCount }">&raquo;</a>
</table>
</body>
</html>