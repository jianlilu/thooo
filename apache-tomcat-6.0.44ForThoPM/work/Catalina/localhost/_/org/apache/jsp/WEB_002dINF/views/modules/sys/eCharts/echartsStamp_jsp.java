package org.apache.jsp.WEB_002dINF.views.modules.sys.eCharts;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class echartsStamp_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\r');
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
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<title>证书使用统计图</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body style=\"padding:1px\">\r\n");
      out.write("<!-- 为ECharts准备一个具备大小（宽高）的Dom -->\r\n");
      out.write("<div id=\"bar\" style=\"width:600px; height:500px; float: left; border: 1px solid #ccc;\r\n");
      out.write("margin: 1px; padding:0px;\"></div>\r\n");
      out.write("<div id=\"pie\" style=\"width:600px; height:500px; float: left; border: 1px solid #ccc;\r\n");
      out.write("margin: 2px; padding:0px;\"></div>\r\n");
      out.write("  \r\n");
      out.write("<!-- ECharts单文件引入 -->\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctxStatic}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/eCharts/build/dist/echarts.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctxStatic}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/jquery/jquery-1.8.3.min.js\"></script> \r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("// 路径配置\r\n");
      out.write("require.config({\r\n");
      out.write("    paths: {\r\n");
      out.write("        echarts: '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctxStatic}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/eCharts/build/dist'\r\n");
      out.write("    }\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("// 使用\r\n");
      out.write("require(\r\n");
      out.write("    [\r\n");
      out.write("        'echarts',\r\n");
      out.write("        'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载\r\n");
      out.write("        'echarts/chart/line',\r\n");
      out.write("        'echarts/chart/pie',\r\n");
      out.write("        'echarts/chart/funnel',\r\n");
      out.write("//    'echarts/chart/ECharts3',\r\n");
      out.write("//        'echarts/chart/echarts_bar',\r\n");
      out.write("//        'echarts/chart/echarts_funnel',\r\n");
      out.write("//        'echarts/chart/echarts_line',\r\n");
      out.write("//        'echarts/chart/echarts_pie',\r\n");
      out.write("    \r\n");
      out.write("        \r\n");
      out.write("    ],\r\n");
      out.write("    \r\n");
      out.write("    DrawCharts // 调用 function DrawCharts(ec) 函数\r\n");
      out.write("  \r\n");
      out.write(");\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("///将画多个图表的进行函数封装\r\n");
      out.write("  function DrawCharts(ec) {\r\n");
      out.write("    drawBar(ec); //条形图\r\n");
      out.write("    drawPie(ec); //饼状图\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("  //条形图&折线图\r\n");
      out.write("  function drawBar(ec) {\r\n");
      out.write("      // 基于准备好的dom，初始化echarts图表\r\n");
      out.write("      var myChart = ec.init(document.getElementById('bar')); \r\n");
      out.write("      \r\n");
      out.write("    //图表显示提示信息\r\n");
      out.write("//      myChart.showLoading({\r\n");
      out.write("//      text: \"图表数据正在努力加载...\"\r\n");
      out.write("//      });\r\n");
      out.write("//      myChart.hideLoading();\r\n");
      out.write("      \r\n");
      out.write("      var categories = [];  //印章类别\r\n");
      out.write("      var values = [];  //借用印章次数\r\n");
      out.write("      var names = []; //部门\r\n");
      out.write("      var series = [];\r\n");
      out.write("      \r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("      // 同步执行  \r\n");
      out.write("      $.ajaxSettings.async = false;  \r\n");
      out.write("      // 加载数据  \r\n");
      out.write("//      $.getJSON('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/echartsControl/echaControl/getData', function (json) {  \r\n");
      out.write("      $.getJSON('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/echartsControl/echaStampControl/getData', function (json) {  \r\n");
      out.write("          categories = json.categories;   //\r\n");
      out.write("          values = json.values;  \r\n");
      out.write("          debugger;\r\n");
      out.write("          names = json.names; \r\n");
      out.write("      });  \r\n");
      out.write("      \r\n");
      out.write("      for (var j = 0; j < names.length; j++) {\r\n");
      out.write("        series[j] = {name: names[j], type: 'bar', data: values[j]}; //循环为 series赋值\r\n");
      out.write("      }\r\n");
      out.write("    \r\n");
      out.write("      \r\n");
      out.write("      var option = {\r\n");
      out.write("        title : {\r\n");
      out.write("              text: '各 部 门 印 章 使 用 统计（次）',\r\n");
      out.write("              subtext: '使 用 次 数',\r\n");
      out.write("              x: 'center'\r\n");
      out.write("          },\r\n");
      out.write("          tooltip: {\r\n");
      out.write("              show: true,\r\n");
      out.write("              trigger: 'axis',\r\n");
      out.write("              axisPointer: {            // 坐标轴指示器，坐标轴触发有效\r\n");
      out.write("                  type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'\r\n");
      out.write("              }\r\n");
      out.write("          },\r\n");
      out.write("          toolbox: {\r\n");
      out.write("              show : true,\r\n");
      out.write("              orient: 'vertical',\r\n");
      out.write("              x: 'right',\r\n");
      out.write("              y: 'center',\r\n");
      out.write("              feature : {\r\n");
      out.write("                  mark : {show: true},\r\n");
      out.write("                  dataView : {show: true, readOnly: false},\r\n");
      out.write("                  magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},\r\n");
      out.write("                  restore : {show: true},\r\n");
      out.write("                  saveAsImage : {show: true}\r\n");
      out.write("              }\r\n");
      out.write("          },\r\n");
      out.write("          \r\n");
      out.write("//        calculable: true,    //容易搞错的属性，折线图、柱状图是否叠加\r\n");
      out.write("          \r\n");
      out.write("          legend : {\r\n");
      out.write("              data:names, //部门\r\n");
      out.write("              y: \"463\",\r\n");
      out.write("//              x: \"0\"\r\n");
      out.write("          },\r\n");
      out.write("          xAxis : [\r\n");
      out.write("              {\r\n");
      out.write("                  type : 'category',\r\n");
      out.write("                  data : categories //印章类别\r\n");
      out.write("              }\r\n");
      out.write("          ],\r\n");
      out.write("          yAxis : [\r\n");
      out.write("              {\r\n");
      out.write("                  type : 'value'\r\n");
      out.write("              }\r\n");
      out.write("          ],\r\n");
      out.write("          series : series //借用印章次数\r\n");
      out.write("                    \r\n");
      out.write("      };\r\n");
      out.write("\r\n");
      out.write("      // 为echarts对象加载数据 \r\n");
      out.write("      myChart.setOption(option); \r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  //饼状图\r\n");
      out.write("  function drawPie(ec) {\r\n");
      out.write("      // 基于准备好的dom，初始化echarts图表\r\n");
      out.write("      var myChart = ec.init(document.getElementById('pie')); \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      var categories = [];  //印章类别\r\n");
      out.write("      var values = [];  //借用印章次数\r\n");
      out.write("      var names = []; //部门\r\n");
      out.write("      // var series = [];\r\n");
      out.write("      var certfValues = [];\r\n");
      out.write("      var depValues = [];\r\n");
      out.write("      \r\n");
      out.write("      var certfTotals = [];\r\n");
      out.write("        \r\n");
      out.write("      // 同步执行  \r\n");
      out.write("      $.ajaxSettings.async = false;  \r\n");
      out.write("      // 加载数据  \r\n");
      out.write("      $.getJSON('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/echartsControl/echaStampControl/getData', function (json) {  \r\n");
      out.write("//    \t  $.getJSON('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/echartsControl/echaControl/getData', function (json) {  \r\n");
      out.write("          categories = json.categories;   //\r\n");
      out.write("          values = json.values;  \r\n");
      out.write("          debugger;\r\n");
      out.write("          names = json.names; \r\n");
      out.write("          certfTotals = json.certfTotals;\r\n");
      out.write("      });  \r\n");
      out.write("      \r\n");
      out.write("//      for (var j = 0; j < names.length; j++) {\r\n");
      out.write("//        series[j] = {name: names[j], type: 'bar', data: values[j]}; //循环为 series赋值\r\n");
      out.write("//      }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      //印章类型和每种印章使用的总次数\r\n");
      out.write("    \t  for (var j = 0; j < categories.length; j++) {\r\n");
      out.write("//    \t\t  alert(certfTotals[j]);\r\n");
      out.write("    \t        certfValues[j] = {value: certfTotals[j], name: categories[j]}\r\n");
      out.write("    \t  }\r\n");
      out.write("      \r\n");
      out.write("  \r\n");
      out.write("       //部门名称和每个部门使用印章的总次数\r\n");
      out.write("      for (var i = 0; i < names.length; i++) {\r\n");
      out.write("    \t  var sum = 0;\r\n");
      out.write("    \t  for (var j = 0; j < categories.length; j++) {\r\n");
      out.write("    \t\t  sum = sum + parseInt(values[i][j]);\r\n");
      out.write("    \t  }\r\n");
      out.write("//    \t  alert(\"values=\"+sum);\r\n");
      out.write("//    \t  alert(\"values=\"+values[i]);\r\n");
      out.write("    \t\t  \r\n");
      out.write("    \t  depValues[i] = {value: sum, name: names[i]}\r\n");
      out.write("    \t\r\n");
      out.write("//        depValues[i] = {value: certfTotals[i], name: names[i]}\r\n");
      out.write("      }\r\n");
      out.write("      \r\n");
      out.write("      var option = {\r\n");
      out.write("          title: {\r\n");
      out.write("              text: '各 部 门 印 章 使 用 统 计（次）',\r\n");
      out.write("              subtext: '使 用 次 数',\r\n");
      out.write("              x: 'center'\r\n");
      out.write("          },\r\n");
      out.write("          tooltip: {\r\n");
      out.write("              trigger: 'item',\r\n");
      out.write("              formatter: \"{a} : {b}  <br/>次数 : {c} ({d}%)\"\r\n");
      out.write("          },\r\n");
      out.write("          legend: {\r\n");
      out.write("            y: \"bottom\",\r\n");
      out.write("            data: depValues\r\n");
      out.write("              \r\n");
      out.write("          },\r\n");
      out.write("          toolbox: {\r\n");
      out.write("              show: true,\r\n");
      out.write("              orient: 'vertical',\r\n");
      out.write("              x: 'right',\r\n");
      out.write("              y: 'center',\r\n");
      out.write("              feature: {\r\n");
      out.write("                  mark: { show: true },\r\n");
      out.write("                  dataView: { show: true, readOnly: false },\r\n");
      out.write("                  magicType: {\r\n");
      out.write("                      show: true,\r\n");
      out.write("                      type: ['pie', 'funnel'],\r\n");
      out.write("                      option: {\r\n");
      out.write("                          funnel: {\r\n");
      out.write("                              x: '25%',\r\n");
      out.write("                              width: '50%',\r\n");
      out.write("                              funnelAlign: 'left',\r\n");
      out.write("                              max: 10\r\n");
      out.write("                          }\r\n");
      out.write("                      }\r\n");
      out.write("                  },\r\n");
      out.write("                  restore: { show: true },\r\n");
      out.write("                  saveAsImage: { show: true }\r\n");
      out.write("              }\r\n");
      out.write("          },\r\n");
      out.write("//          calculable: true,\r\n");
      out.write("          series: [\r\n");
      out.write("              {\r\n");
      out.write("                  name:'印章',\r\n");
      out.write("                  type:'pie',\r\n");
      out.write("                  selectedMode: 'single',\r\n");
      out.write("//                  selectedMode: 'multiple',\r\n");
      out.write("                  radius: [0, '32%'],\r\n");
      out.write("\r\n");
      out.write("                  label: {\r\n");
      out.write("                      normal: {\r\n");
      out.write("                          position: 'inner'\r\n");
      out.write("                      }\r\n");
      out.write("                  },\r\n");
      out.write("                  labelLine : {\r\n");
      out.write("                      show : false\r\n");
      out.write("                  },\r\n");
      out.write("                  data: certfValues\r\n");
      out.write("              },\r\n");
      out.write("              {\r\n");
      out.write("                  name:'部门',\r\n");
      out.write("                  type:'pie',\r\n");
      out.write("//                  radius: ['40%', '50%'],\r\n");
      out.write("                  radius: ['45%', '55%'],\r\n");
      out.write("\r\n");
      out.write("                  data:depValues\r\n");
      out.write("              }\r\n");
      out.write("          ]\r\n");
      out.write("      };\r\n");
      out.write("\r\n");
      out.write("      // 为echarts对象加载数据 \r\n");
      out.write("      myChart.setOption(option); \r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
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
