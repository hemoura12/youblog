<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/styles/css/login.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

    <script type="text/javascript">

        function show_content(){
            $("#hidden").toggle();

        };

        function show_content2() {
            $("#hidden2").toggle();
        };



    </script>
    <title>회원정보 수정</title>
</head>

<body>
<div class="card align-middle">
    <div class="card-body">
        <form class="form-signin" method="POST" >
            <h2 class="form-signin-heading" align="center"><img class="logoimg" src="resources/images/youblog.png"> youblog</h2><br>
            <table  class="uinfo">
                    <tr>
                        <th scope="row">이메일</th>
                        <td colspan="2">YouBlog@gmail.com</td>
                    </tr>
                    <tr>
                        <th scope="row" style="width: 29%;">비밀번호</th>
                        <td style="width: 61%">내용이 들어갑니다.</td>
                        <td style="width: 10%"><a href ="passchange.do"><img class="moveimg" src="resources/images/scroll.png"></a></td>
                    </tr>
                    <tr>
                        <th scope="row">이 름</th>
                        <td colspan="2">YouBlog</td>
                    </tr>

                    <tr id="viewhidden" onclick="show_content()">
                        <th scope="row">생 일</th>
                        <td>내용이 들어갑니다.</td>
                        <td>
                            <img class="moveimg" src="resources/images/scroll.png">
                        </td>
                    </tr>

                    <tr id="hidden" style="display:none;">
                        <td colspan="3" align="center">
                            <input type="date">
                        </td>
                    </tr>

                    <tr onclick="show_content2()">
                        <th scope="row">성 별</th>
                        <td>내용이 들어갑니다.</td>
                        <td>
                            <img class="moveimg" src="resources/images/scroll.png">
                        </td>
                    </tr>
                    <tr align="center" id="hidden2" style="display:none;">
                        <td colspan="3" align="center" style="height: 150px;">
                            <div class="selectbox" style="width: 50%;">
                                <select>
                                    <option value="" disabled selected hidden>성별</option>
                                    <option>남</option>
                                    <option>여</option>
                                    <option>비공개</option>

                                </select>
                            </div>
                        </td>

                    </tr>
                    <tr>
                        <th scope="row">구글 연동</th>
                        <td>구글아이디</td>
                        <td>
                            <img class="moveimg" src="resources/images/scroll.png">
                        </td>
                    </tr>
            </table>

            <div class="btngroup-1">
                <button class="btn btn-primary" type="submit">수정완료</button>
            </div>

        </form>
    </div>
</div>
</body>
</html>