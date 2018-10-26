<!-- 댓글 관리 jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="/youblog/resources/js/jquery-3.3.1.min.js"></script>
	
<script type="text/javascript">
	//체크선택삭제
	function chkProduct(){
    	var $inputs = $("input[name='chk']:checked");

    	if($inputs.length == 0){
        	/* alert("선택하신 댓글은 "+$inputs.length + " 개 입니다."); */
        	return;
    	}
    	var ids = $inputs.map(function() {
        	return $( this ).val();
    	}).get().join( ",");
    	
    	$.ajax({
        	url: "list.do?ids="+ids,
        	method: 'DELETE',
        	contentType : 'application/json; charset=utf-8',
        	dataType: 'json',
        	success: function (data) {
            	if(data){
                	window.location.reload(true);
            	}else{
                	alert("실패!");
            	}
        	},
        	error: function (request, status, errorData) {
            	alert("error code : " + request.status + "\n"
                	+ "message : " + request.responseText + "\n"
                	+ "error : " + errorData);
        	}
    	})
    	
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
	
	//체크박스 전체선택
	$(document).ready(function(){
    	//최상단 체크박스 클릭
    	$("#checkall").click(function(){
        //클릭되었으면
        	if($("#checkall").prop("checked")){
            	//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            	$("input[name=chk]").prop("checked",true);
            	//클릭이 안되있으면
        	}else{
            	//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            	$("input[name=chk]").prop("checked",false);
        	}
    	})
	});


	
</script>
    <title>commentManage</title>
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
                <p class="channel_name">${sesssionScpoe.member.membername } <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></p>

              
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
                </div>
            </div>
        </div> <!--sub_header-->

<c:import url = "/WEB-INF/views/rightNav.jsp"/>   

        <div class="channel_contents">
			<div>
   <table align="center" border="1" >
      <tr>
      	 <th style="width:30px; height:30px; text-align:center;"><input type="checkbox" id="checkall"></th>
      	<!--  <th><input type="checkbox" id="allCheck" name="allCheck"  ></th> -->
         <th class="first_link" style="width:55px; height:30px; text-align:center;">글번호</th>
         <th class="first_link" style="width:150px; height:30px; text-align:center;">아이디</th>
         <th class="first_link" style="width:350px; height:30px; text-align:center;">댓글내용</th>
         <th class="first_link" style="width:80px; height:30px; text-align:center;">상태</th>
      </tr>
      <c:forEach items="${list }" var="m" varStatus="index">
      <tr>
      	 <th style="width:30px; height:30px; text-align:center;"><input type="checkbox" name="chk" value="${m.cmtno }"></th>
      	 <!-- <th><input type="checkbox" class="remove_check" name="listChk[]" ></th> -->
         <th class="first_link" style="width:55px; height:30px; text-align:center;">${m.cmtno }</th>
         <th class="first_link" style="width:150px; height:30px; text-align:center;">${m.memberid }</th>
         <th class="first_link" style="width:350px; height:30px; text-align:center;">${m.cmtcontents }</th>
         <th class="first_link" style="width:80px; height:30px; text-align:center;">${m.state }</th>
      </tr>
      </c:forEach>
   </table>
   <input type="button" value="삭제" id="removeBt" onclick="chkProduct();" class="subscript_tag">
</div>
        </div> <!--channel_contents-->
    </div> <!--channel_conbox-->
</div><!--conWrap-->
</body>
</html>