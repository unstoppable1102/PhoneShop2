<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <div class="axil-single-product-area bg-color-white">
            <div class="single-product-thumb axil-section-gapcommon single-product-modern">
                <div class="container">
                    <div class="row row--20">
                        <div class="col-lg-6 mb--40">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="product-large-thumbnail-4 single-product-thumbnail axil-product">
                                        <div class="thumbnail">
                                            <img src="${contextPath}/images/${product.picture}" alt="Product Images">
                                        </div>
                                    </div>
                                </div>                               
                            </div>
                        </div>
                        <div class="col-lg-6 mb--40">
                            <div class="single-product-content">
                                <div class="inner">
                                    <h2 class="product-title">${product.productName}</h2>
                                    <span class="price-amount"><span>$</span>${product.price}</span>
                                    <div class="product-rating">
                                        <div class="star-rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        <div class="review-number">6,405</div>
                                    </div>
                                    <div class="col-md-6">
                                         <div class="nft-category">
                                             <label>Danh mục :</label>
                                             <div class="category-list">
                                                 <a href="${contextPath}/products?cateid=${product.categoryId}">${product.category.name}</a>
                                             </div>
                                         </div>
                                     </div>
                                     <ul class="product-meta">
                                        <li><i class="fal fa-check"></i>In stock</li>
                                        <li><i class="fal fa-check"></i>Free delivery available</li>
                                        <li><i class="fal fa-check"></i>Sales 30% Off Use Code: MOTIVE30</li>
                                    </ul>
                                    <ul class="description">
                                        <li>Meet Echo Dot - Our most compact smart speaker that fits perfectly into small spaces.</li>
                                        <li>Add rich bass to your music experience. Echo Sub delivers down-firing, 100W deep bass sound through a 6” woofer. When paired with Echo Studio, you can feel the music as it fills the room</li>
                                    </ul>
                                    
                                    <div class="product-variations-wrapper">
                                        <div class="product-variation quantity-variant-wrapper">
                                            <h6 class="title">Số lượng: </h6>
                                            <div class="pro-qty"><input type="text" value="1"></div>
                                        </div>
                                    </div>
                                    <!-- Start Product Action Wrapper  -->
                                    <div class="product-action-wrapper">
                                        <!-- Start Product Action  -->
                                        <ul class="product-action d-flex-center mb--0">
                                            <li class="add-to-cart"><a href="checkout.html" class="axil-btn btn-bg-secondary"><i class="far fa-shopping-bag"></i> Mua Ngay</a></li>
                                            <li class="add-to-cart"><a href="#" class="axil-btn btn-bg-primary" onclick="addCart('${product.productId}')"><i class="far fa-shopping-cart"></i> Thêm vào giỏ</a></li>
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
            <!-- End .single-product-thumb -->
            <div class="woocommerce-tabs wc-tabs-wrapper bg-lighter wc-tab-style-two">
                <div class="container">
                    <div class="section-title-wrapper section-title-border">
                        <h2 class="title">Chi tiết sản phẩm💥</h2>
                    </div>
                    <div class="tabs-wrap">          
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                                <div class="product-desc-wrapper">
                                    <div class="single-desc">
                                        ${product.description}
                                    </div>
                                    <!-- End .row -->
                                </div>
                                <!-- End .product-desc-wrapper -->
                            </div>
                            
                        </div>
                    </div>
                    <div class="single-product-features">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="single-features">
                                    <div class="icon">
                                        <i class="far fa-hand-holding-box"></i>
                                    </div>
                                    <div class="content">
                                        <h6 class="title">Dễ dàng trả lại</h6>
                                        <p>Bất cứ khi nào bạn cũng có thể trả hàng mà không phải thanh toán gì</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="single-features">
                                    <div class="icon quality">
                                        <i class="fal fa-badge-check"></i>
                                    </div>
                                    <div class="content">
                                        <h6 class="title">Dịch vụ chất lượng</h6>
                                        <p>Chúng tôi sẵn sàng cung cấp cho bạn dịch vụ chất lượng vì hạnh phúc của bạn</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="single-features">
                                    <div class="icon original">
                                        <i class="fal fa-box"></i>
                                    </div>
                                    <div class="content">
                                        <h6 class="title">Sản phẩm gốc</h6>
                                        <p>Chúng tôi cung cấp cho bạn mỗi sản phẩm đều có nguồn gốc rõ ràng </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- woocommerce-tabs -->

        </div>
        <!-- Start Expolre Product Area  -->
        <div class="axil-new-arrivals-product-area fullwidth-container flash-sale-area section-gap-80-35">
            <div class="container ml--xxl-0">
                <div class="section-title-border slider-section-title">
                    <h2 class="title">Sản phẩm cùng danh mục 💥</h2>
                </div>
                <div class="recently-viwed-activation slick-layout-wrapper--15 axil-slick-angle angle-top-slide">
                <c:forEach items="${productsInSameCategory}" var="pIC">
	                <div class="slick-single-layout">
	                    <div class="axil-product product-style-eight">
                            <div class="thumbnail">
                                <a href="${contextPath}/detail/${pIC.productId}">
                                    <img data-sal="zoom-out" data-sal-delay="100" data-sal-duration="800" loading="lazy" class="main-img" src="${contextPath}/images/${pIC.picture}" alt="Product Images">
                                </a>
                                <div class="product-hover-action">
                                    <ul class="cart-action">
                                        <li class="select-option">
                                            <a href="" onclick="addCart('${pIC.productId}')">
                                                <i class="far fa-shopping-cart"></i> Thêm vào giỏ hàng
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-content text-center">
                                <div class="inner">
                                    <h5 class="title"><a href="single-product-8.html">${pIC.productName}</a></h5>
                                    <div class="product-rating">
                                        <span class="icon">
		                                    <i class="fas fa-star"></i>
		                                    <i class="fas fa-star"></i>
		                                    <i class="fas fa-star"></i>
		                                    <i class="fas fa-star"></i>
		                                    <i class="fas fa-star"></i>
                                		</span>
                                        <span class="rating-number">6,400</span>
                                    </div>
                                    <div class="product-price-variant">
                                        <span class="price old-price"><span>$</span>${pIC.priceOld}</span>
                                        <span class="price current-price"><span>$</span>${pIC.price}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
             	 </c:forEach>
                </div>
            </div>
        </div>
        <!-- End Expolre Product Area  -->
        <div class="sale-banner-area">
            <div class="container">
                <div class="sale-banner-thumb">
                    <a href="shop.html"><img src="${contextPath}/home/images/banner/sale_banner.png" alt="Sale Banner"></a>
                </div>
            </div>
        </div>