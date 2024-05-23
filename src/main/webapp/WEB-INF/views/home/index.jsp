<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div class="axil-main-slider-area main-slider-style-1">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-5 col-sm-6">
                        <div class="main-slider-content">
                            <div class="slider-content-activation-one">
                                <div class="single-slide slick-slide" data-sal="slide-up" data-sal-delay="400" data-sal-duration="800">
                                    <span class="subtitle"><i class="fas fa-fire"></i> Ưu đãi hấp dẫn tuần này</span>
                                    <h1 class="title">Roco Wireless Headphone</h1>
                                    <div class="slide-action">
                                        <div class="shop-btn">
                                            <a href="${contextPath}/cart" onclick="addCart('${p.productId}' class="axil-btn btn-bg-white"><i class="fal fa-shopping-cart"></i>Mua ngay</a>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-sm-6">
                        <div class="main-slider-large-thumb">
                            <div class="slider-thumb-activation-one axil-slick-dots">                               
                                <div class="single-slide slick-slide">
                                    <img src="${contextPath}/home/images/product/product-39.png" alt="Product">
                                    <div class="product-price">
                                        <span class="text">Chỉ từ</span>
                                        <span class="price-amount">$49.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <ul class="shape-group">
                <li class="shape-1"><img src="${contextPath}/home/images/others/shape-1.png" alt="Shape"></li>
                <li class="shape-2"><img src="${contextPath}/home/images/others/shape-2.png" alt="Shape"></li>
            </ul>
        </div>

        <!-- Start Categorie Area  -->
        <div class="axil-categorie-area bg-color-white axil-section-gapcommon">
            <div class="container">
                <div class="section-title-wrapper">
                    <span class="title-highlighter highlighter-secondary"> <i class="far fa-tags"></i>Danh mục</span>
                    <h2 class="title">Hiển thị theo danh mục</h2>
                </div>
                <div class="categrie-product-activation slick-layout-wrapper--15 axil-slick-arrow  arrow-top-slide">
	                <c:forEach items="${categories}" var="c">
	                    <div class="slick-single-layout">
	                        <div class="categrie-product" data-sal="zoom-out" data-sal-delay="200" data-sal-duration="500">
	                            <a href="${contextPath}/products?cateid=${c.id}">
	                                <img class="img-fluid" src="${contextPath}/images/${c.image}" alt="categories image" width="64px" height="64px">
	                                <h6 class="cat-title">${c.name}</h6>
	                            </a>
	                        </div>
	                        <!-- End .categrie-product -->
	                    </div>
	                 </c:forEach>
                        <!-- End .categrie-product -->
                </div>
                </div>
            </div>
        </div>
        <!-- End Categorie Area  -->

        <!-- Poster Countdown Area  -->
        <div class="axil-poster-countdown">
            <div class="container">
                <div class="poster-countdown-wrap bg-lighter">
                    <div class="row">
                        <div class="col-xl-5 col-lg-6">
                            <div class="poster-countdown-content">
                                <div class="section-title-wrapper">
                                    <span class="title-highlighter highlighter-secondary"> <i class="fal fa-headphones-alt"></i> Đừng Bỏ Lỡ!!</span>
                                    <h2 class="title">Nâng cao trải nghiệm nghe nhạc của bạn</h2>
                                </div>
                                <div class="poster-countdown countdown mb--40"></div>
                                <a href="#" class="axil-btn btn-bg-primary">Thử ngay!</a>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-6">
                            <div class="poster-countdown-thumbnail">
                                <img src="${contextPath}/home/images/product/poster/poster-03.png" alt="Poster Product">
                                <div class="music-singnal">
                                    <div class="item-circle circle-1"></div>
                                    <div class="item-circle circle-2"></div>
                                    <div class="item-circle circle-3"></div>
                                    <div class="item-circle circle-4"></div>
                                    <div class="item-circle circle-5"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Poster Countdown Area  -->

        <!-- Start Expolre Product Area  -->
        <div class="axil-product-area bg-color-white axil-section-gap">
            <div class="container">
                <div class="section-title-wrapper">
                    <span class="title-highlighter highlighter-primary"> <i class="far fa-shopping-basket"></i> Sản phẩm của chúng tôi</span>
                    <h2 class="title">Khám phá các sản phẩm của chúng tôi</h2>
                </div>
                <div class="explore-product-activation slick-layout-wrapper slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide">
                    <div class="slick-single-layout">
                        <div class="row row--15">
                        <c:forEach items="${t8products}" var="t8p">
                            <div class="col-xl-3 col-lg-4 col-sm-6 col-12 mb--30 text-center">
                                <div class="axil-product product-style-one">
                                    <div class="thumbnail">
                                        <a href="${contextPath}/detail/${t8p.productId}">
                                            <img data-sal="zoom-out" data-sal-delay="200" data-sal-duration="800" class="main-img" src="${contextPath}/images/${t8p.picture}" alt="Product Images">
                                        </a>
                                       
                                        <div class="product-hover-action">
                                            <ul class="cart-action">
                                                <li class="quickview"><a href="${contextPath}/detail/${t8p.productId}" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                                <li class="select-option">
                                                    <a href="" onclick="addCart('${t8p.productId}')">
                                                       Thêm vào giỏ hàng
                                                    </a>
                                                </li>
                                                <li class="wishlist"><a href="#"><i class="far fa-heart"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <div class="inner">
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
                                            <h5 class="title"><a href="${contextPath}/detail/${t8p.productId}">${t8p.productName }</a></h5>
                                            <div class="product-price-variant">
                                                <span class="price current-price"><span>$</span>${t8p.price }</span>
                                                <span class="price old-price"><span>$</span>${t8p.priceOld }</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            	</div>
                         	</c:forEach>
                            <!-- End Single Product  -->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 text-center mt--20 mt_sm--0">
                        <a href="products" class="axil-btn btn-bg-lighter btn-load-more">Xem tất cả sản phẩm</a>
                    </div>
                </div>

            </div>
        </div>
        <!-- End Expolre Product Area  -->
        <!-- Start New Arrivals Product Area  -->
        <div class="axil-new-arrivals-product-area bg-color-white axil-section-gap pb--0">
            <div class="container">
                <div class="product-area pb--50">
                    <div class="section-title-wrapper">
                        <span class="title-highlighter highlighter-primary"><i class="far fa-shopping-basket"></i>Tuần này</span>
                        <h2 class="title">Hàng mới về</h2>
                    </div>
                    <div class="new-arrivals-product-activation slick-layout-wrapper--30 axil-slick-arrow  arrow-top-slide">
                    <c:forEach items="${newPro}" var="np">
                        <div class="slick-single-layout">
                            <div class="axil-product product-style-two">
                                <div class="thumbnail">
                                    <a href="${contextPath}/detail/${np.productId}">
                                        <img data-sal="zoom-out" loading="lazy" data-sal-delay="200" data-sal-duration="500" src="${contextPath}/images/${np.picture}" alt="Product Images">
                                    </a>
                                    
                                </div>
                                <div class="product-content">
                                    <div class="inner">
                                        <h5 class="title"><a href="${contextPath}/detail/${np.productId}">${np.productName}</a></h5>
                                        <div class="product-price-variant">
                                            <span class="price old-price"><span>$</span>${np.priceOld }</span>
                                            <span class="price current-price"><span>$</span>${np.price }</span>
                                        </div>
                                        <div class="product-hover-action">
                                            <ul class="cart-action">
                                                <li class="quickview"><a href="${contextPath}/detail/${np.productId}" ><i class="far fa-eye"></i></a></li>
                                                <li class="select-option"><a href="${contextPath}/cart" onclick="addCart('${t8p.productId}')">Thêm vào giỏ hàng</a></li>
                                                <li class="wishlist"><a href="#"><i class="far fa-heart"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                        <!-- End .slick-single-layout -->
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- End New Arrivals Product Area  -->
        <!-- Start Why Choose Area  -->
        <div class="axil-why-choose-area pb--50 pb_sm--30">
            <div class="container">
                <div class="section-title-wrapper section-title-center">
                    <span class="title-highlighter highlighter-secondary"><i class="fal fa-thumbs-up"></i>Tại sao chọn chúng tôi</span>
                    <h2 class="title">Tại sao mọi người lại chọn chúng tôi</h2>
                </div>
                <div class="row row-cols-xl-5 row-cols-lg-4 row-cols-md-3 row-cols-sm-2 row-cols-1 row--20">
                    <div class="col">
                        <div class="service-box">
                            <div class="icon">
                                <img src="${contextPath}/home/images/icons/service6.png" alt="Service">
                            </div>
                            <h6 class="title">Giao hàng nhanh &amp; bảo mật</h6>
                        </div>
                    </div>
                    <div class="col">
                        <div class="service-box">
                            <div class="icon">
                                <img src="${contextPath}/home/images/icons/service7.png" alt="Service">
                            </div>
                            <h6 class="title">Bảo đảm 100% về sản phẩm</h6>
                        </div>
                    </div>
                    <div class="col">
                        <div class="service-box">
                            <div class="icon">
                                <img src="${contextPath}/home/images/icons/service8.png" alt="Service">
                            </div>
                            <h6 class="title">Chính sách hoàn trả 24 giờ</h6>
                        </div>
                    </div>
                    <div class="col">
                        <div class="service-box">
                            <div class="icon">
                                <img src="${contextPath}/home/images/icons/service9.png" alt="Service">
                            </div>
                            <h6 class="title">Chính sách hoàn trả 24 giờ</h6>
                        </div>
                    </div>
                    <div class="col">
                        <div class="service-box">
                            <div class="icon">
                                <img src="${contextPath}/home/images/icons/service10.png" alt="Service">
                            </div>
                            <h6 class="title">Chất lượng chuyên nghiệp</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Why Choose Area  -->


        <!-- Start Axil Product Poster Area  -->
        <div class="axil-poster">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mb--30">
                        <div class="single-poster">
                            <a href="shop.html">
                                <img src="${contextPath}/home/images/product/poster/poster-01.png" alt="eTrade promotion poster">
                                <div class="poster-content">
                                    <div class="inner">
                                        <h3 class="title">Rich sound, <br> for less.</h3>
                                        <span class="sub-title">Collections <i class="fal fa-long-arrow-right"></i></span>
                                    </div>
                                </div>
                                <!-- End .poster-content -->
                            </a>
                        </div>
                        <!-- End .single-poster -->
                    </div>
                    <div class="col-lg-6 mb--30">
                        <div class="single-poster">
                            <a href="shop-sidebar.html">
                                <img src="${contextPath}/home/images/product/poster/poster-02.png" alt="eTrade promotion poster">
                                <div class="poster-content content-left">
                                    <div class="inner">
                                        <span class="sub-title">Ưu đãi 50% trong mùa đông</span>
                                        <h3 class="title">Get VR <br> Reality Glass</h3>
                                    </div>
                                </div>
                                <!-- End .poster-content -->
                            </a>
                        </div>
                        <!-- End .single-poster -->
                    </div>
                </div>
            </div>
        </div>
        <!-- End Axil Product Poster Area  -->

        <!-- Start Axil Newsletter Area  -->
        <div class="axil-newsletter-area axil-section-gap pt--0">
            <div class="container">
                <div class="etrade-newsletter-wrapper bg_image bg_image--5">
                    <div class="newsletter-content">
                        <span class="title-highlighter highlighter-primary2"><i class="fas fa-envelope-open"></i>Bản tin</span>
                        <h2 class="title mb--40 mb_sm--30">Nhận cập nhật hàng tuần</h2>
                        <div class="input-group newsletter-form">
                            <div class="position-relative newsletter-inner mb--15">
                                <input placeholder="example@gmail.com" type="text">
                            </div>
                            <button type="submit" class="axil-btn mb--15">Đăng ký</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End .container -->
        </div>
        <!-- End Axil Newsletter Area  -->
