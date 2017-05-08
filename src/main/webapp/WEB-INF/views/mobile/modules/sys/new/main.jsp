<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<title>${fns:getConfig('productName')}</title>
</head> 

<frameset rows="88,*,31" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="${ctx}/sys/mainFrame/top" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="*" frameborder="no" border="0" framespacing="0">
    <frame src="${ctx}/persondetail/persondetail" name="mainFrame" id="mainFrame" title="mainFrame" />
  </frameset>
  <frame src="${ctx}/sys/mainFrame/footer" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" title="bottomFrame" />
</frameset>
<noframes><body>
</body></noframes>
</html>
