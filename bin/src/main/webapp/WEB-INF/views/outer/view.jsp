<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>${category.name} - 梅州市投资促进展示平台</title>
<%@include file="/WEB-INF/views/outer/common/mainStyle.jsp" %>
<script type="text/javascript"> 
	var menuFlag = "${menuFlag}";
	$(document).ready(function(){
		$('.input-txt').placeholder();
		$('.'+menuFlag).addClass("selected");
	});
</script>
</head>

<body>
	<%@include file="/WEB-INF/views/outer/common/header.jsp" %>
	
	<div class="small-banner">
		<div class="main clear">
			<div class="left">
				<h1>${category.name}</h1>
				<div class="bread-crumbs">
					<a href="/outer">首页</a><code>></code><a href="javascript:history.go(-1);">${category.name}</a><code>></code><span>${fns:abbr(article.title,60)}...</span>
				</div>
			</div>
		</div>
	</div>

	<div class="sub main clear">
	
		<div class="sub-left left">
	    	
	        <h1>${article.title}</h1>
	        <div class="view-info">
	        	摘要：<span>${article.description}</span>发布日期：<span><fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd"/></span>
	        </div>
	        <div class="view-main">
	       		${article.articleData.content}
	        </div>
	        
	        <!--<div class="next-news">
				下一篇：<a href="#">国务院关于大力推进大众创业万众创新若干政策措施的意见</a>
			</div>-->
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
