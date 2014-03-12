<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="layout-2cols">

<div class="content grid_8">
<div class="project-detail">
<h2 class="rs project-title">${recipeDetail.name}</h2>
<p class="rs post-by">by <a href="#">${recipeDetail.brewer}</a></p>
<div class="project-short big-thumb">
    <div class="top-project-info">
        <div class="content-info-short clearfix">
            <div class="thumb-img">
                <div class="rslides_container">
                    <ul class="rslides" id="slider1">
                        <li><img src="/resources/images/ex/th-552x411-1.jpg" alt=""></li>
                    </ul>
                </div>
            </div>
        </div>
    </div><!--end: .top-project-info -->
    <div class="bottom-project-info clearfix">
        <div class="project-progress sys_circle_progress" data-percent="5">
            <div class="sys_holder_sector"></div>
        </div>
        <div class="group-fee clearfix">
            <div class="fee-item">
                <p class="rs lbl">추천</p>
                <span class="val">27</span>
            </div>
            <div class="sep"></div>
            <div class="fee-item">
                <p class="rs lbl">스타일</p>
                <span class="val">${recipeDetail.styleName}</span>
            </div>
            <div class="sep"></div>
            <div class="fee-item">
                <p class="rs lbl">레시피 재료가격</p>
                <span class="val">68,000원</span>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="project-tab-detail tabbable accordion">
<ul class="nav nav-tabs clearfix">
    <li class="active"><a href="#">레시피</a></li>
    <li><a href="#" class="be-fc-orange">사간 사람들 (270)</a></li>
    <li><a href="#" class="be-fc-orange">댓글 (2)</a></li>
</ul>
<div class="tab-content">
<div>
    <h3 class="rs alternate-tab accordion-label">About</h3>
    <div class="tab-pane active accordion-content">
        <div class="editor-content">
            <h3 class="rs title-inside">${recipeDetail.name}</h3>
            <p class="rs post-by">by <a href="#" class="fw-b fc-gray be-fc-orange">${recipeDetail.brewer}</a> in <span class="fw-b fc-gray">경기도 성남시</span></p>
            <p>레시피 내용~ 불랴불랴~</p>
            <p>
                <img class="img-desc" src="/resources/images/ex/th-552x411-2.jpg" alt="$DESCRIPTION"/>
                <span class="img-label">맥주 레시피 사진 설명!!!</span>
            </p>
            <p>어쩌고! 저쩌고~ 레시피 만들자</p>

<table border="1">
    <tr>
        <td>몰트 명</td>
        <td>용량  </td>
        <td>사용처 </td>
        <td>타입  </td>
    </tr>
<c:forEach items="${recipeDetail.fermentables}" var="fermentable" varStatus="stat">
    <tr>
        <td>${fermentable.name}          </td>
        <td>${fermentable.amount} kg     </td>
        <td>${fermentable.fermentableUse}</td>
        <td>${fermentable.type}          </td>
    </tr>
</c:forEach>
</table>

            <div class="social-sharing">
                <!-- AddThis Button BEGIN -->
                <div class="addthis_toolbox addthis_default_style">
                    <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                    <a class="addthis_button_tweet"></a>
                    <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                    <a class="addthis_counter addthis_pill_style"></a>
                </div>
                <script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=undefined"></script>
                <!-- AddThis Button END -->
            </div>
        </div>
        <div class="project-btn-action">
            <a class="btn big btn-red" href="#">질문하기</a>
            <a class="btn big btn-black" href="#">레시피 보고</a>
        </div>
    </div><!--end: .tab-pane(About) -->
</div>
<div>
    <h3 class="rs alternate-tab accordion-label">사간 사람 (270)</h3>
    <div class="tab-pane accordion-content">
        <div class="tab-pane-inside">
            <div class="project-author pb20">
                <div class="media">
                    <a href="#" class="thumb-left">
                        <img src="/resources/images/ex/th-90x90-1.jpg" alt="$USER_NAME"/>
                    </a>
                    <div class="media-body">
                        <h4 class="rs pb10"><a href="#" class="be-fc-orange fw-b">John Doe</a></h4>
                        <p class="rs">Chicago, IL</p>
                        <p class="rs fc-gray">5 projects</p>
                    </div>
                </div>
            </div><!--end: .project-author -->
            <div class="project-author pb20">
                <div class="media">
                    <a href="#" class="thumb-left">
                        <img src="/resources/images/ex/th-90x90-1.jpg" alt="$USER_NAME"/>
                    </a>
                    <div class="media-body">
                        <h4 class="rs pb10"><a href="#" class="be-fc-orange fw-b">John Doe</a></h4>
                        <p class="rs">Chicago, IL</p>
                        <p class="rs fc-gray">5 projects</p>
                    </div>
                </div>
            </div><!--end: .project-author -->
        </div>
        <div class="project-btn-action">
            <a class="btn btn-red" href="#">Ask a question</a>
            <a class="btn btn-black" href="#">Report this project</a>
        </div>
    </div><!--end: .tab-pane(Backers) -->
