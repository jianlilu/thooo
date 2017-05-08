<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>项目进度信息管理</title>
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
		<li><a href="${ctx}/progress/projectBuildcondition/">项目信息列表</a></li>
		<li class="active"><a href="${ctx}/progress/projectBuildcondition/form?id=${projectBuildcondition.id}">项目信息<shiro:hasPermission name="progress:projectBuildcondition:edit">${not empty projectBuildcondition.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="progress:projectBuildcondition:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="projectBuildcondition" action="${ctx}/progress/projectBuildcondition/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">项目名称：</label>
			<div class="controls">
				<form:input path="projectname" htmlEscape="false" maxlength="200" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">合同时间：</label>
			<div class="controls">
				<input name="contracttime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${projectBuildcondition.contracttime}" pattern="yyyy-MM-dd"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">施工时间：</label>
			<div class="controls">
				<input name="constructiontime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${projectBuildcondition.constructiontime}" pattern="yyyy-MM-dd"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">合同工期：</label>
			<div class="controls">
				<form:input path="contractday" htmlEscape="false" maxlength="10" class="input-xlarge "/>
				（天数）</div>
		</div>
		<div class="control-group">
			<label class="control-label">计划工期：</label>
			<div class="controls">
				<form:input path="planday" htmlEscape="false" maxlength="10" class="input-xlarge "/>
				（天数）</div>
		</div>
		<div class="control-group">
			<label class="control-label">物料情况：</label>
			<div class="controls">
				<form:textarea path="matter" htmlEscape="false" rows="4" maxlength="1000" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">负责部门：</label>
			<div class="controls">
				<sys:treeselect id="department" name="department.id" value="${projectBuildcondition.department.id}" labelName="department.name" labelValue="${projectBuildcondition.department.name}"
					title="部门" url="/sys/office/treeData?type=2" cssClass="" allowClear="true" notAllowSelectParent="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">负责人：</label>
			<div class="controls">
				<sys:treeselect id="header" name="header.id" value="${projectBuildcondition.header.id}" labelName="header.name" labelValue="${projectBuildcondition.header.name}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="" allowClear="true" notAllowSelectParent="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">施工情况：</label>
			<div class="controls">
				<form:textarea path="construction" htmlEscape="false" rows="4" maxlength="1000" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">验收情况：</label>
			<div class="controls">
				<form:textarea path="acceptancecheck" htmlEscape="false" rows="4" maxlength="500" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">验收时间：</label>
			<div class="controls">
				<input name="acceptancetime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${projectBuildcondition.acceptancetime}" pattern="yyyy-MM-dd"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">回款情况：</label>
			<div class="controls">
				<form:textarea path="receivedpayments" htmlEscape="false" rows="4" maxlength="500" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">项目状态：</label>
			<div class="controls">
				<form:select path="status" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('projectStatus')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">完成比例：</label>
			<div class="controls">
				<form:input path="percentcomplete" htmlEscape="false" maxlength="20" class="input-xlarge "/>
				%（百分比）</div>
		</div>
		<div class="control-group">
			<label class="control-label">分管领导：</label>
			<div class="controls">
				<sys:treeselect id="leader" name="leader.id" value="${projectBuildcondition.leader.id}" labelName="leader.name" labelValue="${projectBuildcondition.leader.name}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="" allowClear="true" notAllowSelectParent="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">涉众人员（内部人员和外包团队）：</label>
			<div class="controls">
				<form:textarea path="person" htmlEscape="false" rows="4" maxlength="200" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="progress:projectBuildcondition:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>