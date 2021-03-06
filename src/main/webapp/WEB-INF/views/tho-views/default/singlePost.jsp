﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
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
                <h1 class="title">Blog - Single Post</h1>
                <div class="subtitle">There are many variations of passages </div>
            </div>
            <!-- /Page Title -->

            <!-- Breadcrumbs -->
            <div class="col-md-4">
                <ul class="breadcrumb">
                    <li><i class="fa fa-fw fa-home"></i> <a href="http://localhost:8080/tho">Home</a></li>
                    <li><a href="http://localhost:8080/blog">Blog</a></li>
                    <li>Single Post</li>
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

            <!-- Blog Content -->
            <div class="col-md-9">

                <!-- Post -->
                <article class="blog-post">

                    <!-- Post Image -->
                    <div class="image">
                        <a href="${ctxStatic}/tho-resources/images/home-02.jpg" class="image-popup">
                            <div class="gallery-image">
                                <img src="${ctxStatic}/tho-resources/images/home-02.jpg">
                            </div>
                        </a>
                    </div>
                    <!-- /Post Image -->

                    <!-- Post Title -->
                    <h2 class="title">Single Post With Image</h2>
                    <!-- /Post Title -->

                    <!-- Post Metadata -->
                    <ul class="list-inline meta">
                        <li>January, 17, 2016</li>
                        <li>by <a href="#">profart</a></li>
                        <li><a href="#">Photography</a>, <a href="#">Illustration</a></li>
                        <li><a href="#">12 Comments</a></li>
                    </ul>
                    <!-- /Post Metadata -->

                    <!-- Post Content -->
                    <div class="content">

                        <p>
                            Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece
                            of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock,
                            a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure
                            Latin words, consectetur, from a <strong>Lorem Ipsum</strong> passage, and going through the cites of the
                            word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from
                            sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and
                            Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very
                            popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit
                            amet..", comes from a line in section 1.10.32.
                        </p>

                        <blockquote>
                            There are many variations of passages of Lorem Ipsum available, but the majority have
                            suffered alteration in some form, by injected humour, or randomised words which don't look
                            even slightly believable.
                        </blockquote>

                        <p>
                            It is a long established fact that a reader will be distracted by the readable content of a
                            page when looking at its layout. The point of using Lorem Ipsum is that it has a
                            more-or-less normal distribution of letters, as opposed to using 'Content here, content
                            here', making it look like readable English. Many desktop publishing packages and web page
                            editors now use Lorem Ipsum as their default model text.
                        </p>

                        <p>
                            If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything
                            embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet
                            tend to repeat predefined chunks as necessary, making this the first true generator on the
                            Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model
                            sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem
                            Ipsum is therefore always free from repetition, injected humour, or non-characteristic words
                            etc.
                        </p>

                    </div>
                    <!-- /Post Content -->

                    <!-- Additional -->
                    <div class="row information">

                        <div class="col-sm-6">
                            <div class="tags">
                                <a class="tag" href="#">web</a>
                                <a class="tag" href="#">clean</a>
                                <a class="tag" href="#">gallery</a>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <ul class="social-inline">
                                <li><a href="#" class="fa fa-fw fa-facebook"></a></li>
                                <li><a href="#" class="fa fa-fw fa-twitter"></a></li>
                                <li><a href="#" class="fa fa-fw fa-google-plus"></a></li>
                                <li><a href="#" class="fa fa-fw fa-dribbble"></a></li>
                                <li><a href="#" class="fa fa-fw fa-pinterest"></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- /Additional -->



                </article>
                <!-- /Post -->

                <!-- Comments -->
                <div class="widget">

                    <h4 class="title">Recent Comments</h4>
                    <ul class="comments">

                        <li>
                            <div class="media">
                                <div class="media-left">
                                    <div class="image">
                                        <img src="${ctxStatic}/tho-resources/images/author-image-01.jpg">
                                    </div>
                                </div>
                                <div class="media-body">
                                    <h4 class="author">John Doe</h4>
                                    <span class="date">28 March 2016</span>
                                    <p class="text">
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters, as opposed to using
                                        'Content here, content here', making it look like readable English. Many desktop
                                        publishing packages and web page editors now use Lorem Ipsum as their default
                                        model text, and a search for 'lorem ipsum' will uncover many web sites still in
                                        their infancy. Various versions have evolved over the years, sometimes by
                                        accident, sometimes on purpose (injected humour and the like).
                                    </p>
                                </div>
                            </div>

                            <ul class="comments">

                                <li>
                                    <div class="media">
                                        <div class="media-left">
                                            <div class="image">
                                                <img src="${ctxStatic}/tho-resources/images/author-image-01.jpg">
                                            </div>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="author">John Doe</h4>
                                            <span class="date">28 March 2016</span>
                                            <p class="text">
                                                It is a long established fact that a reader will be distracted by the readable
                                                content of a page when looking at its layout. The point of using Lorem Ipsum is
                                                that it has a more-or-less normal distribution of letters, as opposed to using
                                                'Content here, content here', making it look like readable English. Many desktop
                                                publishing.
                                            </p>
                                        </div>
                                    </div>

                                    <ul class="comments">
                                        <li>
                                            <div class="media">
                                                <div class="media-left">
                                                    <div class="image">
                                                        <img src="${ctxStatic}/tho-resources/images/author-image-01.jpg">
                                                    </div>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="author">John Doe</h4>
                                                    <span class="date">28 March 2016</span>
                                                    <p class="text">
                                                        It is a long established fact that a reader will be distracted by the readable
                                                        content of a page when looking at its layout.
                                                    </p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <div class="media-left">
                                                    <div class="image">
                                                        <img src="${ctxStatic}/tho-resources/images/author-image-01.jpg">
                                                    </div>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="author">John Doe</h4>
                                                    <span class="date">28 March 2016</span>
                                                    <p class="text">
                                                        It is a long established fact that a reader will be distracted by the readable
                                                        content of a page when looking at its layout.
                                                    </p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>

                                </li>

                            </ul>
                        </li>

                        <li>
                            <div class="media">
                                <div class="media-left">
                                    <div class="image">
                                        <img src="${ctxStatic}/tho-resources/images/author-image-01.jpg">
                                    </div>
                                </div>
                                <div class="media-body">
                                    <h4 class="author">John Doe</h4>
                                    <span class="date">28 March 2016</span>
                                    <p class="text">
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                        that it has a more-or-less normal distribution of letters.
                                    </p>
                                </div>
                            </div>
                        </li>

                    </ul>

                    <div class="send-comment">

                        <form method="post">

                            <input type="hidden" name="form" value="Contact">

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
                                    <button type="submit" class="btn btn-theme"><i class="fa fa-plus"></i> Add Comment</button>
                                </div>
                            </div>

                        </form>


                    </div>

                </div>
                <!-- /Comments -->

            </div>
            <!-- /Blog Content -->

            <!-- Blog Sidebar -->
            <div class="col-md-3">

                <!-- Widget: Categories -->
                <div class="widget">

                    <h4 class="title">Categories</h4>
                    <ul class="sidebar-menu">
                        <li><a href="#">Photography</a></li>
                        <li><a href="#">Illustration</a></li>
                        <li><a href="#">Web-Design</a></li>
                        <li><a href="#">Art</a></li>
                        <li><a href="#">Coding</a></li>
                    </ul>

                </div>
                <!-- /Widget: Categories -->

                <!-- Widget: Search -->
                <div class="widget">

                    <h4 class="title">Search</h4>
                    <div class="search">
                        <form class="form-inline" method="post">
                            <div class="form-group">
                                <input type="email" required="" placeholder="Search Text...*" class="form-control">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-theme" type="submit"><i class="fa fa-fw fa-search"></i></button>
                            </div>
                        </form>
                    </div>

                </div>
                <!-- /Widget: Search -->

                <!-- Widget: Latest Posts -->
                <div class="widget">

                    <h4 class="title">Latest Posts</h4>
                    <ul class="latest-posts">

                        <!-- Post -->
                        <li>
                            <div class="media post">
                                <div class="media-left">
                                    <div class="image">
                                        <img src="${ctxStatic}/tho-resources/images/last-post-01.jpg">
                                    </div>
                                </div>
                                <div class="media-body">
                                    <p class="text">
                                        It is a long established fact that a reader will be distracted.
                                    </p>
                                    <a href="#">Read more <i class="fa fa-angle-double-right"></i></a>
                                </div>
                            </div>
                        </li>
                        <!-- /Post -->

                        <!-- Post -->
                        <li>
                            <div class="media post">
                                <div class="media-left">
                                    <div class="image">
                                        <img src="${ctxStatic}/tho-resources/images/last-post-02.jpg">
                                    </div>
                                </div>
                                <div class="media-body">
                                    <p class="text">
                                        It is a long established fact that a reader will be distracted.
                                    </p>
                                    <a href="#">Read more <i class="fa fa-angle-double-right"></i></a>
                                </div>
                            </div>
                        </li>
                        <!-- /Post -->

                        <!-- Post -->
                        <li>
                            <div class="media post">
                                <div class="media-left">
                                    <div class="image">
                                        <img src="${ctxStatic}/tho-resources/images/last-post-03.jpg">
                                    </div>
                                </div>
                                <div class="media-body">
                                    <p class="text">
                                        It is a long established fact that a reader will be distracted.
                                    </p>
                                    <a href="#">Read more <i class="fa fa-angle-double-right"></i></a>
                                </div>
                            </div>
                        </li>
                        <!-- /Post -->

                    </ul>
                </div>
                <!-- /Widget: Latest Posts -->

                <!-- Widget: Advert -->
                <div class="widget">

                    <div class="advert bg-light-gray">
                        <div class="vertical-middle text-center">Advert Block</div>
                    </div>

                </div>
                <!-- /Widget: Advert -->

                <!-- Widget: Tags -->
                <div class="widget">

                    <h4 class="title">Tags</h4>
                    <div class="tags">
                        <a href="#" class="tag">web</a>
                        <a href="#" class="tag">design</a>
                        <a href="#" class="tag">clean</a>
                        <a href="#" class="tag">minimal</a>
                        <a href="#" class="tag">pixel perfect</a>
                        <a href="#" class="tag">blog</a>
                        <a href="#" class="tag">gallery</a>
                    </div>

                </div>
                <!-- /Widget: Tags -->

                <div class="widget">

                    <h4 class="title">Recent Comments</h4>
                    <ul class="recent-comments">
                        <li>
                            <div class="media">
                                <div class="media-left">
                                    <i class="fa fa-fw fa-1dot5 fa-commenting-o"></i>
                                </div>
                                <div class="media-body">
                                    <a href="#">profart</a> on <a href="#">Single Post With Image</a>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="media">
                                <div class="media-left">
                                    <i class="fa fa-fw fa-1dot5 fa-commenting-o"></i>
                                </div>
                                <div class="media-body">
                                    <a href="#">profart</a> on <a href="#">Single Post Image Carousel</a>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="media">
                                <div class="media-left">
                                    <i class="fa fa-fw fa-1dot5 fa-commenting-o"></i>
                                </div>
                                <div class="media-body">
                                    <a href="#">profart</a> on <a href="#">Single Post With iFrame Video</a>
                                </div>
                            </div>
                        </li>
                    </ul>

                </div>

                <!-- Widget: Categories -->
                <div class="widget">

                    <h4 class="title">Meta</h4>
                    <ul class="sidebar-menu">
                        <li><a href="#">Login</a></li>
                        <li><a href="#">RSS Entries</a></li>
                        <li><a href="#">RSS Comments</a></li>
                    </ul>

                </div>
                <!-- /Widget: Categories -->

            </div>
            <!-- /Blog Sidebar -->

        </div>
    </div>
