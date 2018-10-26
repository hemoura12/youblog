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
	getList(parseInt(rowno)-parseInt(20), rowno);
	/* document.location.hash = "#" + rowno; */
	}
});

function getList(rowno1, rowno2) {
	$.ajax({
		url : "pagingParOff.do",
		data : {
			select : "formula",
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
	getList(0, 20);
	rowno=20;
});
</script>
    <title>officialblog</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/header.jsp"  %>
<div class = "conWrap" style = "width:100%; overflow:auto; margin-top:50px;">

    <div class="conBox">
        <!--4x4 배열 시작-->
        <div class = "ul-table">
            <div class="ul-row">
                <div class="top_text">
                    <span class="top_text_title">공식블로그에 대하여</span>
                    <span class="#" aria-hidden="true"><img src ="resources/images/check.png" class = "check_img"/></span>
                        <br><br><br>
                     <span class="top_text_content">
                            기관, 기업, 단체 등 각 분야에서 직접 운영하는 블로그로 알려오는 경우 확인하여 공식블로그로 안내하고 있습니다.<br>
                            분야별로 등록 대상에 포함되는 경우, 기준에 따라 직접 운영하는지 여부를 확인하여 공식 엠블럼을 표시합니다.<br>
                            공식블로그의 신뢰성, 적법성 등을 YouBlog가 보증하는 것은 아니며, 운영되는 내용은 YouBlog의 입장과 다를 수 있습니다.
                     </span><br><br><br>
                    <a href="#" class="btn_src"><button class="official_btn" href="#">공식블로그 신청하기</button></a>
                </div>
            </div>
        </div>
	</div>
	<div class="conBox" id="ctdiv">
		
    </div> <!--conBox-->
</div> <!--conWrap-->
</body>
</html>