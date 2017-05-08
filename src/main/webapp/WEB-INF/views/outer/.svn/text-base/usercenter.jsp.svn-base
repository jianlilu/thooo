<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>首页 - 梅州市投资促进展示平台</title>
<script type="text/javascript">
	var menuFlag = "${menuFlag}";
</script>
<%@include file="/WEB-INF/views/outer/common/mainStyle.jsp" %> 
</head>

<body>
	<%@include file="/WEB-INF/views/outer/common/header.jsp" %>

	<div class="user-center-banner"></div>
	<div class="main">
    
    	<div class="user-center">
			<div class="center-main clear">
				<div class="left-nav left">
					<div class="bank-pic">
						<img src="${ctxStatic}/outer/images/head.png" alt="" />
						<div class="head-mark">&nbsp;</div>
					</div>
					<div class="bank-name">${businessuser.account}</div>
					<div class="nav">
						<ul>
							<li class="selected">
								<a href="${outUrl}/usercenter">项目进度</a>
							</li>
							<li>
								<a href="${outUrl}/userpolicy">政策推送</a>
							</li>
							<li>
								<a href="${outUrl}/modifyInfo">个人设置</a>
							</li>
                            <li>
								<a href="${outUrl}/modifyPwd">修改密码</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="right-content left">
					<div class="bank-top clear">
						<div class="bank-info left">
							<div class="bank-info-main">
								<div class="bank-title">
                                	<div class="clear">
                                        <a href="${outUrl}/modifyInfo" class="right">修改个人设置</a>
                                        <a href="${outUrl}/modifyPwd" class="right">修改密码</a>
                                        <h1 class="left"><em>${businessuser.account}</em>，欢迎您！</h1>
                                    </div>
                                    <span>(&nbsp;账号：${businessuser.account} &nbsp;)</span>
								</div>
								<div class="meg-box clear">
									<a href="${outUrl}/list/news/${noticeCategoryId}" class="right" target="_blank">更多公告</a>
									<c:forEach items="${noticelist}" var="notice" varStatus="status">
										<c:if test="${status.first==true}">
											<a href="${outUrl}/view/news/${notice.category.id}/${notice.id}" class="left overflow" target="_blank">
											${notice.title}</a>
									</c:if>
									</c:forEach>
								</div>
							</div>
						</div>
						<div class="policy left">
                        	<h3>政策推送</h3>
                            <ul>
                            	<c:forEach items="${policylist}" var="policy">
                            	<li><a href="${outUrl}/view/news/${policy.category.id}/${policy.id}" title="${policy.title}" class="overflow" target="_blank">${policy.title}</a></li>
                            	</c:forEach>
                            </ul>
                        </div>
					</div>
					<table class="desk-table">
						<tr>
							<th class="col-1">项目名称</th>
							<th class="col-2">项目进度</th>
							<th class="col-3">发布日期</th>
							<th class="col-4">状态</th>
							<th class="col-5">操作</th>
						</tr>
						<c:forEach items="${projectPage.list}" var="project">
						<tr>
							<td class="col-1">
								<a href="#">${project.projectname}</a>
							</td>
							<td class="col-2">${project.processPer}</td>
							<td class="col-3"><fmt:formatDate value="${project.updateDate}" pattern="yyyy-MM-dd"/></td>
							<td class="col-4">${fns:getDictLabel(project.projectstatus, 'projectstatus', '')}</td>
							<td class="col-5"><a href="#" class="imp-link">查看</a></td>
						</tr>
						</c:forEach>
						<!--
						<tr>
							<td colspan="5"><a href="#" class="more-link">更多</a></td>
						</tr>
						-->
					</table>
				</div>
			</div>
		</div>
    
	</div>
	
	<%@include file="/WEB-INF/views/outer/common/footer.jsp" %>
</body>
</html>
