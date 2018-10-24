<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>에디터</title>

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="/youblog/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript"
	src="/youblog/resources/js/jquery-3.3.1.min.js"></script>

</head>
<script type="text/javascript">

/* 	//이미지 업로드
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	} */
	
	var subjectFilter; //대주제
	var subjectFilter2; //소주제
	var categoryFilter; //회원이 만든 세션 카테고리
	
	/* function checkBox(){
		  var state = $('#open').prop('checked'); // 변수에 넣기
		  var chk1 = $('#close').prop('checked'); // 변수에 넣기
			var a = $("#open").val();
		alert(state);
	} */

	/* //페이지 시작시
	$(document).ready(function(){
		
	}); */
	

	
/* 	
	 //체크박스 하나만 선택되게 하는 함수
	function doOpenCheck(chk){
	    var obj = document.getElementsByName("aaa");
	    for(var i=0; i<obj.length; i++){
	        if(obj[i] != chk){
	            obj[i].checked = false;
	        }
	    }
	    	  
	    var state = $('#open').is(':selected'); // 변수에 넣기
	  	var chk1 = $('#close').is(':selected'); // 변수에 넣기

	    if(state == true){
	    	$(".tag").show();
		}else 		
			$(".tag").hide();
	  	
	  	$("#ope").change(
	  	function(){
	  		if($("#open").is (":checked")){
	  			$("open").val('N');
	  		}else{
	  			$("close").val('Y');
	  		}
	  	});
	  	alert(state);
   
}     */
	
		$("#state").on("change", function(){
			alert("바뀝니다");
		});

	 
	//대주제 select 발생시
	$(function() {
		$("#catename1").on("change", function() {
			subjectFilter = $("#catename1 :selected").val();
			//$("#subject").html("");
			subjectNamePrint(subjectFilter);
			$("#catename2").html("");
			return false;
		});
		//소주제 select 발생시 자신이 만든 세션 호출 (아직없음)
		/*  $("#subject2").on("change", function() {
			subjectFilter = $("#subject2: selected").val();
			categoryNamePrint(categoryFilter); //회원이 만든 세션 출력용
			return false;
		});  */
	}); //document.ready

	//소주제 출력 함수 
	function subjectNamePrint(subjectFilter) {
		$.ajax({
			url : "/youblog/subject.do",
			type : "post",
			data : {
				"sub" : subjectFilter
			},
			dataType : "json",
			success : function(data) {
				var jsonStr  = JSON.stringify(data);
				var json  = JSON.parse(jsonStr);

				  $("#catename2").append("<option>소주제선택</option>"); 
				
				for(var i = 0; i < json.list.length; i++){

						$("#catename2").append("<option>" + json.list[i].cate2 + "</option>");
				} //for
			}, //success
			error : function(jqXHR, textstatus, errorThrown) {
				console.log("error : " + jqXHR + ", " + textstatus + ", "
						+ errorThrown);
			} //error
		}); //ajax
		return false;
	}

	
	/* //회원세션 출력 함수
	function categoryNamePrint(categoryFilter) {
		$.ajax({
			url : "/youblog/memberSession.do",
			type : "post",
			data : {"memberSession" : categoryFilter},
			dataType : "json",
			success : function(data) {
				alert(json)
				var jsonStr  = JSON.stringify(data);
				var json  = JSON.parse(jsonStr);

				  $("#subject3").append("<option>세션선택</option>"); 
				
				for(var i = 0; i < json.list.length; i++){

						$("#subject3").append("<option>" + json.list[i].cate3 + "</option>");
				} //for
			}, //success
			error : function(jqXHR, textstatus, errorThrown) {
				console.log("error : " + jqXHR + ", " + textstatus + ", "
						+ errorThrown);
			} //error
		}); //ajax
		return false;
	} */
	//--------------------------------------------------------------------------------

	$(function() {
		//전역변수
		var obj = [];
		//스마트에디터 프레임생성
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : obj,
			elPlaceHolder : "contents", 
			sSkinURI : "/youblog/resources/editor/SmartEditor2Skin.html",
			htParams : {
				// 툴바 사용 여부
				bUseToolbar : true,
				// 입력창 크기 조절바 사용 여부
				bUseVerticalResizer : false,
				// 모드 탭(Editor | HTML | TEXT) 사용 여부
				bUseModeChanger : false,
			}
		});
		
		/* $("#insertBlog").click(function() {
			var blogWrite = new Object();
			alert("등록버튼 누르기");
			blogWrite.title = $("#title").val();
			blogWrite.contents = $("#contents").val();
			blogWrite.writerid = $("#writerid").val();
			blogWrite.catename1 = $("#subject").val();
			blogWrite.catename2 = $("#subject2").val();
			
			var jsonStr = JSON.stringify(blogWrite);
			
			$.ajax({
	            url : "/youblog/insertBoard.do",
	            type : "post",
	            data : {"jsonStr" : jsonStr},
	           // dataType : "json",
	            success : function(data){
	               alert("글작성완료 ajax 성공!!" );
	                  if(data >= 1)
	                     alert("글 작성완료");
	                  else
	                     alert("글 작성실패");
	               
	            },   //success
	            error : function(jqXHR, textstatus, errorThrown){
	               console.log("error : " + jqXHR + ", " + textstatus + ", " + errorThrown);
	            } //error
	   });//ajax
			
		});  */
		//전송버튼
		$("#insertBlog").click(function() {
			//id가 smarteditor인 textarea에 에디터에서 대입
			obj.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
			/* obj.getById["title"].exec("UPDATE_CONTENTS_FIELD", []);
			obj.getById["writerid"].exec("UPDATE_CONTENTS_FIELD", []);
			obj.getById["subject2"].exec("UPDATE_CONTENTS_FIELD", []);
			obj.getById["subject"].exec("UPDATE_CONTENTS_FIELD", []);  */
			//폼 submit
			$("#insertBoardFrm").submit();		
		});			
	});
	
	
	

</script>
<body>

	<form action="insertBoard.do" method="post" id="insertBoardFrm" name="insertBoardFrm" 
		enctype="multipart/form-data">
		</select> <br>
		<th>제목</th>
		<td><input id="title" name="title"></td> <br> <br>
		<textarea name="contents" id="contents"
			style="width: 700px; height: 400px;"></textarea>
		<tr>
			<th>작성자</th>
			<td><input type="text" id="writerid" name="writerid"></td>
		</tr>

<div class="tag">
		 <select id="catename1" name="catename1" class="cate1">
			<option>대주제선택</option>
			<c:forEach items="${list }" var="b">
				<option>${b.cate_name1 }</option>
			</c:forEach>
		</select>

	 <select id="catename2" name="catename2" class="cate2">
		</select>

		 <select id="catename3" class="cate3">
		</select>
		</div>
		<div>
		<select id="stae" name="state" >
		<option value="N" id="open">공개
		</option>
		<option value="Y" id="close">비공개</option>
		</select>
		
			<!-- <input type="checkbox" id="open" name="aaa" value="Y" onclick="doOpenCheck(this)"  />공개 
			<input type="checkbox" id="close" name="aaa" value="N" onclick="doOpenCheck(this)"/>비공개 -->

		</div>

		<input type="button" id="insertBlog" value="등록"  />
	</form>

</body>
</html>
