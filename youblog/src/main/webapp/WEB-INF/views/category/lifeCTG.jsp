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

	function getList(cate2, rowno1, rowno2) {
		$.ajax({
			url : "pagingCTG.do",
			data : {
				cate1 : "라이프",
				cate2 : cate2,
				rowno1 : rowno1,
				rowno2 : rowno2
			},
			type : "post",
			dataType: "json",
			success: function(obj){
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
<%@ include file = "/WEB-INF/views/header.jsp" %>
<div class = "conWrap" style = "width:100%; overflow:auto; margin-top:50px;">
<!--4x4 배열 시작-->
    <div class="conBox" id="ctdiv">
            <div class = "ul-table">
                <div class="ul-row">
                    <div class="category_nav"><a href="categorySelect.do?views=categoryAll&cate2=all" >전체</a>
                        &nbsp;<span class="glyphicon glyphicon-menu-right"></span>
                        <a class="second_ctg" href="categorySelect.do?views=lifeCTG&cate2=all">라이프</a>
                    </div>
                    
                    <div class="category_nav2">
                        <a class="first_link active" href="categorySelect.do?views=lifeCTG&cate2=all">전체</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=일상">일상</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=해외생활">해외생활</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=연애·결혼">연애·결혼</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=육아">육아</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=생활정보">생활정보</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=반려동물">반려동물</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=취미">취미</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=사진">사진</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=요리">요리</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=자동차">자동차</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=인테리어">인테리어</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=패션뷰티">패션뷰티</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=건강">건강</a>
                        <a class="first_link" href="categorySelect.do?views=lifeCTG&cate2=군대">군대</a>
                    </div>
                    <!--<div class="session_name">인기</div>-->
                </div>
                <div class="division_line"></div>
            </div>
    </div><!--conbox end-->
</div><!--conwrap end-->


</body>


<!-- <script type="text/javascript">
	$( document ).ready(function() {
		$('.first_link').click(function(event){
			console.log($(this).attr('value'));
			var titlelist = "<div class = 'ul-table'><div class='ul-row'><div class='category_nav'><a href='categoryall.do'>전체</a>"
				+ "&nbsp;<span class='glyphicon glyphicon-menu-right'></span><a class='second_ctg' href='categoryLife.do'>라이프</a></div>"
				+ "<div class='category_nav2'><a class='first_link active' href='#' value='all'>전체</a>"
				+ "<a class='first_link' href='getList(\"일상\", 0, 20);' value='일상'>일상</a><a class='first_link' href='#' value='일상'>해외생활</a>"
                + "<a class=\"first_link\" href='#' value='연애·결혼'>연애·결혼</a><a class='first_link' href='#' value='육아'>육아</a>"                
                + "<a class='first_link' href='#' value='생활정보'>생활정보</a><a class='first_link' href='#' value='반려동물'>반려동물</a>"
                + "<a class='first_link' href='#' value='취미'>취미</a><a class='first_link' href='#' value='사진'>사진</a><a class='first_link' href='#' value='요리'>요리</a>"
                + "<a class='first_link' href='#' value='자동차'>자동차</a><a class='first_link' href='#' value='인테리어'>인테리어</a>"
                + "<a class='first_link' href='#' value='패션뷰티'>패션뷰티</a><a class='first_link' href='#' value='건강'>건강</a>"
                + "<a class='first_link' href='#' value='군대'>군대</a></div></div><div class='division_line'></div></div>";
			$('#ctdiv').html(titlelist);
			rowno1 = 0;
			rowno2 = 20;
			getList($(this).attr('value'), rowno1, rowno2);
			console.log(titlelist);
			 //document.location.hash = "#" + all;
		});
	});
	
</script> -->
</html>