<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>

<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="decorator" content="cms_default_${site.theme}"/>
<meta name="description" content="${site.description}" />
<meta name="keywords" content="${site.keywords}" />

<!-- 浏览器标签icon -->
<link rel="shortcut icon" href="${ctxStatic}/tho-resources/images/umbrella.ico" /> 
<!-- /浏览器标签icon -->


<!-- Page title 浏览器标签标题 -->
<title>Tho-${category.name}</title>

</head>

<!-- 引入基本样式 -->
<%@include file="/WEB-INF/views/tho-views/default/thoBaseStyle.jsp" %>


<!-- Navigation -->
<nav id="navigation" class="navbar affix">

	<!-- information -->
	<div class="information hidden-sm hidden-xs">
	
		<!-- container -->
		<div class="container">
		
			<!-- row -->
			<div class="row">
				<div class="col-md-8" style="font-size: 13px;">			
					<a href="#"><span class="icon icon_phone"></span> +0753-2529999</a>
					<a href="#"><span class="icon icon_mail_alt"></span> gdthkjoffice@126.com</a>					
					<a href="#"><span class="icon icon_pin_alt"></span> 广东梅县新县城府前大道泰鸿科技大厦</a>
				</div>							
						
				<!-- col-md-4 -->
				<div class="col-md-4">
				
					<!-- 顶部百度分享 -->
					<div class="baidu-share">				
						<span><a style="font-size: 13px;">分享到：</a></span>
						<div class="bdsharebuttonbox">
							<a href="#" class="bds_qzone" style="margin-top:8px;" data-cmd="qzone" title="分享到QQ空间"></a>						
							<a href="#" class="bds_tsina" style="margin-top:8px;" data-cmd="tsina" title="分享到新浪微博"></a>
							<a href="#" class="bds_tqq" style="margin-top:8px;" data-cmd="tqq" title="分享到腾讯微博"></a>
							<a href="#" class="bds_renren" style="margin-top:8px;" data-cmd="renren" title="分享到人人网"></a>
							<a href="#" class="bds_weixin" style="margin-top:8px;" data-cmd="weixin" title="分享到微信"></a>
							<a href="#" class="bds_more" style="margin-top:8px;" data-cmd="more"></a>
						</div>
						<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
					</div>
					<!-- /顶部百度分享 -->
					
				</div>
				<!-- /col-md-4 -->
				
		   </div>	
		   <!-- /row -->
		   
		</div>	
		<!-- /container -->
		
	</div>
	<!-- /information -->
	
	<!-- container -->
	<div class="container">

		<!-- row -->
		<div class="row">
		
			<!-- col-md-12 -->
			<div class="col-md-12">

				<!-- Navigation Header -->
				<div class="navbar-header">

					<!-- 响应性布局，当屏幕变小时，折叠导航栏，出现Toggle Button -->
					<!-- Toggle Button -->
					<button type="button"
							class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#main-menu"
							aria-expanded="false"
							aria-controls="main-menu">

						<span class="sr-only">Toggle Navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>

					</button>
					<!-- /Toggle Button -->

					<!-- 左上角LOGO -->
					<div style="margin-left:100px">
						<a href="" class="brand">
							<!-- Logo图片 -->
							<img width="50px" height="45px" src="${ctxStatic}/tho-resources/images/thoLOGO.png" class="thoLOGO" alt="logo">						
							<!-- /Logo图片 -->
						</a>
					</div>
					<!-- /左上角LOGO -->

				</div>
				<!-- /Navigation Header -->

				<!-- Navigation -->
				<div id="main-menu" class="navbar-collapse collapse">
				
					<!-- nav -->
					<ul class="nav navbar-nav navbar-right">    
					
						<!-- 导航菜单-"首页"标签 -->
						<li class="${not empty isIndex && isIndex ? 'active' : ''}"><a href="${ctx}"><span  style="font-weight:bold;">首　 页</span></a></li>
							<!-- 循环读取数据库中的导航菜单 -->
							<c:forEach items="${fnc:getOneAndSecondNavList(site.id)}" var="category" varStatus="status">
								<!-- 最多显示菜单个数 -->
								<c:if test="${status.index lt 9}"> 
				                    <c:set var="menuCategoryId" value=",${category.id},"/>
				                    <!-- 如果：二级菜单为空（没有二级菜单） -->
				                    <c:if test="${empty category.childList}">
							    		<li>
							    			<a href="${category.url}" target="${category.target}"><span  style="font-weight:bold;">${category.name}</span></a>
							    		</li>							    		
						    		</c:if>
						    		 <!-- /如果：二级菜单为空（没有二级菜单） -->
						    		<!-- 如果：二级菜单不为空 （有二级菜单）-->
						    		<c:if test="${not empty category.childList}">
							    		<li class="dropdown">
											<a href="${category.url}" class="dropdown-toggle"><span  style="font-weight:bold;">${category.name}</span></a>
											<ul class="dropdown-menu">
												<c:forEach items="${category.childList}" var="subCategory">
													<li><a href="${subCategory.url}"><span  style="font-weight:bold;">${subCategory.name}</span></a></li>										
												</c:forEach>
											</ul>
										</li>																	
						    		</c:if>	
						    		<!-- /如果：二级菜单不为空 （有二级菜单）-->					    		
						    	</c:if>
						    	<!-- /最多显示菜单个数 -->
					    	</c:forEach>
					    	<!-- /循环读取数据库中的导航菜单 -->
				    </ul>
				    <!-- /nav -->
				    
				</div>
				<!-- /Navigation -->

				</div>
				<!-- /col-md-12 -->
				
			</div>
			<!-- /row -->

		</div>
		<!-- /container -->
		
	</nav>
	<!-- /Navigation -->
	
	</html>
