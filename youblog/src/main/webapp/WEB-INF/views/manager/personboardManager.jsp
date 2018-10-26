<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/styles/css/board.css">
<title>personboard.jsp</title>
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
                <p class="channel_name">${sessionScope.member.membername } <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></p>

                
            </div>
           <!--  <div class ="infoBox_right">
                <a href="#" class="subscript_tag"><span>구독</span></a>
                <a href="#" class="subscript_tag"><span>구독 중</span></a>

                <a class = "sub_alram" onclick="changeicon()"><i class="fas fa-bell-slash"></i></a>
                <i class="fas fa-bell"></i>
            </div> infoBox_right -->
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
           
                <div class="board_box"> <!-- id="container" name="container" -->
		            <!-- 
		            <a class="btn" href="#" target="_blank">신규등록 <span class="btn_txt_small">▶</span></a>
		            <a class="btn" href="#" target="_blank">단일화 <span class="btn_txt_small">▶</span></a>
		            <a class="btn" href="#" target="_blank">분리 <span class="btn_txt_small">▶</span></a>
		            <a class="btn" href="#" target="_blank">다운로드 <span class="btn_txt_small">▶</span></a>
		            <a class="btn" href="#" target="_blank">삭제 <span class="btn_txt_small">▶</span></a>
		            <a class="btn" href="#" target="_blank">업로드 <span class="btn_txt_small">▶</span></a> 
		            -->
		            <!-- <div class="right">
		                <select class="select_btn">
		                    <option value="">10개씩 보기</option>    
		                </select>
		            </div> -->
		
		            <table class="bbsList">
		                <%-- <caption>이메일 수신자 그룹관리 (이메일 뉴스레터를 발송할 대상 수신자 목록을 선택하세요.)</caption>      --%>      
		                <thead class="head">
		                <tr>
		                	<td></td><td></td><td></td><td></td><td></td>
		                	<td align = "center">
		                		<input type="button" value="삭제" id="removeBt" onclick="chkProduct();" class="subscript_tag">
		                	</td>
		                </tr>
		                    <tr>
		                        <!-- <th><a class="checkbox" href="" ></a></th>  -->
		                         <th></th>
		                        <th>글번호</th>
		                        <th>글제목</th> 	                      
		                        <th></th>
		                        <th>등록일</th> 
		                        <th>공개여부</th>
		                    </tr>    
		                </thead>
		                <tbody class="body">
		               <c:forEach begin="0" end="${fn:length(blog) }" step="1"  varStatus="i" items="${blog}" var="b"> 
		               <%--  <c:forEach items="${blog }" var="b" varStatus="i"> --%>
		                    <tr>
		                        <!-- <td class=""><a class="checkbox_checked" href="javascript:;" >✓</a></td> -->
		                        <td class=""><input type="checkbox" name="chk" value="${m.blogno }"></td>
		                        <td class="">${i.count }</td>
		                        <td class="">${b.title }</td>
		                        
		                        <td class=" txt_org"></td>
		                        <td class="">${b.writedate }</td>
		                        <c:choose>
			                        <c:when test="${b.state eq 'Y' }">	                                                            
				                        <td class="">
					                        <!-- <input type="radio" name="chk_open" value="Y" checked="checked">공개
					                        <input type="radio" name="chk_open" value="N">비공개 -->
					                     <select name="state" id = "state" onchange="statechange()">
				                        	<option name="chk_open" value="Y" selected="selected">공개</option>
				                        	<option name="chk_open" value="N" >비공개</option>
				                        </select>
				                        </td>
				                   </c:when>
				                    <c:when test="${b.state eq 'N' }">	 
				                          <td class="">
					                        <!-- <input type="radio" name="chk_open" value="Y" >공개
					                        <input type="radio" name="chk_open" value="N" checked="checked">비공개 -->
					                       <select name="state" id = "state" onchange="statechange()">
					                        	<option name="chk_open" value="Y" >공개</option>
					                        	<option name="chk_open" value="N" selected="selected">비공개</option>
					                        </select>
				                        </td>
				                    </c:when>
		                        </c:choose>
		                       <%--  <td class=""><input type="button" name="boardUpdate${i.count }" id="boardUpdate${i.count }" value="변경"></td> --%>
		                        <td class="">
		                        	<input type="hidden" name = "blogno" id = "blogno" value="${b.blogno }">
		                        </td>
		                        
		                        <!-- <td class=""><a class="viewbtn" href="#" target="_blank"><span class="txt_org">보기</span></a></td> -->
		                    </tr>
		                 </c:forEach>
		                </tbody>
		                <tfoot class="foot">
		                    <tr>
		                        <td colspan="9">
		                            <!-- <span class="arrow radius-right">≪</span>
		                            <span class="arrow radius-left">＜</span>
		                            
		                            <a href="javascript:;" class="num_box txt_point">1</a>
		                            <a href="javascript:;" class="num_box ">2</a>
		                            <a href="javascript:;" class="num_box ">3</a>
		                            <a href="javascript:;" class="num_box ">4</a>
		                            <a href="javascript:;" class="num_box ">5</a>
		                            <a href="javascript:;" class="num_box ">6</a>
		                            <a href="javascript:;" class="num_box ">7</a>
		                            <a href="javascript:;" class="num_box ">8</a>
		                            <a href="javascript:;" class="num_box ">9</a>
		                            <a href="javascript:;" class="num_box ">10</a>
		
		                            <span class="arrow radius-right">＞</span>
		                            <span class="arrow radius-left">≫</span>-->
		                        </td>  
		                    </tr>   
		                </tfoot>
		            </table>
		            <!--< div class="btn_wrap">
		                <a class="btn_org" href="javascript:;"><span class="txt_white">수신자 그룹 등록</span></a>
		            </div> -->
        	</div>
    </div> <!--channel_conbox-->
</div><!--conWrap-->
</body>


<script type="text/javascript" src = "/youblog/resources/js/jquery-3.3.1.min.js"/>
<script type="text/javascript">
function statechange(){
	var checkOpen = "";
	<%-- var blog = <% session.getAttribute("blog"); %> --%>
	
	 for(var i = 0 ; i < ${fn:length(blog)}; i++){
		 $('boardUpdate'+i).each(function(){
			 $(this).click(function(){
				
				checkOpen = $("[select][name=chk_open]:checked").val()
				blogno = $('#blogno').val
				
	$.ajax({
		type : "POST",
		url : "/boardUpdate.do",
        data : "checkopen=" + checkOpen + "&blogno=" + blogno,
        dataType : "text",
        success : 
        	function(data) {	        	
        	if(data == "success"){
        		location.href="/personboardManager.do";
        		alert("변경성공");
        	} else if (data == "fail"){
        		alert("변경 실패");
				return;
        	}
        },
	        error : function(request, status, error) {
	            alert("code:" + request.status + "\n" + "error:" + error);
	        }
	    	});  //ajax
	    })//end click
	 });// end each
	}// end for	
	
/* if(event.keyCode == 13){
		doSearch();
	} */
	
 }
 
 
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
    	url: "boardDelete.do?ids="+ids,
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
 /* 
function chanalcheck() {
	var state = ${'#state'} 
	
    $.ajax({
        url: "changeopen.do",
        method: 'PUT',
        contentType : 'application/json; charset=utf-8',
        dataType: 'json',
        data: ,
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
} */
 
 
 
 
 
 
 
 
 
 
</script>

</html>