<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>考试定义-试题关系表管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/examquestionsrelationship/examDefinition_Examquestions_Relationship/">考试定义-试题关系表列表</a></li>
		<shiro:hasPermission name="examquestionsrelationship:examDefinition_Examquestions_Relationship:edit"><li><a href="${ctx}/examquestionsrelationship/examDefinition_Examquestions_Relationship/form">考试定义-试题关系表添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="examDefinition_Examquestions_Relationship" action="${ctx}/examquestionsrelationship/examDefinition_Examquestions_Relationship/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>备注</th>
				<th>更新时间</th>
				<shiro:hasPermission name="examquestionsrelationship:examDefinition_Examquestions_Relationship:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="examDefinition_Examquestions_Relationship">
			<tr>
				<td><a href="${ctx}/examquestionsrelationship/examDefinition_Examquestions_Relationship/form?id=${examDefinition_Examquestions_Relationship.id}">
					${examDefinition_Examquestions_Relationship.remarks}
				</a></td>
				<td>
					<fmt:formatDate value="${examDefinition_Examquestions_Relationship.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="examquestionsrelationship:examDefinition_Examquestions_Relationship:edit"><td>
    				<a href="${ctx}/examquestionsrelationship/examDefinition_Examquestions_Relationship/form?id=${examDefinition_Examquestions_Relationship.id}">修改</a>
					<a href="${ctx}/examquestionsrelationship/examDefinition_Examquestions_Relationship/delete?id=${examDefinition_Examquestions_Relationship.id}" onclick="return confirmx('确认要删除该考试定义-试题关系表吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>