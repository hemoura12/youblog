<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                <p class="channel_name">라이언네 <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></p>

                <p>
                    <span class="uploadTime">1시간전</span>
                    <span class="viewCount">View 591만회</span>
                </p>
            </div>
            <div class ="infoBox_right">
                <!--<a href="#" class="subscript_tag"><span>구독</span></a>-->
					
					<!-- if문걸어 관리탭나누기 -->
					<%-- <c:choose>
						<c:when test="">
							<a href="#" class="subscript_tag"><span>구독 중</span></a>
							<a class="sub_alram" onclick="changeicon()"><i
								class="fas fa-bell-slash"></i></a>
						</c:when>
						<c:when test="">
							<a href="#" class="subscript_tag"><span>관리</span></a>
						</c:when>
					</c:choose> --%>
					
					<!--<i class="fas fa-bell"></i>-->
            </div> <!--infoBox_right -->
        </div> <!-- channel_header-->
        <div class="sub_header">
            <div class="header_category">
                 <a class="first_link" href="personmain.do" >홈</a>
                 <a class="first_link" href="personchannel.do" >채널</a>
                 <a class="first_link" href="personboard.do" >게시글</a>
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
		                        <!-- <th><a class="checkbox" href="" ></a></th>  -->
		                        <th>글번호</th>
		                        <th>글제목</th> 	                      
		                        <th></th>
		                        <th></th>
		                        <th></th>
		                        <th>등록일</th> 
		                        <th></th> 
		                    </tr>    
		                </thead>
		                <tbody class="body">
		                    <tr>
		                        <!-- <td class=""><a class="checkbox_checked" href="javascript:;" >✓</a></td> -->
		                        <c:forEach items="${blog }" var="b" begin="0" end="${fn:length(blog) }" step="1" varStatus="i">
		                        <td class="">${i.count}</td>
		                        <td class="">${b.title }</td>
		                        <td class=""></td>
		                        <td class=""></td>
		                        <td class=" txt_org"></td>
		                        <td class="">${b.writedate }</td>                                                            
		                        <td class=" txt_org"></td>
		                        <!-- <td class=""><a class="viewbtn" href="#" target="_blank"><span class="txt_org">보기</span></a></td> -->
		                    </tr>
		                    </c:forEach>
		                </tbody>
		                <tfoot class="foot">
		                    <tr>
		                        <td colspan="9">
		                            <span class="arrow radius-right">≪</span>
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
		                            <span class="arrow radius-left">≫</span>
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
</html>