<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container_12 pop-content">
    <div class="grid_12 wrap-btn-close ta-r">
        <i class="icon"></i>
    </div>
    <div class="grid_6 prefix_1">
        <div class="form login-form">
            <form action="/account/authenticate">
                <h3 class="rs title-form">브루덕에 합류하기 (Register)</h3>
                <div class="box-white">
                    <h4 class="rs title-box">브루덕에 처음이신가요?</h4>
                    <p class="rs">다양한 서비스를 자유롭게 사용해보세요!</p>
                    <div class="form-action">
                        <label for="txt_name">
                            <input id="txt_name" class="txt fill-width" type="text" placeholder="성명"/>
                        </label>
                        <div class="wrap-2col clearfix">
                            <div class="col">
                                <label for="txt_email">
                                    <input id="txt_email" class="txt fill-width" type="email" placeholder="이메일 주소를 입력하세요."/>
                                </label>
                                <label for="txt_re_email">
                                    <input id="txt_re_email" class="txt fill-width" type="email" placeholder="이메일 주소를 다시 입력하세요."/>
                                </label>
                            </div>
                            <div class="col">
                                <label for="txt_password">
                                    <input id="txt_password" class="txt fill-width" type="password" placeholder="패스워드를 입력하세요."/>
                                </label>
                                <label for="txt_re_password">
                                    <input id="txt_re_password" class="txt fill-width" type="password" placeholder="패스워드를 다시 입력하세요."/>
                                </label>
                            </div>
                        </div>
                        <p class="rs pb10">가입하기을 클릭하시면 <a href="#" class="fc-orange">약관</a>에 동의하며 <a href="#" class="fc-orange">쿠키 사용</a>을
                            포함한 </br><a href="#" class="fc-orange">데이터 사용 정책</a>을 숙지하신 것으로 간주됩니다.</p>
                        <p class="rs ta-c">
                            <button class="btn btn-red btn-submit" type="submit">합류하기</button>
                        </p>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="grid_4">
        <div class="form login-form">
            <form action="#">
                <h3 class="rs title-form">입장 (Login)</h3>
                <div class="box-white">
                    <h4 class="rs title-box">이미 회원이신가요?</h4>
                    <p class="rs">로그인 해주세요!</p>
                    <div class="form-action">
                        <label for="txt_email_login">
                            <input id="txt_email_login" class="txt fill-width" type="email" placeholder="이메일 주소를 입력하세요."/>
                        </label>
                        <label for="txt_password_login">
                            <input id="txt_password_login" class="txt fill-width" type="password" placeholder="패스워드를 입력하세요."/>
                        </label>

                        <label for="chk_remember" class="rs pb20 clearfix">
                            <input id="chk_remember" type="checkbox" class="chk-remember"/>
                            <span class="lbl-remember">로그인 상태유지</span>
                        </label>
                        <p class="rs ta-c pb10">
                            <button class="btn btn-red btn-submit" type="submit">로그인</button>
                        </p>
                        <p class="rs ta-c">
                            <a href="#" class="fc-orange">비밀번호를 잃어버리셨나요?</a>
                        </p>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="clear"></div>
</div>
