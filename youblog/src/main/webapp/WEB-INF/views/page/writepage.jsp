<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>작성페이지</title>
    <script type="text/javascript" src="resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="resources/styles/css/page.css">
    
    <script type="text/javascript">
        var oEditors = [];
        $(function(){
            nhn.husky.EZCreator.createInIFrame({
                oAppRef: oEditors,
                elPlaceHolder: "ir1", //textarea에서 지정한 id와 일치해야 합니다.
                //SmartEditor2Skin.html 파일이 존재하는 경로
                sSkinURI: "/smarteditorSample/SE2/SmartEditor2Skin.html",
                htParams : {
                    // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
                    bUseToolbar : true,
                    // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
                    bUseVerticalResizer : true,
                    // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
                    bUseModeChanger : true,
                    fOnBeforeUnload : function(){

                    }
                },
                fOnAppLoad : function(){
                    //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
                    oEditors.getById["ir1"].exec("PASTE_HTML", ["기존 DB에 저장된 내용을 에디터에 적용할 문구"]);
                },
                fCreator: "createSEditor2"
            });

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
				<form id="frm" action="insert.jsp" method="post">
					<table width="100%">
						<tr>
							<td class="empty_td"><p class="wpageptag">제목</p></td>
							<td><input type="text" class="wpageinput" /></td>
						</tr>
						<tr class="wpagecategory">
							<td class ="empty_td"><p class="wpageptag"></p></td>	
							<td class="wpageselect">
								<select>
									<option value="" disabled selected hidden>카테고리</option>
									<option>여행·맛집</option>
									<option>문화·연예</option>
									<option>IT</option>
									<option>스포츠</option>
									<option>시사</option>
								</select>
							</td>
							
							<td class="wpageselect">
								<select>
									<option value="" disabled selected hidden>카테고리</option>
									<option>여행·맛집</option>
									<option>문화·연예</option>
									<option>IT</option>
									<option>스포츠</option>
									<option>시사</option>
								</select>
							</td>
							
							<td class="wpageselect">
								<select>
									<option value="" disabled selected hidden>카테고리</option>
									<option>여행·맛집</option>
									<option>문화·연예</option>
									<option>IT</option>
									<option>스포츠</option>
									<option>시사</option>
								</select>
							</td>
						</tr>
						<!-- <tr class = "wpagecategory">
							<td class="wpageselect" >
								<select>
									<option value="" disabled selected hidden>카테고리</option>
									<option>여행·맛집</option>
									<option>문화·연예</option>
									<option>IT</option>
									<option>스포츠</option>
									<option>시사</option>
								</select>
							</td>
						</tr> -->
						<tr>
							<td class ="empty_td"><p class="wpageptag">내용</p></td>
							<td colspan="2">
								<form action="sample/viewer/index.php" method="post">
									<textarea name="ir1" id="ir1" rows="10" cols="100"
										style="width: 1000px; height: 500px; display: none;"></textarea>
								</form>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<div class="wpagebtn">
									<input type="button" class="btn btn-primary" value="저 장">
									<input type="button" class="btn btn-primary" value="취 소">
								</div>
							</td>
						</tr>
					</table>
			</form>
		</div>
	</div>
	<c:import url = "/WEB-INF/views/rightNav.jsp"/>    


	<!--네이버 api-->
	<script type="text/javascript">
		var oEditors = [];

		// 추가 글꼴 목록
		//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];

		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "ir1",
			sSkinURI : "./resources/editor/SmartEditor2Skin.html",
			htParams : {
				bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				//bSkipXssFilter : true,		// client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)
				//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
				fOnBeforeUnload : function() {
					//alert("완료!");
				}
			}, //boolean
			fOnAppLoad : function() {
				//예제 코드
				//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
			},
			fCreator : "createSEditor2"
		});

		function pasteHTML() {
			var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
			oEditors.getById["ir1"].exec("PASTE_HTML", [ sHTML ]);
		}

		function showHTML() {
			var sHTML = oEditors.getById["ir1"].getIR();
			alert(sHTML);
		}

		function submitContents(elClickedObj) {
			oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용됩니다.

			// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.

			try {
				elClickedObj.form.submit();
			} catch (e) {
			}
		}

		function setDefaultFont() {
			var sDefaultFont = '궁서';
			var nFontSize = 24;
			oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
		}
	</script>

</body>
</html>