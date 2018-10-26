<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name = "viewport" content ="width=deivce-width, initial-scale=1">
    <script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	
	function selectBlog(blogno) {
		var url = "selectBlog/"+blogno+".do";
		window.location.href=url;
	}
</script>
    <title>favorite</title>
</head>
<body>

<%@ include file = "/WEB-INF/views/header.jsp"  %>
<div class = "conWrap" style = "width:100%; overflow:auto; margin-top:50px;">
    <div class="another_conBox">
        <div class="contentsBox">
        	<div class="libray_title_box">
                <i class="fa fa-fire fa-lg"></i>&nbsp;&nbsp;&nbsp;<span class="libray_title">인기 게시글</span>
            </div>
            <ul class="contentsList">
            <c:forEach items="${blog }" var="b">
                <li>
                    <div class="leftTextBox" onclick="location.href='selectBlog.do?blogno=${b.blogno}'">
                        <img src="resources/images/arial.jpg" alt="프로필이미지" class="profileImg">
                        <div class="infoBox">
                            <p class="userName">${b.membername }</p>
                            <p>
                                <span class="uploadTime">${b.writedate }</span>
                                <span class="viewCount">View ${b.hits }</span>
                            </p>
                        </div>
                        <div class="title">
                            ${b.title }
                        </div>
                        <div class="content">
                            ${b.contents }
                        </div>
                    </div>
                    <div class="rightImgBox">
                        <img src="resources/images/4k.jpg" alt="이미지" class="mainImg">
                    </div>
                </li>
                </c:forEach>
            </ul>
        </div>
    </div> <!--conBox-->
</div> <!--conWrap-->


</body>
</html>