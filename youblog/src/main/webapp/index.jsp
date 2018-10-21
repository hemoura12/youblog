<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<<<<<<< HEAD
<%-- jsp 액션태그 : jsp 내장태그 --%>
	<%-- <jsp:forward page="main.do" /> --%>
<%
	request.getRequestDispatcher("main.do").forward(request, response);
%>
=======
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- jsp 액션태그 :  jsp 내장태그임-->
<%-- <jsp:forward page = "main.do"/> --%>
<%
	request.getRequestDispatcher("main.do").forward(request, response);
%>

>>>>>>> refs/remotes/origin/기경욱
</html>