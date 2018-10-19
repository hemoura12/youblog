<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page import="org.kh.youblog.blog.model.vo.Blog, java.util.ArrayList" %>
<%
	ArrayList<Blog> blog = (ArrayList<Blog>)request.getAttribute("blog");
%>
<!DOCTYPE html>
<html lang="kr">
<head>
	<meta charset="UTF-8">
	<meta name = "viewport" content ="width=deivce-width, initial-scale=1">
	<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" id="bootstrap-css">

	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/styles/css/main.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&amp;subset=korean" rel="stylesheet">



<script type="text/javascript">
	var rowno = 0;
/* $(document).ready(function () {
	  $(document).scroll(function() {
	    var maxHeight = $(document).height();
	    var currentScroll = $(window).scrollTop() + $(window).height();

		if (maxHeight <= currentScroll + 100) {
 	      $.ajax({
	        // Append next contents
	        ...
	      }) 
			console.log("추가");
			$("#enters").append("추가");
	    }
	  })
	}); */
	$( document ).ready(function() {

        if(document.location.hash) {
            var hash = parseInt(document.location.hash.replace("#", ""));
            
            getList(0, hash);
            rowno = hash;
        }
    });
	
	function selectBlog(blogno) {
		var url = "selectBlog/"+blogno+".do";
		window.location.href=url;
	}
	
	$(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
		if($(window).scrollTop() >= $(document).height() - $(window).height()){
			if(rowno == 0){
				rowno = 20;
			}else{
				rowno += parseInt(20);
				/*rowno = parseInt(document.location.hash.replace("#", "")) + parseInt(20); */
			}
		console.log("추가"); 
		getList(parseInt(rowno)-parseInt(20), rowno);
		/* document.location.hash = "#" + rowno; */
		}
	});

	function getList(rowno1, rowno2) {
		console.log(rowno1+" "+rowno2);
		$.ajax({
			url : "pagingCTG.do",
			data : {
				cate1 : "all",
				cate2 : "all",
				rowno1 : rowno1,
				rowno2 : rowno2
			},
			type : "post",
			dataType: "json",
			success: function(obj){
				console.log(obj); //object 라고 출력함
				//리턴된 객체를 문자열로 변환함
				var objStr = JSON.stringify(obj);
				//문자열을 json 객체로 바꿈
				var jsonObj = JSON.parse(objStr);
				
				//문자열 변수 준비
				//var outValues = $("#d3").html();
				
				var outValues = "";
				for(var i in jsonObj.list){
 					if(i==0){
 						console.log("작동");
						outValues += "<div class = 'ul-table'><div class='ul-row'><div class='ul-table__tables'>";
					}
					outValues += "<div class='table_1' onclick='location.href=\"selectBlog("+jsonObj.list[i].blogno+")\"''><img src='resources/images/라이언 썸네일.png'/>"
		                 + "<label class ='blog_title'>" + jsonObj.list[i].title + "</label>"
		                 + "<label class ='blog_name'>" + jsonObj.list[i].memberName + "</label>"
		                 + "<label class ='blog_view_time'>" + jsonObj.list[i].writerdate +" · " + jsonObj.list[i].hits + "</label></div>";
		             
			         if((parseInt(i)+parseInt(1))%5==0 && (parseInt(i)+parseInt(1))!=jsonObj.list.length){
			        	 outValues += "</div></div><div class='division_line'></div></div>"
							+"<div class = 'ul-table'><div class='ul-row'><div class='ul-table__tables'>";
					 }
				}
				outValues += "</div></div><div class='division_line'></div></div>";
				$('#ctdiv').append(outValues);
				//$("#d3").html(outValues);
				
			},
			error: function(request, status, errorData){
				alert("error code : " + request.status + "\n"
						+ "message : " + request.responseText + "\n"
						+ "error : " + errorData);
				}
		});
	}
	
	
</script>






	<title>Main</title>

<body>
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<div class="sidebar-icon">
				<i class="fa fa-bars fa-2x toggle-btn_1" data-toggle="collapse" data-target="#menu-side"></i>
				<!--<button type="button" class="btn btn-default_1" aria-label="Left Align">
                    <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                </button>-->
			</div>
			<div class="banner">
				<a class="navbar-brand" href="main.html"><img alt="Brand" src="resources/images/logoname.PNG"></a>
			</div>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<form class="navbar-form navbar-left" role="search">
				<div class="input-group input-group-sm">
					<input type="text" class="form-control" placeholder="검색"/>
				</div>
				<button class="btn btn-default_2" type="button">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></li>
				<li><a href="#"><span class="glyphicon glyphicon-th" aria-hidden="true"></span></a></li>
				<li><a href="#"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a></li>
				<button class="btn btn-primary_1" type="button">
					로그인
				</button>
				<!-- 로그인시 나올 부분 -->
				<!--<li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>-->
				<!-- 로그인시 나올 부분 /-->
			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav><!--/.navbar navbar-default-->

<!-- 파라메터셋팅 -->
<c:url var="lifeAll" value="categoryLife.do">
    <c:param name="cate2" value="all" />
</c:url>
<c:url var="travelAll" value="categoryTravel.do">
    <c:param name="cate2" value="all" />
</c:url>
<c:url var="culturelifeAll" value="categoryCulture.do">
    <c:param name="cate2" value="all" />
