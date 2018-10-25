<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name = "viewport" content ="width=deivce-width, initial-scale=1">
    <script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" id="bootstrap-css">
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/styles/css/main.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	
	<script type="text/javascript">
	/*몇번째 클릭인지 확인하는 임시변수*/	
	var a = 1; 
	function clicktest() {
        if (a == 1) {
            $('.top_img_box').css('width', '87%');
            a = 2;
        }else{
            $('.top_img_box').css('width', '100%');
            a = 1;
        }
	};
	</script>

<title>header</title>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <div class="sidebar-icon">
                <i class="fa fa-bars fa-lg toggle-btn_1" data-toggle="collapse" data-target="#menu-side" onclick="clicktest()"></i>
                <!--<button type="button" class="btn btn-default_1" aria-label="Left Align">
                    <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                </button>-->
            </div>
            <div class="banner">
                <a class="navbar-brand" href="home.do"><img alt="Brand" src="resources/images/logoname.PNG"></a>
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
            	<%-- <c:set var="m" value="${member }"/>
                <li>
	                <c:url var="personmain" value="personmain.do">
						<c:param name="writerid" value="${m.memberid }" />
					</c:url>
					<a href = "${personmain }">
						<span class="glyphicon glyphicon-pencil" aria-hidden="true"/>
					</a>
					
				</li> --%>
                <li><a href="writepage.do"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></li>
                <li>
	                <c:url var="personmain" value="personmain.do">
							<c:param name="writerid" value="${m.memberid }" />
					</c:url>
               		 <a href = "${personmain }"><span class="glyphicon glyphicon-th" aria-hidden="true"/></a>
                </li>
                <li><a href="info.do"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a></li>
                
                <c:if test = "${empty member }">
                <a href ="login.do"><button class="btn btn-primary_1" type="button">
                    로그인
                </button></a>
                </c:if>
                <c:if test = "${!empty member }">
                <button class="btn btn-primary_1" type="button">
                    ${member.membername} 님
                </button>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">더보기<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                    <c:url var = "info" value = "info.do">
						<c:param name = "memberid" value = "${member.memberid}"/>
					</c:url>
                        <li><a href="${info}">계정설정</a></li>
                        <li><a href="#">고객센터</a></li>
                        <li><a href="logout.do">로그아웃</a></li>
                    </ul>
                </li>
                </c:if>
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

        <!-- side bar -->
        <div class="nav-side-menu" id ="menu-side">
            <div class="brand">Brand Logo</div>
            <!--<i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>-->

            <div class="menu-list">

                <ul id="menu-content" class="menu-content"><!-- collapse out-->
                    <li>
                        <a href="home.do">
                            <i class="fa fa-home fa-lg fa-fw" aria-hidden="true"></i>&nbsp;홈
                        </a>
                    </li>

                    <li  data-toggle="collapse" data-target="#products" class="collapsed">
                        <a href="#"><i class="fas fa-pen fa-lg fa-fw"></i> 주제별</a>
                    </li>
                    <ul class="sub-menu collapse" id="products">
                        <li class="#"><a href="categoryall.do"><i class="fas fa-angle-right"></i>전체</a></li>
                        <li><a href="categoryLife.do"><i class="fas fa-angle-right"></i>라이프</a></li>
                        <li><a href="categoryTravel.do"><i class="fas fa-angle-right"></i>여행·맛집</a></li>
                        <li><a href="categoryCulture.do"><i class="fas fa-angle-right"></i>문화·연예</a></li>
                        <li><a href="categoryIT.do"><i class="fas fa-angle-right"></i>IT</a></li>
                        <li><a href="categorySport.do"><i class="fas fa-angle-right"></i>스포츠</a></li>
                        <li><a href="categoryCurrent.do"><i class="fas fa-angle-right"></i>시사</a></li>
                    </ul>
                    <li class="#">
                        <a href="favorite.do">
                            <i class="fa fa-fire fa-lg"></i> 인기
                        </a>
                    </li>

                    <li class="sub_li">
                        <a href="subscription.do">
                            <i class="fa fa-bell fa-lg"></i> 구독
                        </a>
                    </li>

                    <li>
                        <a href="officialblog.do">
                            <i class="fab fa-blogger fa-lg"></i> 공식 블로그
                        </a>
                    </li>

                    <li class="sub_li">
                        <a href="partnerblog.do">
                            <i class="fas fa-user-friends fa-lg"></i> 파트너 블로그
                        </a>
                    </li>

                    <li class="#">
                        <a href="recentlyviewed.do">
                            <i class="fas fa-redo-alt fa-lg"></i> 최근에 본 게시글
                        </a>
                    </li>

                    <li>
                        <a href="laterview.do">
                            <i class="far fa-clock fa-lg"></i> 나중에 볼 게시글
                        </a>
                    </li>

                    <li>
                        <a href="likeview.do">
                            <i class="far fa-thumbs-up fa-lg"></i> 좋아요 표시한 게시글
                        </a>
                    </li>
                </ul>
            </div>
        </div>
</body>
</html>