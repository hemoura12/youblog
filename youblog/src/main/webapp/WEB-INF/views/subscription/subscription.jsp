<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page import="org.kh.youblog.blog.model.vo.Blog, java.util.ArrayList" %>
<%-- <%
	ArrayList<Blog> writerList = (ArrayList<Blog>)request.getAttribute("writerList");
	int writercount = writerList.size();
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content ="width=deivce-width, initial-scale=1">
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	var rowno = 0;
	var writerindex = 0;
/* 	var writercount = parseInt("<c:out value="${writercount}" />");
	var writercount2 = "<c:out value="${writerList[1].writerid}" />"; */
	
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
			url : "pagingSubs.do",
			data : {
				writerid : "writerid",
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
				var outValues_u = "";
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
				
				for(var i in jsonObj.list){
					outValues_u += "<li><a href=\"#\"><div class=\"leftTextBox\"><img src=\"resources/images/arial.jpg\" alt=\"프로필이미지\" class=\"profileImg\">"
								+ "<div class=\"infoBox\"><p class=\"userName\">"+jsonObj.list[i].memberName+"네</p><p><span class=\"uploadTime\">"+jsonObj.list[i].writerdate+"</span>"
								+ "<span class=\"viewCount\">View "+jsonObj.list[i].hits+"회</span></p></div><div class=\"title\">"+jsonObj.list[i].writerdate+"</div>"
								+ "<div class=\"content\">"+jsonObj.list[i].contents+"</div></div>"
								+ "<div class=\"rightImgBox\"><img src=\"resources/images/4k.jpg\" alt=\"이미지\" class=\"mainImg\"></div></li>";
				}

				$('#ctdiv').append(outValues);
				$('#ctdiv_u').append(outValues_u);
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
/* 		for(i = 0; i < 4; i++){
			//if(writerindex <= writercount){
				var writercount3 = "<c:out value="${writerList[1].writerid}" />";
				console.log(writercount3);
				//getList(writerid);
				//rowno=20;
			//}
		}  */

		getList(0, 20);
		rowno=20;
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

<div class = "conWrap" style = "width:100%; overflow:auto; margin-top:50px;">
           <!-- <div class ="select_box">
                <button class="btn btn-default btn-lg" onclick="changebadukarray()"><span class="glyphicon glyphicon-th" aria-hidden="true"></span></button>
                <button class="btn btn-default btn-lg" onclick="changelistarray()"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span></button>
            </div>-->

    <div class="wrap" style = "position: absolute; top: 60%; left: 85%; margin-top: -500px; margin-left: -45px; text-align: center; width: 12%;">
        <a href="#" class="badukarray" onclick="changebadukarray()"><span class="glyphicon glyphicon-th" aria-hidden="true"></span></a>
        <a href="#" class="listarray" onclick="changelistarray()"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span></a>
    </div>

    <div class="s_conBox" id="ctdiv">
        <!--4x4 배열 시작-->
        <div class = "ul-table">
            <div class="ul-row">
                <div class="session_name"></div>
                
            </div>
            <div class="division_line"></div>
        </div>
    </div> <!--conBox-->

        <!--1x1 배열시작-->
        <div class="another_conBox" style="display:none">
            <div class="contentsBox">
                <ul class="contentsList" id="ctdiv_u">

                </ul>
            </div>
        </div> <!--another_conBox-->
</div> <!--conWrap-->


</body>
</html>