<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<style type="text/css">
    label.error {
        color: red;
        font-size: 14px;
        margin-left: -40px;
        width: 100%;
    }
</style>
<script>
function fncContChk(obj) {
    var ptn = /[^A-z|ㄱ-ㅎ가-힣|0-9|\ |\r\n]/g;

    if(obj.value.match(ptn)) {
        obj.value = obj.value.replace(ptn,'');
    }
}

var numOnlyInput = function (event) {
    if (!(event.keyCode == 8                                // backspace
            || event.keyCode == 9                               // tab
            || event.keyCode == 17                              // ctrl
            || event.keyCode == 46                              // delete
            || (event.keyCode >= 35 && event.keyCode <= 40)     // arrow keys/home/end
            || (event.keyCode >= 48 && event.keyCode <= 57)     // numbers on keyboard
            || (event.keyCode >= 96 && event.keyCode <= 105)    // number on keypad
            || (event.keyCode == 65 && prevKey == 17 && prevControl == event.currentTarget.id))          // ctrl + a, on same control
            ) {
        event.preventDefault();     // Prevent character input
    }
    else {
        prevKey = event.keyCode;
        prevControl = event.currentTarget.id;
    }
};

$(document).ready(function () {
    $("#unitPrice").keydown(numOnlyInput);

    $("#join").validate({
        rules: {
            name :  {
                required: true,
                minlength: 2
            },
            password : {
                required: true
            },
            checkPassword : { equalTo: "#password" },
            email: {
                required: true,
                email: true,
                minlength : 6
            }
        },
        messages: {
            name : {
                required: "이름은 필수 입력입니다.",
                minlength : jQuery.format("아이디는 {0}자 이상만 가능합니다.")
            },
            password : {required: "암호는 필수 입력입니다.</br>"},
            checkPassword : {
                equalTo : "암호를 확인해주세요."
            },
            email : {
                required: "이메일은 필수 입력입니다.</br>",
                email :  "올바른 이메일형식이 아닙니다.</br>",
                minlength : jQuery.format("아이디는 {6}자 이상만 가능합니다.")
            }
        }


    });
});
</script>
<!-- Content -->
<div class="bg_color">
    <div class="clear padding30"></div>
    <section class="container clearfix">

        <!-- Page Title -->
        <header class="container page_info clearfix">
            <h1>회원가입</h1>
        </header>
        <!-- /Page Title -->
        <div class="clear padding20"></div>
        <div class="container">
            <div class="border1_wrap clearfix">

                <div class="member_register_wrap">

                    <form:form action="/account/join" id="join"  method="post" modelAttribute="account" class="member_register_form">
                        <div class="row-fluid row-merge">
                                ${message}
                        </div>
                        <div>
                            <label for="name">이름</label>
                            <form:input class="inputText" onkeyup='fncContChk(this);' maxlength="40" path="name" type="text"   />
                            <form:errors path='name' />
                        </div>
                        <div class="clear"></div>
                        <div>
                            <label for="email">이메일</label>
                            <form:input class="inputText" path="email" type="text"  maxlength="40"   />
                            <form:errors path='email' />
                        </div>
                        <div class="clear"></div>
                        <div>
                            <label for="password">비밀번호</label>
                            <form:input class="inputText" path="password" type="password"  maxlength="20"  />
                        </div>
                        <div class="clear"></div>
                        <div>
                            <label for="checkPassword">비밀번호 확인</label>
                            <form:input class="inputText" path="checkPassword" type="password" maxlength="20"  />
                            <form:errors path="password" />
                        </div>
                        <div class="clear"></div>
                        <div class="clear padding20"></div>
                        <div class="member_btn ag_right">
                            가입하기을 클릭하시면 <a href="/company/policies_terms" target="_blank">이용약관</a>과 <a href="/company/policies_privacy" target="_blank">개인정보취급방침</a>에 동의하며
                            메일수신동의를 하신 것으로 간주됩니다.
                        </div>
                        <div class="clear padding20"></div>
                        <div class="member_btn ag_center">
                            <button type="submit" class="green-button">회원가입</button>
                        </div>
                    </form:form>
                </div>

                <div class="member_register_wrap_right">
                    <div class="banner_wrap">370px * 210px</div>
                    <div class="clear padding20"></div>
                    <div class="member_btn ag_center">
                        <a href="#" class="facebook-button">페이스북으로 회원가입</a>
                    </div>
                </div>


            </div>
            <div class="clear"></div>
        </div>

    </section>
    <div class="clear padding80"></div>
</div>
<!-- /Content -->