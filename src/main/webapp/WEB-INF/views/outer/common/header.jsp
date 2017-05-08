<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<div class="head-top">
<div class="main clear">
	<div class="right">
		<a href="${outUrl}/usercenter">个人中心</a><span>|</span><a href="javascript:void(1);">收藏本站</a>
	</div>
	<div class="left">
		<c:if test="${not empty businessuser}"> 
			${businessuser.account}您好，
		</c:if>
		欢迎来到梅州市投资促进展示平台
		<c:if test="${not empty businessuser}">
			&nbsp;&nbsp<a href="${outUrl}/loginOut" class="login-link">安全退出</a>
			</c:if>
		<c:if test="${empty businessuser}">
		，请&nbsp;&nbsp;
		<a href="${outUrl}/login" class="login-link">登录</a><span>|</span><a href="${outUrl}/register">注册账户</a>
		</c:if>
	</div>
</div>
</div>
<div class="header main clear">
<a href="${outUrl}/login" class="logo left"><img src="${ctxStatic}/outer/images/logo.png" alt="" /></a>
<div class="search-box right">
	<div class="clear">
		<!--<input type="text" class="input-txt left" placeholder="请输入关键字查询" /><a href="javascript:void(1);" class="search-btn left">&nbsp;</a>-->
	</div>
</div>
</div>
<div class="nav main clear">
<ul>
	<c:forEach items="${categoryList}" var="category" varStatus="status">
		<c:if test="${status.first==true}">
			<li class="left ${category.keywords}"><a href="${outUrl}" class="ico-index">${category.name}</a></li>
			<li class="left"><span class="middle-line">&nbsp;</span></li>
		</c:if>
		<c:if test="${status.first==false}">
			<li class="left ${category.keywords}"><a href="${category.href}/${category.id}">${category.name}</a></li>
			<li class="left"><span class="middle-line">&nbsp;</span></li>
		</c:if>
	</c:forEach>
</ul>
</div>