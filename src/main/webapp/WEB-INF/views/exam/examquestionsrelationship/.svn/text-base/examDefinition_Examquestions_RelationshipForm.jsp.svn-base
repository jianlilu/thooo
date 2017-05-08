<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>考试定义-试题关系表管理</title>
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
		<li><a href="${ctx}/examquestionsrelationship/examDefinition_Examquestions_Relationship/">考试定义-试题关系表列表</a></li>
		<li class="active"><a href="${ctx}/examquestionsrelationship/examDefinition_Examquestions_Relationship/form?id=${examDefinition_Examquestions_Relationship.id}">考试定义-试题关系表<shiro:hasPermission name="examquestionsrelationship:examDefinition_Examquestions_Relationship:edit">${not empty examDefinition_Examquestions_Relationship.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="examquestionsrelationship:examDefinition_Examquestions_Relationship:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="examDefinition_Examquestions_Relationship" action="${ctx}/examquestionsrelationship/examDefinition_Examquestions_Relationship/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">考试定义ID：</label>
			<div class="controls">
				<form:input path="examdefinitionid" htmlEscape="false" maxlength="11" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">试题定义ID：</label>
			<div class="controls">
				<form:input path="examquestionsdefinitionid" htmlEscape="false" maxlength="11" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="examquestionsrelationship:examDefinition_Examquestions_Relationship:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>