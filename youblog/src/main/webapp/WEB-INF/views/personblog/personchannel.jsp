<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script>
    </script>
    <title>personchannel</title>
</head>
<body>
<c:import url = "/WEB-INF/views/header.jsp"/>


<c:url var="personmain" value="personmain.do">
		<c:param name="writerid" value="${sessionScope.member.memberid  }" />
	</c:url>

<div class="conWrap">
    <div class="top_bar">
        <div class="top_img_box"><img src="resources/images/headerimg.PNG"/></div>
    </div>
    <div class="channel_conbox">
        <div class="channel_header">
            <div class="channel_img"><img src="resources/images/rion2.png"/></div>
            <div class="channel_infoBox">
                <p class="channel_name">${member.memberid }<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></p>

                
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
            
            	<c:url var="personmain" value="personmain.do">
							<c:param name="writerid" value="${sessionScope.member.memberid }" />
					</c:url>
                 <a class="first_link" href="${ personmain }" >홈</a>
                 <c:url var="personchannel" value="personchannel.do">
							<c:param name="writerid" value="${sessionScope.member.memberid }" />
					</c:url>
                 <a class="first_link" href="${personchannel }" >채널</a>
                 
                 <c:url var="personboard" value="personboard.do">
							<c:param name="writerid" value="${sessionScope.member.memberid }" />
					</c:url>
                 <a class="first_link" href="${personboard }" >게시글</a>
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
            <div class="channel_box_1">
                <div class="subscription_Box">
                    <div class="sub_channel_img"><img src="resources/images/rion2.png" /></div>
                        <p class="channel_name">쌍둥이 라이언네</p>
                        <p>
                            <span class="">구독자</span>
                            <span class="sub_title"> 000.000 명</span>
                        </p>
                         <a href="#" class="subscript_tag_1">
                             <span>구독 중</span>
                         </a>
                </div> <!-- subscription_Box -->

                <div class="subscription_Box">
                    <div class="sub_channel_img"><img src="resources/images/rion2.png"/></div>
                    <p class="channel_name">쌍둥이 라이언네</p>
                    <p>
                        <span class="">구독자</span>
                        <span class="sub_title"> 000.000 명</span>
                    </p>
                    <a href="#" class="subscript_tag_1">
                        <span>구독 중</span>
                    </a>
                </div> <!-- subscription_Box -->

                <div class="subscription_Box">
                    <div class="sub_channel_img"><img src="resources/images/pitch.jpg"/></div>
                    <p class="channel_name">쌍둥이 라이언네</p>
                    <p>
                        <span class="">구독자</span>
                        <span class="sub_title"> 000.000 명</span>
                    </p>
                    <a href="#" class="subscript_tag_1">
                        <span>구독 중</span>
                    </a>
                </div> <!-- subscription_Box -->

                <div class="subscription_Box">
                    <div class="sub_channel_img"><img src="resources/images/rion.PNG"/></div>
                    <p class="channel_name">쌍둥이 라이언네</p>
                    <p>
                        <span class="">구독자</span>
                        <span class="sub_title"> 000.000 명</span>
                    </p>
                    <a href="#" class="subscript_tag_1">
                        <span>구독 중</span>
                    </a>
                </div> <!-- subscription_Box -->

                <div class="subscription_Box">
                    <div class="sub_channel_img"><img src="resources/images/rion.PNG"/></div>
                    <p class="channel_name">쌍둥이 라이언네</p>
                    <p>
                        <span class="">구독자</span>
                        <span class="sub_title"> 000.000 명</span>
                    </p>
                    <a href="#" class="subscript_tag_1">
                        <span>구독 중</span>
                    </a>
                </div> <!-- subscription_Box -->

                <div class="subscription_Box">
                    <div class="sub_channel_img"><img src="resources/images/rion.PNG"/></div>
                    <p class="channel_name">쌍둥이 라이언네</p>
                    <p>
                        <span class="">구독자</span>
                        <span class="sub_title"> 000.000 명</span>
                    </p>
                    <a href="#" class="subscript_tag_1">
                        <span>구독 중</span>
                    </a>
                </div> <!-- subscription_Box -->

                <div class="subscription_Box">
                    <div class="sub_channel_img"><img src="resources/images/rion.PNG"/></div>
                    <p class="channel_name">쌍둥이 라이언네</p>
                    <p>
                        <span class="">구독자</span>
                        <span class="sub_title"> 000.000 명</span>
                    </p>
                    <a href="#" class="subscript_tag_1">
                        <span>구독 중</span>
                    </a>
                </div> <!-- subscription_Box -->
            </div> <!--channel_box -->
        </div> <!--channel_contents-->
    </div> <!--channel_conbox-->
</div><!--conWrap-->
</body>
</html>