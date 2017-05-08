<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>考试-调查定义表管理</title>
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
		<li><a href="${ctx}/examinationsurveydefinition/examinationSurveyDefinition/">考试列表显示</a></li>
		<li class="active">
			<a href="${ctx}/examinationsurveydefinition/examinationSurveyDefinition/form?id=${examinationSurveyDefinition.id}">考试列表<shiro:hasPermission name="examinationsurveydefinition:examinationSurveyDefinition:edit">${not empty examinationSurveyDefinition.id?'修改':'添加'}</shiro:hasPermission>
			<shiro:lacksPermission name="examinationsurveydefinition:examinationSurveyDefinition:edit">查看</shiro:lacksPermission>
			</a>
		</li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="examinationSurveyDefinition" action="${ctx}/examinationsurveydefinition/examinationSurveyDefinition/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">考试名称：</label>
			<div class="controls">
				<form:input path="examname" htmlEscape="false" maxlength="255" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">考试类型：</label>
			<div class="controls">
				<form:input path="examtype" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">考试时长：</label>
			<div class="controls">
				<form:input path="examduration" htmlEscape="false" maxlength="11" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="examinationsurveydefinition:examinationSurveyDefinition:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>