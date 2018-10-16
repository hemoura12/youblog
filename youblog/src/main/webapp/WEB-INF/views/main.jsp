<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Main</title>
</head>
<body>
<%@ include file="header.jsp" %>
<br><br><br><h1>
	Main
</h1>
<form>
<a href="category_view.do">주제별</a>
<a href="categoryList.do">카테고리 리스트</a>
<a href="bestList.do">인기 게시글</a>
<c:url var="subsList" value="subsList.do">
<%-- 	<c:param name="userid" value="${member.userid }" /> --%>
	<c:param name="memberid" value="user01" />
</c:url>
<a href="${subsList }">구독 게시글</a>
</form>
<div>
<h1></h1>
</div>
</body>
</html>
