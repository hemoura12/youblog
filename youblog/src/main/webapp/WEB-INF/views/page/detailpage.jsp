<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type = "text/javascript" src = "/youblog/resources/js/jquery-3.3.1.min.js"></script>
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
        $(document).ready(function(){
        	//댓글 추가
        	$('#insertbtn').click(function(){
        		fnCommentSave();
        		
        	});
        	
        	readingComment();
        	
        	//댓글 수정
        	 $(document).on('click','input[name="updateBtn"]',function(){
        		 var id = $(this).attr("id");
        		var no = $(this).attr("id").split("_")[0];
        		
        		
        		
        		var td = $(this).parents("tr");
        		var cmtNo = td.find("#CmtNo"+no).text();
        		var memberId = td.find("#MemberId"+no).text();
        		var contents = $("#content_"+no).text();
        		
        		$("#content_"+no).text("");
        		$(".content_"+no).append("<input type = 'text' id = 'recomment"+ no +"' value = " + contents + ">");
        		$(".content_"+no).focus();
        		console.log(cmtNo);
        		console.log(memberId); 
        		$(this).attr("id", "refact");
        		$(this).attr("value", "변경");
        		
        		
        	 	$("#refact").on('click', function(){
        			var obj = {};
        			
        			
        			obj["cmtContents"] = $("#recomment"+no).val();
        			obj["cmtNo"] = cmtNo;
        			obj["memberId"] = "user01";
       			
        			fnAjaxPostData("/youblog/updateComment.do", obj, function fnAjaxResult(data){
        	        	alert(data.message);
        	        	
        	        });
        		});  
        		//$("#"+id).contents().unwrap().wrap('<input type ="button" value="저장"');
        		//fnCommentUpdate();
        	}); 
        	
        	//댓글 삭제
        	 $(document).on('click','input[name="deleteBtn"]',function(){
        		 var id = $(this).attr("id");
         		var no = $(this).attr("id").split("_")[0];
         		
         		var td = $(this).parents("tr");
         		var cmtNo = td.find("#CmtNo"+no).text();
         		var memberId = td.find("#MemberId"+no).text();
         		var obj = {};
         			obj["cmtNo"] = cmtNo;
         			obj["memberId"] = "user01";
        			
         			fnAjaxPostData("/youblog/deleteComment.do", obj, function fnAjaxResult(data){
         	        	alert(data.message);
         	        	
         	        });
         		 
        	}); 
        	//댓글 불러오기 
        	function readingComment(){
        		
        	var blogNo = ${blog.blogno};
        	var obj = {};
        	console.log(blogNo);
        	
        	obj["blogNo"] = ${blog.blogno};
        	
        	fnAjaxPostData("/youblog/readComment.do", obj, commentReading);
        	};
        	});

        // 댓글 저장
         function fnCommentSave(){
        	var url = "/youblog/insertComment.do"
        	var obj = {};
        	
        	obj["blogNo"] = ${blog.blogno};
        	obj["memberId"] = "user01";
        	obj["cmtContents"] = $(".commentarea").val();
        	
        	
        	
        	fnAjaxPostData(url, obj, function(data){
        		alert(data.message);
        		/* $(".comment_count").detach(); */
        		readingComment();
        	});
        } 

        //댓글 수정
         /* function fnCommentUpdate(){
        	var url = "/youblog/updateComment.do"
        	var obj = {};
        	obj["cmtNo"] = 'CMTNO넣어야함';
        		
        	fnAjaxPostData(url, obj, fnAjaxResult);
        }  */

        //댓글 삭제
       /*  function fnCommentDelete(){
        	var url = "/youblog/insertComment.do"
        	var obj = {};
        	obj["cmtNo"] = 'CMTNO넣어야함';
        		
        	fnAjaxPostData(url, obj, fnAjaxResult);
        } */

        //결과
        function fnAjaxResult(data){
        	alert(data.message);
        }

        //댓글 파싱
        function commentReading(data){
        	var list = data.list;
        	var id = "user01";
        	
        	for(var i = 0; i < list.length; i++){
        		console.log(list[i].MEMBER_ID);
        		
        		/* if(id == list[i].MEMBER_ID){
        		outComment = "<tr><td id = 'CmtNo" + i + "' style = 'display : none;'>" + list[i].CMT_NO + "</td><td id = 'MemberId" + i + "'>" + list[i].MEMBER_ID +"</td><td><input type='text' value='" + list[i].CMT_CONTENTS + "' id='" + i + "_contents' readOnly></td><td><input type='button' id='"+ i +"_update' name='updateBtn' value='수정'></td><td><button id = 'deleteBtn'>삭제</button></td></tr>"
        		}else{
        			outComment = "<tr><td id = 'hideCmtNo' style = 'display : none;'>" + list[i].CMT_NO + "</td><td>" + list[i].MEMBER_ID +"</td><td>" + list[i].CMT_CONTENTS + "</td></tr>"
        		}
        		$("#commentread").append(outComment); */
        		
        		if(id == list[i].MEMBER_ID){
        			if(list[i].CMT_CONTENTS == "삭제된댓글입니다."){
        				outComment = "<tr><td id = 'CmtNo" + i + "' style = 'display : none;'>" + list[i].CMT_NO + "</td><td width='79'style ='margin:auto;'><div class='profiletextarea'><div class='imgbox'><p class='userName_2' id = 'MemberId" + i + "'>"+ list[i].MEMBER_ID +"</p></div><td id = '" +i + "_text' width='1080'><div class='content_" + i + "' id='content_" + i + "' >" + list[i].CMT_CONTENTS + "</div></td></div></td></tr>";
        			}else{
        		outComment = "<tr><td id = 'CmtNo" + i + "' style = 'display : none;'>" + list[i].CMT_NO + "</td><td width='79'style ='margin:auto;'><div class='profiletextarea'><div class='imgbox'><p class='userName_2' id = 'MemberId" + i + "'>"+ list[i].MEMBER_ID +"</p></div><td id = '" +i + "_text' width='1080'><div class='content_" + i + "' id='content_" + i + "' >" + list[i].CMT_CONTENTS + "</div></td></div></td><td><input type='button' id='"+ i +"_update' name='updateBtn' value='수정'></td><td><input type='button' id='"+ i +"_delete' name='deleteBtn' value ='삭제'></td></tr>";
        			}
        		}else{
        		outComment = "<tr><td id = 'CmtNo" + i + "' style = 'display : none;'>" + list[i].CMT_NO + "</td><td width='79'style ='margin:auto;'><div class='profiletextarea'><div class='imgbox'><p class='userName_2' id = 'MemberId" + i + "'>"+ list[i].MEMBER_ID +"</p></div><td width='1080'><div class='content_" + i + "'>" + list[i].CMT_CONTENTS + "</div></td></div></td></tr>"
        		}
        		
        		
        		$(".comment_line").append(outComment);
        		
        	}
        	$(".commenttext").text("댓글 : "+list.length+"개");
        };

        // 비동기통신
        function fnAjaxPostData(url, data, callBack) {
        	   // 값이 없을 경우 빈 값 생성
        	   if (typeof data != "object") {
        	      data = {};
        	   }
        	   $.ajax({
        	      url : url,
        	      type : "POST",
        	      data : JSON.stringify(data),
        	      dataType : "json",
        	      Accept : "application/json",
        	      contentType : "application/json;charset=UTF-8",
        	       beforeSend : function(){
        	       },
        	      error : function(request, status, error) {
        	         console.log("통신오류" + error);
        	      },
        	      success : function(data) {
        	         if (callBack) {
        	            try {
        	                  callBack(data);
        	            } catch (e) {
        	               alert("callBack 함수 오류" + objId);
        	            }
        	         }
        	      }
        	   });
        }

    </script>
    <title>뷰페이지</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/header.jsp"  %>

<div class="conWrap">
    <div class="channel_conbox_1">
        <div class="channel_header">
            <p class="title-text">${blog.title }</p><hr>
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
                            <table>
                            <tr><td>${blog.contents}</td></tr>
                            </table>
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
                    <%-- 작성자 프로필이미지 --%>
                </div >
                <div class="profiletextarea">
                    <div class="profile">
                        <p class="userName_1"><!-- 작성자이름 --></p>
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
                        <button class="btn btn-primary" id = "insertbtn">작성하기</button>
                    </div>
                </div>
                <div class="comment_count">
                <table class = "comment_line">
                    
				</table>
                </div>

            </div>

        </div>

</div> <!--conWrap-->

</body>
</html>
