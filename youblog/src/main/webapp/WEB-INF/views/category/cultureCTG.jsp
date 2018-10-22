<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta name = "viewport" content ="width=deivce-width, initial-scale=1">
    <script type ="text/javascript">
        /*$(".first_link").click(function(){
            $(".first_link").removeClass("first_link").addClass("selected_link");
        });*/
    </script>
    <title>clutureCTG</title>
<body>
<%@ include file = "/WEB-INF/views/header.jsp"  %>
<div class ="conWrap">
<!--4x4 배열 시작-->
    <div class="conBox">
            <div class = "ul-table">
                <div class="ul-row">
                    <div class="category_nav"><a href="categoryall.do" >전체</a>
                        &nbsp;<span class="glyphicon glyphicon-menu-right"></span>
                        <a class="second_ctg" href="categoryCulture.do" >문화·연예</a>
                    </div>
                    <div class="category_nav2">
                        <a class="first_link active" href="categoryCulture.do">전체</a>
                        <a class="first_link" href="#">TV</a>
                        <a class="first_link" href="#">스타</a>
                        <a class="first_link" href="#">영화</a>
                        <a class="first_link" href="#">음악</a>
                        <a class="first_link" href="#" >책</a>
                        <a class="first_link" href="#" >만화·애니</a>
                        <a class="first_link" href="#" >공연·전시·축제</a>
                        <a class="first_link" href="#" >창작</a>
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
    </div> <!--conbox-->
</div><!--conwrap-->
</body>
</html>