<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta name = "viewport" content ="width=deivce-width, initial-scale=1">
    
    <title>searchpage</title>
</head>
<body>

<%@ include file = "/WEB-INF/views/header.jsp"  %>
<div class="conWrap">

    <div class="another_conBox">
        <div class="contentsBox">
         <div class="libray_title_box">
                <i class="fas fa-search"></i>&nbsp;&nbsp;&nbsp;<span class="libray_title">검색한 게시물</span>
            </div>
        
            <ul class="contentsList">
            
                <li>
                   <c:forEach items="${list }" var="b">
                       <div class="leftTextBox">                       
                           <img src="resources/images/arial.jpg" alt="프로필이미지" class="profileImg">
                           <div class="infoBox">
                               <p class="userName">${b.membername}</p>
                               <p>
                                   <span class="uploadTime">${b.writedate}</span>
                                   <span class="viewCount"> &nbsp;&nbsp; View :  ${b.hits}</span>
                               </p>
                           </div>
                           <div class="title">
                              ${b.title}
                           </div>
                           <div class="content">
                             ${b.contents}
                           </div>
                       </div>                    
                       <div class="rightImgBox">
                           <img src="resources/images/4k.jpg" alt="이미지" class="mainImg">
                       </div>
                    </c:forEach>
                </li>

            </ul>
        </div> <!--contentsbox-->
    </div> <!--conbox-->
</div> <!--conWrap-->



</body>
</html>
