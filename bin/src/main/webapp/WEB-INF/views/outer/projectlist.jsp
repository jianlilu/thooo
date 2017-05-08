<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>项目进度 - 梅州市投资促进展示平台</title>
<%@include file="/WEB-INF/views/outer/common/mainStyle.jsp" %>
<script type="text/javascript"> 
	$(document).ready(function(){
		$('.input-txt').placeholder();
	});
	function SetWinHeight(obj) 
	{ 
		var win=obj; 
		if (document.getElementById) 
		{ 
		if (win && !window.opera) 
		{ 
		if (win.contentDocument && win.contentDocument.body.offsetHeight) 
		win.height = win.contentDocument.body.offsetHeight + 80; 
		else if(win.Document && win.Document.body.scrollHeight) 
		win.height = win.Document.body.scrollHeight + 80; 
		} 
		} 
	} 
	function query(){
		$('#listIframe').attr("src","/outer/projectlistIframe?queryStr=" + encodeURI(encodeURI($('#queryInput').val())));
	}
</script>
</head>

<body>
	<%@include file="/WEB-INF/views/outer/common/header.jsp" %>
	
	<div class="small-banner">
		<div class="main clear">
			<div class="left">
				<h1>${category.name}</h1>
				<div class="bread-crumbs">
					<a href="/outer">首页</a><code>></code><span>项目进度</span>
				</div>
			</div>
		</div>
	</div>

	<div class="sub main clear">
	
		<div class="sub-left left">
	    	<div class="box">
	            <h3 class="clear">
	                <div class="box-title left">项目进度</div>
	                <div class="box-stat left">&nbsp;</div>
	            </h3>
	        </div>
			
			<div class="filter-search clear">
				<div class="small-search right">
					<div class="clear">
						<input type="text" id="queryInput" class="input-txt left" placeholder="请输入关键字查询" />
						<a href="javascript:void(0);" class="search-btn left" onclick="query();">查询</a>
					</div>
				</div>
			</div>
		
			<iframe id="listIframe" src="${outUrl}/projectlistIframe" name="frameName" src='' onload="Javascript:SetWinHeight(this)" width="100%" frameborder="0" scrolling="no"></iframe>
		
		</div>
		<div class="sub-right left">
	    	<h3 class="clear">
	            <div class="box-title left">最新动态</div>
	        </h3>
			<div class="right-list">
				<ul>
					<c:forEach items="${newslist}" var="news">
						<li>
							<strong><a href="${outUrl}/view/news/${news.category.id}/${news.id}" title="${news.title}" target="_blank">${news.title}</a></strong>
						</li>
					</c:forEach>
				</ul>
			</div>
			<h3 class="clear">
	            <div class="box-title left">最新公告</div>
	        </h3>
			<div class="right-list">
				<ul>
					<c:forEach items="${noticelist}" var="notice">
						<li>
							<strong><a href="${outUrl}/view/news/${notice.category.id}/${notice.id}" title="${notice.title}" target="_blank">${notice.title}</a></strong>
						</li>
					</c:forEach>
				</ul>
			</div>
	        <h3 class="clear">
	            <div class="box-title left">最新政策</div>
	        </h3>
			<div class="right-list">
				<ul>
					<c:forEach items="${policylist}" var="policy">
						<li>
							<strong><a href="${outUrl}/view/news/${policy.category.id}/${policy.id}" title="${policy.title}" target="_blank">${policy.title}</a></strong>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	
	<%@include file="/WEB-INF/views/outer/common/footer.jsp" %>
</body>
</html>
