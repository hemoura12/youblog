<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Category</title>
</head>
<body>
<%@ include file="../header.jsp" %>
<br><br><br><h1>
	Category
</h1><br>
<h1>대주제</h1>
<h1>소주제</h1>


<table>
	<tr>
		<th>글번호</th><th>글제목</th><th>글쓴이</th><th>내용</th>
	</tr>
	<c:forEach items="${blog }" var="b">
	<tr>
		<td align="center">${b.blogno }</td><td align="center">${b.title }</td><td>${b.writerid }</td><td>${b.contents }</td>
	</tr>
	</c:forEach>
</table>
<div>
<h1></h1>
</div>
</body>
</html>
