<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>首页 - 梅州市投资促进展示平台</title> 
<%@include file="/WEB-INF/views/outer/common/mainStyle.jsp" %>
<script type="text/javascript">
	function modifysave(){
		if($("#registerForm").valid()){
    		ajaxFormSubmit($("#registerForm").get(0),function (data) {
				if("successed" == data.msg){
					alert("个人信息修改成功！");
				}else{
					alert("个人信息修改失败！");
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
							<li class="selected">
								<a href="${outUrl}/modifyInfo">个人设置</a>
							</li>
                            <li>
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
					<form id="registerForm" modelAttribute="businessUser" action="${outUrl}/saveUser" method="post" class="form-horizontal">
		            <input type="hidden" id="id" name="id" value="${businessuser.id}">
					<div class="register-form">
		                <div class="clear">
			            	<label class="left">手机号码：</label>
			            	<input id="phone" name="phone" class="input-txt left required mobile" value="${businessuser.phone}" style="height:26px"/>
			                <span class="left" id="phone-errorSpan">请输入您的手机号码</span>
		            	</div>
		            	<div class="error-txt" >&nbsp;</div>
		            	<div class="clear">
			            	<label class="left">邮箱：</label>
			                <input id="email" name="email" class="input-txt left required email" value="${businessuser.email}"/>
			                <span class="left" id="email-errorSpan">请输入您的手机号码邮箱</span>
			        	</div>
			        	<div class="error-txt">&nbsp;</div>
			        	<div class="clear">
			            	<label class="left">企业注册号：</label>
			                <input id="enterprisecode" name="enterprisecode" class="input-txt left required" value="${businessuser.enterprisecode}"/>
			                <span class="left" id="enterprisecode-errorSpan">请输入企业注册号</span>
			        	</div>
			        	<div class="error-txt">&nbsp;</div>
			        	<div class="clear">
			            	<label class="left">公司地址：</label>
			                <input id="address" name="address" class="input-txt left required" value="${businessuser.address}"/>
			                <span class="left" id="address-errorSpan">请输入公司地址</span>
		        		</div>
		        		<div class="error-txt">&nbsp;</div>
			        	<div class="clear">
			            	<label class="left">法人：</label>
			            	<input id="chargeperson" name="chargeperson" class="input-txt left required" value="${businessuser.chargeperson}"/>
			                <span class="left" id="chargeperson-errorSpan">请输入法定代表人姓名</span>
			        	</div>
			        	<div class="error-txt">&nbsp;</div>
		                <div class="register-btn">
		                	<a href="javascript:void(0);" onclick="modifysave();">保存</a>
		                </div>
		            </div>
		            </form>
				</div>
			</div>
		</div>
    
	</div>
	
	<%@include file="/WEB-INF/views/outer/common/footer.jsp" %>
</body>
</html>
