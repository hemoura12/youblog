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
			rowno = 10;
		}else{
			rowno += parseInt(10);
			/*rowno = parseInt(document.location.hash.replace("#", "")) + parseInt(20); */
		}
	getList(parseInt(rowno)-parseInt(10), rowno);
	/* document.location.hash = "#" + rowno; */
	}
});

function getList(rowno1, rowno2) {
	$.ajax({
		url : "pagingblog.do",
		data : {
			select : "like",
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
			
			var outValues = "";
			for(var i in jsonObj.list){
				outValues += "<li><a href=\"detailpage?blogno="+jsonObj.list[i].blogno+"\"><div class=\"leftTextBox\"><img src=\"resources/images/arial.jpg\" alt=\"프로필이미지\" class=\"profileImg\">"
							+ "<div class=\"infoBox\"><p class=\"userName\">"+jsonObj.list[i].memberName+"네</p><p><span class=\"uploadTime\">"+jsonObj.list[i].writerdate+"</span>"
							+ "<span class=\"viewCount\">View "+jsonObj.list[i].hits+"회</span></p></div><div class=\"title\">"+jsonObj.list[i].writerdate+"</div>"
							+ "<div class=\"content\">"+jsonObj.list[i].contents+"</div></div>"
							+ "<div class=\"rightImgBox\"><img src=\"resources/images/4k.jpg\" alt=\"이미지\" class=\"mainImg\"></div></li>";
			}
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
	getList(0, 10);
	rowno=10;
});
</script>
    <title>officialblog</title>
</head> 
    <title>likeview</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/header.jsp"  %>
<div class="conWrap">
    <div class="another_conBox">
        <div class="contentsBox">
            <div class="libray_title_box">
                <i class="far fa-thumbs-up fa-lg"></i>&nbsp;&nbsp;&nbsp;<span class="libray_title">좋아요 표시한 게시글</span>
            </div>
            <ul class="contentsList" id="ctdiv">

            </ul>
        </div> <!--contentsbox-->
    </div> <!--conbox-->
</div> <!--conWrap-->
</body>
</html>