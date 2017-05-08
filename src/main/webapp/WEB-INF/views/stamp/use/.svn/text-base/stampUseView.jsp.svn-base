<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>印章使用记录表查看</title>
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
		<li><a href="${ctx}/use/stampUse/">印章使用记录列表</a></li>
		<li class="active"><a href="${ctx}/use/stampUse/view?id=${stampUse.id}">印章使用记录<shiro:hasPermission name="use:stampUse:view">查看</shiro:hasPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="stampUse" action="${ctx}/use/stampUse/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<form:hidden path="usingdepartment" value="${stampUse.usingdepartment.id}"/>
		<sys:message content="${message}"/>	
		
		<div class="control-group">
			<label class="control-label">印章类别：</label>
			<div class="controls">
				<label class="lbl">${stampUse.stamptype}</label>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">使用时间：</label>
			<div class="controls">
				<label class="lbl"><fmt:formatDate value="${stampUse.usingtime}" type="both" dateStyle="full"/></label>
			</div>
		</div>
		
		<div class="control-group">
		<label class="control-label">使用部门：</label>
		<div class="controls">
			<label class="lbl">${stampUse.usingdepartment.name}</label>
		</div>
		</div>
		
		<div class="control-group">
		<label class="control-label">申请人：</label>
		<div class="controls">
			<label class="lbl">${stampUse.createBy.name}</label>
		</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">内容摘要：</label>
			<div class="controls">
				<label class="lbl">${stampUse.contentabstracts}</label>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">使用次数：</label>
			<div class="controls">
				<label class="lbl">${stampUse.usagecounter}</label>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">印章管理员：</label>
			<div class="controls">
				<label class="lbl">${stampUse.stampadmin}</label>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<label class="lbl">${stampUse.remarks}</label>
			</div>
		</div>
		
		<div class="form-actions">
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>