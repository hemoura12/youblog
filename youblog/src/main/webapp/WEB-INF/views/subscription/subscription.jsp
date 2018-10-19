<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name = "viewport" content ="width=deivce-width, initial-scale=1">
    <title>subscription</title>
</head>
    <script>
        function changebadukarray(){
            $(".s_conBox").css("display", "block")
            $(".another_conBox").hide(0);
        };

        function changelistarray() {
            $(".s_conBox").hide(0);
            $(".another_conBox").css("display", "block")
        };
    </script>
<body>
<%@ include file = "/WEB-INF/views/header.jsp"  %>

<div class="conWrap">
           <!-- <div class ="select_box">
                <button class="btn btn-default btn-lg" onclick="changebadukarray()"><span class="glyphicon glyphicon-th" aria-hidden="true"></span></button>
                <button class="btn btn-default btn-lg" onclick="changelistarray()"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span></button>
            </div>-->

    <div class="wrap">
        <a href="#" class="badukarray" onclick="changebadukarray()"><span class="glyphicon glyphicon-th" aria-hidden="true"></span></a>
        <a href="#" class="listarray" onclick="changelistarray()"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span></a>
    </div>

    <div class="s_conBox">
        <!--4x4 배열 시작-->
        <div class = "ul-table">
            <div class="ul-row">
                <div class="session_name"></div>
                <div class="ul-table__tables">
                    <div class="table_1"><img  src="resources/images/4k.jpg"/>
                        <label class ="blog_title">마! 꿀 갖고온나</label>
                        <label class ="blog_name">라이언네</label>
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
                    <div class="table_1"><img  src="resources/images/arial.jpg"/>
                        <label class ="blog_title">
                            그대가 받은 박수
                            그대가 받은 찬사
                            그대 어깨 위에는 벽돌 혹은 금괴
                            둘 중 하나가 그대를 짓누르고 있겠죠
                            그대도 가끔 시선이라는 게 조금 무겁겠죠
                            난 티끌의 명성을 얻고서도 겁먹어
                            빈첸 사회악이라 근절 되어야 한대요
                        </label>
                        <label class ="blog_name">꽃녀네</label>
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
    </div> <!--conBox-->


        <!--1x1 배열시작-->
        <div class="another_conBox" style="display:none">
            <div class="contentsBox">
                <ul class="contentsList">
                    <li>
                        <div class="leftTextBox">
                            <img src="resources/images/rion.PNG" alt="프로필이미지" class="profileImg">
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
                        <div class="rightImgBox">
                            <img src="resources/images/4k.jpg" alt="이미지" class="mainImg">
                        </div>
                    </li>
                    <li>
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
                                꽃
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
                        <div class="rightImgBox">
                            <img src="resources/images/arial.jpg" alt="이미지" class="mainImg">
                        </div>
                    </li><li>
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
                    <div class="rightImgBox">
                        <img src="resources/images/4k.jpg" alt="이미지" class="mainImg">
                    </div>
                </li>
                </ul>
            </div>
        </div> <!--another_conBox-->
</div> <!--conWrap-->


</body>
</html>