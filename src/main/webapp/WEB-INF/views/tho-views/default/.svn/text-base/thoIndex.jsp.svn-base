<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>

<!-- 浏览器标签icon -->
<link rel="shortcut icon" href="${ctxStatic}/tho-resources/images/umbrella.ico" /> 
<!-- /浏览器标签icon -->

<!-- 浏览器标签标题 -->
<title>泰鸿首页</title>

</head>

<body>

<!-- Preloader -->
<div id="preloader">
<div class="loader"></div>
</div>
<!-- /Preloader -->

<!-- 头部布局 -->
<header id="home" class="header">

	<!-- 引入头部导航布局 -->
	<%@include file="/WEB-INF/views/tho-views/default/thoBaseHeader.jsp" %>

</header >
<!-- /头部布局 -->


<!-- 自动轮播图 -->
<div id="myCarousel" class="carousel slide " style="width:100%; margin:0px auto;">
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
		<li data-target="#myCarousel" data-slide-to="3"></li>
	</ol>
	<div class="carousel-inner ">
		<div class="item active item " style="height:500px;" >
			<img src="${ctxStatic}/tho-resources/images/tho1.jpg" style="height:500px;" alt="第一张">
		</div>
		<div class="item item "  style="height:500px;">
			<img src="${ctxStatic}/tho-resources/images/tho2.jpg" style="height:500px;" alt="第二张">
		</div>
		<div class="item item " style="height:500px;" >
			<img src="${ctxStatic}/tho-resources/images/tho3.jpg" style="height:500px;" alt="第三张">
		</div>
		<div class="item item "  style="height:500px;">
			<img src="${ctxStatic}/tho-resources/images/tho4.jpg" style="height:500px;" alt="第四张">
		</div>
	</div>
	<a href="#myCarousel" data-slide="prev" class="carousel-control left" style="margin:200px auto;font-size:62px;">&lsaquo;</a>
	<a href="#myCarousel" data-slide="next" class="carousel-control right" style="margin:200px auto;font-size:62px;">&rsaquo;</a>
</div>
<!-- /自动轮播图 -->

<footer class="footer section-small" style="margin-top:0px">  <!-- footer红色分割线 -->



<!-- Main -->
<main class="main-container">

<!-- Section: About -->
<section id="about" class="section" style="background:#FFFFFB">
	<div class="container">

		<div class="row">
		
			<!-- Feature Block 成功案例-->
			<div class="col-sm-4 feature fadeIn wow" data-wow-duration="1.3s">
			
				<c:forEach items="${fnc:getArticleList(site.id, 'b9e2920038854359b2820a25cc17dbe8', 1, '')}" var="article">
					<a href="${article.url}">
						<span class="icon_link_alt icon"></span> 
						<div class="h3 title"><span style="font-weight:bold;">${fnc:getCategory("b9e2920038854359b2820a25cc17dbe8").name}</span></div>
					</a>
				</c:forEach>
					
				<p class="description text-left">
					<c:forEach items="${fnc:getArticleList(site.id, 'b9e2920038854359b2820a25cc17dbe8', 1, '')}" var="article">
						<span style="color: #373c38;">${fns:abbr(article.description,126)}</span>
					</c:forEach>
				</p>
				
				<c:forEach items="${fnc:getArticleList(site.id, 'b9e2920038854359b2820a25cc17dbe8', 1, '')}" var="article">
					<a href="${article.url}" class="btn btn-theme">更  多>></a>
				</c:forEach>	
				
			</div>
			<!-- /Feature Block 成功案例-->

			<!-- Feature Block 服务项目-->
			<div class="col-sm-4 feature fadeIn wow" data-wow-duration="1.3s" data-wow-delay="0.4s">
			
				<c:forEach items="${fnc:getArticleList(site.id, '706abc6fa45748f8974c13a7f88c55f0', 1, '')}" var="article">
					<a href="${article.url}"><span class="icon_pens icon"></span> 
						<div class="h3 title"><span style="font-weight:bold;">${fnc:getCategory("82a9f815cbaf4264aaa193ef2bf590c9").name}</span></div>					
					</a>
				</c:forEach>	
				
				<p class="description text-left">
				    <c:forEach items="${fnc:getArticleList(site.id, '706abc6fa45748f8974c13a7f88c55f0', 1, '')}" var="article">
				    	<span style="color: #373c38;">${fns:abbr(article.description,126)}</span>
					</c:forEach>
				</p> 				
				
				<c:forEach items="${fnc:getArticleList(site.id, '706abc6fa45748f8974c13a7f88c55f0', 1, '')}" var="article">
					<a href="${article.url}" class="btn btn-theme">更  多>></a>
				</c:forEach>
				
			</div>
			<!-- /Feature Block 服务项目-->

			<!-- Feature Block 合作客户-->
			<div class="col-sm-4 feature fadeIn wow" data-wow-duration="1.3s" data-wow-delay="0.8s">
			
				<c:forEach items="${fnc:getArticleList(site.id, '7dd326d3cfa54f6f8710881e7c873507', 1, '')}" var="article">
					<a href="${article.url}">
						<span class="icon_mobile icon"></span> <!-- 合作客户 -->
						<div class="h3 title"><span style="font-weight:bold;">${fnc:getCategory("7dd326d3cfa54f6f8710881e7c873507").name}</span></div>
					</a>
				</c:forEach>
			
				<p class="description text-left">
					 <c:forEach items="${fnc:getArticleList(site.id, '7dd326d3cfa54f6f8710881e7c873507', 1, '')}" var="article">
					 	<span style="color: #373c38;">${fns:abbr(article.description,126)}<span style="color: #373c38;">
					 </c:forEach>  <!-- color: #ff5555; -->
				</p>
				
				<c:forEach items="${fnc:getArticleList(site.id, '7dd326d3cfa54f6f8710881e7c873507', 1, '')}" var="article">
					<a href="${article.url}" class="btn btn-theme">更  多>></a>
				</c:forEach>
				
			</div>
			<!-- /Feature Block 合作客户-->

		</div>
	</div>
