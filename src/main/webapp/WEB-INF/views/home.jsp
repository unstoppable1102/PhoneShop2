<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="session" />
<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from new.axilthemes.com/demo/template/etrade/index-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Oct 2023 08:13:31 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>eTrade || Home-01</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/home/images/favicon.png">

    <!-- CSS
    ============================================ -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${contextPath}/home/css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/home/css/vendor/font-awesome.css">
    <link rel="stylesheet" href="${contextPath}/home/css/vendor/flaticon/flaticon.css">
    <link rel="stylesheet" href="${contextPath}/home/css/vendor/slick.css">
    <link rel="stylesheet" href="${contextPath}/home/css/vendor/slick-theme.css">
    <link rel="stylesheet" href="${contextPath}/home/css/vendor/jquery-ui.min.css">
    <link rel="stylesheet" href="${contextPath}/home/css/vendor/sal.css">
    <link rel="stylesheet" href="${contextPath}/home/css/vendor/magnific-popup.css">
    <link rel="stylesheet" href="${contextPath}/home/css/vendor/base.css">
    <link rel="stylesheet" href="${contextPath}/home/css/style.min.css">

</head>


<body class="sticky-header newsletter-popup-modal">

    <!--[if lte IE 9]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->
    <a href="#top" class="back-to-top" id="backto-top"><i class="fal fa-arrow-up"></i></a>
    <header class="header axil-header header-style-1">
        
        <div class="axil-header-top">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <div class="header-top-dropdown">
                            <div class="dropdown">
                                <button class="dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Tiếng Việt
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Tiếng Việt</a></li>
                                    <li><a class="dropdown-item" href="#">English</a></li>
                                    <li><a class="dropdown-item" href="#">Spanish</a></li>
                                </ul>
                            </div>
                            <div class="dropdown">
                                <button class="dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    VND
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">VND</a></li>
                                    <li><a class="dropdown-item" href="#">USD</a></li>
                                    <li><a class="dropdown-item" href="#">EUR</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="header-top-link">
                            <ul class="quick-link">
                            	<c:choose>
		                            <c:when test="${!empty sessionScope.userid}">
		                            	<li>
			                            	<span>Xin chào: ${sessionScope.fullname}</span>
			                            	<img src="${contextPath}/images/${sessionScope.picture}" width="20px">
		                            	</li>
		                            	<li><a href="${contextPath}/logout">Đăng xuất</a></li>
		                            </c:when>
		                            <c:otherwise>
		                            	<li><a href="${contextPath}/register">Đăng ký</a></li>
		                                <li><a href="${contextPath}/login">Đăng nhập</a></li>
		                            </c:otherwise>
		                                
                                </c:choose>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Start Mainmenu Area  -->
        <div id="axil-sticky-placeholder"></div>
        <div class="axil-mainmenu">
            <div class="container">
                <div class="header-navbar">
                    <div class="header-brand">
                        <a href="${contextPath}/" class="logo logo-dark">
                            <img src="${contextPath}/home/images/logo/logo.png" alt="Site Logo">
                        </a>
                        <a href="${contextPath}/" class="logo logo-light">
                            <img src="${contextPath}/home/images/logo/logo-light.png" alt="Site Logo">
                        </a>
                    </div>
                    <div class="header-main-nav">
                        <!-- Start Mainmanu Nav -->
                        <nav class="mainmenu-nav">
                            <button class="mobile-close-btn mobile-nav-toggler"><i class="fas fa-times"></i></button>
                            <div class="mobile-nav-brand">
                                <a href="index.html" class="logo">
                                    <img src="${contextPath}/home/images/logo/logo.png" alt="Site Logo">
                                </a>
                            </div>
                            <ul class="mainmenu">
                                <li class="menu-item">
                                    <a href="${contextPath}/">Trang Chủ</a>
                                </li>
                                <li class="menu-item">
                                    <a href="${contextPath}/products">Cửa hàng</a>
                                </li>
                                <li><a href="${contextPath}/about">Giới thiệu</a></li>
                                <li class="menu-item">
                                    <a href="${contextPath}/blogs">Bài viết</a> 
                                </li>
                                <li><a href="${contextPath}/contact">Địa chỉ & liên hệ</a></li>
                            </ul>
                        </nav>
                        <!-- End Mainmanu Nav -->
                    </div>
                    <div class="header-action">
                        <ul class="action-list">
                            
                            <li class="wishlist">
                                <a href="wishlist.html">
                                    <i class="flaticon-heart"></i>
                                </a>
                            </li>
                            <li class="shopping-cart">
                                <a href="${contextPath}/cart" class="">
                                    <span class="cart-count"></span>
                                    <i class="flaticon-shopping-cart"></i>
                                    <span id="cart_total"></span>
                                    <jsp:include page="${contextPath}/countItems"></jsp:include>
                                </a>
                            </li>
                            <li class="my-account">
                                <a href="javascript:void(0)">
                                    <i class="flaticon-person"></i>
                                </a>
                                <div class="my-account-dropdown">
                                	<c:choose>
			                            <c:when test="${!empty sessionScope.userid}">
			                            	<ul>
		                                        <li>
		                                            <a href="${contextPath}/my-account">Tài khoản của tôi</a>
		                                        </li>
		                                        <li>
		                                            <a href="#">Hỗ trợ</a>
		                                        </li>
		                                        <li>
		                                            <a href="#">Ngôn ngữ</a>
		                                        </li>
		                                        <li>
		                                            <a href="${contextPath}/logout">Đăng xuất</a>
		                                        </li>
	                                    	</ul>
			                            </c:when>
		                            	<c:otherwise>
		                            	<ul>
	                                        <li>
	                                            <a href="#">Hỗ trợ</a>
	                                        </li>
	                                        <li>
	                                            <a href="#">Ngôn ngữ</a>
	                                        </li>
	                                    </ul>
	                                    <div class="login-btn">
	                                        <a href="${contextPath}/login" class="axil-btn btn-bg-primary">Đăng nhập</a>
	                                    </div>
	                                    <div class="reg-footer text-center">Chưa có tài khoản? <a href="${contextPath}/register" class="btn-link">ĐĂNG KÝ</a></div>
	                                	
		                            	</c:otherwise>
		                                
                                	</c:choose>
                                </div>
                                  
                            </li>
                            <li class="axil-mobile-toggle">
                                <button class="menu-btn mobile-nav-toggler">
                                    <i class="flaticon-menu-2"></i>
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Mainmenu Area -->
    </header>

    <main class="main-wrapper">
       <c:if test="${!empty page}">
       		<jsp:include page="home/${page}.jsp"></jsp:include>
       </c:if>
    </main>


    <div class="service-area">
        <div class="container">
            <div class="row row-cols-xl-4 row-cols-sm-2 row-cols-1 row--20">
                <div class="col">
                    <div class="service-box service-style-2">
                        <div class="icon">
                            <img src="${contextPath}/home/images/icons/service1.png" alt="Service">
                        </div>
                        <div class="content">
                            <h6 class="title">Giao hàng nhanh &amp; bảo mật</h6>
                            <p>Nói về dịch vụ của bạn.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="service-box service-style-2">
                        <div class="icon">
                            <img src="${contextPath}/home/images/icons/service2.png" alt="Service">
                        </div>
                        <div class="content">
                            <h6 class="title">Bảo đảm hoàn tiền</h6>
                            <p>Trong vòng 10 ngày.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="service-box service-style-2">
                        <div class="icon">
                            <img src="${contextPath}/home/images/icons/service3.png" alt="Service">
                        </div>
                        <div class="content">
                            <h6 class="title">Chính sách hoàn trả 24h</h6>
                            <p>Không câu hỏi</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="service-box service-style-2">
                        <div class="icon">
                            <img src="${contextPath}/home/images/icons/service4.png" alt="Service">
                        </div>
                        <div class="content">
                            <h6 class="title">Hỗ trợ chuyên nghiệp</h6>
                            <p>Hỗ trợ 24/7.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Start Footer Area  -->
    <footer class="axil-footer-area footer-style-2">
        <!-- Start Footer Top Area  -->
        <div class="footer-top separator-top">
            <div class="container">
                <div class="row">
                    <!-- Start Single Widget  -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="axil-footer-widget">
                            <h5 class="widget-title">Hỗ trợ</h5>
                            <!-- <div class="logo mb--30">
                            <a href="index.html">
                                <img class="light-logo" src="${contextPath}/home/images/logo/logo.png" alt="Logo Images">
                            </a>
                        </div> -->
                            <div class="inner">
                                <p>238 Hoàng Quốc Việt, <br>
                                Cổ Nhuế, Bắc Từ Liêm, <br>
                                Hà Nội.
                                </p>
                                <ul class="support-list-item">
                                    <li><a href="mailto:example@domain.com"><i class="fal fa-envelope-open"></i> example@domain.com</a></li>
                                    <li><a href="tel:(+01)850-315-5862"><i class="fal fa-phone-alt"></i> (+01) 850-315-5862</a></li>
                                    <!-- <li><i class="fal fa-map-marker-alt"></i> 685 Market Street,  <br> Las Vegas, LA 95820, <br> United States.</li> -->
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Widget  -->
                    <!-- Start Single Widget  -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="axil-footer-widget">
                            <h5 class="widget-title">Tài khoản</h5>
                            <div class="inner">
                                <ul>
                                    <li><a href="${contextPath}/my-account">Tài khoản của tôi</a></li>
                                    <li><a href="${contextPath}/register">Đăng nhập / Đăng ký</a></li>
                                    <li><a href="${contextPath}/cart">Giỏ hàng</a></li>
                                    <li><a href="${contextPath}/wishlist">Yêu thích</a></li>
                                    <li><a href="${contextPath}/products">Cửa hàng</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Widget  -->
                    <!-- Start Single Widget  -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="axil-footer-widget">
                            <h5 class="widget-title">Truy cập nhanh</h5>
                            <div class="inner">
                                <ul>
                                    <li><a href="${contextPath}/privacy-policy">Chính sách bảo mật</a></li>
                                    <li><a href="${contextPath}/terms-of-servic">Điều khoản dịch vụ</a></li>
                                    <li><a href="#">Câu hỏi thường gặp</a></li>
                                    <li><a href="${contextPath}/contact">Liên hệ</a></li>
                                    <li><a href="${contextPath}/about">Giới thiệu</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Widget  -->
                    <!-- Start Single Widget  -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="axil-footer-widget">
                            <h5 class="widget-title">Tải ứng dụng</h5>
                            <div class="inner">
                                <span>Tiết kiệm $3 với app & người mới</span>
                                <div class="download-btn-group">
                                    <div class="qr-code">
                                        <img src="${contextPath}/home/images/others/qr.png" alt="Axilthemes">
                                    </div>
                                    <div class="app-link">
                                        <a href="#">
                                            <img src="${contextPath}/home/images/others/app-store.png" alt="App Store">
                                        </a>
                                        <a href="#">
                                            <img src="${contextPath}/home/images/others/play-store.png" alt="Play Store">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Widget  -->
                </div>
            </div>
        </div>
        <!-- End Footer Top Area  -->
        <!-- Start Copyright Area  -->
        <div class="copyright-area copyright-default separator-top">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-4">
                        <div class="social-share">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                            <a href="#"><i class="fab fa-discord"></i></a>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-12">
                        <div class="copyright-left d-flex flex-wrap justify-content-center">
                            <ul class="quick-link">
                                <li>© 2023. All rights reserved by <a target="_blank" href="https://axilthemes.com/">C2208i1</a>.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-12">
                        <div class="copyright-right d-flex flex-wrap justify-content-xl-end justify-content-center align-items-center">
                            <span class="card-text">Chỉ chấp nhận</span>
                            <ul class="payment-icons-bottom quick-link">
                                <li><img src="${contextPath}/home/images/icons/cart/cart-1.png" alt="paypal cart"></li>
                                <li><img src="${contextPath}/home/images/icons/cart/cart-2.png" alt="paypal cart"></li>
                                <li><img src="${contextPath}/home/images/icons/cart/cart-5.png" alt="paypal cart"></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Copyright Area  -->
    </footer>
    <!-- End Footer Area  -->

    <!-- Product Quick View Modal Start -->
    <div class="modal fade quick-view-product" id="quick-view-modal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="far fa-times"></i></button>
                </div>
                <div class="modal-body">
                    <div class="single-product-thumb">
                        <div class="row">
                            <div class="col-lg-7 mb--40">
                                <div class="row">
                                    <div class="col-lg-10 order-lg-2">
                                    
                                        <div class="single-product-thumbnail product-large-thumbnail axil-product thumbnail-badge zoom-gallery">
                                            <div class="thumbnail">
                                                <img src="${contextPath}/home/images/product/product-big-01.png" alt="Product Images">
                                                
                                                <div class="product-quick-view position-view">
                                                    <a href="${contextPath}/home/images/product/product-big-01.png" class="popup-zoom">
                                                        <i class="far fa-search-plus"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            
                                            
                                        </div>
                                    </div>
                                    <div class="col-lg-2 order-lg-1">
                                        <div class="product-small-thumb small-thumb-wrapper">
                                            <div class="small-thumb-img">
                                                <img src="${contextPath}/home/images/product/product-thumb/thumb-08.png" alt="thumb image">
                                            </div>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-5 mb--40">
                                <div class="single-product-content">
                                    <div class="inner">
                                        <div class="product-rating">
                                            <div class="star-rating">
                                                <img src="${contextPath}/home/images/icons/rate.png" alt="Rate Images">
                                            </div>
                                            <div class="review-link">
                                                <a href="#">(<span>1</span> customer reviews)</a>
                                            </div>
                                        </div>
                                        <h3 class="product-title">Serif Coffee Table</h3>
                                        <span class="price-amount">$155.00 - $255.00</span>
                                        <ul class="product-meta">
                                            <li><i class="fal fa-check"></i>In stock</li>
                                            <li><i class="fal fa-check"></i>Free delivery available</li>
                                            <li><i class="fal fa-check"></i>Sales 30% Off Use Code: MOTIVE30</li>
                                        </ul>
                                        <p class="description">In ornare lorem ut est dapibus, ut tincidunt nisi pretium. Integer ante est, elementum eget magna. Pellentesque sagittis dictum libero, eu dignissim tellus.</p>

                                        <div class="product-variations-wrapper">


                                        </div>

                                        <!-- Start Product Action Wrapper  -->
                                        <div class="product-action-wrapper d-flex-center">
                                            <!-- Start Quentity Action  -->
                                            <div class="pro-qty"><input type="text" value="1"></div>
                                            <!-- End Quentity Action  -->

                                            <!-- Start Product Action  -->
                                            <ul class="product-action d-flex-center mb--0">
                                                <li class="add-to-cart"><a href="cart.html" class="axil-btn btn-bg-primary">Add to Cart</a></li>
                                                <li class="wishlist"><a href="wishlist.html" class="axil-btn wishlist-btn"><i class="far fa-heart"></i></a></li>
                                            </ul>
                                            <!-- End Product Action  -->

                                        </div>
                                        <!-- End Product Action Wrapper  -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Product Quick View Modal End -->

    <!-- Header Search Modal End -->
    
    <!-- Header Search Modal End -->
    <div  class="cart-dropdown" id="cart-dropdown">
        <div class="cart-content-wrap">
            <div class="cart-header">
                <h2 class="header-title">Xem giỏ hàng nhanh</h2>
                <button class="cart-close sidebar-close"><i class="fas fa-times"></i></button>
            </div>
            <div class="cart-body">
                <ul class="cart-item-list">
                    <li class="cart-item">
                        <div class="item-img">
                            <a href="single-product.html"><img src="${contextPath}/home/images/product/electric/product-01.png" alt="Commodo Blown Lamp"></a>
                            <button class="close-btn"><i class="fas fa-times"></i></button>
                        </div>
                        <div class="item-content">
                            <div class="product-rating">
                                <span class="icon">
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
							</span>
                                <span class="rating-number">(64)</span>
                            </div>
                            <h3 class="item-title"><a href="single-product-3.html">Wireless PS Handler</a></h3>
                            <div class="item-price"><span class="currency-symbol">$</span>155.00</div>
                            <div class="pro-qty item-quantity">
                                <input type="number" class="quantity-input" value="15">
                            </div>
                        </div>
                    </li>
                    
                    <li class="cart-item">
                        <div class="item-img">
                            <a href="single-product-3.html"><img src="${contextPath}/home/images/product/electric/product-03.png" alt="Commodo Blown Lamp"></a>
                            <button class="close-btn"><i class="fas fa-times"></i></button>
                        </div>
                        <div class="item-content">
                            <div class="product-rating">
                                <span class="icon">
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
							</span>
                                <span class="rating-number">(6)</span>
                            </div>
                            <h3 class="item-title"><a href="single-product.html">HD CC Camera</a></h3>
                            <div class="item-price"><span class="currency-symbol">$</span>200.00</div>
                            <div class="pro-qty item-quantity">
                                <input type="number" class="quantity-input" value="100">
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="cart-footer">
                <h3 class="cart-subtotal">
                    <span class="subtotal-title">Tổng:</span>
                    <span class="subtotal-amount">$610.00</span>
                </h3>
                <div class="group-btn">
                    <a href="cart" class="axil-btn btn-bg-primary viewcart-btn">Xem giỏ hàng</a>
                    <a href="checkout.html" class="axil-btn btn-bg-secondary checkout-btn">Thanh toán</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Offer Modal Start -->
    
    <!-- Offer Modal End -->
    <!-- JS
