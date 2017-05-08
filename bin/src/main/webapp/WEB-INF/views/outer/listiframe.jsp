<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>首页 - 梅州市投资促进展示平台</title>
<%@include file="/WEB-INF/views/outer/common/mainStyle.jsp" %> 
<script type="text/javascript" src="${ctxStatic}/outer/js/page.js"></script>
</head>

<body>
		
<div class="list-table">
	<table>
		<c:if test="${page.count == 0}">
			<tr>
				<td class="col-1"><center><h3>无相关记录</h3></center></td>
			</tr>
		</c:if>
		<c:if test="${page.count != 0}">
			<c:forEach items="${page.list}" var="article">
			<tr>
				<td class="col-1"><a href="${outUrl}/view/${menuFlag}/${category.id}/${article.id}" class="left" target="_blank">${fns:abbr(article.title,80)}</a></td>
				<td class="col-2"><fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd"/></td>
			</tr>
			</c:forEach>
		</c:if>
	</table>
</div>
<!--分页控件-->
<c:if test="${page.last != 1}">
<div class="listfoot view-listfoot">
	<div class="pagenav">
		<input type="hidden" id="pageUrl" value='${pageUrl}'>
		<input type="hidden" id="queryStr" value='${queryStr}'>
		<script>
			writePagenumButton(${page.pageSize},${page.last},${page.pageNo},${page.count});
		</script>
	</div>
</div>
</c:if>
</body>
</html>
