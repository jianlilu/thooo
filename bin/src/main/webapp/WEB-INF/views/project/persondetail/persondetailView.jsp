<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>就业专项资金补贴人员的明细管理</title>
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
		<li><a href="${ctx}/persondetail/persondetail/">就业专项资金补贴人员的明细列表</a></li>
		<li class="active"><a href="${ctx}/persondetail/persondetail/view?id=${persondetail.id}">就业专项资金补贴人员的明细查看</a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="persondetail" action="${ctx}/persondetail/persondetail/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">镇别：</label>
			<div class="controls">
				<form:select path="zb" class="input-xlarge">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('zb')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">名称：</label>
			<div class="controls">
				<form:input path="username" htmlEscape="false" maxlength="100" class="input-xlarge"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">身份证号：</label>
			<div class="controls">
				<form:input path="cardno" htmlEscape="false" maxlength="50" class="input-xlarge card"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">人员类型：</label>
			<div class="controls">
				<form:select path="jyknrylx" class="input-xlarge">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('jyknrylx')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">法人代表：</label>
			<div class="controls">
				<form:input path="frdb" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">补贴人数：</label>
			<div class="controls">
				<form:input path="btrs" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">（一）职业介绍补贴（金额）：</label>
			<div class="controls">
				<form:input path="zyjsbt" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
				<label>（每年一次）</label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">（二）职业培训补贴（金额）：</label>
			<div class="controls">
				<form:input path="zypxbt" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
				<label>（每年一次）</label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">（三）社会保险补贴（金额）：</label>
			<div class="controls">
				<form:input path="shbxbt" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">（四）岗位补贴      （金额）：</label>
			<div class="controls">
				<form:input path="gwbt" htmlEscape="false" maxlength="50" class="input-xlarge numberd"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">（五）高校毕业生见习补贴     （金额）：</label>
			<div class="controls">
				<form:input path="jxbt" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
				<label>（一次性）</label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">（六）高校毕业生到中小微企业就业补贴：</label>
			<div class="controls">
				<form:input path="zxwqyjybt" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
				<label>（一次性）</label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">（七）应届高校毕业生临时生活补贴     （金额）：</label>
			<div class="controls">
				<form:input path="lsshbt" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
				<label>（显示补贴月份，1-6个月）</label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">（八）创业培训补贴           （金额）：</label>
			<div class="controls">
				<form:input path="cypxbt" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
				<label>（一次性）</label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">（九）一次性创业资助         （金额）：</label>
			<div class="controls">
				<form:input path="ycxcyzz" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
				<label>（一次性）</label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">（十）租金补贴（金额）：</label>
			<div class="controls">
				<form:input path="zjbt" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
				<label>（每年一次，共3次）</label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">（十一）创业孵化补贴           （金额）：</label>
			<div class="controls">
				<form:input path="cyfhbt" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
				<label>（一次人数不超11人）</label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">（十二）创业带动就业补贴     （金额）：</label>
			<div class="controls">
				<form:input path="cyddjybt" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
				<label>（总额不超过3万）</label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">（十三）小额担保贴息贷款      （金额）：</label>
			<div class="controls">
				<form:input path="xedbdktx" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
				<label>（一次性）</label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">（十四）扶持就业创业服务支出（金额）：</label>
			<div class="controls">
				<form:input path="cyfwzc" htmlEscape="false" maxlength="50" class="input-xlarge number"/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">单位申请时间:</label>
			<div class="controls">
				<label class="lbl"><fmt:formatDate value="${persondetail.createDate}" type="both" dateStyle="full"/></label>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">送财政审批时间:</label>
			<div class="controls">
				<label class="lbl"><fmt:formatDate value="${persondetail.updateDate}" type="both" dateStyle="full"/></label>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>