<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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
    <script type ="text/javascript">
        /*$(".first_link").click(function(){
            $(".first_link").removeClass("first_link").addClass("selected_link");
        });*/

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

<div class="conWrap">
    <!-- side bar -->
    <div class="nav-side-menu" id ="menu-side">
        <div class="brand">Brand Logo</div>
        <!--<i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>-->

        <div class="menu-list">

            <ul id="menu-content" class="menu-content"><!-- collapse out-->
                <li class="#">
                    <a href="main.html">
                        <i class="fa fa-dashboard fa-lg"></i>홈
                    </a>
                </li>

                <li  data-toggle="collapse" data-target="#products" class="collapsed active">
                    <a href="#"><i class="fa fa-gift fa-lg "></i> 주제별</a>
                </li>
                <ul class="sub-menu collapse.in" id="products">
                    <li><a href="categories.html">전체</a></li>
                    <li><a href="lifeCTG.html">라이프</a></li>
                    <li><a href="travelCTG.html">여행·맛집</a></li>
                    <li><a href="cultureCTG.html">문화·연예</a></li>
                    <li class="active"><a href="itCTG.html">IT</a></li>
                    <li><a href="sportCTG.html">스포츠</a></li>
                    <li><a href="currentCTG.html">시사</a></li>
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
                    <a href="favorite.html">
                        <i class="fa fa-users fa-lg"></i> 인기
                    </a>
                </li>

                <li class="sub_li">
                    <a href="subscription.html">
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

    <div class="conBox">
        <div class = "ul-table">
            <div class="ul-row">
                <div class="category_nav"><a href="categories.html" >전체</a>
                    &nbsp;<span class="glyphicon glyphicon-menu-right"></span>
                    <a class="second_ctg" href="itCTG.html" >IT</a>


                </div>
                <div class="category_nav2">
                    <a class="first_link active" href="itCTG.html">전체</a>
                    <a class="first_link" href="#">IT 인터넷</a>
                    <a class="first_link" href="#">모바일</a>
                    <a class="first_link" href="#">게임</a>
                    <a class="first_link" href="#">과학</a>
                    <a class="first_link" href="#" >IT 제품리뷰</a>
                </div>
                <!--<div class="session_name">인기</div>-->
                <div class="ul-table__tables">
                    <div class="table_1"><img  src="resources/images/라이언 썸네일.png"/>
                        <label class ="blog_title">Title</label>
                        <label class ="blog_name">블로그명</label>
                        <label class ="blog_view_time">조회수 0회·0시간 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언2.jpg"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">블로그명<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언 썸네일.png"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">라이언네</label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언2.jpg"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">블로그명</label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언2.jpg"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">블로그명</label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                </div>
            </div>
            <div class="division_line"></div>
        </div>


        <div class = "ul-table">
            <div class="ul-row">
                <div class="session_name">인기</div>
                <div class="ul-table__tables">
                    <div class="table_1"><img  src="resources/images/라이언 썸네일.png"/>
                        <label class ="blog_title">Title</label>
                        <label class ="blog_name">블로그명</label>
                        <label class ="blog_view_time">조회수 0회·0시간 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언2.jpg"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">블로그명<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언 썸네일.png"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">라이언네</label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언2.jpg"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">블로그명</label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                </div>
            </div>
            <div class="division_line"></div>
        </div>



        <div class = "ul-table">
            <div class="ul-row">
                <div class="session_name">인기</div>
                <div class="ul-table__tables">
                    <div class="table_1"><img  src="resources/images/라이언 썸네일.png"/>
                        <label class ="blog_title">Title</label>
                        <label class ="blog_name">블로그명</label>
                        <label class ="blog_view_time">조회수 0회·0시간 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언2.jpg"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">블로그명<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언 썸네일.png"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">라이언네</label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언2.jpg"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">블로그명</label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                </div>
            </div>
            <div class="division_line"></div>
        </div>

        <div class = "ul-table">
            <div class="ul-row">
                <div class="session_name">인기</div>
                <div class="ul-table__tables">
                    <div class="table_1"><img  src="resources/images/라이언 썸네일.png"/>
                        <label class ="blog_title">Title</label>
                        <label class ="blog_name">블로그명</label>
                        <label class ="blog_view_time">조회수 0회·0시간 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언2.jpg"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">블로그명<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언 썸네일.png"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">라이언네</label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언2.jpg"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">블로그명</label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                </div>
            </div>
            <div class="division_line"></div>
        </div>

        <div class = "ul-table">
            <div class="ul-row">
                <div class="session_name">인기</div>
                <div class="ul-table__tables">
                    <div class="table_1"><img  src="resources/images/라이언 썸네일.png"/>
                        <label class ="blog_title">Title</label>
                        <label class ="blog_name">블로그명</label>
                        <label class ="blog_view_time">조회수 0회·0시간 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언2.jpg"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">블로그명<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언 썸네일.png"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">라이언네</label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                    <div class="table_1"><img src="resources/images/라이언2.jpg"/>
                        <label class ="blog_title">오늘 밤 세러데잇 나잇~ 두잇 두잇~ Proxy/ JAva / eclips</label>
                        <label class ="blog_name">블로그명</label>
                        <label class ="blog_view_time">조회수 2000만회 &nbsp;·&nbsp;1일 전</label>
                    </div>
                </div>
            </div>
            <div class="division_line"></div>
        </div>
    </div><!--conbox-->
</div> <!--conwrap-->
</body>
</html>