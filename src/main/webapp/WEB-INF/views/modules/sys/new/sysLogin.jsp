<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title> 
<link href="${ctxStatic}/mainframe/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${ctxStatic}/mainframe/js/jquery.js"></script>
<script language="JavaScript" src="${ctxStatic}/mainframe/js/cloud.js"></script>

<style type="text/css">
	.header{height:80px;padding-top:255px;padding-left:200px;} .alert{position:relative;width:300px;margin:0 auto;*padding-bottom:0px;}
	label.error{background:none;width:270px;font-weight:normal;color:red;margin:0;font-size:14px;}
</style>

<script language="javascript">
	$(document).ready(function() {
		$('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
		$(window).resize(function(){  
	    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
		$("#loginForm").validate({
			submitHandler: function(form){
				loading('正在提交，请稍等...');
				form.submit();
			},
			messages: {
				username: {required: "请填写用户名."},password: {required: "请填写密码."},
				validateCode: {remote: "验证码不正确.", required: "请填写验证码."}
			},
			errorLabelContainer: "#messageBox",
			errorPlacement: function(error, element) {
				
				//error.appendTo($("#loginError").parent());
			} 
		});
	});
	// 如果在框架或在对话框中，则弹出提示并跳转到首页
	if(self.frameElement && self.frameElement.tagName == "IFRAME" || $('#left').length > 0 || $('.jbox').length > 0){
		//alert('未登录或登录超时。请重新登录，谢谢！');
		top.location = "${ctx}";
	}
});  
</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(${ctxStatic}/mainframe/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
	<div class="header">
		<div id="messageBox" class="alert alert-error ${empty message ? 'hide' : ''}">
			<!--<button data-dismiss="alert" class="close">×</button>-->
			<label id="loginError" class="error">${message}</label>
		</div>
	</div>

    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录广东泰鸿科技股份有限公司-项目管理系统</span>    
    <ul>
    <!--<li><a href="#">回首页</a></li>-->
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox">
    
    <ul>
    <form id="loginForm" class="form-signin" action="${ctx}/login" method="post">
    <li><input id="username" name="username" type="text" class="loginuser required" value="${username}" onclick="JavaScript:this.value=''"/></li>
    <li><input id="password" name="password" type="password" class="loginpwd required"  value="${password}" onclick="JavaScript:this.value=''"/></li>
    <li><input name="" type="submit" class="loginbtn" value="登录"/><label><input name="rememberMe" type="checkbox" value="true" ${rememberMe} />记住密码</label><label><a href="#">忘记密码？</a></label></li>
    </form>
    </ul>
    
    
    </div>
    
    </div>
    
    
</body>

</html>
