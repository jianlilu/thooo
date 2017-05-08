<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>首页 - 梅州市投资促进展示平台</title>
<%@include file="/WEB-INF/views/outer/common/mainStyle.jsp" %> 
<script type="text/javascript">
	$(document).ready(function() {
		$("#account").focus();
		$("#registerForm").validate({
			rules: {
				oldpwd: {remote: "/outer/validatePwd"}
			},
			messages: {
				oldpwd: {remote: "旧密码错误"},
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

	function modifysave(){
		if($("#registerForm").valid()){
    		ajaxFormSubmit($("#registerForm").get(0),function (data) {
				if("successed" == data.msg){
					alert("密码修改成功！");
				}else{
					alert("密码修改失败！");
				}
			});
		}
	}
</script>
</head>

<body>
	<%@include file="/WEB-INF/views/outer/common/header.jsp" %>

	<div class="user-center-banner"></div>
	<div class="main">
    
    	<div class="user-center">
			<div class="center-main clear">
				<div class="left-nav left">
					<div class="bank-pic">
						<img src="${ctxStatic}/outer/images/head.png" alt="" />
						<div class="head-mark">&nbsp;</div>
					</div>
					<div class="bank-name">${businessuser.account}</div>
					<div class="nav">
						<ul>
							<li>
								<a href="${outUrl}/usercenter">项目进度</a>
							</li>
							<li>
								<a href="${outUrl}/userpolicy">政策推送</a>
							</li>
							<li>
								<a href="${outUrl}/modifyInfo">个人设置</a>
							</li>
                            <li class="selected">
								<a href="${outUrl}/modifyPwd">修改密码</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="right-content left" style="">
					<div class="bank-top clear">
						<div class="bank-info left">
							<div class="bank-info-main">
								<div class="bank-title">
                                	<div class="clear">
                                        <a href="${outUrl}/modifyInfo" class="right">修改个人设置</a>
                                        <a href="${outUrl}/modifyPwd" class="right">修改密码</a>
                                        <h1 class="left"><em>${businessuser.account}</em>，欢迎您！</h1>
                                    </div>
                                    <span>(&nbsp;账号：${businessuser.account} &nbsp;)</span>
								</div>
								<div class="meg-box clear">
									<a href="${outUrl}/list/news/${noticeCategoryId}" class="right" target="_blank">更多公告</a>
									<c:forEach items="${noticelist}" var="notice" varStatus="status">
										<c:if test="${status.first==true}">
											<a href="${outUrl}/view/news/${notice.category.id}/${notice.id}" class="left overflow" target="_blank">
											${notice.title}</a>
									</c:if>
									</c:forEach>
								</div>
							</div>
						</div>
						<div class="policy left">
	                    	<h3>政策推送</h3>
	                        <ul>
	                        	<c:forEach items="${policylist}" var="policy">
	                        	<li><a href="${outUrl}/view/news/${policy.category.id}/${policy.id}" title="${policy.title}" class="overflow" target="_blank">${policy.title}</a></li>
	                        	</c:forEach>
	                        </ul>
                    	</div>
					</div>
					<form id="registerForm" modelAttribute="businessUser" action="${outUrl}/savemodifypwd" method="post" class="form-horizontal">
		            <div class="register-form">
		            	<div class="clear">
		                	<label class="left">旧密码：</label>
		                    <input type="password" id="oldpwd" name="oldpwd" class="input-txt left required"/>
		                    <span class="left" id="oldpwd-errorSpan">请输入您的旧密码</span>
		                </div>
		                <div class="error-txt">&nbsp;</div>
		                <div class="clear">
		                	<label class="left">新密码：</label>
		                    <input type="password" id="pwd" name="pwd" class="input-txt left required" />
		                    <span class="left" id="pwd-errorSpan">请输入新密码</span>
		                </div>
		                <div class="error-txt">&nbsp;</div>
		                <div class="clear">
	                		<label class="left">确认新密码：</label>
		                    <input type="password" id="comfirmnewpwd" name="comfirmnewpwd" class="input-txt left required" equalTo="#pwd"/>
		                    <span class="left" id="comfirmnewpwd-errorSpan">请再次输入新密码</span>
	                	</div>
	                	<div class="error-txt">&nbsp;</div>
		                <div class="register-btn">
	                		<a href="javascript:void(0);" onclick="modifysave();">保存</a>
	                	</div>
	                	<div class="error-txt">&nbsp;</div>
	                	<div class="error-txt">&nbsp;</div>
	                	<div class="error-txt">&nbsp;</div>
	                	<div class="error-txt">&nbsp;</div>
	                	<div class="error-txt">&nbsp;</div>
		           	</div>
		           	</form>
				</div>
			</div>
		</div>
    
	</div>
	
	<%@include file="/WEB-INF/views/outer/common/footer.jsp" %>
</body>
</html>
