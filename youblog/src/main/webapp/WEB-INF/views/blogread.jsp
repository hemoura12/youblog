<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <table align="center" border = "1">
    <tr>
       <th>블로그넘버</th>
         <th>제목</th>
         <th>작성자</th>

      </tr>
      <c:forEach var="result" items="${resultList}" varStatus="status">     
      <tr>
         <th>${result.blogno }</th>
         <th>${result.title }</th>
         <th>${result.writerid }</th>
         <th>${result.contents }</th>
      </tr>
      </c:forEach>
 </table>


</body>
</html>