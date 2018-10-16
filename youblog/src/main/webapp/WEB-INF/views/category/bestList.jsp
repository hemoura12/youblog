<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>베스트리스트</title>
</head>
<body>
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
</body>
</html>