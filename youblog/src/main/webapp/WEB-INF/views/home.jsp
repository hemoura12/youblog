<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<script type="text/javascript" src="/youblog/resources/js/jquery-3.3.1.min.js"/>
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
</body>

<script type="text/javascript">
	
</script>

</html>
