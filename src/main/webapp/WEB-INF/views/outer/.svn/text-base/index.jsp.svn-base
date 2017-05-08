<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>首页 - 梅州市投资促进展示平台</title> 
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
	
	<div class="banner"></div>
	
	<div class="main">
    	<div class="clear">
			<div class="left-side left">
            	<div class="box">
                    <h3 class="clear">
                        <a href="#" class="more-link right">更多</a>
                        <div class="box-title left">梅州概况</div>
                        <div class="box-stat left">&nbsp;</div>
                    </h3>
                    <div class="emp-left">
                        <a href="#" class="emp-banner" title="梅州"><img src="${ctxStatic}/outer/images/emp-banner.jpg" alt="" /></a>
                        <h4 class="clear">
                            <div class="emp-banner-title overflow left">
                                <a href="#" title="梅州">梅州</a>
                            </div>
                        </h4>
                        <p>${fns:abbr(mzgsarticle.articleData.content,235)}...<br/><a href="${outUrl}/view/news/${mzgsarticle.category.id}/${mzgsarticle.id}">[&nbsp;阅读全文&nbsp;]</a></p>
                    </div>
                </div>
            </div>
            <div class="right-side left">
            	<div class="box">
                    <h3 class="clear">
                        <a href="${outUrl}/list/news/${newsCategoryId}" class="more-link right" target="_blank">更多</a>
                        <div class="box-title left">新闻动态</div>
                        <div class="box-stat left">&nbsp;</div>
                    </h3>
                    <div class="news clear">
                    	<div class="pic left">
                    		<c:if test="${not empty article.image}">
                        		<a href="${outUrl}/view/news/${article.category.id}/${article.id}" title="${article.title}"><img src="${article.image}" alt="" /></a>
                        	</c:if>
                        	<c:if test="${empty article.image}">
                        		<a href="${outUrl}/view/news/${article.category.id}/${article}" title="${article.title}"><img src="${ctxStatic}/outer/images/pic-news.jpg" alt="" /></a>
                        	</c:if>
                        </div>
                        <div class="news-txt left">
                        	<a href="${outUrl}/view/news/${article.category.id}/${article.id}" class="overflow" title="${article.title}">${article.title}</a>
                            <p>${fns:abbr(article.articleData.content,125)}...<br/><a href="${outUrl}/view/news/${article.category.id}/${article.id}">[&nbsp;阅读全文&nbsp;]</a></p>
                        </div>
                    </div>
                    <div class="box-list">
						<ul>
							<c:forEach items="${newslist}" var="news">
								<li class="clear">
									<div class="list-title overflow left">
										<a href="${outUrl}/view/news/${news.category.id}/${news.id}" title="${news.title}">${news.title}</a>
									</div>
									<div class="list-date right"><fmt:formatDate value="${news.updateDate}" pattern="yyyy-MM-dd"/></div>
								</li>
							</c:forEach>
						</ul>
					</div>
                </div>
            </div>
        </div>
        
        <div class="clear">
			<div class="left-side left">
            	<div class="box">
                    <h3 class="clear">
                        <a href="${outUrl}/list/news/${noticeCategoryId}" class="more-link right" target="_blank">更多</a>
                        <div class="box-title left">最新公告</div>
                        <div class="box-stat left">&nbsp;</div>
                    </h3>
                    <div class="box-list">
						<ul>
							<c:forEach items="${noticelist}" var="notice">
								<li class="clear">
									<div class="list-title overflow left">
										<a href="${outUrl}/view/news/${notice.category.id}/${notice.id}" title="${notice.title}">${notice.title}</a>
									</div>
									<div class="list-date right"><fmt:formatDate value="${notice.updateDate}" pattern="yyyy-MM-dd"/></div>
								</li>
							</c:forEach>
						</ul>
					</div>
                </div>
            </div>
            <div class="right-side left">
            	<div class="box">
                    <h3 class="clear">
                        <a href="${outUrl}/list/news/${policyCategoryId}" class="more-link right" target="_blank">更多</a>
                        <div class="box-title left">政策通道</div>
                        <div class="box-stat left">&nbsp;</div>
                    </h3>
                    <div class="box-list">
						<ul>
							<c:forEach items="${policylist}" var="policy">
								<li class="clear">
									<div class="list-title overflow left">
										<a href="${outUrl}/view/news/${policy.category.id}/${policy.id}" title="${policy.title}">${policy.title}</a>
									</div>
									<div class="list-date right"><fmt:formatDate value="${policy.updateDate}" pattern="yyyy-MM-dd"/></div>
								</li>
							</c:forEach>
						</ul>
					</div>
                </div>
            </div>
        </div>
        
        <div class="clear">
			<div class="left-side left">
            	<div class="box">
                    <h3 class="clear">
                        <a href="${outUrl}/list/news/${zstzcategoryId}" class="more-link right" target="_blank">更多</a>
                        <div class="box-title left">招商项目</div>
                        <div class="box-stat left">&nbsp;</div>
                    </h3>
                    <div class="box-list">
						<ul>
							<c:forEach items="${zstzlist}" var="zstz">
								<li class="clear">
									<div class="list-title overflow left">
										<a href="${outUrl}/view/news/${zstz.category.id}/${zstz.id}" title="${zstz.title}">${zstz.title}</a>
									</div>
									<div class="list-date right"><fmt:formatDate value="${zstz.updateDate}" pattern="yyyy-MM-dd"/></div>
								</li>
							</c:forEach>
						</ul>
					</div>
                </div>
            </div>
            <div class="right-side left">
            	<div class="box">
                    <h3 class="clear">
                        <a href="${outUrl}/moreproject" class="more-link right" target="_blank">更多</a>
                        <div class="box-title left">项目进度</div>
                        <div class="box-stat left">&nbsp;</div>
                    </h3>
                    <div class="box-list">
						<ul>
							<c:forEach items="${projectlist}" var="project">
								<li class="clear">
									<div class="list-title overflow left">
										<a href="${outUrl}/view/news/${zstz.category.id}/${zstz.id}" title="${project.projectname}">${project.projectname}</a>
									</div>
									<div class="list-date right"><fmt:formatDate value="${project.updateDate}" pattern="yyyy-MM-dd"/></div>
								</li>
							</c:forEach>
						</ul>
					</div>
                </div>
            </div>
        </div>
        
        <div class="box">
        	<h3 class="clear">
                <a href="#" class="more-link right">更多</a>
                <div class="box-title left">重点产业</div>
                <div class="box-stat left">&nbsp;</div>
            </h3>
            <div class="emp-list clear">
            	<ul>
                	<li class="left">
                    	<a href="#" class="emp-pic"><img src="${ctxStatic}/outer/images/emp-list-pic.jpg" alt="广州（梅州）产业转移工业园" /></a>
                        <a href="#" class="emp-title overflow">广州（梅州）产业转移工业园</a>
                        <p>中国商务部部长高虎城与澳大利亚贸易与投资部部长安德鲁·罗布17日在澳大利亚堪培拉分别代表两国政府正式签署《中华人民共和国政府和澳大利亚政府...<a href="#">[&nbsp;阅读全文&nbsp;]</a></p>
                    </li>
                    <li class="left">
                    	<a href="#" class="emp-pic"><img src="${ctxStatic}/outer/images/emp-list-pic.jpg" alt="广州（梅州）产业转移工业园" /></a>
                        <a href="#" class="emp-title overflow">广州（梅州）产业转移工业园</a>
                        <p>中国商务部部长高虎城与澳大利亚贸易与投资部部长安德鲁·罗布17日在澳大利亚堪培拉分别代表两国政府正式签署《中华人民共和国政府和澳大利亚政府...<a href="#">[&nbsp;阅读全文&nbsp;]</a></p>
                    </li>
                    <li class="left no-right">
                    	<a href="#" class="emp-pic"><img src="${ctxStatic}/outer/images/emp-list-pic.jpg" alt="广州（梅州）产业转移工业园" /></a>
                        <a href="#" class="emp-title overflow">广州（梅州）产业转移工业园</a>
                        <p>中国商务部部长高虎城与澳大利亚贸易与投资部部长安德鲁·罗布17日在澳大利亚堪培拉分别代表两国政府正式签署《中华人民共和国政府和澳大利亚政府...<a href="#">[&nbsp;阅读全文&nbsp;]</a></p>
                    </li>
                </ul>
            </div>
        </div>
        
        <div class="link clear">
        	<ul>
            	<li class="left"><a href="#"><img src="${ctxStatic}/outer/images/link-1.jpg" alt="" /></a></li>
                <li class="left"><a href="#"><img src="${ctxStatic}/outer/images/link-2.jpg" alt="" /></a></li>
                <li class="left"><a href="#"><img src="${ctxStatic}/outer/images/link-3.jpg" alt="" /></a></li>
                <li class="left"><a href="#"><img src="${ctxStatic}/outer/images/link-4.jpg" alt="" /></a></li>
                <li class="left"><a href="#"><img src="${ctxStatic}/outer/images/link-5.jpg" alt="" /></a></li>
                <li class="left"><a href="#"><img src="${ctxStatic}/outer/images/link-6.jpg" alt="" /></a></li>
                <li class="left"><a href="#"><img src="${ctxStatic}/outer/images/link-7.jpg" alt="" /></a></li>
                <li class="left"><a href="#"><img src="${ctxStatic}/outer/images/link-8.jpg" alt="" /></a></li>
                <li class="left"><a href="#"><img src="${ctxStatic}/outer/images/link-9.jpg" alt="" /></a></li>
                <li class="left"><a href="#"><img src="${ctxStatic}/outer/images/link-10.jpg" alt="" /></a></li>
                <li class="left"><a href="#"><img src="${ctxStatic}/outer/images/link-11.jpg" alt="" /></a></li>
            </ul>
        </div>
	</div>
	
	<%@include file="/WEB-INF/views/outer/common/footer.jsp" %>
</body>
</html>
