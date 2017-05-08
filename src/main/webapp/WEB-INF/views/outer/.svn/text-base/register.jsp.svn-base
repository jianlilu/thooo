<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>用户注册 - 梅州市投资促进展示平台</title>
<%@include file="/WEB-INF/views/outer/common/mainStyle.jsp" %>
<script type="text/javascript"> 
	var securityCode;
	
	$(document).ready(function() {
		refreshIamge();
		$("#account").focus();
		$("#registerForm").validate({
			rules: {
				account: {remote: "/outer/checkAccount"}
			},
			messages: {
				account: {remote: "用户登录名已存在"},
				confirmPwd: {equalTo: "两次密码输入不一致"}
			},
			errorPlacement: function(error, element) {
				var elementname=($(element).attr("id"));
				var placement = $("#"+elementname+"-errorSpan");
				placement.text('');
				error.appendTo(placement);
			}
		});
	});

	//换一张图片
	function refreshIamge(){
		$("#securityImage").attr("src","/outer/getSecurityImage?num=/"+Math.random());
	}
	
	function regist(){
		if($("#registerForm").valid()){
		    $.ajax({
	        	type: "post",
	            url: "/outer/validateSecurityCode?inputStr="+$("#securtyCode").val(),
	            dataType: "json",
	            success: function(data){
	            	if("successed"==data.msg){
	            		ajaxFormSubmit($("#registerForm").get(0),function (data) {
	        				if("successed" == data.msg){
	        					alert("注册成功！");
	        					location.href = "/outer/usercenter";
	        				}else{
	        					alert("注册失败！");
	        				}
	        			});
	            	}else{
						alert("验证码错误！");
						refreshIamge();
					}
	            }
	    	});  
		}
	}
</script>
</head>

<body class="register">

    <div class="out-head">
        <div class="out-main clear">
        	<a href="/outer" class="back right">返回首页</a>
            <a href="#" class="out-logo left">&nbsp;</a>
        </div>
    </div>
    <div class="step-box">
    	<div class="out-main clear">
        	<ul>
            	<li class="seleted left">
                	<div class="clear">
                    	<h3 class="left">1</h3>
                        <span class="left">注册</span>
                    </div>
                </li>
                <li class="left">
                	<div class="clear">
                    	<h3 class="left">2</h3>
                        <span class="left">完成注册</span>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="register-body">
    	<div class="register-box">
        	<div class="login-txt">已经有账号了？<a href="${outUrl}/login">请登录</a></div> 
        	<form id="registerForm" modelAttribute="businessUser" action="${outUrl}/saveUser" method="post" class="form-horizontal">
            <div class="register-form">
            	<div class="clear">
                	<label class="left">账号：</label>
                    <!--<input type="text" class="input-txt left" />-->
                    <input id="account" name="account" class="input-txt left required"/>
                    <span class="left" id="account-errorSpan">请输入您的登录账号</span>
                </div>
                <div class="error-txt">&nbsp;<!--出错信息放这里--></div>
                <div class="clear">
                	<label class="left">登录密码：</label>
                    <input type="password" id="pwd" name="pwd" class="input-txt left required" />
                    <span class="left" id="pwd-errorSpan">请输入登录密码</span>
                </div>
                <div class="error-txt" id="pwd-errorSpan">&nbsp;</div>
                <div class="clear">
                	<label class="left">确认密码：</label>
                	<input type="password" id="confirmPwd" class="input-txt left required" equalTo="#pwd"/>
                    <span class="left" id="confirmPwd-errorSpan">请再一次输入密码</span>
                </div>
                <div class="error-txt">&nbsp;</div>
                <div class="clear">
	            	<label class="left">手机号码：</label>
	            	<input id="phone" name="phone" class="input-txt left required mobile"/>
	                <span class="left" id="phone-errorSpan">请输入您的手机号码</span>
            	</div>
            	<div class="error-txt" >&nbsp;</div>
            	<div class="clear">
	            	<label class="left">邮箱：</label>
	                <input id="email" name="email" class="input-txt left required email"/>
	                <span class="left" id="email-errorSpan">请输入您的手机号码邮箱</span>
	        	</div>
	        	<div class="error-txt">&nbsp;</div>
	        	<div class="clear">
	            	<label class="left">企业注册号：</label>
	                <input id="enterprisecode" name="enterprisecode" class="input-txt left required"/>
	                <span class="left" id="enterprisecode-errorSpan">请输入企业注册号</span>
	        	</div>
	        	<div class="error-txt">&nbsp;</div>
	        	<div class="clear">
	            	<label class="left">公司地址：</label>
	                <input id="address" name="address" class="input-txt left required"/>
	                <span class="left" id="address-errorSpan">请输入公司地址</span>
        		</div>
        		<div class="error-txt">&nbsp;</div>
	        	<div class="clear">
	            	<label class="left">法人：</label>
	            	<input id="chargeperson" name="chargeperson" class="input-txt left required"/>
	                <span class="left" id="chargeperson-errorSpan">请输入法定代表人姓名</span>
	        	</div>
	        	<div class="error-txt">&nbsp;</div>
                <div class="clear">
                	<label class="left">验证码：</label>
                    <input type="text" id="securtyCode" name="securtyCode" class="input-txt input-txt-short left required" />
                    <a href="javascript:;" onclick="refreshIamge()" class="left code"><img id="securityImage" style="vertical-align:middle;"/></a>
                    <span class="left" id="securtyCode-errorSpan">请输入验证码</span>
                </div>
                <div class="error-txt">&nbsp;</div>
                <!--
                <div class="checkbox clear">
                	<input type="checkbox" class="input-checkbox" checked /><em>我同意梅州市投资促进展示平台<a href="#">《服务使用协议》</a></em>
                </div>
                -->
                <div class="register-btn">
                	<a href="javascript:void(0);" onclick="regist();">注册</a>
                </div>
            </div>
            </form>
        </div>
    </div>
    
    <div class="footer-txt">Copyright © 2015 梅州市投资促进展示平台. All rights reserved.</div>
    
</body>
</html>
