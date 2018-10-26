<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>작성페이지</title>
    <script type="text/javascript" src="resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="/youblog/resources/styles/css/page.css">
    <script type="text/javascript"src="/youblog/resources/js/jquery-3.3.1.min.js"></script>
    
     <script type="text/javascript">    
    
  
    
    function readURL(input) {
       if (input.files && input.files[0]) { 
          var reader = new FileReader(); 
          reader.onload = function (e) { 
             $('#blah').attr('src', e.target.result); 
             } 
             reader.readAsDataURL(input.files[0]); 
       }
    } 
    
    var subject;   //대주제 출력용
    var subjectFilter; //대주제
    var subjectFilter2; //소주제
    var categoryFilter; //회원이 만든 세션 카테고리

     //회원세션출력
     $(document).ready(function(){
        
        $.ajax({
              url : "sessionList.do",
              type : "post",
              dataType : "json",
              success : function(data) {
                
                 var jsonStr  = JSON.stringify(data);
                 var json  = JSON.parse(jsonStr);
                 
                 for(var i = 0; i < json.list.length; i++){

                     $("#catename3").append(
                              "<option>" + json.list[i].cate3 + "</option>");
                 } //for
              }, //success
              error : function(jqXHR, textstatus, errorThrown) {
                 console.log("error : " + jqXHR + ", " + textstatus + ", "
                       + errorThrown);
              } //error
           }); //ajax
           return false;
     });
     
     //대주제출력
     $(document).ready(function(){
     
       $.ajax({
          url : "/youblog/subjecting.do",
          type : "post",
          dataType : "json",
          success : function(data) {
          
             var jsonStr = JSON.stringify(data);
             var json = JSON.parse(jsonStr);

             for (var i = 0; i < json.list.length; i++) {

                $("#catename1").append(
                      "<option>" + json.list[i].cate1 + "</option>");
             } //for
          }, //success
          error : function(jqXHR, textstatus, errorThrown) {
             console.log("error : " + jqXHR + ", " + textstatus + ", "
                   + errorThrown);
          } //error
       }); //ajax
       return false;
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
             var jsonStr = JSON.stringify(data);
             var json = JSON.parse(jsonStr);

             $("#catename2").append("<option>소주제선택</option>");

             for (var i = 0; i < json.list.length; i++) {

                $("#catename2").append(
                      "<option>" + json.list[i].cate2 + "</option>");
             } //for
          }, //success
          error : function(jqXHR, textstatus, errorThrown) {
             console.log("error : " + jqXHR + ", " + textstatus + ", "
                   + errorThrown);
          } //error
       }); //ajax
       return false;
    }
    
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
                bUseVerticalResizer : true,    
                // 모드 탭(Editor | HTML | TEXT) 사용 여부
                bUseModeChanger : true,
            }
        });
        //전송버튼
        $("#save").click(function(){
            //id가 smarteditor인 textarea에 에디터에서 대입
            obj.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
            //폼 submit
            $("#frm").submit();
        });
    });
    
    </script>
</head>
<body>
   
   <div class="conWrap">
   <%@ include file="/WEB-INF/views/header.jsp"%>
      <div class="channel_conbox_4">
         <!-- <div class="top_img_box">
            <img src="resources/images/headerimg.PNG" />
         </div> -->
            <form id="frm" action="insertblog.do" method="post" enctype="multipart/form-data">
               <table width="100%">
                  <tr>
                     <td class="empty_td"><p class="wpageptag">제목</p></td>
                     <td><input type="text" id="title" name="title" class="wpageinput" /></td>
                  </tr>
                  <tr style="display:none;">
                     <td class="empty_td" ><p class="wpageptag">작성자</p></td>
                     <td ><input type="text" id="writerid" name="writerid"  
                     value= ${sessionScope.member.memberid}
                     class="wpageinput" /></td>
                     
                  </tr>
                  <tr class="wpagecategory">
                     <td class ="empty_td"><p class="wpageptag"></p></td>   
                     <td class="wpageselect">
                        <select id="catename1" name="catename1" class="cate1">
                           <option >카테고리</option>
                        </select>
                     </td>
                     
                     <td class="wpageselect">
                        <select id="catename2" name="catename2" class="cate2">
                        <option value="" disabled selected hidden>카테고리</option>
                        </select>
                     </td>
                     
                     <!-- <td class="wpageselect">
                        <select id="catename3" name="catename3" class="cate3">
                           <option >카테고리</option>
                        </select>
                     </td> -->
                     
                     <td class="wpageselect">
                         <select id="state" name="state" class="state">
                           <option value="N" id="open">공개</option>
                     <option value="Y" id="close">비공개</option>
                        </select>
                     </td>
                  </tr>
               
                  <tr>
                     <td class ="empty_td"><p class="wpageptag">내용</p></td>
                     <td colspan="2">
                           <textarea name="contents" id="contents" rows="10" cols="100"
                              style="width: 1000px; height: 500px; display: none;"></textarea>
                     </td>
                     
                  </tr>
                  
                  <tr>
                     <td class="empty_td" ><p class="wpageptag">대표이미지선택</p></td>
                     <td ><input type="file" id=file name="file"  onchange="readURL(this)" 
                     class="wpageinput" />
                     </td>
                  </tr>
                     <tr style="width:100px;">
                     <td class="empty_td"><p class="wpageptag">대표이미지</p></td>
                     <td class="wpageinput" >
                     <img style="border:0px; width:200px; height:200px;" id="blah" />
                     </td>
                  </tr>
            
                  <tr >
                     <td colspan="3">
                        <div class="wpagebtn">
                           <input type="button" id="save" class="btn btn-primary" value="저 장">
                           <input type="reset" class="btn btn-primary" value="취 소">
                        </div>
                     </td>
                  </tr>
               </table>
         </form>
      </div>
   </div>
   <c:import url = "/WEB-INF/views/rightNav.jsp"/>    



</body>
</html>