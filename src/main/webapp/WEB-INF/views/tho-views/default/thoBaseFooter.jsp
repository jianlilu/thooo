<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>

<!-- Footer -->
<footer class="footer section-small" style="padding-top:25px">  <!-- footer红色分割线 -->
<div class="container">
	<div class="row">

		<!-- Footer Column -->
		<div class="catainer">			
			<div class="sidebar-menu" style="height:130px">							
				<p class="lead"><em>友情链接</em></p>
				<ul class="list-unstyled list-inline navbar-collapse collapse">				
					<li class="h4"><a href="http://gsxt.saic.gov.cn/" target="_blank" style="border-bottom: none; padding-right: 60px;"><blockquote style="background-color: #fff;">全国企业信用信息网</blockquote></a></li>
					<li class="h4"><a href="http://www.mzaic.gov.cn/" target="_blank" style="padding-right: 70px;">红盾信息网</a></li>
					<li class="h4"><a href="http://sbcx.saic.gov.cn:9080/tmois/wscxsy_getIndex.xhtml" target="_blank" style="padding-right: 70px;">商标综合查询系统</a></li>
					<li class="h4"><a href="http://www.mzsbxh.org/" target="_blank" style="padding-right: 70px;">梅州市商标协会</a></li>
					<li class="h4"><a href="http://www.mzgsxh.com/" target="_blank" style="padding-right: 70px;">梅州市个私协会</a></li>			
				</ul>				
			</div>	
				
		<!-- 版权信息 -->	
		<div class="text-center">
							
			<p class="text" style="color: #373c38;">
				客户服务热线：<span class="h4">0753-2588111</span> 传真：<span class="h4">0753-2588133</span>
			</p>
						
			<p class="text" style="color: #373c38;">
				公司地址：广东梅县新县城府前大道泰鸿科技大厦
			</p>
						
			<p class="text" style="color: #373c38;">
				泰鸿科技 版权所有 粤ICP备12060091号-3 
			</p>
					
			<p class="text" style="color: #373c38;">
				网页游戏排行榜 | 网页游戏开服表
			</p>
			
			<!-- Copyright -->
			<p class="copyright" style="color: #373c38;">	
				<!-- cnzz站点统计 -->
				<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260962439'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1260962439%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));</script>
				<span  style="padding-left:2px">Copyright &copy; 2015-2016 <strong> gdTho</strong></span>
			</p>
			<!-- /Copyright -->

		<div/>
		<!-- /版权信息 -->	
			
	</div>
	<!-- /Footer Column -->
		
	</div>
</div>
</footer>
<!-- /Footer -->

<!-- Scroll To Top -->
<div id="scroll-to-top" class="scroll-to-top">
    <i class="icon fa fa-angle-up"></i>
</div>
<!-- /Scroll To Top -->


<!-- TODO: Remove this block, Demo-version only --> <!-- 左侧网站'主题颜色'和'主题样式'选择 -->
<!-- Styleswitcher -->
<div id="styleswitcher" class="styleswitcher">
    <div class="styleswitcher-content">
        <h4 class="styleswitcher-title">主题颜色选择</h4>
        <div class="styleswitcher-block">
            <ul class="styleswitcher-list-colors">
                <li><a href="javascript: switchStyle('theme-persimmon')" style="background: #ff5555;" title="Persimmon"></a></li>
                <li><a href="javascript: switchStyle('theme-atomic-tangerine')" style="background: #ff9e55;" title="Atomic Tangerine"></a></li>
                <li><a href="javascript: switchStyle('theme-yellow-sea')" style="background: #fab000;" title="Yellow Sea"></a></li>
                <li><a href="javascript: switchStyle('theme-rio-grande')" style="background: #aed605;" title="Rio Grande"></a></li>
                <li><a href="javascript: switchStyle('theme-vida-loca')" style="background: #38b71f;" title="Vida Loca"></a></li>
                <li><a href="javascript: switchStyle('theme-mountain-meadow')" style="background: #1fb768;" title="Mountain Meadow"></a></li>
                <li><a href="javascript: switchStyle('theme-java')" style="background: #1fb7a4;" title="Java"></a></li>
                <li><a href="javascript: switchStyle('theme-mariner')" style="background: #3274cd;" title="Mariner"></a></li>
                <li><a href="javascript: switchStyle('theme-medium-purple')" style="background: #996de9;" title="Medium Purple"></a></li>
                <li><a href="javascript: switchStyle('theme-lavender-magenta')" style="background: #e94de4;" title="Lavender Magenta"></a></li>
            </ul>
        </div>
        <h4 class="styleswitcher-title">导航栏样式</h4>
        <div class="styleswitcher-block">
            <select id="styleswitcher-navbar-style">
                <option value="style-1">默认</option>
                <option value="style-2">充满</option>
                <option value="style-3">下划线</option>
            </select>
        </div>
        
    </div>

    <!-- 左边设置主题颜色的‘齿轮’图标 -->
    <div class="styleswitcher-button vertical-middle"><i class="fa fa-gear"></i></div>
    <!-- /左边设置主题颜色的‘齿轮’图标 -->
    
</div>


<!-- 左边Color Presets 和  Navigation Style （主题颜色和导航条样式切换的设置）-->
<link rel="stylesheet" type="text/css" href="${ctxStatic}/tho-resources/demo/styleswitcher.css">
<script src="${ctxStatic}/tho-resources/demo/styleswitcher.js"></script>
<!-- /Styleswitcher -->

