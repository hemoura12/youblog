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
    
    <script type="text/javascript">
    
    function check(){
    	var mid = $('#memberid').val();
    	var mid2 = $('#smemberidq').val();
    	var mpw = $('#memberpwd').val();
    	var mpw2 = $('#smemberpwdq').val();
    	
    	console.log(mid);
    	console.log(mid2);
    	console.log(mpw);
    	console.log(mpw2);
    	
    	if($('#memberid').val() == $('#smemberidq').val() && $('#memberpwd').val() == $('#smemberpwdq').val()){
    		alert("같음");
    		location.href="chpwview.do";
    		
    	}else{
    		alert("같지않음");
    	}
    	/* var mid = $('#smemberidq').val();
    	var mpwd = $('#smemberpwdq').val();
    	console.log(mid);
    	console.log(mpwd);
    	$.ajax({
        	url : "relogin.do",
        	type : "post",
        	data : { smemberid : mid, smemberpwd : mpwd},
       		success : function(data){
			 	if(data == '0'){
			 		alert("결과값 0")
			 		return false;		 		
			 	}
			 	else if(data == '1'){
			 		alert("결과값 1");
			 	location.href="main.do";
			 	
			 	} else {
			 		alert("관리자에게 문의하세요");
			 		return false;	
			 	}      		 
	       }    			
	    });  //ajax end */
    }   
    </script>

    <title>다시 로그인</title>
</head>

<body>
<div class="card align-middle">
    <div class="card-body">
        <form class="form-signin" action="relogin.do" method="POST" onsubmit="return false;">
            <h2 align="center">Welcome</h2>
            <h2 class="form-signin-heading" align="center"><img class="logoimg" src="resources/images/youblog.png">youblog</h2><br>
            <div class="inputgroup">
            <label for="inputEmail" class="sr-only" >google ID</label>
                <input type="text" class="form-control" id= "memberid" name ="memberid" placeholder="google ID" required autofocus><br>
            <label for="inputPassword" class="sr-only">password</label>
            <input type="password" class="form-control" id= "memberpwd" name ="memberpwd" placeholder="password" required>
            <input type="hidden" id= "smemberidq" name = "smemberidq" value ="${member.memberid}">
            <input type="hidden" id= "smemberpwdq" name = "smemberpwdq" value ="${member.memberpwd}">
            </div><br>
            <center>
            <input type = "submit" class="btn btn-primary" onclick = "check()" value = "log-in">
            <br><br>
            <!-- <a href ="join.do"><h8>아직 가입하지 않으셨나요?</h8></a> -->
            </center>
        </form>
    </div>
</div>
</body>
</html>