</div>
<div>
    <h3 class="rs alternate-tab accordion-label">댓글 (2)</h3>
    <div class="tab-pane accordion-content">
        <div class="box-list-comment">
            <div class="media comment-item">
                <a href="#" class="thumb-left">
                    <img src="/resources/images/ex/th-90x90-1.jpg" alt="$TITLE">
                </a>
                <div class="media-body">
                    <h4 class="rs comment-author">
                        <a href="#" class="be-fc-orange fw-b">John Doe</a>
                        <span class="fc-gray">say:</span>
                    </h4>
                    <p class="rs comment-content"> Fusce tellus. Sed metus augue, convallis et, vehicula ut, pulvinar eu, ante. Integer orci tellus, tristique vitae, consequat nec, porta vel, lectus</p>
                    <p class="rs time-post">5 days ago</p>
                </div>
            </div><!--end: .comment-item -->
            <div class="media comment-item">
                <a href="#" class="thumb-left">
                    <img src="/resources/images/ex/th-90x90-2.jpg" alt="$TITLE">
                </a>
                <div class="media-body">
                    <h4 class="rs comment-author">
                        <a href="#" class="be-fc-orange fw-b">Eminem</a>
                        <span class="fc-gray">say:</span>
                    </h4>
                    <p class="rs comment-content">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In posuere felis nec tortor. Pellentesque faucibus. Ut accumsan ultricies elit.</p>
                    <p class="rs time-post">5 days ago</p>
                </div>
            </div><!--end: .comment-item -->
            <div class="media comment-item lv2">
                <a href="#" class="thumb-left">
                    <img src="/resources/images/ex/th-90x90-3.jpg" alt="$TITLE">
                </a>
                <div class="media-body">
                    <h4 class="rs comment-author">
                        <a href="#" class="be-fc-orange fw-b">Snoop Dogg</a>
                        <span class="fc-gray">say:</span>
                    </h4>
                    <p class="rs comment-content">Nam nec sem ac risus congue varius. Maecenas interdum ipsum tempor ipsum fringilla eu vehicula urna vehicula.</p>
                    <p class="rs time-post">5 days ago</p>
                </div>
            </div><!--end: .comment-item -->
            <div class="media comment-item lv2">
                <a href="#" class="thumb-left">
                    <img src="/resources/images/ex/th-90x90-4.jpg" alt="$TITLE">
                </a>
                <div class="media-body">
                    <h4 class="rs comment-author">
                        <a href="#" class="be-fc-orange fw-b">Obama</a>
                        <span class="fc-gray">say:</span>
                    </h4>
                    <p class="rs comment-content">Curabitur vel dolor ultrices ipsum dictum tristique. Praesent vitae lacus. Ut velit enim, vestibulum non, fermentum nec,</p>
                    <p class="rs time-post">5 days ago</p>
                </div>
            </div><!--end: .comment-item -->
            <div class="media comment-item lv3">
                <a href="#" class="thumb-left">
                    <img src="/resources/images/no-avatar.png" alt="$TITLE">
                </a>
                <div class="media-body">
                    <h4 class="rs comment-author">
                        <a href="#" class="be-fc-orange fw-b">Mark Lenon</a>
                        <span class="fc-gray">say:</span>
                    </h4>
                    <p class="rs comment-content">Nam nec sem ac risus congue varius. Maecenas interdum ipsum tempor ipsum fringilla eu vehicula urna vehicula.</p>
                    <p class="rs time-post">5 days ago</p>
                </div>
            </div><!--end: .comment-item -->
            <div class="media comment-item">
                <a href="#" class="thumb-left">
                    <img src="/resources/images/ex/th-90x90-1.jpg" alt="$TITLE">
                </a>
                <div class="media-body">
                    <h4 class="rs comment-author">
                        <a href="#" class="be-fc-orange fw-b">Dr. Dre</a>
                        <span class="fc-gray">say:</span>
                    </h4>
                    <p class="rs comment-content"> Morbi eget arcu. Morbi porta, libero id ullamcorper nonummy, nibh ligula pulvinar metus, eget consectetuer augue nisi quis lacus. Ut ac mi quis lacus mollis aliquam. Curabitur iaculis tempus eros. Curabitur vel mi sit amet magna malesuada ultrices</p>
                    <p class="rs time-post">5 days ago</p>
                </div>
            </div><!--end: .comment-item -->
        </div>
    </div><!--end: .tab-pane(Comments) -->
