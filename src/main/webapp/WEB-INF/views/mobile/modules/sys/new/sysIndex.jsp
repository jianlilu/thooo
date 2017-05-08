<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html  xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@include file="/WEB-INF/views/include/head.jsp" %> 
<title>${fns:getConfig('productName')}</title>
<script>
function SetWinHeight()  
{ 
	var iframe = parent.document.getElementById('main'); 
	//IE
	if(navigator.userAgent.indexOf("MSIE") > 0){  
		if(navigator.userAgent.indexOf("MSIE 6.0") > 0){ 
			alert("当前IE浏览器版本过低，建议使用IE8或以上版本！"); 
		}else if(navigator.userAgent.indexOf("MSIE 7.0") > 0){ 
			alert("当前IE浏览器版本过低，建议使用IE8或以上版本！"); 
			iframe.style.height = document.body.scrollHeight;
		}else if(navigator.userAgent.indexOf("MSIE 8.0") > 0){ 
			iframe.style.height = document.documentElement.scrollHeight - 5;  
		}else if(navigator.userAgent.indexOf("MSIE 9.0") > 0){ 
			iframe.height = document.documentElement.scrollHeight - 5;
		}else if(navigator.userAgent.indexOf("MSIE 10.0") > 0){ 
			iframe.style.height = document.documentElement.scrollHeight;  
		} 
	}
	//火狐
	else if(navigator.userAgent.indexOf("Firefox") > 0){
	    iframe.height = document.documentElement.scrollHeight;  
	}
	//google,360
	else if(navigator.userAgent.indexOf("Chrome") > 0){
	    iframe.height = document.documentElement.scrollHeight;  
	}  
} 
</script>
</head>
<body>
	<iframe src="${ctx}/sys/mainFrame/main"  id="main" onload="Javascript:SetWinHeight()" width="100%" frameborder="0" scrolling="no">
</body>
</html>
