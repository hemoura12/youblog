<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="resources/styles/css/page.css">
    <script>

        /*버튼*/
        function show_content(){
            $("#hidden").toggle();

        }


        /* $('.holder').on('click', function() {
            $this = $(this);
            if($this.hasClass('active')) {
                $this.fadeOut(500);
                setTimeout(function() {
                    $this.removeClass('active')
                }, 500);
                setTimeout(function() {
                    $this.fadeIn(500);
                }, 1000);
            } else {
                $(this).addClass('active');
            }
        });

        $(document).on('click', function(e) {
            container = $('.holder');
            if ($('.holder').hasClass('active') && !container.is(e.target)  && container.has(e.target).length === 0) {
                $this.fadeOut(500);
                setTimeout(function() {
                    $this.removeClass('active')
                }, 500);
                setTimeout(function() {
                    $this.fadeIn(500);
                }, 1000);
            }
        }); */

    </script>
    <title>뷰페이지</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/header.jsp"  %>

<div class="conWrap">
    <div class="channel_conbox_1">
        <div class="channel_header">
            <p class="title-text">제목공간입니다 2줄 정도 쓸수 있습니다.</p><hr>
            <div align="center" class="infoBox">
                <!-- <p>
                    <img src="resources/images/arial.jpg" alt="프로필이미지" class="detail_img">
                    <span class="userName">라이언네</span> &nbsp;
                    <span class="uploadTime">1시간전</span> &nbsp;
                    <span class="viewCount">View 591만회</span>
                </p> -->
            </div>
        </div> <!-- channel_header-->
    </div>
       <!--<div class="channel_category" style="background-color: red"></div>--> <!--channel_category-->
            <div class="channel_contents_box">
                <div class="channel_box">
                    <div class="detail_textbox">
                        <div class="content_box">
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
                </div> <!--channel_contents-->

                <hr class="hrline">
            </div> <!--channel_conbox-->

    <!--하단 프로필-->
        <div class="profilebox">
            <div class="detail_profile">
                <div class="icon_box">
                    <table class="profiletable" align="right">
                        <tr>
                            <td><i class="fas fa-thumbs-up"></i> 3.3만 &nbsp;&nbsp;&nbsp;</td>
                            <td><i class="fas fa-thumbs-down"></i>3.5천 &nbsp;&nbsp;&nbsp;</td>
                            <td><i class="fas fa-share-alt"></i> 1.1천 &nbsp;&nbsp;&nbsp;</td>
                            <td><i class="fas fa-list"></i> &nbsp;&nbsp;&nbsp;</td>
                            <td><i class="fas fa-ellipsis-h"></i></td>
                        </tr>
                    </table>
                </div>
                <div class="profimg">
                    <img src="resources/images/arial.jpg" alt="프로필이미지" class="detail_img_2">
                </div >
                <div class="profiletextarea">
                    <div class="profile">
                        <p class="userName_1">라이언네</p>
                        <p class="uploadTime">1시간전</p>
                        <p class="viewCount">View 591만회</p>
                    </div>
                    <div class="followbox">
                        <div class ="infoBox_right_1">
                            <!--<a href="#" class="subscript_tag"><span>구독</span></a>-->
                            <a href="#" class="subscript_tag"><span>구독 중</span></a>

                            <a class = "sub_alram" onclick="changeicon()"><i class="fas fa-bell-slash"></i></a>
                            <!--<i class="fas fa-bell"></i>-->
                        </div> <!--infoBox_right -->
                    </div>
                </div>


            </div>
            <hr class="hrline">
        </div>

    <!--댓글 창-->
        <div>
            <div class="comment_box">
                <div class="comment_count">
                    <p class="commenttext">댓글 100개 </p>
                </div>
                <div class="comment_count">
                    <div class="commentptag">
                        <p>댓글 달기</p>
                    </div>
                    <div class="comment_textarea">
                        <textarea class="commentarea"></textarea>
                    </div>
                    <div class="btndiv">
                        <button class="btn btn-primary">작성하기</button>
                    </div>
                </div>
                <div class="comment_count">
                    <div class="profimg">
                        <img src="resources/images/arial.jpg" alt="프로필이미지" class="detail_img">
                    </div >
                    <div class="profiletextarea">
                        <div class="imgbox">
                            <p class="userName_2">라이언네</p>
                        </div>
                        <div>
                            <p> 20시간 전</p>
                        </div>
                        <div class="content_1">
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
                        <div class="allcomment">
                            <table class="comment_box_1">
                                <tr>
                                    <td class="updownbox"><i class="fas fa-thumbs-up"></i> 3천 개 </td>
                                    <td class="updownbox"><i class="fas fa-thumbs-down"></i> 15 개 </td>
                                    <td class="updownbox_1" onclick="show_content()">
                                        <button id="toggle" class="btn btn-link">댓글</button>
                                    </td>
                                </tr>

                                <tr id="hidden" style="display:none;">
                                    <td colspan="3">
                                        <div style="margin-top: 20px;">
                                            <div class="profimg">
                                                <img src="resources/images/arial.jpg" alt="프로필이미지" class="detail_img">
                                            </div >
                                            <div class="profiletextarea">
                                                <div class="imgbox">
                                                    <p class="userName_2">라이언네</p>
                                                </div>
                                                <div>
                                                    <p> 20시간 전</p>
                                                </div>
                                                <div class="content_2">
                                                    그대가 받은 박수
                                                    그대가 받은 찬사
                                                    그대 어깨 위에는 벽돌 혹은 금괴
                                                    둘 중 하나가 그대를 짓누르고 있겠죠
                                                    그대도 가끔 시선이라는 게 조금 무겁겠죠
                                                    난 티끌의 명성을 얻고서도 겁먹어
                                                    빈첸 사회악이라 근절 되어야 한대요
                                                    손가락질 받죠 나도 희망차고 싶죠
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>

                        </div>
                    </div>

                </div>

            </div>

        </div>

</div> <!--conWrap-->

</body>
</html>