</div>
</div>
</div><!--end: .project-tab-detail -->
</div>
</div><!--end: .content -->

<div class="sidebar grid_4">
    <div class="project-runtime">
        <div class="box-gray">
            <div class="project-date clearfix">
                <i class="icon iCalendar"></i>
                <span class="val"><span class="fw-b">만든 날짜 : </span>작년 2월 20일</span>
            </div>
            <div class="project-date clearfix">
                <i class="icon iClock"></i>
                <span class="val"><span class="fw-b">Funding ends: </span>Apr 8, 2013</span>
            </div>
            <a class="btn btn-green btn-buck-project" href="#">
                <span class="lbl">재료 구입하기</span>
                <span class="desc">5% 적립</span>
            </a>
            <p class="rs description">This project will only be funded if at least $15,000 is pledged by Wednesday May 8, 2:05pm EDT.</p>
        </div>
    </div><!--end: .project-runtime -->
    <div class="project-author">
        <div class="box-gray">
            <h3 class="title-box">Project by</h3>
            <div class="media">
                <a href="#" class="thumb-left">
                    <img src="/resources/images/ex/th-90x90-1.jpg" alt="$USER_NAME"/>
                </a>
                <div class="media-body">
                    <h4 class="rs pb10"><a href="#" class="be-fc-orange fw-b">John Doe</a></h4>
                    <p class="rs">강남구, 서울시</p>
                    <p class="rs fc-gray">5 레시피</p>
                </div>
            </div>
            <div class="author-action">
                <a class="btn btn-red" href="#">질문하기</a>
                <a class="btn btn-white" href="#">프로필 보기</a>
            </div>
        </div>
    </div><!--end: .project-author -->
    <div class="clear clear-2col"></div>
    <div class="wrap-nav-pledge">
        <ul class="rs nav nav-pledge accordion">
            <li>
                <div class=" pledge-label accordion-label clearfix">
                    <i class="icon iPlugGray"></i>
                    <span class="pledge-amount">Pledge $17 or more</span>
                    <span class="count-val">(12 of 31)</span>
                </div>
                <div class=" pledge-content accordion-content">
                    <div class="pledge-detail">
                        <p class="rs pledge-description">Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>
                        <p class="rs fw-b pb20">Ocupated (2 of 10)</p>
                        <p class="rs"><span class="fw-b">Estimated delivery:</span> Aug 2013</p>
                        <p class="rs fw-thin fc-gray pb20">Ships within the US only</p>
                        <p class="rs ta-c"><a class="btn big btn-red" href="#">Buck this project</a></p>
                    </div>
                </div>
            </li><!--end: pledge-item -->
            <li>
                <div class="active pledge-label accordion-label clearfix">
                    <i class="icon iPlugGray"></i>
                    <span class="pledge-amount">Pledge $50 or more</span>
                    <span class="count-val">(7 of 13)</span>
                </div>
                <div class="active pledge-content accordion-content">
                    <div class="pledge-detail">
                        <p class="rs pledge-description">Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>
                        <p class="rs fw-b pb20">Ocupated (2 of 10)</p>
                        <p class="rs"><span class="fw-b">Estimated delivery:</span> Aug 2013</p>
                        <p class="rs fw-thin fc-gray pb20">Ships within the US only</p>
                        <p class="rs ta-c"><a class="btn big btn-red" href="#">Buck this project</a></p>
                    </div>
                </div>
            </li><!--end: pledge-item -->
            <li>
                <div class=" pledge-label accordion-label clearfix">
                    <i class="icon iPlugGray"></i>
                    <span class="pledge-amount">Pledge $110 or more</span>
                    <span class="count-val">(23 of 39)</span>
                </div>
                <div class=" pledge-content accordion-content">
                    <div class="pledge-detail">
                        <p class="rs pledge-description">Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>
                        <p class="rs fw-b pb20">Ocupated (2 of 10)</p>
                        <p class="rs"><span class="fw-b">Estimated delivery:</span> Aug 2013</p>
                        <p class="rs fw-thin fc-gray pb20">Ships within the US only</p>
                        <p class="rs ta-c"><a class="btn big btn-red" href="#">Buck this project</a></p>
                    </div>
                </div>
            </li><!--end: pledge-item -->
        </ul>
    </div><!--end: .wrap-nav-pledge -->
</div><!--end: .sidebar -->

<div class="clear"></div>

</div>
