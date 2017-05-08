<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>用户登录 - 梅州市投资促进展示平台</title>
<%@include file="/WEB-INF/views/outer/common/mainStyle.jsp" %>
<script type="text/javascript">
	$(document).ready(function() { 
		$("#account").focus();
	});
	function login(){
		if($("#loginForm").valid()){
			ajaxFormSubmit($("#loginForm").get(0),function (data) {
				if("successed" == data.msg){
					location.href = "/outer/usercenter";
				}else{
					alert("用户名或密码错误！");
				}
			});
		}
	}
	
	function keyLogin(){
		  if (event.keyCode==13)   //回车键的键值为13
			  login();
		}
</script>
</head>

<body onkeydown="keyLogin();">

    <div class="out-head">
        <div class="out-main clear">
        	<a href="/outer" class="back right">返回首页</a>
            <a href="javascript:void(0);" class="out-logo left">&nbsp;</a>
        </div>
    </div>
    <div class="login-content clear">
	    <div class="login-pic"></div>
	    <div class="login-layout">
	        <div class="login-box">
	            <div class="login-innerbox">
	                <h3>登录</h3>
	                <form id="loginForm" modelAttribute="businessUser" action="${outUrl}/loginUser" method="post" class="form-horizontal">
	                <div class="login-form">
	                    <input name="account" id="account" type="text" class="input-txt required" placeholder="请输入您的账号">
	                    <input name="pwd" id="pwd" type="password" class="input-txt input-pwd required" placeholder="请输入您的密码">
	                    <!--<div class="login-operat clear">
	                        <label><input type="checkbox" name="checkbox" id="checkbox"><span>记住密码</span></label>
	                    </div>-->
	                    <a href="javascript:void(0);" class="login-btn" onclick="login();">登&nbsp;&nbsp;录</a>
	                    <span class="register-txt">没有账号请&nbsp;&nbsp;<a href="${outUrl}/register">注册！</a></span>
	                </div>
	                </form>
	            </div>
	        </div>
	    </div>
	</div>
    
    <div class="footer-txt">Copyright © 2015 梅州市投资促进展示平台. All rights reserved.</div>
    
</body>
</html>
