<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<script type="text/javascript" src="/youblog/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	 function chanalcheck(){
		//var x = document.getElementById("chanel");
		//var y = chanelSelect.options[chanelSelect.selectedIndex].value;
		
		/* var x = document.getElementById("subscribeshare").selectedIndex;
        var y = document.getElementById("subscribeshare").options;
        var z = document.getElementById("subscribeshare").value;

        alert("Index: " + y[x].index + " is " + y[x].text+" is " + z); */
        
        $('#subscribeshare').attr("action", "update1.do").submit();
        
	}
</script>
</head>
<body>
<h1>
	Hello world!  
</h1>


<P>  The time on the server is ${serverTime}. </P>

<!-- select -->
<!-- <form action="test1.do" method="post">
	<h1>Test</h1>
	<input type="text" name="blogno"> <br>
	<input type="submit" value="test">	
</form> -->

<!-- update chanel -->
<!-- <form action="update1.do" method="post" >
	<h1>채널 공개여부</h1>
	<input type="text" name="subscribeshare"> <br>
	<select name="subscribeshare" id="subscribeshare" onchange="chanalcheck()">
		<option value="" selected disabled>선 택</option>
		<option value="Y" >공 개</option>
		<option value="N" >비공개</option> 
	</select> <br>
	<input type="submit" value="저장">
</form>
<hr> -->

<a href="list.do">댓글 관리 </a>
<hr>

<a href="myBlogList.do"> 글 관리</a>
</body>
<script type="text/javascript">

</script>

</html>
