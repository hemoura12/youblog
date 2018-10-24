<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type = "text/javascript" src = "/youblog/resources/js/jquery-3.3.1.min.js"></script>

<script>
$(document).ready(function(){
	//댓글 추가
	$('#send').click(function(){
		fnCommentSave();
		
	});
	
	
	//댓글 수정
	$(document).on('click','input[name="updateBtn"]',function(){
		var id = $(this).attr("id");
		var no = $(this).attr("id").split("_")[0];
		$("#"+no+"_contents").attr("readonly", false);
		$("#"+no+"_contents").focus();
		
		
		var td = $(this).parents("tr");
		var cmtNo = td.find("#CmtNo"+no).text();
		var memberId = td.find("#MemberId"+no).text();
		var contents = $("#"+no+"_contents").val();
		
		console.log(cmtNo);
		console.log(memberId);
		$(this).attr("id", "refact");
		$(this).attr("value", "변경");
		
		
		
		
		$("#refact").on('click', function(){
			var obj = {};
			obj["cmtContents"] = contents;
			obj["cmtNo"] = cmtNo;
			obj["memberId"] = ${userId};
			
			
		});
		//$("#"+id).contents().unwrap().wrap('<input type ="button" value="저장"');
		//fnCommentUpdate();
		
		
	});
	
	//댓글 삭제
	$('#deleteBtn').click(function(){
		console.log($(this).val());
		fnCommentDelete();
	});
	
	//댓글 불러오기 
	fnAjaxPostData("/youblog/readComment.do", {"blogNo":'${blogNo}'}, commentReading);
	
	});

// 댓글 저장
function fnCommentSave(){
	var url = "/youblog/insertComment.do"
	var obj = {};
	obj["cmtContents"] = $("#comment").val();
		
	fnAjaxPostData(url, obj, function(data){
		alert(data.message);
		$("#commentread > tr").empty();
		fnAjaxPostData("/youblog/readComment.do", {"blogNo":'${blogNo}'}, commentReading);
	});
}

//댓글 수정
function fnCommentUpdate(){
	var url = "/youblog/updateComment.do"
	var obj = {};
	obj["cmtNo"] = 'CMTNO넣어야함';
		
	fnAjaxPostData(url, obj, fnAjaxResult);
}

//댓글 삭제
function fnCommentDelete(){
	var url = "/youblog/insertComment.do"
	var obj = {};
	obj["cmtNo"] = 'CMTNO넣어야함';
		
	fnAjaxPostData(url, obj, fnAjaxResult);
}

//결과
function fnAjaxResult(data){
	alert(data.message);
}



//댓글 파싱
function commentReading(data){
	var list = data.list;
	var outComment = "";
	var id = "user02";
	for(var i = 0; i < list.length; i++){
		console.log(list[i].MEMBER_ID);
		
		if(id == list[i].MEMBER_ID){
		outComment = "<tr><td id = 'CmtNo" + i + "' style = 'display : none;'>" + list[i].CMT_NO + "</td><td id = 'MemberId" + i + "'>" + list[i].MEMBER_ID +"</td><td><input type='text' value='" + list[i].CMT_CONTENTS + "' id='" + i + "_contents' readOnly></td><td><input type='button' id='"+ i +"_update' name='updateBtn' value='수정'></td><td><button id = 'deleteBtn'>삭제</button></td></tr>"
		}else{
			outComment = "<tr><td id = 'hideCmtNo' style = 'display : none;'>" + list[i].CMT_NO + "</td><td>" + list[i].MEMBER_ID +"</td><td>" + list[i].CMT_CONTENTS + "</td></tr>"
		}
		$("#commentread").append(outComment);
	}
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
</head>
<body>

<input type ="text" id = "comment" name = "comment"><button id = "send">등록</button>





<table id = "commentread">

	
</table>
</body>
</html>