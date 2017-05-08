<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>证书借用记录表管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/use/certificationUse/">证书借用记录列表</a></li>
		<li class="active"><a href="${ctx}/use/certificationUse/form?id=${certificationUse.id}">证书借用记录<shiro:hasPermission name="use:certificationUse:add">添加</shiro:hasPermission><shiro:hasPermission name="use:certificationUse:edit">修改</shiro:hasPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="certificationUse" action="${ctx}/use/certificationUse/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<form:hidden path="usingdepartment" value="${certificationUse.usingdepartment.id}"/>
		<sys:message content="${message}"/>	
		
		<div class="control-group">
		<label class="control-label">证书类型：</label>
		<div class="controls">
			<form:select path="certificationtype" class="input-xlarge required">
				<form:option value="" label=""/>
				<form:options items="${fns:getDictList('certification')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
			</form:select>
			<span class="help-inline"><font color="red">*</font> </span>
		</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">借用日期：</label>
			<div class="controls">
				<input name="borrowingtime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
					value="<fmt:formatDate value="${certificationUse.borrowingtime}" pattern="yyyy-MM-dd"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:true});"/>
					<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		
		<div class="control-group">
		<label class="control-label">借用部门：</label>
		<div class="controls">
			<form:input path="usingdepartment.name" htmlEscape="false" maxlength="255" class="input-xlarge" readonly="true"/>
		</div>
		</div>
		
		<div class="control-group">
		<label class="control-label">申请人：</label>
		<div class="controls">
			<form:input path="createBy.name" htmlEscape="false" maxlength="255" class="input-xlarge" readonly="true"/>
		</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">用途：</label>
			<div class="controls">
				<form:input path="usages" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">归还日期：</label>
			<div class="controls">
				<input name="returntime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
					value="<fmt:formatDate value="${certificationUse.returntime}" pattern="yyyy-MM-dd"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:true});"/>
					<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">办公室管理员：</label>
			<div class="controls">
				<sys:treeselect id="officeadmin" name="officeadmin.id" value="${certificationUse.officeadmin.id}" labelName="officeadmin.name" labelValue="${certificationUse.officeadmin.name}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="" allowClear="true" notAllowSelectParent="true"/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		
		<div class="form-actions">
			<shiro:hasPermission name="use:certificationUse:add"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>