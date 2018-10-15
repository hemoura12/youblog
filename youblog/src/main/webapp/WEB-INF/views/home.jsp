<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>

<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>



<P>  The time on the server is ${serverTime}. </P>

<form action="test1.do" method="post">
	<h1>Test</h1>
	<input type="text" name="blogno"> <br>
	<input type="submit" value="test">	
</form>

<a href = "test2.do">테스트</a>
</body>



</html>
