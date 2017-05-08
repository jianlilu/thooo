<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>证书借用记录表管理</title>
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
		<li class="active"><a href="${ctx}/use/certificationUse/">证书借用记录列表</a></li>
		<shiro:hasPermission name="use:certificationUse:add"><li><a href="${ctx}/use/certificationUse/form">证书借用记录添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="certificationUse" action="${ctx}/use/certificationUse/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			
			<li><label>证书类型：</label>
			<form:select path="certificationtype" class="input-medium">
				<form:option value="" label=""/>
				<form:options items="${fns:getDictList('certification')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
			</form:select>
			</li>
			
			<li><label>借用日期：</label>
				<input name="borrowingtime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${certificationUse.borrowingtime}" pattern="yyyy-MM-dd"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:true});"/>
			</li>
			<li><label>借用部门：</label>
				<sys:treeselect id="usingdepartment" name="usingdepartment.id" value="${certificationUse.usingdepartment.id}" labelName="usingdepartment.name" labelValue="${certificationUse.usingdepartment.name}"
					title="部门" url="/sys/office/treeData?type=2" cssClass="input-small" allowClear="true" notAllowSelectParent="true"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>证书类型</th>
				<th>借用日期</th>
				<th>借用部门</th>
				<th>申请人</th>
				<th>归还日期</th>
				<th>备注</th>
				<th>更新时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="certificationUse">
			<tr>
				<td><a href="${ctx}/use/certificationUse/form?id=${certificationUse.id}">
					${certificationUse.certificationtype}
				</a></td>
				<td>
					<fmt:formatDate value="${certificationUse.borrowingtime}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					${certificationUse.usingdepartment.name}
				</td>
				
				<td>
					${certificationUse.createBy.name}
				</td>
				
				<td>
					<fmt:formatDate value="${certificationUse.returntime}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					${certificationUse.remarks}
				</td>
				<td>
					<fmt:formatDate value="${certificationUse.updateDate}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					<shiro:hasPermission name="use:certificationUse:view">
					<a href="${ctx}/use/certificationUse/view?id=${certificationUse.id}">查看</a>
					</shiro:hasPermission>
				
					<shiro:hasPermission name="use:certificationUse:edit">
    				<a href="${ctx}/use/certificationUse/form?id=${certificationUse.id}">修改</a>
    				</shiro:hasPermission>
    				
    				<shiro:hasPermission name="use:certificationUse:delete">
					<a href="${ctx}/use/certificationUse/delete?id=${certificationUse.id}" onclick="return confirmx('确认要删除该证书借用记录表吗？', this.href)">删除</a>
					</shiro:hasPermission>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>