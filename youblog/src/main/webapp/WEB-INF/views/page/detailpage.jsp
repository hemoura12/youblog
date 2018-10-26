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
       
        $(document).ready(function(){
        	
        	
        	//좋아요 추가
            $("#likeBtn").on("click", function(){
           	 console.log("좋아요 클릭됨.");
           	 var obj={};
           	 obj["memberId"] = '${sessionScope.member.memberid }'; // 로그인 아이디 받아오기 (세션에 저장된 로그인한 유저 정보)
           	 obj["blogNo"] = ${blog.blogno};
           	 
           	 fnAjaxPostData("/youblog/insertLike.do", obj, function(data){
           		alert(data.message);
           		
           	});
            });
        	
        	//좋아요 삭제(싫어요)
        	$("#badBtn").on("click", function(){
           	 
           	 var obj={};
           	 obj["memberId"] = '${sessionScope.member.memberid }'; // 로그인 아이디 받아오기 (세션에 저장된 로그인한 유저 정보)
           	 obj["blogNo"] = ${blog.blogno};
           	 
           	 fnAjaxPostData("/youblog/deleteLike.do", obj, function(data){
           		alert(data.message);
           		
           	});
            });
        	
        	//댓글 추가
        	$('#insertbtn').click(function(){
        		fnCommentSave();
        		
        	});
        	
        	readingComment();
        	readSelectBlogMember();
        	likeCount();
        	/* checkLike(); */
        	
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
        		
        		$(this).attr("id", "refact");
        		$(this).attr("value", "변경");
        		
        		
        	 	$("#refact").on('click', function(){
        			var obj = {};
        			
        			
        			obj["cmtContents"] = $("#recomment"+no).val();
        			obj["cmtNo"] = cmtNo;
        			obj["memberId"] = memberId;
       			
        			fnAjaxPostData("/youblog/updateComment.do", obj, function fnAjaxResult(data){
        	        	alert(data.message);
        	        	$(".comment_line > tr").empty();
                		fnAjaxPostData("/youblog/readComment.do", {"blogNo":'${blog.blogno}'}, commentReading);
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
         			obj["memberId"] = memberId;
        			
         			fnAjaxPostData("/youblog/deleteComment.do", obj, function fnAjaxResult(data){
         	        	alert(data.message);
         	        	$(".comment_line > tr").empty();
                		fnAjaxPostData("/youblog/readComment.do", {"blogNo":'${blog.blogno}'}, commentReading);
         	        });
         		 
        	}); 
        	
        	// 좋아요 카운트
        	function likeCount(){
        		var obj = {};
        		obj["blogNo"] = '${blog.blogno}';
        		fnAjaxPostData("/youblog/likeCount.do", obj, function(data){
        			
        			$("#poi").text(data.count);
        		})
        	}
        	
        	//좋아요 확인
           /*   function checkLike(){
      		   
          	   var obj = {};
          	   obj["memberId"] = '${sessionScope.member.memberid }'; //로그인한 세션 아이디불러오기
          	   obj["blogNo"] = ${blog.blogno}; 
          	   
          	   
          	   fnAjaxPostData("/youblog/checkLike.do", obj, changedLikeButton);
             } */
        	
        	//댓글 불러오기 
        	function readingComment(){
        		
        	var blogNo = ${blog.blogno};
        	var obj = {};
        	
        	
        	obj["blogNo"] = ${blog.blogno};
        	
        	fnAjaxPostData("/youblog/readComment.do", obj, commentReading);
        	};
        	});
	
        
        // 댓글 저장
         function fnCommentSave(){
        	var url = "/youblog/insertComment.do";
        	var obj = {};
        	
        	obj["blogNo"] = ${blog.blogno};
        	obj["memberId"] = '${sessionScope.member.memberid }'; // 로그인 아이디 받아오기 (세션에 저장된 로그인한 유저 정보) 
        	obj["cmtContents"] = $(".commentarea").val();
        	
        	
        	
        	fnAjaxPostData(url, obj, function(data){
        		alert(data.message);
        		$(".comment_line > tr").empty();
        		fnAjaxPostData("/youblog/readComment.do", {"blogNo":'${blog.blogno}'}, commentReading);
        	});
        } 
        
       
        
       
        
        //해당 블로거 정보 가져오기
        
         function readSelectBlogMember(){
        	
        	var mi = '${blog.writerid}'; //블로그 writerid 받아오기 blog.
        	var obj = {};
        	obj["memberid"] = mi;
        		
        		fnAjaxPostData("/youblog/readSelectBlogMember.do", obj, function fnAjaxResultBlog(data){
                	 
                	console.log(data.memberid); 
                	console.log(data.membername);
                	console.log(data.profilephoto);
                	var name = data.membername;
                	 	$("#userName_1").text(name);
                	var photo = data.profilephoto;
                		$("#profimg").append(photo);
                }  );
        } 
        
     	
        
        //결과
        function fnAjaxResult(data){
        	alert(data.message);
        }

        //댓글 파싱
        function commentReading(data){
        	var list = data.list;
        	var id = '${sessionScope.member.memberid }'; //로그인 아이디 받아오기 (세션에 저장된 로그인한 유저 정보)
        	
        	
        	
        	for(var i = 0; i < list.length; i++){
        		
        		
        		
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
		
        
        // 좋아요 조회 후, 싫어요버튼 활성화
        /* function changedLikeButton(data){
         	if(data.message == "좋아요했었습니다."){
        					// 위 user01은 로그인 아이디 받아오기 (세션에 저장된 로그인한 유저 정보)
        	
        		$("#likeBtn").attr("id", "likeCancleBtn");
        		$("#likeBtn").text("좋아요취소");
        		
        		$("#likeCancleBtn").on('click', function(){
        			
        			
        			var obj = {};
        			obj["MemberId"] = '${sessionScope.member.memberid }';
        			obj["BlogNo"] = '${blog.blogno}';
       			
        			fnAjaxPostData("/youblog/deleteLike.do", obj, function fnAjaxResult(data){
        	        	alert(data.message);
        	        	
        	        });
        		});  
        	  
        	}else if(data.message == "좋아요누를수있습니다."){
        		
        	}
        } */
        
        
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
        <div class="channel_header" style = "margin-top: 70px;">
            <p class="title-text">${blog.title}</p><hr>
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
                            <td><button id = "likeBtn"><i class="fas fa-thumbs-up" id = "poi"></i></button>&nbsp;&nbsp;&nbsp;</td>
                            <td><button id = "badBtn"><i class="fas fa-thumbs-down"></i></button>&nbsp;&nbsp;&nbsp;</td>
                            <td><i class="fas fa-list"></i> &nbsp;&nbsp;&nbsp;</td>
                            <td><i class="fas fa-ellipsis-h"></i></td>
                        </tr>
                    </table>
                </div>
                <div class="profimg" id = "profimg">
                    <%-- 작성자 프로필이미지 --%>
                </div >
                <div class="profiletextarea">
                    <div class="profile">
                        <p class="userName_1" id ="userName_1"><!-- 작성자이름 --></p>
                        <p class="viewCount">조회수 : ${blog.hits}</p>
                    </div>
                    <div class="followbox">
                        <div class ="infoBox_right_1">
                            <!--<a href="#" class="subscript_tag"><span>구독</span></a>-->

                            <!--<i class="fas fa-bell"></i>-->
                        </div> <!--infoBox_right -->
                    </div>
                </div>


            </div>
            <div class="btndiv">
  
            <button class="btn btn-primary" type="button" 
            onclick="location.href='updatepage.do?blogno=${blog.blogno}' ">
            수정            
            </button>
               
                  
                  <input type="button" class="btn btn-primary" id="delete"
                  value="삭제">
         
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
<table>
<tr style="display:none;"><td>${blog.blogno }</td></tr>
</table>

</body>
</html>
