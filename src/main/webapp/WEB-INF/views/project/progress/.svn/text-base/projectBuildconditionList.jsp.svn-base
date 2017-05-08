<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>项目信息管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#btnExport").click(function(){
				top.$.jBox.confirm("确认要导出项目数据吗？","系统提示",function(v,h,f){
					if(v=="ok"){
						$("#searchForm").attr("action","${ctx}/progress/projectBuildcondition/export");
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
		<li class="active"><a href="${ctx}/progress/projectBuildcondition/">项目信息列表</a></li>
		<shiro:hasPermission name="progress:projectBuildcondition:add"><li><a href="${ctx}/progress/projectBuildcondition/form">项目信息添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="projectBuildcondition" action="${ctx}/progress/projectBuildcondition/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>项目名称：</label>
				<form:input path="projectname" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li><label>合同时间：</label>
				<input name="contracttime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${projectBuildcondition.contracttime}" pattern="yyyy-MM-dd"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});"/>
			</li>
			<li><label>负责部门：</label>
				<sys:treeselect id="department" name="department.id" value="${projectBuildcondition.department.id}" labelName="department.name" labelValue="${projectBuildcondition.department.name}"
					title="部门" url="/sys/office/treeData?type=2" cssClass="input-small" allowClear="true" notAllowSelectParent="true"/>
			</li>
			<li><label>负责人：</label>
				<sys:treeselect id="header" name="header.id" value="${projectBuildcondition.header.id}" labelName="header.name" labelValue="${projectBuildcondition.header.name}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="input-small" allowClear="true" notAllowSelectParent="true"/>
			</li>
			<li><label>项目状态：</label>
				<form:select path="status" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('projectStatus')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
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
				<th>序号</th>
				<th>项目名称</th>
				<th>合同时间</th>
				<th>施工时间</th>
				<th>合同工期（天数）</th>
				<th>计划工期（天数）</th>
				<th>验收时间</th>
				<th>负责部门</th>
				<th>负责人</th>
				<th>项目状态</th>
				<th>完成比例%（百分比）</th>
				<th>分管领导</th>
				<th>更新人</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="projectBuildcondition" varStatus="status">
			<tr>
				<td>
					${status.index + 1}
				</td>
				<td><a href="${ctx}/progress/projectBuildcondition/form?id=${projectBuildcondition.id}">
					${projectBuildcondition.projectname}
				</a></td>
				<td>
					<fmt:formatDate value="${projectBuildcondition.contracttime}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					<fmt:formatDate value="${projectBuildcondition.constructiontime}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					${projectBuildcondition.contractday}
				</td>
				<td>
					${projectBuildcondition.planday}
				</td>
				<td>
				<fmt:formatDate value="${projectBuildcondition.acceptancetime}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					${projectBuildcondition.department.name}
				</td>
				<td>
					${projectBuildcondition.header.name}
				</td>
				<td>
					${fns:getDictLabel(projectBuildcondition.status, 'projectStatus', '')}
				</td>
				<td>
					${projectBuildcondition.percentcomplete}
				</td>
				<td>
					${projectBuildcondition.leader.name}
				</td>
				<td>
					${projectBuildcondition.updateBy.name}
				</td>
				<td style="width:150px;">
					<shiro:hasPermission name="progress:projectBuildcondition:edit">
    				<a href="${ctx}/progress/projectBuildcondition/form?id=${projectBuildcondition.id}">修改</a>
    				</shiro:hasPermission>
    				
    				<shiro:hasPermission name="progress:projectBuildcondition:view">
    				<a href="${ctx}/detail/projectDetail/list?projectid=${projectBuildcondition.id}&projectname=${projectBuildcondition.projectname}">项目进展明细</a>
    				</shiro:hasPermission>
    				
    				<shiro:hasPermission name="progress:projectBuildcondition:delete">
					<a href="${ctx}/progress/projectBuildcondition/delete?id=${projectBuildcondition.id}" onclick="return confirmx('确认要删除该项目进度信息吗？', this.href)">删除</a>
					</shiro:hasPermission>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>