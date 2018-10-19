<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name = "viewport" content ="width=deivce-width, initial-scale=1">
    <script type ="text/javascript">
        /*$(".first_link").click(function(){
            $(".first_link").removeClass("first_link").addClass("selected_link");
        });*/
    </script>
    <title>Main</title>
<body>
<%@ include file = "/WEB-INF/views/header.jsp" %>
<div class="conWrap">
<!--4x4 배열 시작-->
    <div class="conBox">
            <div class = "ul-table">
                <div class="ul-row">
                    <div class="category_nav"><a href="categoryall.do" >전체</a>
                        &nbsp;<span class="glyphicon glyphicon-menu-right"></span>
                        <a class="second_ctg" href="categoryLife.do" >라이프</a>
                    </div>
                    
                    <div class="category_nav2">
                        <a class="first_link active" href="categoryLife.do">전체</a>
                        <a class="first_link" href="#">일상</a>
                        <a class="first_link" href="#">해외생활</a>
                        <a class="first_link" href="#">연애·결혼</a>
                        <a class="first_link" href="#" >육아</a>
                        <a class="first_link" href="#" >생활정보</a>
                        <a class="first_link" href="#" >반려동물</a>
                        <a class="first_link" href="#" >생활정보</a>
                        <a class="first_link" href="#" >취미</a>
                        <a class="first_link" href="#" >사진</a>
                        <a class="first_link" href="#" >요리</a>
                        <a class="first_link" href="#" >자동차</a>
                        <a class="first_link" href="#" >인테리어</a>
                        <a class="first_link" href="#" >패션뷰티</a>
                        <a class="first_link" href="#" >건강</a>
                        <a class="first_link" href="#" >군대</a>
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
                        <div class="table_1"><img  src="resources/images/라이언 썸네일.png"/>
                            <label class ="blog_title">Title</label>
                            <label class ="blog_name">블로그명</label>
                            <label class ="blog_view_time">조회수 0회·0시간 전</label>
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
    </div><!--conbox end-->
</div><!--conwrap end-->
</body>
</html>