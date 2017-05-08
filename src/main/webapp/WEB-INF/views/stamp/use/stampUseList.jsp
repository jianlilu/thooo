<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>印章使用记录表管理</title>
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
		<li class="active"><a href="${ctx}/use/stampUse/">印章使用记录列表</a></li>
		<shiro:hasPermission name="use:stampUse:add"><li><a href="${ctx}/use/stampUse/form">印章使用记录添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="stampUse" action="${ctx}/use/stampUse/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>印章类别：</label>
				<form:select path="stamptype" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('stamp')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>使用时间：</label>
				<input name="usingtime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${stampUse.usingtime}" pattern="yyyy-MM-dd"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:true});"/>
			</li>
			<li><label>使用部门：</label>
				<sys:treeselect id="usingdepartment" name="usingdepartment.id" value="${stampUse.usingdepartment.id}" labelName="usingdepartment.name" labelValue="${stampUse.usingdepartment.name}"
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
				<th>印章类别</th>
				<th>使用时间</th>
				<th>使用部门</th>
				<th>申请人</th>
				<th>内容摘要</th>
				<th>备注</th>
				<th>更新时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="stampUse">
			<tr>
				<td>
					<a href="${ctx}/use/stampUse/form?id=${stampUse.id}">
						${fns:getDictLabel(stampUse.stamptype, 'stamp', '')}
					</a>
				</td>
				<td>
					<fmt:formatDate value="${stampUse.usingtime}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					${stampUse.usingdepartment.name}
				</td>
				
				<td>
					${stampUse.createBy.name}
				</td>
				
				<td>
					${stampUse.contentabstracts}
				</td>
				<td>
					${stampUse.remarks}
				</td>
				<td>
					<fmt:formatDate value="${stampUse.updateDate}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					<shiro:hasPermission name="use:stampUse:view">
						<a href="${ctx}/use/stampUse/view?id=${stampUse.id}">查看</a>
					</shiro:hasPermission>
					
					<shiro:hasPermission name="use:stampUse:edit">
	    				<a href="${ctx}/use/stampUse/form?id=${stampUse.id}">修改</a>
	    			</shiro:hasPermission>
	    			
	    			<shiro:hasPermission name="use:stampUse:delete">
						<a href="${ctx}/use/stampUse/delete?id=${stampUse.id}" onclick="return confirmx('确认要删除该印章使用记录表吗？', this.href)">删除</a>
					</shiro:hasPermission>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>