</c:url>
<c:url var="itAll" value="categoryIT.do">
    <c:param name="cate2" value="all" />
</c:url>
<c:url var="sportAll" value="categorySport.do">
    <c:param name="cate2" value="all" />
</c:url>
<c:url var="currentAll" value="categoryCurrent.do">
    <c:param name="cate2" value="all" />
</c:url>

<div class = "conWrap">

<!-- side bar -->
<div class="nav-side-menu" id ="menu-side">
    <div class="brand">Brand Logo</div>
    <!--<i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>-->
    <div class="menu-list">
        <ul id="menu-content" class="menu-content"><!-- collapse out-->
            <li class="active">
                <a href="main.do">
                    <i class="fa fa-dashboard fa-lg"></i>홈
                </a>
            </li>

            <li  data-toggle="collapse" data-target="#products" class="collapsed">
                <a href="#"><i class="fa fa-gift fa-lg"></i> 주제별</a>
            </li>
            <ul class="sub-menu collapse" id="products">
                <li class="#"><a href="categoryAll.do">전체</a></li>
                <li><a href="${lifeAll }">라이프</a></li>
                <li><a href="${travelAll }">여행·맛집</a></li>
                <li><a href="${culturelifeAll }">문화·연예</a></li>
                <li><a href="${itAll }">IT</a></li>
                <li><a href="${sportAll }">스포츠</a></li>
                <li><a href="${currentAll }">시사</a></li>
            </ul>


			<!--<li data-toggle="collapse" data-target="#service" class="collapsed">
                <a href="#"><i class="fa fa-globe fa-lg"></i> 인기 <span class="arrow"></span></a>
            </li>
            <ul class="sub-menu collapse" id="service">
                <li>New Service 1</li>
                <li>New Service 2</li>
                <li>New Service 3</li>
            </ul>


            <li data-toggle="collapse" data-target="#new" class="collapsed">
                <a href="#"><i class="fa fa-car fa-lg"></i> 구독 <span class="arrow"></span></a>
            </li>
            <ul class="sub-menu collapse" id="new">
                <li>New New 1</li>
                <li>New New 2</li>
                <li>New New 3</li>
            </ul>-->
			<li>
				<a href="favorite.do">
					<i class="fa fa-users fa-lg"></i> 인기
				</a>
			</li>

			<li class="sub_li">
				<a href="subscription.do">
					<i class="fa fa-users fa-lg"></i> 구독
				</a>
			</li>

			<li>
				<a href="officialblog.html">
					<i class="fa fa-user fa-lg"></i> 공식 블로그
				</a>
			</li>

			<li class="sub_li">
				<a href="partnerblog.html">
					<i class="fa fa-users fa-lg"></i> 파트너 블로그
				</a>
			</li>

			<li>
				<a href="recentlyviewed.html">
					<i class="fa fa-user fa-lg"></i> 최근에 본 게시글
				</a>
			</li>

			<li>
				<a href="laterview.html">
					<i class="fa fa-user fa-lg"></i> 나중에 볼 게시글
				</a>
			</li>

			<li>
				<a href="likeview.html">
					<i class="fa fa-user fa-lg"></i> 좋아요 표시한 게시글
				</a>
			</li>
		</ul>
	</div>
</div>

<!--4x4 배열 시작-->
    <div class="conBox" id="ctdiv">
        <div class = "ul-table">
            <div class="ul-row">
                <div class="category_nav"><a href="categories.html" style="text-decoration:none"><i class="active"></i>전체</a>
                    &nbsp;<!--<span class="glyphicon glyphicon-menu-right"></span>-->
                </div>
                <div class="category_nav2">
                    <a class="first_link" href="lifeCTG.html" style="text-decoration:none">라이프</a>
                    <a class="first_link" href="travelCTG.html" style="text-decoration:none">여행·맛집</a>
                    <a class="first_link" href="cultureCTG.html" style="text-decoration:none">문화·연예</a>
                    <a class="first_link" href="itCTG.html" style="text-decoration:none">IT</a>
                    <a class="first_link" href="sportCTG.html" style="text-decoration:none">스포츠</a>
                    <a class="first_link" href="currentCTG.html" style="text-decoration:none">시사</a>
                </div>
                <div class="ul-table__tables">
                	<% for(int i = 0; i < blog.size(); i++) { %>
	                    <div class='table_1' onclick="selectBlog(<%= blog.get(i).getBlogno() %>)"><img src="resources/images/라이언 썸네일.png"/>
	                        <label class ="blog_title"><%= blog.get(i).getTitle() %></label>
	                        <label class ="blog_name"><%= blog.get(i).getWriterid() %></label>
	                        <label class ="blog_view_time"><%= blog.get(i).getWriterdate() %> · View <%=blog.get(i).getHits() %></label>
	                    </div>
	                    <% if((i+1)%5==0 && (i+1)!=blog.size()){ %>
									</div>
								</div>
							<div class='division_line'></div>
						</div>
						<div class = 'ul-table'>
							<div class='ul-row'>
								<div class='ul-table__tables'>
	                    <% } %>
	                 <% } %>
                </div>
            </div>
            <div class="division_line"></div>
        </div>

</div> <!-- conwrap end-->

</body>
</html>