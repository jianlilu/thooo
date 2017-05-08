<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>项目进展明细管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#btnExport").click(function(){
				top.$.jBox.confirm("确认要导出项目进度填报数据吗？","系统提示",function(v,h,f){
					if(v=="ok"){
						$("#searchForm").attr("action","${ctx}/detail/projectDetail/export");
						$("#searchForm").submit();
					}
				},{buttonsFocus:1});
				top.$('.jbox-body .jbox-icon').css('top','55px');
			});
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
		<li class="active"><a href="${ctx}/detail/projectDetail/list?projectid=${projectDetail.projectid}&projectname=${projectDetail.projectname}">项目进展明细列表</a></li>
		<shiro:hasPermission name="detail:projectDetail:edit"><li><a href="${ctx}/detail/projectDetail/form?projectid=${projectDetail.projectid}&projectname=${projectDetail.projectname}">项目进展明细添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="projectDetail" action="${ctx}/detail/projectDetail/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>填写人：</label>
				<sys:treeselect id="createuser" name="createuser.id" value="${projectDetail.createuser.id}" labelName="createuser.name" labelValue="${projectDetail.createuser.name}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="input-small" allowClear="true" notAllowSelectParent="true"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/>
			<input id="btnExport" class="btn btn-primary" type="button" value="导出"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>项目名称</th>
				<th>填写日期</th>
				<th>进展情况</th>
				<th>填写人</th>
				<th>备注</th>
				<shiro:hasPermission name="detail:projectDetail:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="projectDetail">
			<tr>
				<td><a href="${ctx}/detail/projectDetail/form?id=${projectDetail.id}">
					${projectDetail.projectname}
				</a></td>
				<td>
					<fmt:formatDate value="${projectDetail.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${projectDetail.content}
				</td>
				<td>
					${projectDetail.createuser.name}
				</td>
				<td>
					${projectDetail.remarks}
				</td>
				<shiro:hasPermission name="detail:projectDetail:edit"><td>
    				<a href="${ctx}/detail/projectDetail/form?id=${projectDetail.id}">修改</a>
					<a href="${ctx}/detail/projectDetail/delete?id=${projectDetail.id}" onclick="return confirmx('确认要删除该项目进展明细吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>