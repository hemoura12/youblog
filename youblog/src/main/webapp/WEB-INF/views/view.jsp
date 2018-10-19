<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>에디터</title>
 
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/youblog/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="/youblog/resources/js/jquery-3.3.1.min.js"></script>
 
</head>
<script type="text/javascript">
    $(function(){
        //전역변수
        var obj = [];              
        //스마트에디터 프레임생성
        nhn.husky.EZCreator.createInIFrame({
            oAppRef: obj,
            elPlaceHolder: "contents",
            sSkinURI: "/youblog/resources/editor/SmartEditor2Skin.html",
            htParams : {
                // 툴바 사용 여부
                bUseToolbar : true,            
                // 입력창 크기 조절바 사용 여부
                bUseVerticalResizer : false,    
                // 모드 탭(Editor | HTML | TEXT) 사용 여부
                bUseModeChanger : false,
            }
        });
        //전송버튼
        $("#insertBoard").click(function(){
            //id가 smarteditor인 textarea에 에디터에서 대입
            obj.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
            /* obj.getById["title"].exec("UPDATE_CONTENTS_FIELD", []); */
            //폼 submit
            $("#insertBoardFrm").submit();
        });
    });
</script>
<body>
 
    <form action="insertBoard.do" method="post" id="insertBoardFrm" enctype="multipart/form-data">
    
    <th>대주제</th>
  
    <select id="high">
          <c:forEach items="${list }" var="b">
    	<option value="high">${b.cate_name1 }</option>
    	</c:forEach>
    	</select>    
    	
    <th>소주제</th>
    <select id="middle" >
    <c:forEach items="${list }" var="s">
    <option value="middle">${s.cate_name2 }</option>
    </c:forEach>
    </select>
    
    <th>카테고리</th>
    <select id="category">
    <option value="category"></option>
    </select>
    <br>    
    <th style="width:100px;">제목</th>
    <td><input type="text" id="title"  name="title" style="border:1px solid #666;"></td>
    <br><br>
    <textarea name="contents" id="contents" style="width: 700px; height: 400px;"></textarea>
    <tr>
<th>작성자</th>
<td><input type="text" id="writerid" name="writerid" ></td>
</tr>
    <tr>
<th>카테고리이름</th>
<td><input type="text" id="catename1"  name="catename1"></td>
</tr>

<tr>
<th>카테고리이름2</th>
<td><input type="text" id="catename2"  name="catename2"></td>
</tr>
       
        <input type="button" id="insertBoard" value="등록" />
    </form>
    


   
 
</body>
</html>
