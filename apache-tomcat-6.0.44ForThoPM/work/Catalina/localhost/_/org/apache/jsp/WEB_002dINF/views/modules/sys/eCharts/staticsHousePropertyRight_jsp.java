package org.apache.jsp.WEB_002dINF.views.modules.sys.eCharts;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class staticsHousePropertyRight_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<title>房屋产权统计图</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!-- 为ECharts准备一个具备大小（宽高）的Dom -->\n");
      out.write("<div id=\"main\" style=\"height:400px\"></div>\n");
      out.write("<!-- ECharts单文件引入 -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctxStatic}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/eCharts/build/dist/echarts.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctxStatic}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/jquery/jquery-1.8.3.min.js\"></script> \n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("// 路径配置\n");
      out.write("require.config({\n");
      out.write("    paths: {\n");
      out.write("        echarts: '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctxStatic}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/eCharts/build/dist'\n");
      out.write("    }\n");
      out.write("});\n");
      out.write("\n");
      out.write("// 使用\n");
      out.write("require(\n");
      out.write("    [\n");
      out.write("        'echarts',\n");
      out.write("        'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载\n");
      out.write("    ],\n");
      out.write("    function (ec) {\n");
      out.write("        // 基于准备好的dom，初始化echarts图表\n");
      out.write("        var myChart = ec.init(document.getElementById('main')); \n");
      out.write("        \n");
      out.write("        var categories = [];  \n");
      out.write("        var values = [];  \n");
      out.write("          \n");
      out.write("        // 同步执行  \n");
      out.write("        $.ajaxSettings.async = false;  \n");
      out.write("          \n");
      out.write("        // 加载数据  \n");
      out.write("        $.getJSON('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/echartsControl/echartsControl/housePropertyRightData', function (json) {  \n");
      out.write("            categories = json.categories;  \n");
      out.write("            values = json.values; \n");
      out.write("        });  \n");
      out.write("        \n");
      out.write("        var option = {\n");
      out.write("            \ttitle : {\n");
      out.write("    \t            text: '房屋产权统计图',\n");
      out.write("    \t            subtext: '西山社区'\n");
      out.write("    \t        },\n");
      out.write("                tooltip: {\n");
      out.write("                    show: true\n");
      out.write("                },\n");
      out.write("//                toolbox: {\n");
      out.write("//                    show : true,\n");
      out.write("//                    feature : {\n");
      out.write("//                        mark : {show: true},\n");
      out.write("//                        dataView : {show: true, readOnly: false},\n");
      out.write("//                        magicType : {show: true, type: ['line', 'bar']},\n");
      out.write("//                        restore : {show: true}\n");
      out.write("//                    }\n");
      out.write("//                },\n");
      out.write("//                calculable : true,\n");
      out.write("                legend: {\n");
      out.write("                    data:['房屋数量']\n");
      out.write("                },\n");
      out.write("                xAxis : [\n");
      out.write("                    {\n");
      out.write("                        type : 'category',\n");
      out.write("                        data : categories\n");
      out.write("                    }\n");
      out.write("                ],\n");
      out.write("                yAxis : [\n");
      out.write("                    {\n");
      out.write("                        type : 'value'\n");
      out.write("                    }\n");
      out.write("                ],\n");
      out.write("                series : [\n");
      out.write("                    {\n");
      out.write("                        \"name\":\"数量\",\n");
      out.write("                        \"type\":\"bar\",\n");
      out.write("                        \"data\":values\n");
      out.write("                    }\n");
      out.write("                ]\n");
      out.write("            };\n");
      out.write("\n");
      out.write("        // 为echarts对象加载数据 \n");
      out.write("        myChart.setOption(option); \n");
      out.write("    }\n");
      out.write(");\n");
      out.write("</script>\n");
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
