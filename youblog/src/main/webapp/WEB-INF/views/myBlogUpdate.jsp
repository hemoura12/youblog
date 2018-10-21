<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>myBlogUpdate Page</title>
</head>
<body>
<h1> 글관리 페이지 </h1>
<h2 align="center">글관리</h2>
<div>
   <table align="center" border="1" >
      <tr>
         <th><input type="checkbox" id="checkall">
         <th>글제목</th>
         <th>조회수</th>
         <th>작성일</th>
      </tr>
      
      <c:forEach items="${list }" var="b">
      <tr>
         <th><input type="checkbox" name="chk">
         <th>${b.title }</th>
         <th>${b.hits }</th>
         <th>${b.writedate }</th>
      </tr>
      </c:forEach>
</table>
</div>
<hr>
<div id="category">
    <h3>카테고리</h3>
        <ul>
            <li><a href="#" title="all">all</a></li>
            <li><a href="#" title="aa_list">AA</a></li>
            <li><a href="#" title="bb_list">BB</a></li>
            <li><a href="#" title="cc_list">CC</a></li>
            <li><a href="#" title="dd_list">DD</a></li>
        </ul>
    </div>
    <div id="list">
        <h3>목록</h3>
        <ul>
            <li class="aa_list"><a href="#">aa 1</a></li>
            <li class="dd_list"><a href="#">dd 1</a></li>
            <li class="bb_list"><a href="#">bb 1</a></li>
            <li class="aa_list"><a href="#">aa 2</a></li>
            <li class="cc_list"><a href="#">cc </a></li>
            <li class="dd_list"><a href="#">dd 2</a></li>
            <li class="aa_list"><a href="#">aa 3</a></li>
            <li class="bb_list"><a href="#">bb 2</a></li>
            <li class="aa_list"><a href="#">aa 4</a></li>
            <li class="dd_list"><a href="#">dd 3</a></li>
            <li class="cc_list dd_list"><a href="#">cc /dd </a></li>
            <li class="aa_list"><a href="#">aa 5</a></li>
            <li class="bb_list"><a href="#">bb 3</a></li>
            <li class="bb_list aa_list"><a href="#">bb aa</a></li>
        </ul>
    </div>

</body>
<script type="text/javascript" src="/youblog/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $("#category a").click(function(e){
        e.preventDefault();
        var category = $(this).attr("title");     // 클릭된 대상의 title 속성 값을 category 변수에 반환합니다.
        $("#list li").fadeOut("slow");            // 우선 list들을 모두 숨깁
        if(category == "all"){$("#list li").fadeIn("slow");}
        else{$("#list li[class*="+category+"]").fadeIn("slow");}                  // 분류에 해당하는 list를 나타냅 하단참조
    });
});

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

</script>
</html>