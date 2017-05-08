<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>房屋产权统计图</title>
</head>
<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="height:600px"></div>
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
        'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
    ],
    function (ec) {
        // 基于准备好的dom，初始化echarts图表
        var myChart = ec.init(document.getElementById('main')); 
        
        var categories = [];  
        var values = [];  
          
        // 同步执行  
        $.ajaxSettings.async = false;  
          
        // 加载数据  
        $.getJSON('${ctx}/echartsControl/echartsControl/housePropertyRightData', function (json) {  
            categories = json.categories;  
            values = json.values; 
        });  
        
        var option = {
            	title : {
    	            text: '房屋产权统计图',
    	            subtext: '西山社区'
    	        },
                tooltip: {
                    show: true
                },
//                toolbox: {
//                    show : true,
//                    feature : {
//                        mark : {show: true},
//                        dataView : {show: true, readOnly: false},
//                        magicType : {show: true, type: ['line', 'bar']},
//                        restore : {show: true}
//                    }
//                },
//                calculable : true,
                legend: {
                    data:['房屋数量']
                },
                xAxis : [
                    {
                        type : 'category',
                        data : categories
                    }
                ],
                yAxis : [
                    {
                        type : 'value'
                    }
                ],
                series : [
                    {
                        "name":"数量",
                        "type":"bar",
                        "data":values
                    }
                ]
            };

        // 为echarts对象加载数据 
        myChart.setOption(option); 
    }
);
</script>
</body>

</html>
