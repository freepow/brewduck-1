<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container_12 pop-content">
    <div class="grid_12 wrap-btn-close ta-r">
        <i class="icon"></i>
    </div>
    <div class="grid_5 prefix_4">
        <div class="form login-form">
            <form id="authenticate" method="POST" action="/account/authenticate">
                <h3 class="rs title-form">입장 (Login)</h3>
                <div class="box-white">
                    <h4 class="rs title-box">이미 회원이신가요?</h4>
                <c:if test="${login_error eq 'false'}">
                    <h4 class="rs title-box fc-orange">${error_message}</h4>
                </c:if>
                    <p class="rs">로그인 해주세요!</p>
                    <div class="form-action">
                        <label for="email">
                            <input id="email" name="j_username" type="email" class="txt fill-width" placeholder="이메일 주소를 입력하세요." />
                        </label>
                        <label for="password">
                            <input id="password" name="j_password" type="password" class="txt fill-width" placeholder="패스워드를 입력하세요." />
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
