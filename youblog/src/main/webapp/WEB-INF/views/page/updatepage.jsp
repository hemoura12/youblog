<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>수정페이지</title>
    <script type="text/javascript" src="resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="resources/styles/css/page.css">
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
   </script>

    <script type="text/javascript">
        $(function(){
           var oEditors = [];
            nhn.husky.EZCreator.createInIFrame({
                oAppRef: oEditors,
                elPlaceHolder: "ir1", //textarea에서 지정한 id와 일치해야 합니다.
                //SmartEditor2Skin.html 파일이 존재하는 경로
                sSkinURI : "/youblog/resources/editor/SmartEditor2Skin.html",
                htParams : {
                    // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
                    bUseToolbar : true,
                    // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
                    bUseVerticalResizer : true,
                    // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
                    bUseModeChanger : true,
                }
                });
                /* fOnAppLoad : function(){
                    //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
                    //oEditors.getById["ir1"].exec("PASTE_HTML", ["기존 DB에 저장된 내용을 에디터에 적용할 문구"]);
                },
                fCreator: "createSEditor2"
            }); */

            //저장버튼 클릭시 form 전송
            $("#save").click(function(){
                oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
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
            <form id="frm" action="update.do" method="post" enctype="multipart/form-data">
               <table width="100%">
                  <tr>
                     <td class="empty_td"><p class="wpageptag">제목</p></td>
                     <td>
                     <input type="text" class="wpageinput"  
                     value="${blog.title}"
                     id="title" name="title" required /></td>
                  </tr>
                  <tr class="wpagecategory">
                     <td class ="empty_td"><p class="wpageptag"></p></td>   
                     <td class="wpageselect">
                        <select id="catename1" name="catename1" class="cate1">
                           <option>카테고리</option>
                        </select>
                     </td>
                     
                     <td class="wpageselect">
                        <select id="catename2" name="catename2" class="cate2">
                           <option  disabled selected hidden>카테고리</option>
                           </select>
                     </td>
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
                        <!-- <form action="sample/viewer/index.php" method="post" > -->
                        
                           <textarea name="ir1" id="ir1" rows="10" cols="100" 
                              
                              style="width: 1000px; height: 500px; display: none;">${blog.contents}</textarea>
                        <!-- </form> -->
                     </td>
                  </tr>
                  <tr>
                     <td class="empty_td" ><p class="wpageptag">대표이미지선택</p></td>
                     <td ><input type="file" id="thumbnail" name="thumbnail" onchange="readURL(this)" 
                     class="wpageinput" />
                     </td>
                  </tr>
                     <tr style="width:100px;">
                     <td class="empty_td"><p class="wpageptag">대표이미지</p></td>
                     <td class="wpageinput" >
                     <img style="border:0px; width:200px; height:200px;" <%-- value="${blog.thumbnail } --%> id="blah" />
                     </td>
                  </tr>
                  
                  <tr>
                     <td colspan="3">
                        <div class="wpagebtn">
                           <input type="button" class="btn btn-primary" id="save" value="수 정">
                           <input type="button" class="btn btn-primary" value="취 소">
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