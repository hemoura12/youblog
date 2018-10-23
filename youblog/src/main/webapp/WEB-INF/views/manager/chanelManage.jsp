<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="/youblog/resources/js/jquery-3.3.1.min.js"></script>   
<script type="text/javascript">
	  function chanalcheck() {
          $.ajax({
              url: "update1.do",
              method: 'PUT',
              contentType : 'application/json; charset=utf-8',
              dataType: 'json',
              data: JSON.stringify(
                  {
                      "subscribeshare": $("#subscribeshare").val()
                  }
              ),
              success: function (data) {
                  if(data){
                      alert("완료!");
                  }else{
                      alert("실패!");
                  }
                  //self.close();
              },
              error: function (request, status, errorData) {
                  alert("error code : " + request.status + "\n"
                      + "message : " + request.responseText + "\n"
                      + "error : " + errorData);
              }
          })
      }

		/*//var x = document.getElementById("chanel");
		//var y = chanelSelect.options[chanelSelect.selectedIndex].value;
		
		var x = document.getElementById("subscribeshare").selectedIndex;
        var y = document.getElementById("subscribeshare").options;
        var z = document.getElementById("subscribeshare").value;

        alert("Index: " + y[x].index + " is " + y[x].text+" is " + z);
        
        $('#subscribeshare').attr("action", "update1.do").submit();*/



	 /* var subscribeshare = $("#subscribeshare").val(); */
        /* $("#update").on("click", function(){});
        $.ajax({
            url:"update1.do",
            type:'GET',
            data: {"subscribeshare" : $("#subscribeshare").val(),
            success:function(data){
                alert("완료!");
                self.close();
            },
            error: function(request, status, errorData){
				alert("error code : " + request.status + "\n"
						+ "message : " + request.responseText + "\n"
						+ "error : " + errorData);
            }
        });
     }    */
    /*$(function(){
    	$("#update").on("click", function(){
    		 $.ajax({
    			 url:"update1.do",
    	         type:'GET',
    	         //data: {"subscribeshare" : $("#subscribeshare").val(),
    	         contentType: "application/json; charset=utf-8",
    	         success: function(result){
    				alert("전송 성공 : " + result);
    	         	$("#update").html();
    	         },
    	         error: function(request, status, errorData){
    					alert("error code : " + request.status + "\n"
    							+ "message : " + request.responseText + "\n"
    							+ "error : " + errorData);
    	         }
    	});
	})});*/
     
        
	 /* $(function(){
		 $("#update1").on("click", funtion(){
			 var subscribeshare = $("#subscribeshare").val();
			 
			 $.ajax({
				 url: "update1.do",
				 type: "post",
				 dataType: "json",
				 //contentType: "application/json; charset=utf-8",
				 success: function(result){
					 $("#subscribeshare").html("공개여부 : " + result.subscribeshare);
				 },
				 error: function(request, status, errorData){
						alert("error code : " + request.status + "\n"
								+ "message : " + request.responseText + "\n"
								+ "error : " + errorData);
						}
			 });
		 });
	 }); */
</script>
    <title>chanelManage</title>
</head>
<body>
<c:import url = "/WEB-INF/views/header.jsp"/>
<div class="conWrap">
    <div class="top_bar">
        <div class="top_img_box"><img src="resources/images/headerimg.PNG"/></div>
    </div>
    <div class="channel_conbox">
        <div class="channel_header">
            <div class="channel_img"><img src="resources/images/rion2.png"/></div>
            <div class="channel_infoBox">
                <p class="channel_name">라이언네 <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></p>

                <p>
                    <span class="uploadTime">1시간전</span>
                    <span class="viewCount">View 591만회</span>
                </p>
            </div>
            <div class ="infoBox_right">
                <!--<a href="#" class="subscript_tag"><span>구독</span></a>-->
                <a href="#" class="subscript_tag"><span>구독 중</span></a>

                <a class = "sub_alram" onclick="changeicon()"><i class="fas fa-bell-slash"></i></a>
                <!--<i class="fas fa-bell"></i>-->
            </div> <!--infoBox_right -->
        </div> <!-- channel_header-->
        <div class="sub_header">
            <div class="header_category">
                    <a class="first_link" href="personmain.do" >글 관리</a>
                    <a class="first_link" href="list.do" >댓글 관리</a>
                    <a class="first_link" href="update1.do" >채널 관리</a>
                <div class="header_searchbar">
                    <img id='image_search' src="https://3.bp.blogspot.com/-2CWX7kIpob4/WZgVXt3yTQI/AAAAAAAAACM/N1eGT1OD7rklb4GtsadoxYRyWZoR_aI0gCLcBGAs/s1600/seo-1970475_960_720.png"
                         onclick="var inputBox = document.getElementById('input_text_search');
                                        inputBox.style.width = '200px';
                                        inputBox.style.paddingLeft='3px';
                                        inputBox.value='';
                                        inputBox.focus();">
                    <input id='input_text_search' type="text" onblur="this.style.width='0px'; this.style.paddingLeft='0px';"
                           onkeydown="if(event.keyCode==13){alert(this.value);}">

                    <select style="position: relative; left: 100%; width:80px; height:30px;" 
                    		name="subscribeshare" id="subscribeshare" onchange="chanalcheck()">
                        <option value="" selected disabled>선 택</option>
                        <option value="Y" >공 개</option>
                        <option value="N" >비공개</option>
                    </select>
                </div>
            </div>
        </div> <!--sub_header-->

<c:import url = "/WEB-INF/views/rightNav.jsp"/>   

        <div class="channel_contents">
            <div class="channel_box_1">
                <div class="subscription_Box">
                     <c:forEach items="${list }" var="m" varStatus="i">
                     <%-- <c:when test="${loop.count%4==0}"></c:when> --%>
                    <div class="sub_channel_img"><img src="resources/images/rion2.png" /></div>
                        <p class="channel_name">${m.membername }</p>
                        <p>
                            <span class="">구독자</span>
                            <span class="sub_title">${m.readercount }</span>
                        </p>
                         <a href="#" class="subscript_tag_1">
                             <span>${m.subscribeshare }</span>
                         </a>
                     </c:forEach>
                </div> <!-- subscription_Box -->
						
            </div> <!--channel_box -->
        </div> <!--channel_contents-->
    </div> <!--channel_conbox-->
</div><!--conWrap-->
</body>
</html>