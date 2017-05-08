<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<!-- Header -->
<header id="home" class="header">

	<!-- 引入头部导航布局(菜单) -->
	<%@include file="/WEB-INF/views/tho-views/default/thoBaseHeader.jsp" %>

</header>
<!-- /Header -->

<!-- /Section: Page Header -->

<!-- 泰鸿brand  -->
<div style="">
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

            <!-- Breadcrumbs -->
            <div class="col-md-4">
                <ul class="breadcrumb">
                    <li><i class="fa fa-fw fa-home"></i> <a href="${ctx}">首页</a></li>
                    <li><a href="${category.url}">${category.name}</a></li>                  
                </ul>
            </div>
            <!-- /Breadcrumbs -->

        </div>
    </div>
</section>


<!-- Main -->
<main class="main-container">
    <div class="container">
        <div class="row">

            <!-- Blog Sidebar -->
            <div class="col-md-3">

                <!-- Widget: Categories -->
                <div class="widget">

                    <h4 class="title">栏目列表</h4>    <!-- 左侧栏目列表显示 -->
                    <ol class="sidebar-menu">
        		 		<cms:frontCategoryList categoryList="${categoryList}"/>
        		 	</ol>

                </div>
                <!-- /Widget: Categories -->

            </div>
            <!-- /Blog Sidebar -->
     

            <!-- Blog Content 文章内容 -->
            <div class="col-md-9">

                <!-- Posts List -->
                <div class="posts-list">   
                
                    <!-- 循环取得文章标题、更新日期和文章摘要 -->
	    			<c:forEach items="${page.list}" var="article">
	    				<article class="blog-post">

		    				<h2 class="title bounceInRight wow" data-wow-duration="2.0s" data-stellar-ratio="0.8">
			    				<a href="${article.url}" style="color:${article.color}"> 
			    					${fns:abbr(article.title,96)}		<!-- 文章标题（若字数超过96用...表示） -->
			    				</a>			   				
			    			</h2>
			    			
			    			<ul class="list-inline meta">  <!-- 文章更新日期  -->
	                            <li><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></li>
	                        </ul>
	                        
	                        <div class="content">
	                            <p>
	                            	${fns:abbr(article.description,96)} <!-- 文章摘要（若字数超过96用...表示） -->
	                            </p>
                            </div>
                            
                        </article>
	    			</c:forEach>
	    			 <!-- /循环取得文章标题、更新日期和文章摘要 -->
	    			
	    			<!--页数/分页--> 
	    			<div class="pagination">${page}</div>  
	    			<script type="text/javascript">
	    				function page(n,s){
	    					location="${ctx}/list-${category.id}${urlSuffix}?pageNo="+n+"&pageSize="+s;
	    				}
	    			</script>
			    			
               
                    
							            <!--    <ul class="pagination">  ${page} </ul> 
							                    
							                    <p>pageSize 每页显示条数 : ${page.pageSize}；；</p>
							                    <span>count 总条数 : ${page.count}；；</span>
							                    <span>首页：${page.first}；；</span>
							                    <span>尾页：${page.last}；；</span>
							                    <span>上页：${page.prev}；；</span>
							                    <span>下页：${page.next}；；</span>                  
							                    <span>pageNo 当前页码：${page.pageNo}；；</span>
							                    <span>totalPage 总页码：${page.totalPage}；；</span>
							                    <span>page.funcName：${page.funcName}；；</span>
							                    <span>page.firstResult：${page.firstResult}；；</span>
							                    <span>page.maxResults：${page.maxResults}</span>
							            -->   
                  
                </div>
                <!-- /Posts List -->
                
               
						                <!--页数/分页-->
						                <!-- Pagination -->   
						          <!--     
						          		<ul class="pagination">
						                    <li><span>Page 1 of 5</span></li>
						                    <li><a href="#">&laquo;</a></li>
						                    <li><a href="#">上一页 </a></li>
						                    <li class="active"><a href="#">1</a></li>
						                    <li><a href="#">2</a></li>
						                    <li><a href="#">3</a></li>
						                    <li><a href="#">4</a></li>
						                    <li><a href="#">5</a></li>
						                    <li><a href="#">下一页</a></li>
						                    <li><a href="#">&raquo;</a></li>
						                </ul>   
						            -->
						                <!-- /Pagination -->

            </div>
            <!-- /Blog Content -->

        </div>
    </div>
</main>
<!-- /Main -->

<!-- 引入脚部导航布局 -->
<%@include file="/WEB-INF/views/tho-views/default/thoBaseFooter.jsp" %>
<!-- /引入脚部导航布局 -->


</body>
</html>
