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
    <!-- ajxa구문 예정 -->
    <script type="text/javascript">
    
    var getPassword = RegExp(/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/); //패스워드 유효성 영문(대소문자)+숫자+특수문자 포함 8~16자리
    
    function checkpw()
    {
    	
    	var inputnow = $('#nowpw').val();
		var changepw = $('#changepw').val();
		var loginid = $('#loginid').val();
		
       			
   		 if(inputnow == null || inputnow == ""){
   				$("#errorMS").css("color", "red").css("display", "block").text('기존 비밀번호를 입력해주세요.');
  			 /* $("#nowpw").css("background-color", "#FFCECE"); */
  			 $("#nowpw").focus();
  		 	 return false;
  		 
		 } else if(changepw == null || changepw == ""){
			 $("#errorMS").css("color", "red").css("display", "block").text('변경 비밀번호를 입력해주세요.');
			 $("#changepw").focus();
			 return false;
			 
		 } else if(!getPassword.test($("#nowpw").val())){
 			 $("#errorMS").css("color", "red").text('변경 비밀번호를 다시 입력해주세요.')
 			 $("#errorMS").css("display", "block"); 
			 $("#changepw").val("");
	         $("#changepw").focus();
	         return false;	   
	 		 
		 } else if ( inputnow != changepw ) {
			
			 $("#errorMS").css("color", "red").css("display", "block").text('변경 비밀번호가 일치하지 않습니다.');
  			 $("#changepw").val('');
  		     $("#changepw").focus();
  			 return false;
  		 
		 } else {
		
				     $.ajax({
				    	url : "updatepw.do",
				    	type : "post",
				    	data : { inputnow : inputnow, changepw : changepw, loginid : loginid },
				   		success : function(data){
						 	 if(data == '0'){
						 		alert("비밀번호 변경 실패");
						 		return false;		 		
						 	}else if(data == '1'){
						 		location.href="login.do";
						 	
						 	} else {
						 		alert("관리자에게 문의하세요");
						 		return false;	
						 	}      		  
				       }    			
				    });  //ajax end  				    
		 		}
  	} //checkpw() end
    
    </script>
    
    <title>비밀번호 변경</title>
</head>

<body>

<div class="card align-middle">
	<div class = "errorMS" id = "errorMS" style = "display:none; position:relative; top: 30px; left: 30px;" ></div>
    <div class="card-body">
		<form action="updatepw.do" Method = "POST" onsubmit="return false;">
        <div class="group">
            <input type="password" id ="nowpw" name = "memberpwd" required>
            <span class="highlight"></span>
            <span class="bar"></span>
            <label>새 비밀번호</label>
        </div>

         <p style="font-size: small" >비밀번호 안전성:
                8자 이상 입력하세요. 다른 사이트에서 쓰는 비밀번호나 애완동물의 이름처럼 추측하기 쉬운 이름은 사용하지 마세요.</p><br>

        <div class="group">
            <input type="password" id = "changepw" name = "changepwd" required>
            <span class="highlight"></span>
            <span class="bar"></span>
            <label>새 비밀번호 확인</label>
        </div>
		<input type = "hidden" id = "loginid" name = "memberid" value="${member.memberid}">
        <input type ="button" class="btn btn-primary" onclick="checkpw()" value = "비밀번호 변경"> 
	</form>


    </div>
</div>
</body>
</html>