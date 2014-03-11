<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<!-- 자바스크립트, css 파일들 -->
<%@ include file="/WEB-INF/views/common/include/default_header.jsp"%>

<body>
<div id="wrapper">

    <!-- 상단 메뉴 -->
    <%@ include file="/WEB-INF/views/common/include/default_top_menu.jsp"%>

    <div class="layout-2cols">
        <div class="content grid_8">
            <div class="single-page">
                <div class="wrapper-box box-post-comment">
                    <h2 class="common-title">Contact Us</h2>
                    <div class="box-white">
                        <form id="contact-form" class="clearfix" action="processForm.php" method="post">
                             <p class="rs pb30">Pellentesque laoreet sapien id lacus luctus non fringilla elit lobortis. Fusce augue diam, tempor posuere pharetra sed, feugiat non sapien.</p>
                            <div class="form form-post-comment">
                                <div class="left-input">
                                    <label for="txt_name_contact">
                                        <input id="txt_name_contact" type="text" name="name" class="txt fill-width txt-name" placeholder="Enter Your Name"/>
                                    </label>
                                    <label for="txt_email_contact">
                                        <input id="txt_email_contact" type="email" name="email" class="txt fill-width txt-email" placeholder="Enter Your Email" value="info@megadrupal.com"/>
                                    </label>
                                </div>
                                <div class="right-input">
                                    <label for="txt_content_contact">
                                        <textarea name="message" id="txt_content_contact" cols="30" rows="10" class="txt fill-width" placeholder="Your message"></textarea>
                                    </label>
                                </div>
                                <div class="clear"></div>
                                <p class="rs ta-r clearfix">
                                    <span id="response"></span>

                                   <input type="submit" class="btn btn-white btn-submit-comment" value="Send">
                               </p>
                            </div>
                        </form>
                    </div>
                </div>
                <!--end: .box-list-comment -->
            </div>
        </div>
        <!--end: .content -->
        <div class="sidebar grid_4">
            <div class="box-gray">
                <h3 class="title-box">Contact info</h3>
                <p class="rs description pb20">Pellentesque laoreet sapien id lacus luctus non fringilla elit lobortis. Fusce augue diam, tempor posuere pharetra sed, feugiat non sapien.</p>
                <p class="rs pb20">
                    <span class="fw-b">Address</span>: 111 lorem St. 5th Floor,
                    Ipsum City, MA 00001
                </p>
                <p class="rs pb20">
                    <span class="fw-b">Phone</span>: +1 (555) 55-55-555
                    (9AM - 6PM EST)
                </p>
                <p class="rs pb20">
                    <span class="fw-b">Email</span>: <a href="mailto:info@megadrupal.com" class="be-fc-orange">info@megadrupal.com</a>
                </p>
            </div>
        </div>
        <!--end: .sidebar -->
        <div class="clear"></div>
    </div>

    <footer id="footer">
        <div class="container_12 main-footer">
            <div class="grid_3 about-us">
                <h3 class="rs title">About</h3>
                <p class="rs description">Donec rutrum elit ac arcu bibendum rhoncus in vitae turpis. Quisque fermentum gravida eros non faucibus. Curabitur fermentum, arcu sed cursus commodo.</p>
                <p class="rs email"><a class="fc-default  be-fc-orange" href="mailto:info@megadrupal.com">info@megadrupal.com</a></p>
                <p class="rs">+1 (555) 555 - 55 - 55</p>
            </div><!--end: .contact-info -->
            <div class="grid_3 recent-tweets">
                <h3 class="rs title">Recent Tweets</h3>
                <div class="lst-tweets" id="sys_lst_tweets">

                </div>
            </div><!--end: .recent-tweets -->
            <div class="clear clear-2col"></div>
            <div class="grid_3 email-newsletter">
                <h3 class="rs title">Newsletter Signup</h3>
                <div class="inner">
                    <p class="rs description">Nam aliquet, velit quis consequat interdum, odio dolor elementum.</p>
                    <form action="#">
                        <div class="form form-email">
                            <label class="lbl" for="txt-email">
                                <input id="txt-email" type="text" class="txt fill-width" placeholder="Enter your e-mail address"/>
                            </label>
                            <button class="btn btn-green" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div><!--end: .email-newsletter -->
            <div class="grid_3">
                <h3 class="rs title">Discover &amp; Create</h3>
                <div class="footer-menu">
                    <ul class="rs">
                        <li><a class="be-fc-orange" href="#">What is Kickstars</a></li>
                        <li><a class="be-fc-orange" href="#">Start a project</a></li>
                        <li><a class="be-fc-orange" href="#">Project Guidlines</a></li>
                        <li><a class="be-fc-orange" href="#">Press</a></li>
                        <li><a class="be-fc-orange" href="#">Stats</a></li>
                    </ul>
                    <ul class="rs">
                        <li><a class="be-fc-orange" href="#">Staff Picks</a></li>
                        <li><a class="be-fc-orange" href="#">Popular</a></li>
                        <li><a class="be-fc-orange" href="#">Recent</a></li>
                        <li><a class="be-fc-orange" href="#">Small Projects</a></li>
                        <li><a class="be-fc-orange" href="#">Most Funded</a></li>
                    </ul>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="copyright">
            <div class="container_12">
                <div class="grid_12">
                    <a class="logo-footer" href="index.html"><img src="/resources/images/logo-2.png" alt="$SITE_NAME"/></a>
                    <p class="rs term-privacy">
                        <a class="fw-b be-fc-orange" href="single.html">Terms & Conditions</a>
                        <span class="sep">/</span>
                        <a class="fw-b be-fc-orange" href="single.html">Privacy Policy</a>
                        <span class="sep">/</span>
                        <a class="fw-b be-fc-orange" href="#">FAQ</a>
                    </p>
                    <p class="rs ta-c fc-gray-dark site-copyright">HTML by <a href="http://megadrupal.com" title="Drupal Developers" target="_blank">MegaDrupal</a>. Designed by <a href="http://bestwebsoft.com/" title="Web development company" target="_blank">BestWebSoft</a>.</p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </footer>
    <!--end: #footer -->
</div>

</body>
</html>
