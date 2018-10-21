<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name = "viewport" content ="width=deivce-width, initial-scale=1">
	<style>
	</style>
    <script type="text/javascript">
    </script>
    <title>myChanel</title>
</head>
<body>
<c:import url = "/WEB-INF/views/header.jsp"/>
<div class="conWrap">
    <div class="top_bar">
        <div class="top_img_box"><img src="resources/images/headerimg.PNG"/></div>
    </div>
    <div class="channel_conbox">
            <div class="channel_header">
                <div class="channel_img"><img src="resources/images/rion.PNG"/></div>
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
                    
   <%-- <%@ include file = "/WEB-INF/views/rightNav.jsp" %> --%>
   <c:import url = "/WEB-INF/views/rightNav.jsp"/>        
            <div class="channel_contents">
                <div class="channel_box">
                    <!--<div class="libray_title_box">
                        <i class="fas fa-redo-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;<span class="libray_title">최근 본 게시글</span>
                    </div>-->
                    <ul class="channel_list">
                        <li>
                            <div class="rightImgBox">
                                <img src="resources/images/4k.jpg" alt="이미지" class="mainImg">
                            </div>
                        
                            <div class="leftTextBox">
                                <img src="resources/images/arial.jpg" alt="프로필이미지" class="profileImg">
                                <div class="infoBox">
                                    <p class="userName">라이언네</p>
                                    <p>
                                        <span class="uploadTime">1시간전</span>
                                        <span class="viewCount">View 591만회</span>
                                    </p>
                                </div>
                                <div class="title">
                                    마! 꿀 갖고온나
                                </div>
                                <div class="content">
                                    그대가 받은 박수
                                    그대가 받은 찬사
                                    그대 어깨 위에는 벽돌 혹은 금괴
                                    둘 중 하나가 그대를 짓누르고 있겠죠
                                    그대도 가끔 시선이라는 게 조금 무겁겠죠
                                    난 티끌의 명성을 얻고서도 겁먹어
                                    빈첸 사회악이라 근절 되어야 한대요
                                    손가락질 받죠 나도 희망차고 싶죠
                                    웃음을 건네주고 싶죠 그래요
                                    그대도 카메라 뒤 울어본 적 있나요
                                    그대도 남을 위해 감정을 숨긴 적 있나요
                                    그대도 카메라 뒤 울어본 적 있나요
                                    그대도 남을 위해 감정을 숨긴 적 있나요
                                    우리 눈에 완벽하게만 보이는 그대도
                                    결함과 고민이 존재하고 불완전한가요
                                    영향력에 대한 책임감이 그대 힘들진 않나요
                                    그대 오늘 어떤 기분이신가요
                                    그대도 남을 위해 감정을 숨긴 적 있나요
                                    우리 눈에 완벽하게만 보이는 그대도
                                    결함과 고민이 존재하고 불완전한가요
                                    영향력에 대한 책임감이 그대 힘들진 않나요
                                    그대 오늘 어떤 기분이신가요
                                </div>
                            </div>
                        </li>

                        <li>
                        	<div class="rightImgBox">
                                <img src="resources/images/4k.jpg" alt="이미지" class="mainImg">
                            </div>
                            <div class="leftTextBox">
                                <img src="resources/images/arial.jpg" alt="프로필이미지" class="profileImg">
                                <div class="infoBox">
                                    <p class="userName">라이언네</p>
                                    <p>
                                        <span class="uploadTime">1시간전</span>
                                        <span class="viewCount">View 591만회</span>
                                    </p>
                                </div>
                                <div class="title">
                                    마! 꿀 갖고온나
                                </div>
                                <div class="content">
                                    그대가 받은 박수
                                    그대가 받은 찬사
                                    그대 어깨 위에는 벽돌 혹은 금괴
                                    둘 중 하나가 그대를 짓누르고 있겠죠
                                    그대도 가끔 시선이라는 게 조금 무겁겠죠
                                    난 티끌의 명성을 얻고서도 겁먹어
                                    빈첸 사회악이라 근절 되어야 한대요
                                    손가락질 받죠 나도 희망차고 싶죠
                                    웃음을 건네주고 싶죠 그래요
                                    그대도 카메라 뒤 울어본 적 있나요
                                    그대도 남을 위해 감정을 숨긴 적 있나요
                                    그대도 카메라 뒤 울어본 적 있나요
                                    그대도 남을 위해 감정을 숨긴 적 있나요
                                    우리 눈에 완벽하게만 보이는 그대도
                                    결함과 고민이 존재하고 불완전한가요
                                    영향력에 대한 책임감이 그대 힘들진 않나요
                                    그대 오늘 어떤 기분이신가요
                                    그대도 남을 위해 감정을 숨긴 적 있나요
                                    우리 눈에 완벽하게만 보이는 그대도
                                    결함과 고민이 존재하고 불완전한가요
                                    영향력에 대한 책임감이 그대 힘들진 않나요
                                    그대 오늘 어떤 기분이신가요
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="rightImgBox">
                                <img src="resources/images/4k.jpg" alt="이미지" class="mainImg">
                            </div>
                            <div class="leftTextBox">
                                <img src="resources/images/arial.jpg" alt="프로필이미지" class="profileImg">
                                <div class="infoBox">
                                    <p class="userName">라이언네</p>
                                    <p>
                                        <span class="uploadTime">1시간전</span>
                                        <span class="viewCount">View 591만회</span>
                                    </p>
                                </div>
                                <div class="title">
                                    마! 꿀 갖고온나
                                </div>
                                <div class="content">
                                    그대가 받은 박수
                                    그대가 받은 찬사
                                    그대 어깨 위에는 벽돌 혹은 금괴
                                    둘 중 하나가 그대를 짓누르고 있겠죠
                                    그대도 가끔 시선이라는 게 조금 무겁겠죠
                                    난 티끌의 명성을 얻고서도 겁먹어
                                    빈첸 사회악이라 근절 되어야 한대요
                                    손가락질 받죠 나도 희망차고 싶죠
                                    웃음을 건네주고 싶죠 그래요
                                    그대도 카메라 뒤 울어본 적 있나요
                                    그대도 남을 위해 감정을 숨긴 적 있나요
                                    그대도 카메라 뒤 울어본 적 있나요
                                    그대도 남을 위해 감정을 숨긴 적 있나요
                                    우리 눈에 완벽하게만 보이는 그대도
                                    결함과 고민이 존재하고 불완전한가요
                                    영향력에 대한 책임감이 그대 힘들진 않나요
                                    그대 오늘 어떤 기분이신가요
                                    그대도 남을 위해 감정을 숨긴 적 있나요
                                    우리 눈에 완벽하게만 보이는 그대도
                                    결함과 고민이 존재하고 불완전한가요
                                    영향력에 대한 책임감이 그대 힘들진 않나요
                                    그대 오늘 어떤 기분이신가요
                                </div>
                            </div>
                        </li>
                    </ul>
                </div> <!--channel_conbox-->
            </div> <!--channel_contents-->
    </div> <!--conBox -->
</div> <!--conWrap-->
</body>
</html>