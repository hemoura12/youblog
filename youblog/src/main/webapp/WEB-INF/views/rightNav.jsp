<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script>
				/* righNav 열기/닫기 */
				function openNav() {
		            document.getElementById('mysidenav').style.width = '250px';
		            /*$("#mysidenav").css("display", "block");*/
		            $(".category_frame i").css("display", "none");
		        }
		        function closeNav() {
		            document.getElementById('mysidenav').style.width = '0';
		            /*$("#mysidenav").css("display", "none");*/
		            $(".category_frame i").css("display", "block");
		        }
		
		        
		        /* 스크롤 작동시 rightNav 크기조절 */
		        $(window).scroll(function() {
		            if($(this).scrollTop() >= 20) {
		                $('.sidenav').css('height', '95%');
		                $('.sidenav').css('margin-top', '-250px');
		                $('.sidenav').css('background-color', 'white');
		            }else if($(this).scrollTop() < 220){
		                $('.sidenav').css('height', '66%');
		                $('.sidenav').css('margin-top','0px');
		                $('.sidenav').css('background-color', 'white');
		            }
		        });
    </script>
<title>rightNav</title>
</head>
<body>
<div class="category_frame">
            <span class="openmenu" onclick='openNav()'><i class="fa fa-angle-double-left fa-5" aria-hidden="true"></i></span>
        </div>
        <div class="channel_category" style="background-color: red">
            <div id="mysidenav" class="sidenav">
                <div class="closebtn" onclick='closeNav()'>x</div>
                <a href="#">About<div class="num">100</div></a>
                <a href="#">Services<div class="num">100</div></a>
                <a href="#">Clients<div class="num">100</div></a>
                <a href="#">Contact<div class="num">100</div></a>
                <a href="#">Portfolio<div class="num">100</div></a>
            </div>
        </div> <!--channel_category-->

</body>
</html>