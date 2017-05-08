<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Page title -->
    <title>Tho-${category.name}</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>

<!-- Header -->
<header id="home" class="header">
    <!-- 引入头部布局 -->
    <%@include file="/WEB-INF/views/tho-views/default/thoBaseHeader.jsp" %>
</header>
<!-- /Header -->

<!-- 泰鸿brand  -->
<div>
	<a href="" class="brand">
		<!-- 泰鸿brand图片 -->
		<img width="100%" src="${ctxStatic}/tho-resources/images/tho_banner.jpg" alt="brand">						
		<!-- /泰鸿brand图片 -->
	</a>
</div>
<!-- /泰鸿brand -->

<!-- Section: Page Header -->
<section class="section-page-header">
    <div class="container">
        <div class="row">

            <!-- Page Title -->
            <div class="col-md-8">
                <h1 class="title"><a href="javascript:history.back(-1)"><<返回上一页</a></h1>
                <div class="subtitle">年轻的泰鸿人, 期待您的检验 </div>
            </div>
            <!-- /Page Title -->
            
            <!-- Breadcrumbs 面包屑 -->
            <div class="col-md-4">
                <ul class="breadcrumb">                   
                    <li><i class="fa fa-fw fa-home"></i> <a href="${ctx}">首页</a></li>
                    <li><a href="${category.url}">${category.name}</a></li>  
                </ul>
            </div>
           <!--/Breadcrumbs 面包屑 -->

        </div>
    </div>
</section>
<!-- /Section: Page Header -->

<!-- Main -->
<main class="main-container">
    <div class="container">

    			<!-- <div class="row" style="margin:0 10%; line-height:1.8;"> --> 
    	<!-- 设置文章宽度和行高 -->		
        <div class="row" style="margin:0px auto; width:82%; line-height:26px; overflow:hidden;">
       
            <!-- 文章详情 -->
            <div class="text-left">

                <h3 class="bounceIn wow text-center" data-wow-duration="1.8s">${article.title}</h3> <!-- 文章标题 -->  
				
				<c:if test="${not empty article.description}"><div>摘要：${article.description}</div></c:if> <!-- 文章摘要 -->  
                	
                <p>
                	 ${article.articleData.content}      <!-- 文章内容 -->           	 			
                </p>
                         	
            </div>
            <!-- 文章详情 -->
            
        </div>
        

        <!-- 发布者，点击数 -->
        <div style="border-top:1px solid #ddd;padding:10px;margin:25px 0;">发布者：${article.user.name} &nbsp;&nbsp;  点击数：${article.hits} &nbsp;&nbsp;  发布时间：<fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/> &nbsp;&nbsp;  更新时间：<fmt:formatDate value="${article.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></div>  
        <!-- 发布者，点击数 -->
      
    </div>
    
</main>
<!-- /Main -->

<!-- 引入脚部布局 -->
<%@include file="/WEB-INF/views/tho-views/default/thoBaseFooter.jsp" %>


</body>
</html>
