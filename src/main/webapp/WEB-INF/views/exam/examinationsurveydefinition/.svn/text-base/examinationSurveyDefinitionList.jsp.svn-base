<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>考试-调查定义表管理</title>
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
		<li class="active"><a href="${ctx}/examinationsurveydefinition/examinationSurveyDefinition/">考试列表显示</a></li>
		<shiro:hasPermission name="examinationsurveydefinition:examinationSurveyDefinition:edit"><li><a href="${ctx}/examinationsurveydefinition/examinationSurveyDefinition/form">考试列表添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="examinationSurveyDefinition" action="${ctx}/examinationsurveydefinition/examinationSurveyDefinition/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>考试名称：</label>
				<form:input path="examname" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li><label>考试类型：</label>
				<form:input path="examtype" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>考试名称</th>
				<th>考试类型</th>
				<th>备注</th>
				<th>更新时间</th>
				<shiro:hasPermission name="examinationsurveydefinition:examinationSurveyDefinition:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="examinationSurveyDefinition">
			<tr>
				<td><a href="${ctx}/examinationsurveydefinition/examinationSurveyDefinition/form?id=${examinationSurveyDefinition.id}">
					${examinationSurveyDefinition.examname}
				</a></td>
				<td>
					${examinationSurveyDefinition.examtype}
				</td>
				<td>
					${examinationSurveyDefinition.remarks}
				</td>
				<td>
					<fmt:formatDate value="${examinationSurveyDefinition.updateDate}" pattern="yyyy-MM-dd"/>
				</td>
				<shiro:hasPermission name="examinationsurveydefinition:examinationSurveyDefinition:edit"><td>
    				<a href="${ctx}/examinationsurveydefinition/examinationSurveyDefinition/form?id=${examinationSurveyDefinition.id}">修改</a>
					<a href="${ctx}/examinationsurveydefinition/examinationSurveyDefinition/delete?id=${examinationSurveyDefinition.id}" onclick="return confirmx('确认要删除该考试-调查定义表吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>