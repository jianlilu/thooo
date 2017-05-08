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
$(function(){	
	//导航切换
	$(".menuson .header").click(function(){
		var $parent = $(this).parent();
		$(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();
		
		$parent.addClass("active");
		if(!!$(this).next('.sub-menus').size()){
			if($parent.hasClass("open")){
				$parent.removeClass("open").find('.sub-menus').hide();
			}else{
				$parent.addClass("open").find('.sub-menus').show();	
			}
			
			
		}
	});
	
	// 三级菜单点击
	$('.sub-menus li').click(function(e) {
        $(".sub-menus li.active").removeClass("active")
		$(this).addClass("active");
    });
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('.menuson').slideUp();
		if($ul.is(':visible')){
			$(this).next('.menuson').slideUp();
		}else{
			$(this).next('.menuson').slideDown();
		}
	});
})

$(document).ready(function() {
	//进入页面打开第一个菜单的第一个子菜单内容
	//$(".leftmenu dd:first ul li:first a span").click();
});
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>${param.parentName}</div>
    <dl class="leftmenu">
	    <c:set var="menuList" value="${fns:getMenuList()}"/>
	    <c:set var="firstMenu" value="true"/>
	    <c:forEach items="${menuList}" var="menu" varStatus="idxStatus">
	    <c:if test="${menu.parent.id eq (not empty param.parentId ? param.parentId:1)&&menu.isShow eq '1'}">
		    <dd>
			    <div class="title">
				    <c:if test="${empty menu.href}">
				    	<span><img src="${ctxStatic}/mainframe/images/leftico01.png" /></span>${menu.name}
				    </c:if>
				    <c:if test="${not empty menu.href}">
				    	<span><img src="${ctxStatic}/mainframe/images/leftico01.png" /></span>
				    	<a href="${fn:indexOf(menu.href, '://') eq -1 ? ctx : ''}${menu.href}" target="mainFrame">${menu.name}</a>
				    </c:if>
			    </div>
		    	<ul class="menuson">
		    		<c:forEach items="${menuList}" var="menu2">
					<c:if test="${menu2.parent.id eq menu.id && menu2.isShow eq '1'}">
			    		<li>
			    			<!--<div class="header">-->
			    			<cite></cite>
			            	<a href="${fn:indexOf(menu2.href, '://') eq -1 ? ctx : ''}${menu2.href}" target="mainFrame">${menu2.name}</a>
			            	<i></i>
			            	<!--</div>
			            	<ul class="sub-menus">
				            	<c:forEach items="${menuList}" var="menu3">
								<c:if test="${menu3.parent.id eq menu2.id && menu3.isShow eq '1'}">
			                		<li><a href="javascript:;">${menu3.name}</a></li>
			                	</c:if>
			                	</c:forEach>
			                </ul>
			                -->
			    		</li>
			    	</c:if>
			    	</c:forEach>
			    </ul>
		    </dd>
	    </c:if>
		</c:forEach>
    </dl>
</body>
</html>
