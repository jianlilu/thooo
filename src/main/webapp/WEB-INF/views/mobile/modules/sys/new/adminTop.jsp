<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>无标题文档</title> 
<link href="${ctxStatic}/mainframe/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${ctxStatic}/mainframe/js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	});
	
	// 初始化点击第一个一级菜单
	$(".nav a.menu:first span").click();
})	

window.location.reload(); 

</script>


</head>

<body style="background:url(${ctxStatic}/mainframe/images/topbg.gif) repeat-x;"  >

    <div class="topleft">
    <a href="${ctx}/sys/user/info" target="mainFrame"><img src="${ctxStatic}/mainframe/images/logo.png" title="系统首页" /></a>
    </div>
       
    <ul class="nav" id="menu">
    <c:set var="firstMenu" value="true"/>
	<c:forEach items="${fns:getMenuList()}" var="menu" varStatus="idxStatus">
		<c:if test="${menu.parent.id eq '1'&&menu.isShow eq '1'}">
			<li class="menu ${not empty firstMenu && firstMenu ? ' selected' : ''}">
				<c:if test="${empty menu.href}">
					<a class="menu" href="${ctx}/sys/menu/tree?parentId=${menu.id}&parentName=${menu.name}" data-id="${menu.id}" target="leftFrame">
					<img src="${ctxStatic}/mainframe/images/icon${menu.id}.png" title="${menu.name}" /><h2><span>${menu.name}</span></h2>
					</a>
				</c:if>
				<c:if test="${not empty menu.href}">
					<a class="menu" href="${fn:indexOf(menu.href, '://') eq -1 ? ctx : ''}${menu.href}" data-id="${menu.id}" target="mainFrame">
					<img src="${ctxStatic}/mainframe/images/icon01.png" title="${menu.name}" /><h2>${menu.name}</h2>
					</a>
				</c:if>
			</li>
			<c:if test="${firstMenu}">
				<c:set var="firstMenuId" value="${menu.id}"/>
			</c:if>
			<c:set var="firstMenu" value="false"/>	
		</c:if>
	</c:forEach>
    </ul>
            
    <div class="topright">    
    <ul>
    <li><span><img src="${ctxStatic}/mainframe/images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="${ctx}/logout" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>您好,${fns:getUser().name}</span>
	    <!--
		    <i>消息</i>
		    <b>5</b>
	    -->
    </div>    
    
    </div>

</body>
</html>
