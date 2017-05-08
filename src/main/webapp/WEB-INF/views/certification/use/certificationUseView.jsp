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
		<li class="active"><a href="${ctx}/use/certificationUse/view?id=${certificationUse.id}">证书借用记录<shiro:hasPermission name="use:certificationUse:view">查看</shiro:hasPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="certificationUse" action="${ctx}/use/certificationUse/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<form:hidden path="usingdepartment" value="${certificationUse.usingdepartment.id}"/>
		<sys:message content="${message}"/>	
		
		<div class="control-group">
		<label class="control-label">证书类型：</label>
		<div class="controls">
			<label class="lbl">${certificationUse.certificationtype}</label>
		</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">借用日期：</label>
			<div class="controls">
				<label class="lbl"><fmt:formatDate value="${certificationUse.borrowingtime}" type="both" dateStyle="full"/></label>
			</div>
		</div>
		
		<div class="control-group">
		<label class="control-label">借用部门：</label>
		<div class="controls">
			<label class="lbl">${certificationUse.usingdepartment.name}</label>
		</div>
		</div>
		
		<div class="control-group">
		<label class="control-label">申请人：</label>
		<div class="controls">
			<label class="lbl">${certificationUse.createBy.name}</label>
		</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">用途：</label>
			<div class="controls">
				<label class="lbl">${certificationUse.usages}</label>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">归还日期：</label>
			<div class="controls">
				<label class="lbl"><fmt:formatDate value="${certificationUse.returntime}" type="both" dateStyle="full"/></label>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">办公室管理员：</label>
			<div class="controls">
				<label class="lbl">${certificationUse.officeadmin}</label>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<label class="lbl">${certificationUse.remarks}</label>
			</div>
		</div>
		
		<div class="form-actions">
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>