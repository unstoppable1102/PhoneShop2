<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Start Breadcrumb Area  -->
<div class="axil-breadcrumb-area">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-6 col-md-8">
				<div class="inner">
					<ul class="axil-breadcrumb">
						<li class="axil-breadcrumb-item"><a href="${contextPath}/">Trang chủ</a></li>
						<li class="separator"></li>
						<li class="axil-breadcrumb-item active" aria-current="page">Sản phẩm</li>
					</ul>
					<h1 class="title">Khám phá tất cả các sản phẩm</h1>
				</div>
			</div>
			<div class="col-lg-6 col-md-4">
				<div class="inner">
					<div class="bradcrumb-thumb">
						<img src="${contextPath}/home/images/product/product-45.png"
							alt="Image">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Breadcrumb Area  -->

<!-- Start Shop Area  -->
<div class="axil-shop-area axil-section-gap bg-color-white">
	<div class="container">
		<ul class="axil-breadcrumb">
			<li class="axil-breadcrumb-item active"><a href="${contextPath}/searchByPrice">Tìm theo giá</a></li>
			<li class="separator"></li>
			<li class="axil-breadcrumb-item">Tìm theo tên</li>
		</ul>
		<div class="row">
			<div class="col-lg-12">
				<div class="axil-shop-top">
					<div class="row">
						<div class="col-lg-8">
							<form action=""  class ="d-flex">
								<!-- Start Single Select  -->
								<select name="cateid" onchange="forms[0].submit()" class="single-select w-25">
									<option value="0">--Danh mục</option>
									<c:forEach var="c" items="${categories}">
										<c:choose>
											<c:when test="${c.id==cateid}">
												<option value="${c.id}" selected>${c.name}</option>
											</c:when>
											<c:otherwise>
												<option value="${c.id}">${c.name}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</select>
								
								<div class="input-group">
								  <div class="form-outline" >
								    <input name="searchname" type="search" id="form1" class="form-control" style="margin-left:26px; height:54px" />								    
								  </div>
								  <a type="button" class="btn btn-primary d-inline-block d-flex align-items-center justify-content-center" style="width:63px">
								    <i class="fas fa-search"></i>
								  </a>
								</div>
							</form>
							
						</div>
						<div class="col-lg-4 d-flex justify-content-end">
							
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<div class="row row--15">
			<c:forEach items="${products}" var="p">
				<div class="col-xl-3 col-lg-4 col-sm-6" >
					<div class="axil-product product-style-one has-color-pick mt--40">
						<div class="thumbnail" >
							<a href="${contextPath}/detail/${p.productId}" >
								<img src="${contextPath}/images/${p.picture}" alt="Product Images" width="100%">
							</a>
							<div class="product-hover-action">
								<ul class="cart-action">
									<li class="wishlist"><a href="wishlist.html"><i class="far fa-heart"></i></a></li>
									<li class="select-option"><a href="cart.html">Thêm vào giỏ hàng</a></li>
									<li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="product-content text-center">
							<div class="inner">
								<h5 class="title">
									<a href="single-product.html">${p.productName}</a>
								</h5>
								<div class="product-price-variant">
									<span class="price current-price"><span>$</span>${p.price}</span> 
									<span class="price old-price"><span>$</span>${p.priceOld}</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<!-- End Single Product  -->
			
		</div>
		
	</div>
	<!-- End .container -->
</div>
<!-- End Shop Area  -->
<!-- Start Axil Newsletter Area  -->
<div class="axil-newsletter-area axil-section-gap pt--0">
	<div class="container">
		<div class="etrade-newsletter-wrapper bg_image bg_image--5">
			<div class="newsletter-content">
				<span class="title-highlighter highlighter-primary2"><i
					class="fas fa-envelope-open"></i>Newsletter</span>
				<h2 class="title mb--40 mb_sm--30">Get weekly update</h2>
				<div class="input-group newsletter-form">
					<div class="position-relative newsletter-inner mb--15">
						<input placeholder="example@gmail.com" type="text">
					</div>
					<button type="submit" class="axil-btn mb--15">Subscribe</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End .container -->
</div>
<!-- End Axil Newsletter Area  -->