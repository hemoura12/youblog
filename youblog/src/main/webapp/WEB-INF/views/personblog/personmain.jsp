<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=deivce-width, initial-scale=1">
<style>
</style>
<script type="text/javascript" src="/youblog/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
</script>
<title>personmain</title>
</head>
<body>
	<c:import url="/WEB-INF/views/header.jsp" />

	<c:set var="m" value="${member }" />
	


	<div class="conWrap">
		<div class="top_bar">
			<div class="top_img_box">
				<img src="resources/images/headerimg.PNG" />
			</div>
		</div>
		<div class="channel_conbox">
			<div class="channel_header">
				<div class="channel_img">
					<img src="resources/images/rion.PNG" />
				</div>
				<div class="channel_infoBox">
					<p class="channel_name">
						${member.membername } <span class="glyphicon glyphicon-ok-circle" 	aria-hidden="true"></span>
					</p>

					<!-- <p>
						<span class="uploadTime">1시간전</span> <span class="viewCount">View 4회</span>
					</p> -->
				</div>
				<div class="infoBox_right">
				<c:url var="managego" value="managego.do">
							<c:param name="check" value="${sessionScope.member.memberid}" />
					</c:url>
				<c:choose>
					<c:when test="${sessionScope.member.memberid eq blog[1].writerid}">
							<a href=${managego } class="subscript_tag"><span>관리</span></a>
						</c:when>
						
						<c:otherwise>
							<!--<a href="#" class="subscript_tag"><span>구독</span></a>-->
							<a href="#" class="subscript_tag"><span>구독 중</span></a>
							<a class="sub_alram" onclick="changeicon()"><i
								class="fas fa-bell-slash"></i></a>
						</c:otherwise>
				</c:choose>
					<!--<i class="fas fa-bell"></i>-->
				</div>
				<!--infoBox_right -->
			</div>
			<!-- channel_header-->
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
					
					<c:url var="personboard" value="personboard.do">
							<c:param name="writerid" value="${sessionScope.member.memberid }" />
					</c:url>
					<a class="first_link" href="${personboard }">게시글</a>
					<div class="header_searchbar">
						<img id='image_search'
							src="https://3.bp.blogspot.com/-2CWX7kIpob4/WZgVXt3yTQI/AAAAAAAAACM/N1eGT1OD7rklb4GtsadoxYRyWZoR_aI0gCLcBGAs/s1600/seo-1970475_960_720.png"
							onclick="var inputBox = document.getElementById('input_text_search');
                                        inputBox.style.width = '200px';
                                        inputBox.style.paddingLeft='3px';
                                        inputBox.value='';
                                        inputBox.focus();">
						<input id='input_text_search' type="text"
							onblur="this.style.width='0px'; this.style.paddingLeft='0px';"
							onkeydown="if(event.keyCode==13){alert(this.value);}">
					</div>
				</div>
			</div>
			<!--sub_header-->

			<%-- <%@ include file = "/WEB-INF/views/rightNav.jsp" %> --%>
			<c:import url="/WEB-INF/views/rightNav.jsp" />
			<div class="channel_contents" style = "width : 65%; height: auto;     float: left;">
				<div class="channel_box">
					<!--<div class="libray_title_box">
                        <i class="fas fa-redo-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;<span class="libray_title">최근 본 게시글</span>
                    </div>-->

					<ul class="channel_list">

						<c:forEach items="${blog }" var="b">
							<a class="movepage" href="detailpage.do">
								<li>
									<div class="leftTextBox">
										<img src="resources/images/arial.jpg" alt="프로필이미지"
											class="profileImg">
										<div class="infoBox">
											<p class="userName">${m.membername }</p>
											<p>
												<span class="uploadTime">${b.writedate }</span> <span
													class="viewCount">View ${b.hits }회</span>
											</p>
										</div>
										<div class="title">${b.title }</div>
										<div class="content">${b.contents }</div>
									</div>
									<div class="rightImgBox">
										<!-- 이미지 수정 -->
										<img src="resources/images/4k.jpg" alt="이미지" class="mainImg">
									</div>
							</li>
							</a>
						</c:forEach>
					</ul>
				</div>
				<!--channel_conbox-->
			</div>
			<!--channel_contents-->
		</div>
		<!--conBox -->
	</div>
	<!--conWrap-->
</body>

<!-- <script type="text/javascript" src = "/youblog/resources/js/jquery-3.3.1.min.js"/>
<script type="text/javascript">
	function encode(){
		alert(${managego});
		
		var origin = ${managego}
		var tran = encodeURI(origin);
		
		alert(tran);
		
		location.href= tran;
		
	}
</script> -->

</html>