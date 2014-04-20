<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<div class="row login-container animated fadeInUp">
    <div class="col-md-7 col-md-offset-2 tiles white no-padding">
        <div class="p-t-30 p-l-40 p-b-20 xs-p-t-10 xs-p-l-10 xs-p-b-10">
            <h2 class="normal">브루덕 합류하기</h2>
            <p>페이스북, 다음, 네이버 회원이신가요?<br></p>
            <p class="p-b-20">별도의 입력없이 회원이 될 수 있습니다.</p>
            <c:if test="${loginError eq 'false'}">
                <h4 class="rs title-box fc-orange">${errorMessage}</h4>
            </c:if>
            <button type="button" class="btn btn-primary btn-cons" id="login_toggle">로그인</button> 아니면&nbsp;&nbsp;<button type="button" class="btn btn-info btn-cons" id="register_toggle">
            계정 생성</button>
        </div>
        <div class="tiles grey p-t-20 p-b-20 text-black">
            <form:form id="authentication" class="animated fadeIn" method="POST" action="/account/authentication" modelAttribute="account">
                <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="col-md-4 col-sm-4 ">
                        <input id="email" name="email" type="email" class="txt fill-width" placeholder="이메일 주소를 입력하세요." maxlength="40" />
                        <form:errors path="email" />
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <input id="password" name="password" type="password" class="txt fill-width" placeholder="패스워드를 입력하세요." maxlength="100" />
                        <form:errors path="password" />
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <button class="btn btn-primary btn-cons" type="submit">로그인</button>
                    </div>

                </div>
                <div class="row p-t-10 m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="control-group  col-md-10">
                        <div class="checkbox checkbox check-success">
                            <input type="checkbox" id="checkbox1" value="1">
                            <label for="checkbox1">로그인 상태 유지 </label>
                        </div>
                    </div>
                </div>
                <div class="row p-t-10 m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="control-group  col-md-10">
                        <div class="checkbox checkbox check-success"> <a href="#">로그인에 문제가 생기셨나요?</a>&nbsp;&nbsp;
                        </div>
                    </div>
                </div>
            </form:form>

            <form:form id="join" method="POST" action="/account/join" class="animated fadeIn" modelAttribute="account" style="display:none">
                <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="col-md-12">
                        <c:if test="${message != null}">
                            <h4 class="rs title-box fc-orange">${message}</h4>
                        </c:if>
                    </div>
                </div>
                <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="col-md-12">
                        <input id="name" name="name" class="txt fill-width" type="text" placeholder="성명을 입력하세요." maxlength="40" />
                        <form:errors path="name" />
                    </div>
                </div>
                <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="col-md-6 col-sm-6">
                        <input id="email" name="email" class="txt fill-width" type="email" placeholder="이메일 주소를 입력하세요." maxlength="100" />
                        <form:errors path="email" />
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <input id="reEmail" name="reEmail" class="txt fill-width" type="email" placeholder="이메일 주소를 다시 입력하세요." maxlength="100" />
                    </div>
                </div>
                <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="col-md-6 col-sm-6">
                        <input id="password" name="password" class="txt fill-width" type="password" placeholder="패스워드를 입력하세요." maxlength="20" />
                        <form:errors path="password" />
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <input id="rePassword" name="rePassword" class="txt fill-width" type="password" placeholder="패스워드를 다시 입력하세요." maxlength="20" />
                    </div>
                    <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                        <p >가입하기을 클릭하시면 <a href="#" class="fc-orange">약관</a>에 동의하며 <a href="#" class="fc-orange">쿠키 사용</a>을
                            포함한 </br><a href="#" class="fc-orange">데이터 사용 정책</a>을 숙지하신 것으로 간주됩니다.</p>
                        <p>
                            <button class="btn btn-red btn-submit" type="submit">합류하기</button>
                        </p>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>

<content tag="local_script">
    <script>
$(document).ready(function() {
    $("#email").focus();              //이름칸으로 포커스
});
</script>
</content>