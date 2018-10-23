<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>게시판테스트</title>
 
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/youblog/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="/youblog/resources/js/jquery-3.3.1.min.js"></script>
</head>
<body>
<form action="create.do" method="post" enctype="multipart/form-data">
<table>
<tr>
<th>제목</th>
<td><input type="text" id="title" name="title"></td>
</tr>

<tr>
<th>작성자</th>
<td><input type="text" id="writerid" name="writerid" ></td>
</tr>

<tr>
<th>내용</th>
<td><input type="text" id="contents"  name="contents"></td>
</tr>

<tr>
<th>카테고리이름</th>
<td><input type="text" id="catename1"  name="catename1"></td>
</tr>

<tr>
<th>카테고리이름2</th>
<td><input type="text" id="catename2"  name="catename2"></td>
</tr>
</table>
<div>
<input type="submit" value="등록" >
</div>

</form>

</body>
</html>