<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>试题定义表管理</title>
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
		<li class="active"><a href="${ctx}/examquestionsdefinition/examQuestionsDefinition/">试题列表显示</a></li>
		<shiro:hasPermission name="examquestionsdefinition:examQuestionsDefinition:edit"><li><a href="${ctx}/examquestionsdefinition/examQuestionsDefinition/form">试题列表添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="examQuestionsDefinition" action="${ctx}/examquestionsdefinition/examQuestionsDefinition/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>序号：</label>
				<form:input path="ordernumber" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li><label>试题类型：</label>
				<form:input path="examquestionstype" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>序号</th>
				<th>试题问题</th>
				<th>试题答案</th>
				<th>试题类型</th>
				<th>备注</th>
				<th>更新时间</th>
				<shiro:hasPermission name="examquestionsdefinition:examQuestionsDefinition:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="examQuestionsDefinition">
			<tr>
				<td><a href="${ctx}/examquestionsdefinition/examQuestionsDefinition/form?id=${examQuestionsDefinition.id}">
					${examQuestionsDefinition.ordernumber}
				</a></td>
				<td>
					${examQuestionsDefinition.examquestionsissue}
				</td>
				<td>
					${examQuestionsDefinition.examquestionsanswer}
				</td>
				<td>
					${examQuestionsDefinition.examquestionstype}
				</td>
				<td>
					${examQuestionsDefinition.remarks}
				</td>
				<td>
					<fmt:formatDate value="${examQuestionsDefinition.updateDate}" pattern="yyyy-MM-dd"/>
				</td>
				<shiro:hasPermission name="examquestionsdefinition:examQuestionsDefinition:edit"><td>
    				<a href="${ctx}/examquestionsdefinition/examQuestionsDefinition/form?id=${examQuestionsDefinition.id}">修改</a>
					<a href="${ctx}/examquestionsdefinition/examQuestionsDefinition/delete?id=${examQuestionsDefinition.id}" onclick="return confirmx('确认要删除该试题定义表吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>