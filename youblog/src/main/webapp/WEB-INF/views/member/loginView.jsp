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
    <title>첫 로그인화면</title>
</head>

<body>
<div class="card align-middle">
    <div class="card-body">
        <form class="form-signin" action="login.do" method="POST" >
            <h2 align="center" style = "font-size:2.5rem">Welcome Youblog</h2>
            <h2 class="form-signin-heading" align="center"><img class="logoimg" src="resources/images/youblog.png" style ="margin-top:15px"></h2><br>
            <div class="inputgroup">
            <label for="inputEmail" class="sr-only" >google ID</label>
                <input type="text" class="form-control" name ="memberid" placeholder="google ID" required autofocus><br>
            <label for="inputPassword" class="sr-only">password</label>
            <input type="password" class="form-control" name ="memberpwd" placeholder="password" required>
            </div><br>
            <!-- 시간 남으면 구현할 기능
            <div class="checkbox">
               <label>
                    <input type="checkbox" value="remember-me"> 기억하기
                </label>
            </div>-->
            <center style = "position:relative; top: 20px">
            <button class="btn btn-primary">로 그 인</button>

            <br><br>
            <a href ="join.do"><h8>아직 가입하지 않으셨나요?</h8></a>
            </center>
        </form>
    </div>
</div>
</body>
</html>