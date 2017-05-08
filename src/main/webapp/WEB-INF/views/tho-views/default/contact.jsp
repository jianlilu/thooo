
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%><!DOCTYPE html>
<html lang="en">
<head>

    <!-- Page title -->
    <title>CleaThin</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" href="${ctxStatic}/tho-resources/img/favicon.png">

    <!-- Style -->
    <link rel="stylesheet" href="${ctxStatic}/tho-resources/css/theme.css">
    
    <!-- SCRIPTS -->
    <script src="${ctxStatic}/tho-resources/js/jquery-2.2.0.min.js"></script>
    <script src="${ctxStatic}/tho-resources/js/bootstrap.min.js"></script>
    <script src="${ctxStatic}/tho-resources/js/owl.carousel.min.js"></script>
    <script src="${ctxStatic}/tho-resources/js/jquery.magnific-popup.min.js"></script>
    <script src="${ctxStatic}/tho-resources/js/jquery.validate.min.js"></script>
    <script src="${ctxStatic}/tho-resources/js/jquery.stellar.min.js"></script>
    <script src="${ctxStatic}/tho-resources/js/wow.min.js"></script>
    <script src="${ctxStatic}/tho-resources/js/masonry.pkgd.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script src="${ctxStatic}/tho-resources/js/general.js"></script>
    <!-- /SCRIPTS -->
    
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/tho-resources/demo/styleswitcher.css">
    <script src="${ctxStatic}/tho-resources/demo/styleswitcher.js"></script>
    <!-- /Styleswitcher -->
    
    

</head>
<body>

<!-- Header -->
<header id="home" class="header">

<!-- 引入头部导航布局 -->
<%@include file="/WEB-INF/views/tho-views/default/thoBaseHeader.jsp" %>

</header>
<!-- /Header -->

<!-- Section: Page Header -->
<section class="section-page-header">
    <div class="container">
        <div class="row">

            <!-- Page Title -->
            <div class="col-md-8">
                <h1 class="title">Contact</h1>
                <div class="subtitle">There are many variations of passages </div>
            </div>
            <!-- /Page Title -->

            <!-- Breadcrumbs -->
            <div class="col-md-4">
                <ul class="breadcrumb">
                    <li><i class="fa fa-fw fa-home"></i> <a href="http://localhost:8080/tho">Home</a></li>
                    <li>Contact</li>
                </ul>
            </div>
            <!-- /Breadcrumbs -->

        </div>
    </div>
</section>
<!-- /Section: Page Header -->

<!-- Main -->
<main class="main-container">
    <div class="container">

        <div class="row">

            <!-- Contact Form -->
            <div class="col-md-8 contact-form fadeIn wow" data-wow-duration="1.3s">

                <h3 class="title">Send Message</h3>

                <form class="form-ajax" method="post">
                    <input type="hidden" name="form" value="Contact Page">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <input type="text" name="name" class="form-control" placeholder="Your Name... *" required>
                        </div>
                        <div class="form-group col-md-6">
                            <input type="email" name="email" class="form-control" placeholder="E-mail address... *" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <textarea name="message" class="form-control" placeholder="Message... "></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <button type="submit" class="btn btn-theme"><i class="fa fa-fw fa-paper-plane-o"></i> Send Message</button>
                        </div>
                    </div>
                </form>
            </div>
            <!-- /Contact Form -->

            <!-- Address -->
            <div class="col-md-4 fadeIn wow" data-wow-duration="1.3s" data-wow-delay="0.7s">

                <h3 class="title">Information</h3>
                <p>
                    There are many variations of passages of Lorem Ipsum available, but the majority have suffered
                    alteration in some form.
                </p>

                <ul class="contact-information">
                    <li><i class="icon fa fa-fw fa-globe"></i><span>Address</span> 988782, Our Street, L.A.</li>
                    <li><i class="icon fa fa-fw fa-envelope"></i><span>E-mail</span> clients@example.com</li>
                    <li><i class="icon fa fa-fw fa-phone"></i><span>Phone</span> +12 345 678 000</li>
                </ul>

            </div>
            <!-- /Address -->

        </div>

    </div>

    <div id="map-canvas"></div>

</main>
<!-- /Main -->

<!-- 引入脚部导航布局 -->
<%@include file="/WEB-INF/views/tho-views/default/thoBaseFooter.jsp" %>

<!-- Scroll To Top -->
<div id="scroll-to-top" class="scroll-to-top">
    <i class="icon fa fa-angle-up"></i>
</div>
<!-- /Scroll To Top -->

<!-- Modal: Result Message -->
<div class="modal fade" id="result" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    <i class="fa fa-times"></i>
                </button>
                <h4 class="modal-title">Sending message</h4>
            </div>

            <div class="modal-body">

                <div class="result-icon">
                    <div class="icon-border">
                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" preserveAspectRatio="none">
                            <circle cx="8" cy="8" r="6.215" transform="rotate(90 8 8)"></circle>
                        </svg>
                        <i class="icon fa fa-check"></i>
                    </div>
                </div>

                <p class="modal-result h4 text-center"></p>
            </div>

        </div>
    </div>
</div>
<!-- /Modal: Result Message -->



<!-- TODO: Remove this block, Demo-version only -->
<!-- Styleswitcher -->
<div id="styleswitcher" class="styleswitcher">
    <div class="styleswitcher-content">

        <h4 class="styleswitcher-title">Color Presets</h4>
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

        <h4 class="styleswitcher-title">Navigation Style</h4>
        <div class="styleswitcher-block">
            <select id="styleswitcher-navbar-style">
                <option value="style-1">Default</option>
                <option value="style-2">Fill</option>
                <option value="style-3">Underline</option>
            </select>
        </div>

    </div>

    <div class="styleswitcher-button vertical-middle"><i class="fa fa-gear"></i></div>
</div>


</body>
</html>
