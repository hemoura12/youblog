<!-- 채널관리 jsp -->
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
                <p class="channel_name">${member.memberid } <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></p>

                
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
                    
                <c:url var="managego" value="managego.do">
							<c:param name="check" value="${sessionScope.member.memberid}" />
					</c:url> 
                 <a class="first_link" href="${ managego }" >글관리</a>
                 
                 <%-- <c:url var="list"  value="list.do">
                 	<c:param name="writerid" value = "${blog[1].writerid}"/>
                 </c:url> --%>
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
                <div class="subscription_Box" style="width: 100%">
                	<c:set var="i" value="0" />
					<c:set var="j" value="4" />
				<table border="0" style="width: 90%">
	  				<c:forEach items="${list }" var="m">
	    			<c:if test="${i%j == 0 }">
	    			<tr>
	    			</c:if>
	       			<td >
	       				<div class="sub_channel_img"><img src="resources/images/rion2.png" /></div>
                        <p class="channel_name">${m.membername }</p>
                        <p>
                            <span class="">구독자</span>
                            <span class="sub_title">${m.readercount }</span>
                        </p>
                         <a href="#" class="subscript_tag_1">
                         </a>
                    </td>
	    			<c:if test="${i%j == j-1 }">
	    			</tr>
	    			</c:if>
	    			<c:set var="i" value="${i+1 }" />
	  				</c:forEach>
					</table>
                </div> <!-- subscription_Box -->
            </div> <!--channel_box -->
        </div> <!--channel_contents-->
    </div> <!--channel_conbox-->
</div><!--conWrap-->
</body>
</html>