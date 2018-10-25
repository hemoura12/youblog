<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content ="width=deivce-width, initial-scale=1">
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	var rowno = 0;
	var cate2 = "<c:out value="${cate2}" />";
	
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
		getList(cate2, parseInt(rowno)-parseInt(20), rowno);
		/* document.location.hash = "#" + rowno; */
		}
	});

	function getSubsList(memberid, writerid, rowno1, rowno2) {
		console.log(cate2 + " " + rowno1+" "+rowno2);
		$.ajax({
			url : "pagingCTG.do",
			data : {
				cate1 : "문화 · 연예",
				cate2 : cate2,
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
	
	$( document ).ready(function() {
		//getList(cate2, 0, 20);
		//rowno=20;
    });
</script>

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