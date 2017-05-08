<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>梅县区专项资金</title>
<style type="text/css">
	body{
		background:url("${ctxStatic}/mainframe/images/bg.jpg") center top no-repeat;
		margin:0 auto;
	}
	.loginbtn{width:95px;height:80px; background:url("${ctxStatic}/mainframe/images/login.jpg") repeat-x; font-size:14px; font-weight:bold; color:#fff;cursor:pointer; line-height:35px;}
</style>

<script language="javascript">
	$(document).ready(function() {
		$(window).resize(function(){  
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

<body style="overflow:hidden;">
    <form id="loginForm" class="form-signin" action="${ctx}/login" method="post">
    <table width="1000" border="0" cellspacing="0" cellpadding="0" align="center">
	  <tr>
	    <td height="250">&nbsp;</td>
	  </tr>
	  <tr>
	    <td height="150"><table width="400" border="0" cellspacing="0" cellpadding="0" align="center">
	  <tr>
	    <td width="300"><table width="100%" border="0" cellspacing="0" cellpadding="0">
	      <tr>
	        <td>账号：<input id="username" name="username" type="text" class="required" value="${username}" onclick="JavaScript:this.value=''"/></td>
	      </tr>
	      <tr>
	        <td height="10"></td>
	      </tr>
	      <tr>
	        <td>密码：<input id="password" name="password" type="password" class="required"  value="${password}" onclick="JavaScript:this.value=''"/></td>
	      </tr>
	     <!-- <td height="10"></td>
	      <tr>
	        <td><input name="rememberMe" type="checkbox" value="true" ${rememberMe} />记住密码</td>
	      </tr>-->
	    </table></td>
	    <td width="95"><input name="" type="submit" class="loginbtn" value=""/></td>
	  </tr>
	</table>
    </form>
</body>

</html>
