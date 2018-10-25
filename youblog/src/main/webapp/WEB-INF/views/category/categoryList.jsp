<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/youblog/resources/js/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
</head>
<script>

function fnCngList(sVal){
/*     var f = document.form1;
    var opt = $("#cate2 option").length;
 
    if(sVal == "") {
        num = new Array("소분류");
        vnum = new Array("");
    }else if(sVal == "B1") {
        num = new Array("분류1-1","분류1-2","분류1-3");
        vnum = new Array("1-1","1-2","1-3");
    }else if(sVal == "B2") {
        num = new Array("분류2-1","분류2-2","분류2-3");
        vnum = new Array("2-1","2-2","2-3");
    }else if(sVal == "B3") {
        num = new Array("분류3-1","분류3-2","분류3-3");
        vnum = new Array("3-1","3-2","3-3");
    }
 
    for(var i=0; i<opt; i++) {
        f.SDIV.options[0] = null;
    }
 
    for(k=0;k < num.length;k++) {
        f.SDIV.options[k] = new Option(num[k],vnum[k]);
    } */
}

</script>
<body>
<%@ include file="../header.jsp" %>
<br><br><br>
<h1>카테고리리스트</h1>
<form action="category_view.do" method=post> 
   <table border=1> 
      <tr> 
         <td align=center>제일 좋아하는 <br>컴퓨터 언어 <br><br></td> 
      </tr> 
      <tr> 
         <td>
            <select id="cate1" name="cate1" size=10  style="width:100%" 
            onchange="fnCngList(this.value);">
            <c:forEach items="${cate_lev1 }" var="lev1"> 
               <option>${lev1['CATE_NAME1'] }</option>
            </c:forEach>
            </select> 
         </td>
         <td>
            <select id="cate2" name="cate2" size=10 style="width:100%">
            <c:forEach items="${cate_lev2 }" var="map"> 
               <option>${map['CATE_NAME2'] }</option>
            </c:forEach>
            </select> 
         </td> 
      </tr> 
      <tr> 
         <td align=center colspan="2"><br><br> 
            <input type="submit" value="전송하기" id=submit1 name=submit1> 
            <input type="reset" value="취소하기" id=reset1 name=reset1> 
         </td> 
      </tr> 
	</table> 
</form> 
<table>
<tr><th>키</th><th>값</th></tr>

</table>


</body>
</html>