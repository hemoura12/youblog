<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/youblog/resources/js/jquery-3.3.1.min.js"></script>
	
<script type="text/javascript">
	
	//체크박스 전체선택 및 선택삭제 
	/* //체크박스 전체선택
	$("#allCheck").click(function(){
    	//만약 전체 선택 체크박스가 체크된상태일경우
    	if($("#allCheck").prop("checked")) {
        //해당화면에 전체 checkbox들을 체크해준다
        $("input[type=checkbox]").prop("checked",true);
        // 전체선택 체크박스가 해제된 경우
    } else {
        //해당화면에 모든 checkbox들의 체크를해제시킨다.
        $("input[type=checkbox]").prop("checked",false);
    }
    	onCheckChange();
	});
	
	//체크선택삭제
	function chkProduct(){
		alert("선택하신 댓글은 "+$("input[name='listChk[]']:checked").length + " 개 입니다.");
	}
	$('#removeBt').on('click',function () {
        var removeNos = $('input.remove_check:checked').map(function () {
            return $(this).data('no');
        }).get();

        for (var index in removeNos) {
            var no = removeNos[index];
            cartJS.remove(memberid, no);
        }
    });

	$('input.remove_check').on('change checked', function(){
        onCheckChange();
    }); */
	
	$(document).ready(function(){
	    //최상단 체크박스 클릭
	    $("#checkall").click(function(){
	        //클릭되었으면
	        if($("#checkall").prop("checked")){
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	            $("input[name=chk]").prop("checked",true);
	            //클릭이 안되있으면
	        }else{
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	            $("input[name=chk]").prop("checked",false);
	        }
	    })
	});
	
	/* 체크박스 전체선택, 전체해제 */
	/* function checkAll(){
	      if( $("#th_checkAll").is(':checked') ){
	        $("input[name=checkRow]").prop("checked", true);
	      }else{
	        $("input[name=checkRow]").prop("checked", false);
	      }
	} */
	
	/* 삭제(체크박스된 것 전부) */
	/* function deleteAction(){
	  var checkRow = "";
	  $( "input[name='checkRow']:checked" ).each (function (){
	    checkRow = checkRow + $(this).val()+"," ;
	  });
	  checkRow = checkRow.substring(0,checkRow.lastIndexOf( ",")); //맨끝 콤마 지우기
	 
	  if(checkRow == ''){
	    alert("삭제할 대상을 선택하세요.");
	    return false;
	  }
	  console.log("### checkRow => {}"+checkRow);

	//체크박스로 여러개 삭제하는 기능 추가.
	  String[] arrIdx = paramMap.get("idx").toString().split(",");
	  for (int i=0; i<arrIdx.length; i++) {
	      testMapper.delete(Integer.parseInt(arrIdx[i]));
	  } */
	
	  
</script>

<title>댓글 관리</title>
</head>
<body>
<h2 align="center">댓글 관리페이지</h2>
<div>
   <table align="center" border="1" >
      <tr>
      	 <th><input type="checkbox" id="checkall" onclick="checkAll();"></th>
      	<!--  <th><input type="checkbox" id="allCheck" name="allCheck"  ></th> -->
         <th>글번호</th>
         <th>블로그번호</th>
         <th>아이디</th>
         <th>댓글내용</th>
         <th>상태</th>
      </tr>
      <c:forEach items="${list }" var="m" varStatus="index">
      <tr>
      	 <th><input type="checkbox" name="chk"></th>
      	 <!-- <th><input type="checkbox" class="remove_check" name="listChk[]" ></th> -->
         <th>${m.cmtno }</th>
         <th>${m.blogno }</th>
         <th>${m.memberid }</th>
         <th>${m.cmtcontents }</th>
         <th>${m.state }</th>
      </tr>
      </c:forEach>
   </table>
   <input type="button" value="삭제" id="removeBt" onclick="chkProduct();">
</div>
</body>

</html>