</section>
<!-- /Section: About -->

<!-- Section: Projects -->
<section id="projects" class="section-small bg-light-gray">
	<div class="container">

		<!-- Section Header -->
		<div class="row">

			<div class="col-md-6">
				<header>
					<h2 class="section-title">
					
						<c:forEach items="${fnc:getArticleList(site.id, 'eaa6d22235dd4d1e9c4340c3456dbc5c', 1, '')}" var="article">
							<a href="${article.url}">
								<span style="color:#373c38" class="sidebar-menu">企业</span>文化
							</a>/
						</c:forEach>
						<c:forEach items="${fnc:getArticleList(site.id, 'd96b626128f448ef87aba47db8436f82', 1, '')}" var="article">
							<a href="${article.url}">
							<span style="color:#373c38">资质</span>荣誉</a>
						</c:forEach>
						
					</h2>
						
					<p class="section-subtitle" <span style="color: #373c38;">我们都是泰鸿人</p>
				</header>
			</div>

			<div class="col-md-6"></div>

		</div>
		<!-- /Section Header -->

		<!-- Section Content -->
		<div class="row mt">
		
		<!-- 循环取得'企业文化'category下 前3张缩略图 -->
		<c:forEach items="${fnc:getArticleList(site.id, 'eaa6d22235dd4d1e9c4340c3456dbc5c', 3, '')}" var="article">
	
			<div class="col-md-4 col-sm-6 fadeIn wow" data-wow-duration="1.3s" style="margin-bottom:30px">	
			
			<c:set value="${fn:split(article.imageSrc, '\\\\|')}" var="str" />
			<a href="${str[0]}" class="project-item image-popup">
				<div class="gallery-image">
					<img src="${str[0]}" alt="${article.title}" style="height:245px">
				</div>
			</a>
						
			<a href="${article.url}" target="_blank" class="project-item">
				<div class="info">  
					<div class="h4 title"><span style="color: #0B1032;">${fns:abbr(article.title,32)}</span></div>
					<p class="description"><span style="color: #373c38;"># ${fns:abbr(article.description,35)}</span></p>
					<div class="social"></div>
				</div>
			</a>
				
			</div>
		</c:forEach>
		<!-- /循环取得‘企业文化’category下 前3张缩略图 -->
						
		<!-- 循环取得‘资质荣誉’category下 前3张缩略图 -->
		<c:forEach items="${fnc:getArticleList(site.id, 'd96b626128f448ef87aba47db8436f82', 3, '')}" var="article">
		
			<!-- 切割字符串（3张图片的地址） -->
			<c:set value="${fn:split(article.imageSrc, '\\\\|')}" var="str1" />
			<!-- 循环取得切割出的3张图片的地址 -->
			<c:forEach items="${ str1 }" var="image">
							
				<div class="col-md-4 col-sm-6 fadeIn wow" data-wow-duration="1.3s" data-wow-delay="0.6s">										
					<a href="${image}" class="project-item image-popup">
						<div class="gallery-image">
							<img src="${image}" alt="${article.title}" style="height:245px">
						</div>
					</a>	
					<a href="${article.url}" target="_blank" class="project-item">
						<div class="info">
							<div class="h4 title"><span style="color: #0B1032;">${fns:abbr(article.title,32)}</span></div>
							<p class="description"><span style="color: #373c38;"># ${fns:abbr(article.description,35)}</span></p>
							<div class="social"></div>
						</div>
					</a>										
				</div>
			</c:forEach>
			<!-- /循环取得切割出的3张图片的地址 -->
		</c:forEach>
		<!-- /循环取得‘资质荣誉’category下 前3张缩略图 -->

		</div>
		<!-- /Section content -->

	</div>
</section>
<!-- /Section: Projects -->


</main>
<!-- /Main -->


<!-- 引入脚部布局 -->
<%@include file="/WEB-INF/views/tho-views/default/thoBaseFooter.jsp" %>
<!-- /引入脚部布局 -->


<!-- 自动轮播图 -->
<script type="text/javascript">

	$('#myCarousel').carousel({
		interval : 3000,
		pause : 'hover',
		wrap : true,
	});

</script>
<!-- /自动轮播图 -->

</body>
</html>