============================================ -->
    <!-- Modernizer JS -->
    <script src="${contextPath}/home/js/vendor/modernizr.min.js"></script>
    <!-- jQuery JS -->
    <script src="${contextPath}/home/js/vendor/jquery.js"></script>
    <!-- Bootstrap JS -->
    <script src="${contextPath}/home/js/vendor/popper.min.js"></script>
    <script src="${contextPath}/home/js/vendor/bootstrap.min.js"></script>
    <script src="${contextPath}/home/js/vendor/slick.min.js"></script>
    <script src="${contextPath}/home/js/vendor/js.cookie.js"></script>
    
    <script src="${contextPath}/home/js/vendor/jquery-ui.min.js"></script>
    <script src="${contextPath}/home/js/vendor/jquery.ui.touch-punch.min.js"></script>
    <script src="${contextPath}/home/js/vendor/jquery.countdown.min.js"></script>
    <script src="${contextPath}/home/js/vendor/sal.js"></script>
    <script src="${contextPath}/home/js/vendor/jquery.magnific-popup.min.js"></script>
    <script src="${contextPath}/home/js/vendor/imagesloaded.pkgd.min.js"></script>
    <script src="${contextPath}/home/js/vendor/isotope.pkgd.min.js"></script>
    <script src="${contextPath}/home/js/vendor/counterup.js"></script>
    <script src="${contextPath}/home/js/vendor/waypoints.min.js"></script>
	<script>
			var path='${pageContext.servletContext.contextPath}';
	</script>
    <!-- Main JS -->
    <script src="${contextPath}/home/js/main.js"></script>
    <script src="${contextPath}/home/js/home.js"></script>

</body>


<!-- Mirrored from new.axilthemes.com/demo/template/etrade/index-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Oct 2023 08:14:14 GMT -->
</html>