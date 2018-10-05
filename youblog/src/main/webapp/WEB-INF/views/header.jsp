<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first</title>
<style type="text/css">
	nav { float: left; }
	nav ul li {
		float: left;
		display: block;
		width: 120px;
		height: 35px;
		background: orange;
		color: navy;
	}
	a {
		text-decoration: none;
		font-size: 10pt;
		text-align: center;
	}
</style>
</head>
<body>
<header>
<nav>
<ul>
	<li><a>home</a></li>
	<li><a href="testAOP.do">AOP란?</a></li>
	<li><a href="moveFileup.do">파일업로드 테스트</a></li>
	<li><a href="moveAjax.do">Ajax 테스트</a></li>
	<li><a href="testView.do">암호화처리 테스트</a></li>
	<c:set var="uid" value="admin" />
	<c:if test="${!empty sessionScope.member and member.userid eq uid }">
	<li><a href="member/mlist.do">회원전체조회</a></li>
	</c:if>
</ul>
</nav>
</header>



</body>
</html>







