<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberListView.jsp</title>
</head>
<body>
<h2 align="center">회원 전체 목록</h2>
	<table align="center" border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
		
		</tr>
		<c:forEach items="${list }" var="m" >
		<tr>
			<th>${m.memberid }</th>
			<th>${m.membername }</th>
			
		</tr>
		</c:forEach>
	</table>
</body>
</html>