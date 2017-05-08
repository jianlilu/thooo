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
	
	$("#setting").click(function(){
		top.$.jBox('get:${ctx}/sys/menu/treeselect;JSESSIONID=<shiro:principal property="sessionid"/>', {title:'选择菜单', buttons:{'关闭':true}, width:300, height: 350, top:10});
		//if ($("#menuContent").html()==""){$.get("${ctx}/sys/menu/treeselect", function(data){$("#menuContent").html(data);});}else{$("#menuContent").toggle(100);}
	});
})	
</script>


</head>

<body style="background:url(${ctxStatic}/mainframe/images/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="${ctx}/persondetail/persondetail" target="mainFrame"><img src="${ctxStatic}/mainframe/images/logo.png" title="系统首页" /></a>
    </div>
        
    <div class="topright">    
    <ul>
    <!--<li><span><img src="${ctxStatic}/mainframe/images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>-->
    <li><a href="#" id="setting">个人设置</a></li>
    <li><a href="${ctx}/logout" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>您好,${fns:getUser().name}</span>
    <!--<i>消息</i>
    <b>5</b>-->
    </div>    
    
    </div>

</body>
</html>
