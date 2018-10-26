<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name = "viewport" content ="width=deivce-width, initial-scale=1">
    <script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/styles/css/login.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

   <title>회원가입페이지</title>

</head>
<body>
<div class="card align-middle">
    <div class="card-title">
    </div>
    <div class="card-body-1">
    	<form class="form-signin" action="mjoin2.do" method="POST" >
            <h2 class="form-signin-heading" align="center"><img class="logoimg" src="resources/images/youblog.png"> youblog</h2>
            <h4 align="center">YouBlog 계정 만들기</h4>
            <div class="outlinegroup">
         
				<!--<button class="btn btn-primary" type="">구글 로그인</button><br> -->
                <!--<button style="background-color: #1a73e8;" class="btn btn-primary">연동됨</button>-->
                <br>
                <p style="color: lightgray; font-size: small" >구글 ID 연동*</p>
                <div class="group">
                    <input type="text" id = "memberemail" name = "memberemail" required>
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <label>이메일</label>
                </div>

                <div class="group">
                    <input type="password" id = "memberpwd" name = "memberpwd" required>
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <label>비밀번호</label>
                </div>
                <div class ="footer_line">
                <center>
                    <p style="font-size: small" >문자,숫자,기호를 조합하여 8자 이상을 사용하세요</p><br>
                    <%-- <c:url var = "join2" value = "join2.do">
						<c:param name = "MEMBER_EMAIL" value = "${MEMBER_EMAIL}"/>
						<c:param name = "MEMBER_PW" value = "${MEMBER_PW}"/>
					</c:url>  --%>
                    <button class="btn btn-primary" type="submit">다음</button>
                </center>
                </div>
            </div>
      	</form>
    </div>
</div>
</body>
</html>