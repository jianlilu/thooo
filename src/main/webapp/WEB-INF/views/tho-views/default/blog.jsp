<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Page title -->
    <title>blog</title>

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
                <h1 class="title">Blog - Posts List</h1>
                <div class="subtitle">There are many variations of passages </div>
            </div>
            <!-- /Page Title -->

            <!-- Breadcrumbs -->
            <div class="col-md-4">
                <ul class="breadcrumb">
                    <li><i class="fa fa-fw fa-home"></i> <a href="http://localhost:8080/tho">Home</a></li>
                    <li>Blog</li>
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

                <!-- Posts List -->
                <div class="posts-list">

                    <!-- Single Post With Image -->
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
                                It is a long established fact that a reader will be distracted by the readable content of a
                                page when looking at its layout. The point of using Lorem Ipsum is that it has a
                                more-or-less normal distribution of letters, as opposed to using 'Content here, content
                                here', making it look like readable English. Many desktop publishing packages and web page
                                editors now use Lorem Ipsum as their default model text.
                            </p>
                        </div>
                        <!-- /Post Content -->

                        <!-- Read More Button -->
                        <div>
                            <a href="#" class="btn btn-theme">Read More <i class="fa fa-fw fa-angle-double-right"></i></a>
                        </div>
                        <!-- /Read More Button -->

                    </article>
                    <!-- /Single Post With Image -->

                    <!-- Single Post With Image Carousel -->
                    <article class="blog-post">

                        <!-- Post Image -->
                        <div class="image">

                            <!-- Carousel -->
                            <div class="carousel owl-carousel owl-theme">
                                <div class="item">
                                    <a href="${ctxStatic}/tho-resources/images/home-02.jpg" class="image-popup">
                                        <div class="gallery-image">
                                            <img src="${ctxStatic}/tho-resources/images/home-02.jpg">
                                        </div>
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="${ctxStatic}/tho-resources/images/home.jpg" class="image-popup">
                                        <div class="gallery-image">
                                            <img src="${ctxStatic}/tho-resources/images/home.jpg">
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <!-- /Carousel -->

                        </div>
                        <!-- /Post Image -->

                        <!-- Post Title -->
                        <h2 class="title">Single Post Image Carousel</h2>
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
                                It is a long established fact that a reader will be distracted by the readable content of a
                                page when looking at its layout. The point of using Lorem Ipsum is that it has a
                                more-or-less normal distribution of letters, as opposed to using 'Content here, content
                                here', making it look like readable English. Many desktop publishing packages and web page
                                editors now use Lorem Ipsum as their default model text.
                            </p>
                        </div>
                        <!-- /Post Content -->

                        <!-- Read More Button -->
                        <div>
                            <a href="#" class="btn btn-theme">Read More <i class="fa fa-fw fa-angle-double-right"></i></a>
                        </div>
                        <!-- /Read More Button -->

                    </article>
                    <!-- /Single Post With Image Carousel -->

                    <!-- Single Post With iFrame Video -->
                    <article class="blog-post">

                        <!-- Post Image -->
                        <div class="image">

                            <!-- iFrame Video -->
                            <iframe height="450px" src="https://www.youtube.com/embed/CUw0f_ae0BM" frameborder="0" allowfullscreen></iframe>
                            <!-- /iFrame Video -->

                        </div>
                        <!-- /Post Image -->

                        <!-- Post Title -->
                        <h2 class="title">Single Post With iFrame Video</h2>
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
                                It is a long established fact that a reader will be distracted by the readable content of a
                                page when looking at its layout. The point of using Lorem Ipsum is that it has a
                                more-or-less normal distribution of letters, as opposed to using 'Content here, content
                                here', making it look like readable English. Many desktop publishing packages and web page
                                editors now use Lorem Ipsum as their default model text.
                            </p>
                        </div>
                        <!-- /Post Content -->

                        <!-- Read More Button -->
                        <div>
                            <a href="#" class="btn btn-theme">Read More <i class="fa fa-fw fa-angle-double-right"></i></a>
                        </div>
                        <!-- /Read More Button -->

                    </article>
                    <!-- /Single Post With iFrame Video -->

                    <!-- Single Post Without Media -->
                    <article class="blog-post">

                        <!-- Post Title -->
                        <h2 class="title">Single Post Without Media</h2>
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
                                It is a long established fact that a reader will be distracted by the readable content of a
                                page when looking at its layout. The point of using Lorem Ipsum is that it has a
                                more-or-less normal distribution of letters, as opposed to using 'Content here, content
                                here', making it look like readable English. Many desktop publishing packages and web page
                                editors now use Lorem Ipsum as their default model text.
                            </p>
                        </div>
                        <!-- /Post Content -->

                        <!-- Read More Button -->
                        <div>
                            <a href="#" class="btn btn-theme">Read More <i class="fa fa-fw fa-angle-double-right"></i></a>
                        </div>
                        <!-- /Read More Button -->

                    </article>
                    <!-- /Single Post Without Media -->

                    <!-- Single Post With Quote Content -->
                    <article class="blog-post">

                        <!-- Post Title -->
                        <h2 class="title">Single Post With Quote Content</h2>
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
                            <blockquote>
                                It is a long established fact that a reader will be distracted by the readable content of a
                                page when looking at its layout. The point of using Lorem Ipsum is that it has a
                                more-or-less normal distribution of letters, as opposed to using 'Content here, content
                                here'.
                            </blockquote>
                        </div>
                        <!-- /Post Content -->

                        <!-- Read More Button -->
                        <div>
                            <a href="#" class="btn btn-theme">Read More <i class="fa fa-fw fa-angle-double-right"></i></a>
                        </div>
                        <!-- /Read More Button -->

                    </article>
                    <!-- /Single Post With Quote Content -->

                </div>
                <!-- /Posts List -->

                <!-- Pagination -->
                <ul class="pagination">
                    <li><span>Page 1 of 5</span></li>
                    <li><a href="#">&laquo;</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">Next</a></li>
                    <li><a href="#">&raquo;</a></li>
                </ul>
                <!-- /Pagination -->

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
