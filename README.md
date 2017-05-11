
# thoPM

### 1、公司网站

#### 代码片段：
返回上一页：
 ` <h1 class="title"><a href="javascript:history.back(-1)"><<返回上一页</a></h1> `


引入头部布局：
	
    <%@include file="/WEB-INF/views/tho-views/default/thoBaseHeader.jsp" %>

网站面包屑（breadcrumb）：

 			
			<ul class="breadcrumb">                   
                    <li><i class="fa fa-fw fa-home"></i> <a href="${ctx}">首页</a></li>
                    <li><a href="${category.url}">${category.name}</a></li>  
            </ul>

引入脚部布局：

	<%@include file="/WEB-INF/views/tho-views/default/thoBaseFooter.jsp" %>

引入全局通用样式：
     
    <%@include file="/WEB-INF/views/tho-views/default/thoBaseStyle.jsp" %>


cnzz站点统计：

	<p class="copyright" style="color: #373c38;">	
				
		<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260962439'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1260962439%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
		</script>
		<span  style="padding-left:2px">Copyright &copy; 2015-2016 <strong> gdTho</strong></span>
	</p>

浏览器标签icon设置：

	<link rel="shortcut icon" href="${ctxStatic}/tho-resources/images/umbrella.ico" />
    <link rel="shortcut icon" href="${ctxStatic}/tho-resources/images/favicon.png"> 


顶部百度分享： 

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


响应式布局，当屏幕变小时，折叠导航栏，出现Toggle Button（适配手机）：


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


导航栏二级菜单动态加载：

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



循环取得文章标题、更新日期和文章摘要：
	
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
	 

页数/分页：

	<div class="pagination">${page}</div>  
	<script type="text/javascript">
		function page(n,s){
			location="${ctx}/list-${category.id}${urlSuffix}?pageNo="+n+"&pageSize="+s;
		}
	</script>


自动轮播图：

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


	<script type="text/javascript">

		$('#myCarousel').carousel({
			interval : 3000,//每隔3秒切换
			pause : 'hover',
			wrap : true,
		});

	</script>



循环取得category下 前3张缩略图：

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





## 2、后台管理系统

### 内置功能 （使用JeeSite开源框架）

1.	用户管理：用户是系统操作者，该功能主要完成系统用户配置。
2.	机构管理：配置系统组织机构（公司、部门、小组），树结构展现，可随意调整上下级。
3.	区域管理：系统城市区域模型，如：国家、省市、地市、区县的维护。
4.	菜单管理：配置系统菜单，操作权限，按钮权限标识等。
5.	角色管理：角色菜单权限分配、设置角色按机构进行数据范围权限划分。
6.	字典管理：对系统中经常使用的一些较为固定的数据进行维护，如：是否、男女、类别、级别等。
7.	操作日志：系统正常操作日志记录和查询；系统异常信息日志记录和查询。
8.	连接池监视：监视当期系统数据库连接池状态，可进行分析SQL找出系统性能瓶颈。
9.	工作流引擎：实现业务工单流转、在线流程设计器。



### 技术选型

1、后端

* 核心框架：Spring Framework 4.0
* 安全框架：Apache Shiro 1.2
* 视图框架：Spring MVC 4.0
* 服务端验证：Hibernate Validator 5.1
* 布局框架：SiteMesh 2.4
* 工作流引擎：Activiti 5.15、FoxBPM 6
* 任务调度：Spring Task 4.0
* 持久层框架：MyBatis 3.2
* 数据库连接池：Alibaba Druid 1.0
* 缓存框架：Ehcache 2.6、Redis
* 日志管理：SLF4J 1.7、Log4j
* 工具类：Apache Commons、Jackson 2.2、Xstream 1.4、Dozer 5.3、POI 3.9

2、前端

* JS框架：jQuery 1.9。
* CSS框架：Twitter Bootstrap 2.3.1。
* 客户端验证：JQuery Validation Plugin 1.11。
* 富文本：CKEcitor
* 文件管理：CKFinder
* 动态页签：Jerichotab
* 手机端框架：Jingle
* 数据表格：jqGrid
* 对话框：jQuery jBox
* 下拉选择框：jQuery Select2
* 树结构控件：jQuery zTree
* 日期控件： My97DatePicker

4、平台

* 服务器中间件：在Java EE 5规范（Servlet 2.5、JSP 2.1）下开发，支持应用服务器中间件
有Tomcat 6、Jboss 7、WebLogic 10、WebSphere 8。
* 数据库支持：目前仅提供MySql和Oracle数据库的支持，但不限于数据库，平台留有其它数据库支持接口，
可方便更改为其它数据库，如：SqlServer 2008、MySql 5.5、H2等
* 开发环境：Java EE、Eclipse、Maven、Git

## 安全考虑

1. 开发语言：系统采用Java 语言开发，具有卓越的通用性、高效性、平台移植性和安全性。
2. 分层设计：（数据库层，数据访问层，业务逻辑层，展示层）层次清楚，低耦合，各层必须通过接口才能接入并进行参数校验（如：在展示层不可直接操作数据库），保证数据操作的安全。
3. 双重验证：用户表单提交双验证：包括服务器端验证及客户端验证，防止用户通过浏览器恶意修改（如不可写文本域、隐藏变量篡改、上传非法文件等），跳过客户端验证操作数据库。
4. 安全编码：用户表单提交所有数据，在服务器端都进行安全编码，防止用户提交非法脚本及SQL注入获取敏感数据等，确保数据安全。
5. 密码加密：登录用户密码进行SHA1散列加密，此加密方法是不可逆的。保证密文泄露后的安全问题。
6. 强制访问：系统对所有管理端链接都进行用户身份权限验证，防止用户直接填写url进行访问。


