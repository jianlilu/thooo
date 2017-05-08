<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>就业专项资金补贴人员的明细管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#btnExport").click(function(){
				top.$.jBox.confirm("确认要导出专项资金人员数据吗？","系统提示",function(v,h,f){
					if(v=="ok"){
						$("#searchForm").attr("action","${ctx}/persondetail/persondetail/export");
						$("#searchForm").submit();
					}
				},{buttonsFocus:1});
				top.$('.jbox-body .jbox-icon').css('top','55px');
			});
			
			countBtje();
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
        
        //补贴金额合计
        function countBtje() {
        		$('#contentTable tbody tr').each(function() {
        				var rowTotal = 0;
        				$(this).find('td').each(function() {
        				var tdIndex = $(this).index();
        				if(tdIndex > 4 && tdIndex < 19){
        					rowTotal += parseFloat($(this).text());
        				}
						if(tdIndex == 18){
							//将一行的结果，写入合计列，这里直接追加到列尾
        					$(this).after('<td>'+rowTotal+'</td>');
        				}
        						});
        			//alert(rowTotal);
        			
        		});
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/persondetail/persondetail/">就业专项资金补贴人员的明细列表</a></li>
		<shiro:hasPermission name="persondetail:persondetail:add"><li><a href="${ctx}/persondetail/persondetail/form">就业专项资金补贴人员的明细添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="persondetail" action="${ctx}/persondetail/persondetail/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>镇别：</label>
				<form:select path="zb" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('zb')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>名称：</label>
				<form:input path="username" htmlEscape="false" maxlength="100" class="input-medium"/>
			</li>
			<li><label>法人代表：</label>
				<form:input path="frdb" htmlEscape="false" maxlength="100" class="input-medium"/>
			</li>
			<li><label>身份证号：</label>
				<form:input path="cardno" htmlEscape="false" maxlength="50" class="input-medium"/>
			</li>
			<li><label>人员类型：</label>
				<form:select path="jyknrylx" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('jyknrylx')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>补贴类型：</label>
				<form:select path="btlx" class="input-medium">
					<form:option value="" label=""/>
					<form:option value="zyjsbt" label="职业介绍补贴"/>
					<form:option value="zypxbt" label="职业培训补贴"/>
					<form:option value="shbxbt" label="社会保险补贴"/>
					<form:option value="gwbt" label="岗位补贴"/>
					<form:option value="jxbt" label="高校毕业生见习补贴"/>
					<form:option value="zxwqyjybt" label="高校毕业生到中小微企业就业补贴"/>
					<form:option value="lsshbt" label="应届高校毕业生临时生活补贴"/>
					<form:option value="cypxbt" label="创业培训补贴"/>
					<form:option value="ycxcyzz" label="一次性创业资助"/>
					<form:option value="zjbt" label="租金补贴"/>
					<form:option value="cyfhbt" label="创业孵化补贴"/>
					<form:option value="cyddjybt" label="创业带动就业补贴"/>
					<form:option value="xedbdktx" label="小额担保贷款贴息"/>
					<form:option value="cyfwzc" label="扶持就业创业服务支出"/>
				</form:select>
			</li>
			<li class="btns">
				<input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/>
				<input id="btnExport" class="btn btn-primary" type="button" value="导出"/>
			</li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>序号</th>
				<th>镇&nbsp;&nbsp;&nbsp;别</th>
				<th>名 &nbsp;&nbsp;&nbsp;称</th>
				<th>身份证号</th>
				<th>人员类型</th>
				<th>（一）职业介绍补贴（金额）</th>
				<th>（二）职业培训补贴（金额）</th>
				<th>（三）社会保险补贴（金额）</th>
				<th>（四）岗位补贴（金额）</th>
				<th>（五）高校毕业生见习补贴（金额）</th>
				<th>（六）高校毕业生到中小微企业就业补贴</th>
				<th>（七）应届高校毕业生临时生活补贴（金额）</th>
				<th>（八）创业培训补贴（金额）</th>
				<th>（九）一次性创业资助 （金额）</th>
				<th>（十）租金补贴（金额）</th>
				<th>（十一）创业孵化补贴（金额）</th>
				<th>（十二）创业带动就业补贴（金额）</th>
				<th>（十三）小额担保贴息贷款（金额）</th>
				<th>（十四）扶持就业创业服务支出（金额）</th>
				<th>补贴金额合计</th>
				<th>单位申请时间</th>
				<th>送财政审批时间</th>
				<th>备注</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="persondetail" varStatus="status">
			<tr>
				<td>
					${status.index + 1}
				</td>
				<td>
					${fns:getDictLabel(persondetail.zb, 'zb', '')}
				</td>
				<td>
					<shiro:hasPermission name="persondetail:persondetail:view">
    					<a href="${ctx}/persondetail/persondetail/view?id=${persondetail.id}">
    				</shiro:hasPermission>
					<shiro:hasPermission name="persondetail:persondetail:edit">
    					<a href="${ctx}/persondetail/persondetail/form?id=${persondetail.id}">
    				</shiro:hasPermission>
					${persondetail.username}
				</a></td>
				<td>
					${persondetail.cardno}
				</td>
				<td>
					${fns:getDictLabel(persondetail.jyknrylx, 'jyknrylx', '')}
				</td>
				<td title="每年一次">
					${persondetail.zyjsbt}
				</td>
				<td title="每年一次">
					${persondetail.zypxbt}
				</td>
				<td title="">
					${persondetail.shbxbt}
				</td>
				<td title="">
					${persondetail.gwbt}
				</td>
				<td title="一次性">
					${persondetail.jxbt}
				</td>
				<td title="一次性">
					${persondetail.zxwqyjybt}
				</td>
				<td title="显示补贴月份，1-6个月">
					${persondetail.lsshbt}
				</td>
				<td title="一次性">
					${persondetail.cypxbt}
				</td>
				<td title="一次性">
					${persondetail.ycxcyzz}
				</td>
				<td title="每年一次，共3次">
					${persondetail.zjbt}
				</td>
				<td title="一次人数不超过11人">
					${persondetail.cyfhbt}
				</td>
				<td title="总额不超过3万">
					${persondetail.cyddjybt}
				</td>
				<td title="一次性">
					${persondetail.xedbdktx}
				</td>
				<td>
					${persondetail.cyfwzc}
				</td>
				<td>
					<fmt:formatDate value="${persondetail.createDate}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					<fmt:formatDate value="${persondetail.updateDate}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					${persondetail.remarks}
				</td>
				<td>
					<shiro:hasPermission name="persondetail:persondetail:view">
    					<a href="${ctx}/persondetail/persondetail/view?id=${persondetail.id}">查看</a>
    				</shiro:hasPermission>
    				
					<shiro:hasPermission name="persondetail:persondetail:edit">
    					<a href="${ctx}/persondetail/persondetail/form?id=${persondetail.id}">修改</a>
    				</shiro:hasPermission>
    				
    				<shiro:hasPermission name="persondetail:persondetail:delete">
						<a href="${ctx}/persondetail/persondetail/delete?id=${persondetail.id}" onclick="return confirmx('确认要删除该就业专项资金补贴人员的明细吗？', this.href)">删除</a>
					</shiro:hasPermission>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>