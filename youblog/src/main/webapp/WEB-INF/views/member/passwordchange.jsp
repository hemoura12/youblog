<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name = "viewport" content ="width=deivce-width, initial-scale=1">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/styles/css/login.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <title>비밀번호 변경</title>
</head>

<body>

<div class="card align-middle">

    <div class="card-body">

        <div class="group">
            <input type="text" required>
            <span class="highlight"></span>
            <span class="bar"></span>
            <label>새 비밀번호</label>
        </div>

         <p style="font-size: small" >비밀번호 안전성:
                8자 이상 입력하세요. 다른 사이트에서 쓰는 비밀번호나 애완동물의 이름처럼 추측하기 쉬운 이름은 사용하지 마세요.</p><br>

        <div class="group">
            <input type="text" required>
            <span class="highlight"></span>
            <span class="bar"></span>
            <label>새 비밀번호 확인</label>
        </div>

        <button class="btn btn-primary">비밀번호 변경 </button>



    </div>
</div>
</body>
</html>