package org.apache.jsp.WEB_002dINF.views.modules.sys.new_;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;

public final class sysLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

static private org.apache.jasper.runtime.ProtectedFunctionMapper _jspx_fnmap_0;

static {
  _jspx_fnmap_0= org.apache.jasper.runtime.ProtectedFunctionMapper.getMapForFunction("fns:getAdminPath", com.shark.base.common.config.Global.class, "getAdminPath", new Class[] {});
}

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(4);
    _jspx_dependants.add("/WEB-INF/views/include/taglib.jsp");
    _jspx_dependants.add("/WEB-INF/tlds/shiros.tld");
    _jspx_dependants.add("/WEB-INF/tlds/fns.tld");
    _jspx_dependants.add("/WEB-INF/tlds/fnc.tld");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      if (_jspx_meth_c_005fset_005f0(_jspx_page_context))
        return;
      out.write('\n');
      if (_jspx_meth_c_005fset_005f1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("<html> \n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>欢迎登录后台管理系统</title> \n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctxStatic}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/mainframe/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<script language=\"JavaScript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctxStatic}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/mainframe/js/jquery.js\"></script>\n");
      out.write("<script language=\"JavaScript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctxStatic}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/mainframe/js/cloud.js\"></script>\n");
      out.write("\n");
      out.write("<style type=\"text/css\">\n");
      out.write("\t.header{height:80px;padding-top:255px;padding-left:200px;} .alert{position:relative;width:300px;margin:0 auto;*padding-bottom:0px;}\n");
      out.write("\tlabel.error{background:none;width:270px;font-weight:normal;color:red;margin:0;font-size:14px;}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<script language=\"javascript\">\n");
      out.write("\t$(document).ready(function() {\n");
      out.write("\t\t$('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});\n");
      out.write("\t\t$(window).resize(function(){  \n");
      out.write("\t    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});\n");
      out.write("\t\t$(\"#loginForm\").validate({\n");
      out.write("\t\t\tsubmitHandler: function(form){\n");
      out.write("\t\t\t\tloading('正在提交，请稍等...');\n");
      out.write("\t\t\t\tform.submit();\n");
      out.write("\t\t\t},\n");
      out.write("\t\t\tmessages: {\n");
      out.write("\t\t\t\tusername: {required: \"请填写用户名.\"},password: {required: \"请填写密码.\"},\n");
      out.write("\t\t\t\tvalidateCode: {remote: \"验证码不正确.\", required: \"请填写验证码.\"}\n");
      out.write("\t\t\t},\n");
      out.write("\t\t\terrorLabelContainer: \"#messageBox\",\n");
      out.write("\t\t\terrorPlacement: function(error, element) {\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t//error.appendTo($(\"#loginError\").parent());\n");
      out.write("\t\t\t} \n");
      out.write("\t\t});\n");
      out.write("\t});\n");
      out.write("\t// 如果在框架或在对话框中，则弹出提示并跳转到首页\n");
      out.write("\tif(self.frameElement && self.frameElement.tagName == \"IFRAME\" || $('#left').length > 0 || $('.jbox').length > 0){\n");
      out.write("\t\t//alert('未登录或登录超时。请重新登录，谢谢！');\n");
      out.write("\t\ttop.location = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\";\n");
      out.write("\t}\n");
      out.write("});  \n");
      out.write("</script> \n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body style=\"background-color:#1c77ac; background-image:url(");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctxStatic}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/mainframe/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;\">\n");
      out.write("\t<div class=\"header\">\n");
      out.write("\t\t<div id=\"messageBox\" class=\"alert alert-error ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${empty message ? 'hide' : ''}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\">\n");
      out.write("\t\t\t<!--<button data-dismiss=\"alert\" class=\"close\">×</button>-->\n");
      out.write("\t\t\t<label id=\"loginError\" class=\"error\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("</label>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("    <div id=\"mainBody\">\n");
      out.write("      <div id=\"cloud1\" class=\"cloud\"></div>\n");
      out.write("      <div id=\"cloud2\" class=\"cloud\"></div>\n");
      out.write("    </div>  \n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"logintop\">    \n");
      out.write("    <span>欢迎登录广东泰鸿科技股份有限公司-项目管理系统</span>    \n");
      out.write("    <ul>\n");
      out.write("    <!--<li><a href=\"#\">回首页</a></li>-->\n");
      out.write("    <li><a href=\"#\">帮助</a></li>\n");
      out.write("    <li><a href=\"#\">关于</a></li>\n");
      out.write("    </ul>    \n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div class=\"loginbody\">\n");
      out.write("    \n");
      out.write("    <span class=\"systemlogo\"></span> \n");
      out.write("       \n");
      out.write("    <div class=\"loginbox\">\n");
      out.write("    \n");
      out.write("    <ul>\n");
      out.write("    <form id=\"loginForm\" class=\"form-signin\" action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/login\" method=\"post\">\n");
      out.write("    <li><input id=\"username\" name=\"username\" type=\"text\" class=\"loginuser required\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${username}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\" onclick=\"JavaScript:this.value=''\"/></li>\n");
      out.write("    <li><input id=\"password\" name=\"password\" type=\"password\" class=\"loginpwd required\"  value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${password}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\" onclick=\"JavaScript:this.value=''\"/></li>\n");
      out.write("    <li><input name=\"\" type=\"submit\" class=\"loginbtn\" value=\"登录\"/><label><input name=\"rememberMe\" type=\"checkbox\" value=\"true\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${rememberMe}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write(" />记住密码</label><label><a href=\"#\">忘记密码？</a></label></li>\n");
      out.write("    </form>\n");
      out.write("    </ul>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else log(t.getMessage(), t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fset_005f0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fset_005f0.setParent(null);
    // /WEB-INF/views/include/taglib.jsp(11,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fset_005f0.setVar("ctx");
    // /WEB-INF/views/include/taglib.jsp(11,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true deferredMethod = false expectedTypeName = java.lang.Object methodSignature = null 
    _jspx_th_c_005fset_005f0.setValue(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/include/taglib.jsp(11,0) '${pageContext.request.contextPath}${fns:getAdminPath()}'",_el_expressionfactory.createValueExpression(new org.apache.jasper.el.ELContextWrapper(_jspx_page_context.getELContext(),_jspx_fnmap_0),"${pageContext.request.contextPath}${fns:getAdminPath()}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
    int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
    if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
    return false;
  }

  private boolean _jspx_meth_c_005fset_005f1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f1 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_005fset_005f1.setPageContext(_jspx_page_context);
    _jspx_th_c_005fset_005f1.setParent(null);
    // /WEB-INF/views/include/taglib.jsp(12,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fset_005f1.setVar("ctxStatic");
    // /WEB-INF/views/include/taglib.jsp(12,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true deferredMethod = false expectedTypeName = java.lang.Object methodSignature = null 
    _jspx_th_c_005fset_005f1.setValue(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/include/taglib.jsp(12,0) '${pageContext.request.contextPath}/static'",_el_expressionfactory.createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath}/static",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
    int _jspx_eval_c_005fset_005f1 = _jspx_th_c_005fset_005f1.doStartTag();
    if (_jspx_th_c_005fset_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f1);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f1);
    return false;
  }
}
