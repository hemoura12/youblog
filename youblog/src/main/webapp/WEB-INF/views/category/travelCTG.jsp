<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<title>Insert title here</title>
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

	function getList(cate2, rowno1, rowno2) {
		console.log(cate2 + " " + rowno1+" "+rowno2);
		$.ajax({
			url : "pagingCTG.do",
			data : {
				cate1 : "여행 · 맛집",
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
		getList(cate2, 0, 20);
		rowno=20;
    });
</script>
    <title>Main</title>
</head>

<body>
<%@ include file = "/WEB-INF/views/header.jsp"  %>
<div class="conWrap">
<!--4x4 배열 시작-->

    <div class="conBox" id="ctdiv">
            <div class = "ul-table">
                <div class="ul-row">
                    <div class="category_nav"><a href="categorySelect.do?views=categoryAll&cate2=all" >전체</a>
                        &nbsp;<span class="glyphicon glyphicon-menu-right"></span>
                        <a class="second_ctg" href="categorySelect.do?views=travelCTG&cate2=all" >여행·맛집</a>
                    </div>
                    
                    <div class="category_nav2">
                        <a class="first_link active" href="categorySelect.do?views=travelCTG&cate2=all">전체</a>
                        <a class="first_link" href="categorySelect.do?views=travelCTG&cate2=국내여행">국내여행</a>
                        <a class="first_link" href="categorySelect.do?views=travelCTG&cate2=해외여행">해외여행</a>
                        <a class="first_link" href="categorySelect.do?views=travelCTG&cate2=캠핑·등산">캠핑·등산</a>
                        <a class="first_link" href="categorySelect.do?views=travelCTG&cate2=맛집" >맛집</a>
                        <a class="first_link" href="categorySelect.do?views=travelCTG&cate2=카페·디저트" >카페·디저트</a>
                    </div>
                    <!--<div class="session_name">인기</div>-->
                </div>
                <div class="division_line"></div>
            </div>
    </div> <!--conbox-->
</div><!--conwrap-->
</body>
</html>