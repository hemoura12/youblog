<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="updateSessionSettings.do">
    <table cellspacing="0" class="uppermenu_admin blog_admin blog_category">
        <tbody>
            <tr>
                <td class="n_category_list">
                    <div class="category_list_area">
                        <div class="list_btn">
                            <a href="#"><img width="87" height="20" alt="카테고리 추가" src="https://blogimgs.pstatic.net/nblog/admin50/btn_add_category.gif" class="_addCategoryView _nclk(edt_blog.categoryadd)"></a>
                            <a href="#"><img width="77" height="20" alt="구분선 추가" src="https://blogimgs.pstatic.net/nblog/admin50/btn_sectionline.gif" class="_addLineView _nclk(edt_blog.lineadd)"></a>
                            <a href="#" id="deleteBtn" style="float:right;"><img width="44" height="20" class="_deleteCategoryView _nclk(edt_blog.delete)" alt="삭제" src="https://blogimgs.pstatic.net/nblog/admin50/btn_del_category.gif"></a>
                        </div>
                        <div class="category_list">
                            <div class="tree">
                                <!-- 카테고리 뷰 -->
                                <!--  style의 height로 높이 조절합니다// 기본값은 전체 375px로 높이조절바의 높이 16px를 빼서 359를 초기치로 잡으면 됩니다. -->
                                <ul style="height:373px;" id="tree">
                                    <li class="first-child tree-node tree-selected">
                                        <div tabindex="0" class="tree-div-selected"><label><span>카테고리 전체보기</span> <em>(3)</em></label>
                                            <button class="tree-button" style="display: none;">+</button>
                                        </div>
                                    </li>
                                    <li class="tree-tree-data-15403414366591224265 tree-node  _nclk(edt_blog.category)">
                                        <div class="drag-label list" tabindex="0"><label><span>일상</span><em> (1)</em></label><button class="tree-button" style="display: none;">접기 or 펼치기</button><img width="22" height="13" style="display:none;" class="basic" alt="기본" src="https://blogimgs.pstatic.net/nblog/admin20/ico_basic_cat.gif"></div>
                                    </li>
                                    <li class="tree-tree-data-15403414366608377331 tree-node  _nclk(edt_blog.category)">
                                        <div class="drag-label list" tabindex="0"><label><span>맛집</span><em> (1)</em></label><button class="tree-button" style="display: none;">접기 or 펼치기</button><img width="22" height="13" style="display:none;" class="basic" alt="기본" src="https://blogimgs.pstatic.net/nblog/admin20/ico_basic_cat.gif"></div>
                                    </li>
                                    <li class="tree-tree-data-15403414366617030349 tree-node  _nclk(edt_blog.category)">
                                        <div class="drag-label list" tabindex="0"><label><span>[쇼핑]가전/휴대폰</span><em> (1)</em></label><button class="tree-button" style="display: none;">접기 or 펼치기</button><img width="22" height="13" style="display:none;" class="basic" alt="기본" src="https://blogimgs.pstatic.net/nblog/admin20/ico_basic_cat.gif"></div>
                                    </li>
                                    <li class="tree-tree-data-15403414366617340790 tree-node  _nclk(edt_blog.category)">
                                        <div class="drag-label list" tabindex="0"><label><span>게시판</span><em> (0)</em></label><button class="tree-button" style="display: none;">접기 or 펼치기</button><img width="22" height="13" style="display:none;" class="basic" alt="기본" src="https://blogimgs.pstatic.net/nblog/admin20/ico_basic_cat.gif"></div>
                                    </li>
                                    <li class="tree-tree-data-15403414366617310273 tree-node  _nclk(edt_blog.category) tree-last-node">
                                        <div class="drag-label list" tabindex="0"><label><span>리뷰로그</span><em> (0)</em></label><button class="tree-button" style="display: none;">접기 or 펼치기</button><img width="22" height="13" style="display:none;" class="basic" alt="기본" src="https://blogimgs.pstatic.net/nblog/admin20/ico_basic_cat.gif"></div>
                                    </li>
                                </ul>
                                <div id="tree_bar"><a href="#" class="_nclk(edt_blog.extend)"><img height="16" width="221" class="bar" alt="높이 조절" src="https://blogimgs.pstatic.net/nblog/admin/btn_bar_height.gif"></a></div>
                            </div>
                        </div>
                    </div>
                </td>

                <td class="n_admin">
                    <div class="category_add">
                        <dl>
                            <dt class="category_name">카테고리명</dt>
                            <dd class="category_name">
                                <div>
                                <input type="text" onkeyup="onKeyUp(this.value);" onfocus="" maxlength="16" class="inp _nclk(edt_blog.categoryname)" id="sessionname"  name = "sessionname" disabled="">
                                </div>
                                <input type="hidden" name="" id="category_name_hidden">
                            </dd>
                            
                           
                            <!--
                             글관리에 쓸것 
                             
                            <dt>공개설정</dt>
                            <dd class="cbox">
                                <input type="radio" value="true" class="checkbox  _setOpen _nclk(edt_blog.public)" name="statey" id="statey" disabled=""><label for="pub_c1">공개</label>
                                <input type="radio" value="false" class="checkbox _setClose _nclk(edt_blog.private)" name="staten" id="staten" disabled=""><label for="pub_c2">비공개</label>
                            </dd>
                            -->


                            <dt class="list_view">목록보기</dt>
                            <dd class="list_view">
                                <input type="radio" value="false" class="checkbox _setListOption _nclk(edt_blog.listclose) _param(false)" name="isTopListOpen" id="pub_c5"><label for="pub_c5">목록닫기</label>
                                <input type="radio" value="true" class="checkbox checkbox1 _setListOption _nclk(edt_blog.listopen) _param(true)" name="isTopListOpen" id="pub_c6"><label for="pub_c6">목록열기</label>
                                <select onchange="category.setTopListPostCount(this, event);" id="topListPostCount" name="topListPostCount">
                                    <option value="5">5줄 보기</option>
                                    <option value="10">10줄 보기</option>
                                    <option value="15">15줄 보기</option>
                                    <option value="20">20줄 보기</option>
                                    <option value="30">30줄 보기</option>
                                </select>
                            </dd>
                            <!-- <dt class="category_sort">카테고리 정렬</dt>
                            <dd class="category_sort">
                                <a href="#"><img class="_moveUp _nclk(edt_blog.catup)" width="38" height="18" alt="위" src="https://blogimgs.pstatic.net/nblog/admin50/btn_move_up2.gif"></a>
                                <a href="#"><img class="_moveDown _nclk(edt_blog.catdown)" width="38" height="18" alt="아래" src="https://blogimgs.pstatic.net/nblog/admin50/btn_move_down2.gif"></a>
                                <a href="#"><img class="_moveFirst _nclk(edt_blog.cattop)" width="38" height="18" alt="맨위" src="https://blogimgs.pstatic.net/nblog/admin50/btn_move_top2.gif"></a>
                                <a href="#"><img class="_moveLast _nclk(edt_blog.catbottom)" width="38" height="18" alt="맨아래" src="https://blogimgs.pstatic.net/nblog/admin50/btn_move_bottom2.gif"></a>
                            </dd>
                            <dt class="category_hide">카테고리 접기</dt>
                            <dd class="category_hide">
                                <input type="radio" value="false" class="checkbox _folded _nclk(edt_blog.catopen)" name="foldYn" id="spread_c1" disabled=""><label for="spread_c1">펼치기</label>
                                <input type="radio" value="true" class="checkbox checkbox1 _unfolded _nclk(edt_blog.catclose)" name="foldYn" id="spread_c2" disabled=""><label for="spread_c2">접기</label>
                            </dd>
                        </dl> -->
            </tr>
        </tbody>
    </table>
    <div class="action1">
        <span class="btn btn1">
            <input type="submit" class="_submit_button _nclk(edt_blog.ok)" id="submit" value="확인">
        </span>
    </div>
</form>

</body>
</html>