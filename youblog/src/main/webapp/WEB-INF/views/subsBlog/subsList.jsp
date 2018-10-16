<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구독 블로그 최신글</title>
</head>
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<script type="text/javascript">
$(function() {
	var writerArrbf = new Array();
	var writerArr = [];
	
	<c:forEach items="${blog }" var="b">
		writerArrbf.push("${b.writerid}");
		console.log("${b.writerid}");
	</c:forEach>
	

	$.each(writerArrbf, function (index, element){
	    if ($.inArray(element, writerArr) == -1){
	    	writerArr.push(element);
	    	console.log("배열"+element);
	    }
	});
});
</script>
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