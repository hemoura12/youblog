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

    <title>회원정보 입력</title>
</head>

<body>

<div class="card align-middle">
    <div class="card-title">
    </div>
    <div class="card-body-1">
    <form action="insert.do" method="POST">
        <div class="form-signin" >
            <h2 class="form-signin-heading" align="center"><img class="logoimg" src="resources/images/youblog.png"> youblog</h2><br>
            <h4 align="center">YouBlog 에 오신걸 환영합니다</h4><br>
            <div class="inputoutline">
                <div class="group-1">
                    <input type="text" id ="membername" name="membername" style="width: 100%;" required>
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <label>이름</label>
                </div>
               <!--  <div class="group-2">
                    <input type="hidden" id ="" name="" style="width: 100%;" required >
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <label></label>
                </div> -->
                <input type="hidden" id="memberid" name="memberid" value ="${member.memberemail}">
                <input type="hidden" id="memberemail" name="memberemail" value ="${member.memberemail}">
                <input type="hidden" id="memberpwd" name="memberpwd" value ="${member.memberpwd}">
                <!-- <input type="hidden" id="memberphone" name="memberphone" value ="01045671549"> -->
                
                    <p style="color: darkgray; font-size: small" > &nbsp;&nbsp; </p>

                <div class="group-3">
                    <input type="date" id ="birthday" name="birthday" required>
                </div>

                <div class="group-2">
                    <div class="selectbox">
                        <select id= "gender" name="gender">
                            <option value="" disabled selected hidden>성별</option>
                            <option>M</option>
                            <option>F </option>
                        </select>
                    </div>
                </div>

                <div class="btngroup">
                    <button class="btn btn-primary" type="submit">완 료</button>
                </div>

            </div>
        </div>
    </form>
    </div>
</div>

</body>
</html>