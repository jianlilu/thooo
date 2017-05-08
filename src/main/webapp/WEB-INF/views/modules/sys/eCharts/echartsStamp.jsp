<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>证书使用统计图</title>
</head>
<body style="padding:1px">
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="bar" style="width:600px; height:500px; float: left; border: 1px solid #ccc;
margin: 1px; padding:0px;"></div>
<div id="pie" style="width:600px; height:500px; float: left; border: 1px solid #ccc;
margin: 2px; padding:0px;"></div>
  
<!-- ECharts单文件引入 -->
<script src="${ctxStatic}/eCharts/build/dist/echarts.js"></script>

<script type="text/javascript" src="${ctxStatic}/jquery/jquery-1.8.3.min.js"></script> 
<script type="text/javascript">
// 路径配置
require.config({
    paths: {
        echarts: '${ctxStatic}/eCharts/build/dist'
    }
});

// 使用
require(
    [
        'echarts',
        'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
        'echarts/chart/line',
        'echarts/chart/pie',
        'echarts/chart/funnel',
//    'echarts/chart/ECharts3',
//        'echarts/chart/echarts_bar',
//        'echarts/chart/echarts_funnel',
//        'echarts/chart/echarts_line',
//        'echarts/chart/echarts_pie',
    
        
    ],
    
    DrawCharts // 调用 function DrawCharts(ec) 函数
  
);


///将画多个图表的进行函数封装
  function DrawCharts(ec) {
    drawBar(ec); //条形图
    drawPie(ec); //饼状图
  }
  
  //条形图&折线图
  function drawBar(ec) {
      // 基于准备好的dom，初始化echarts图表
      var myChart = ec.init(document.getElementById('bar')); 
      
    //图表显示提示信息
//      myChart.showLoading({
//      text: "图表数据正在努力加载..."
//      });
//      myChart.hideLoading();
      
      var categories = [];  //印章类别
      var values = [];  //借用印章次数
      var names = []; //部门
      var series = [];
      

        
      // 同步执行  
      $.ajaxSettings.async = false;  
      // 加载数据  
//      $.getJSON('${ctx}/echartsControl/echaControl/getData', function (json) {  
      $.getJSON('${ctx}/echartsControl/echaStampControl/getData', function (json) {  
          categories = json.categories;   //
          values = json.values;  
          debugger;
          names = json.names; 
      });  
      
      for (var j = 0; j < names.length; j++) {
        series[j] = {name: names[j], type: 'bar', data: values[j]}; //循环为 series赋值
      }
    
      
      var option = {
        title : {
              text: '各 部 门 印 章 使 用 统计（次）',
              subtext: '使 用 次 数',
              x: 'center'
          },
          tooltip: {
              show: true,
              trigger: 'axis',
              axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                  type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
              }
          },
          toolbox: {
              show : true,
              orient: 'vertical',
              x: 'right',
              y: 'center',
              feature : {
                  mark : {show: true},
                  dataView : {show: true, readOnly: false},
                  magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                  restore : {show: true},
                  saveAsImage : {show: true}
              }
          },
          
//        calculable: true,    //容易搞错的属性，折线图、柱状图是否叠加
          
          legend : {
              data:names, //部门
              y: "463",
//              x: "0"
          },
          xAxis : [
              {
                  type : 'category',
                  data : categories //印章类别
              }
          ],
          yAxis : [
              {
                  type : 'value'
              }
          ],
          series : series //借用印章次数
                    
      };

      // 为echarts对象加载数据 
      myChart.setOption(option); 
  }
  
  
  //饼状图
  function drawPie(ec) {
      // 基于准备好的dom，初始化echarts图表
      var myChart = ec.init(document.getElementById('pie')); 


      var categories = [];  //印章类别
      var values = [];  //借用印章次数
      var names = []; //部门
      // var series = [];
      var certfValues = [];
      var depValues = [];
      
      var certfTotals = [];
        
      // 同步执行  
      $.ajaxSettings.async = false;  
      // 加载数据  
      $.getJSON('${ctx}/echartsControl/echaStampControl/getData', function (json) {  
//    	  $.getJSON('${ctx}/echartsControl/echaControl/getData', function (json) {  
          categories = json.categories;   //
          values = json.values;  
          debugger;
          names = json.names; 
          certfTotals = json.certfTotals;
      });  
      
//      for (var j = 0; j < names.length; j++) {
//        series[j] = {name: names[j], type: 'bar', data: values[j]}; //循环为 series赋值
//      }


      //印章类型和每种印章使用的总次数
    	  for (var j = 0; j < categories.length; j++) {
//    		  alert(certfTotals[j]);
    	        certfValues[j] = {value: certfTotals[j], name: categories[j]}
    	  }
      
  
       //部门名称和每个部门使用印章的总次数
      for (var i = 0; i < names.length; i++) {
    	  var sum = 0;
    	  for (var j = 0; j < categories.length; j++) {
    		  sum = sum + parseInt(values[i][j]);
    	  }
//    	  alert("values="+sum);
//    	  alert("values="+values[i]);
    		  
    	  depValues[i] = {value: sum, name: names[i]}
    	
//        depValues[i] = {value: certfTotals[i], name: names[i]}
      }
      
      var option = {
          title: {
              text: '各 部 门 印 章 使 用 统 计（次）',
              subtext: '使 用 次 数',
              x: 'center'
          },
          tooltip: {
              trigger: 'item',
              formatter: "{a} : {b}  <br/>次数 : {c} ({d}%)"
          },
          legend: {
            y: "bottom",
            data: depValues
              
          },
          toolbox: {
              show: true,
              orient: 'vertical',
              x: 'right',
              y: 'center',
              feature: {
                  mark: { show: true },
                  dataView: { show: true, readOnly: false },
                  magicType: {
                      show: true,
                      type: ['pie', 'funnel'],
                      option: {
                          funnel: {
                              x: '25%',
                              width: '50%',
                              funnelAlign: 'left',
                              max: 10
                          }
                      }
                  },
                  restore: { show: true },
                  saveAsImage: { show: true }
              }
          },
//          calculable: true,
          series: [
              {
                  name:'印章',
                  type:'pie',
                  selectedMode: 'single',
//                  selectedMode: 'multiple',
                  radius: [0, '32%'],

                  label: {
                      normal: {
                          position: 'inner'
                      }
                  },
                  labelLine : {
                      show : false
                  },
                  data: certfValues
              },
              {
                  name:'部门',
                  type:'pie',
//                  radius: ['40%', '50%'],
                  radius: ['45%', '55%'],

                  data:depValues
              }
          ]
      };

      // 为echarts对象加载数据 
      myChart.setOption(option); 
  }


</script>
</body>

</html>