</main>
<!-- /Main -->

<!-- Footer -->
<footer class="footer section-small">
    <div class="container">
        <div class="row">

            <!-- Footer Column -->
            <div class="col-md-3 col-xs-6 footer-col">

                <!-- Footer Logo -->
                <div class="logo">
                    <img src="${ctxStatic}/tho-resources/images/logo.png">
                </div>
                <!-- /Footer Logo -->

                <!-- Footer Text -->
                <p class="text">
                    It is a long established fact that a reader will be distracted by the readable.
                </p>
                <!-- /Footer Text -->

                <hr>

                <!-- Copyright -->
                <p class="copyright">
                    Copyright &copy; 2015-2016 <strong>Valery Timofeev</strong>
                </p>
                <!-- /Copyright -->

                <!-- Footer Social -->
                <ul class="social-inline">
                    <li><a href="#" class="fa fa-fw fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-fw fa-twitter"></a></li>
                    <li><a href="#" class="fa fa-fw fa-google-plus"></a></li>
                    <li><a href="#" class="fa fa-fw fa-dribbble"></a></li>
                    <li><a href="#" class="fa fa-fw fa-pinterest"></a></li>
                </ul>
                <!-- /Footer Social -->

            </div>
            <!-- /Footer Column -->

            <!-- Footer Column -->
            <div class="col-md-3 col-xs-6 footer-col">

                <h3 class="title">Latest From <span class="text-theme">Blog</span></h3>

                <!-- Footer Post -->
                <div class="media post">
                    <div class="media-left">
                        <div class="image">
                            <img src="${ctxStatic}/tho-resources/images/last-post-01.jpg">
                        </div>
                    </div>
                    <div class="media-body">
                        <p class="text">
                            It is a long established fact that a reader will be distracted.
                        </p>
                        <a href="#">Read more</a>
                    </div>
                </div>
                <!-- /Footer Post -->

                <!-- Footer Post -->
                <div class="media post">
                    <div class="media-left">
                        <div class="image">
                            <img src="${ctxStatic}/tho-resources/images/last-post-02.jpg">
                        </div>
                    </div>
                    <div class="media-body">
                        <p class="text">
                            It is a long established fact that a reader will be distracted.
                        </p>
                        <a href="#">Read more</a>
                    </div>
                </div>
                <!-- /Footer Post -->

            </div>
            <!-- /Footer Column -->

            <!-- Footer Column -->
            <div class="col-md-2 col-xs-6 footer-col">

                <h3 class="title">Site Menu</h3>

                <!-- Footer Menu -->
                <ul class="menu">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Features</a></li>
                    <li><a href="#">Projects</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
                <!-- /Footer Menu -->

            </div>
            <!-- /Footer Column -->

            <!-- Footer Column -->
            <div class="col-md-4 col-xs-6 footer-col">

                <h3 class="title">Signup to <span class="text-theme">Newsletter</span></h3>

                <!-- Footer Signup Form -->
                <div class="signup-form">
                    <form method="post" class="form-inline">
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Your E-mail...*" required>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-theme"><i class="fa fa-fw fa-envelope"></i></button>
                        </div>
                    </form>

                </div>
                <!-- /Footer Signup Form -->

                <hr>

                <!-- Footer Tags -->
                <div class="tags">
                    <a href="#" class="tag">web</a>
                    <a href="#" class="tag">design</a>
                    <a href="#" class="tag">clean</a>
                    <a href="#" class="tag">minimal</a>
                    <a href="#" class="tag">pixel perfect</a>
                    <a href="#" class="tag">blog</a>
                    <a href="#" class="tag">gallery</a>
                </div>
                <!-- /Footer Tags -->

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
