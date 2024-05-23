<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Start Cart Area  -->
        <div class="axil-product-cart-area axil-section-gap">
            <div class="container">
                <div class="axil-product-cart-wrap">
                    
                    <div class="table-responsive">
                        <table class="table axil-product-table axil-cart-table mb--40">
                            <thead>
                                <tr>
                                    <th scope="col" class="product-remove"></th>
                                    <th scope="col" class="product-thumbnail">Sản phẩm</th>
                                    <th scope="col" class="product-title"></th>
                                    <th scope="col" class="product-price">Giá</th>
                                    <th scope="col" class="product-quantity">Số lượng</th>
                                    <th scope="col" class="product-subtotal">Tổng tiền</th>
                                </tr>
                            </thead>
                            <tbody>
	                            <c:forEach items="${carts}" var="c">
	                                <tr>
	                                    <td class="product-remove"><a href="#" class="remove-wishlist" onclick="removeItem('${c.productId}')"><i class="fal fa-times"></i></a></td>
	                                    <td class="product-thumbnail"><a href="${contextPath}/detail/${c.productId}"><img src="${contextPath}/images/${c.picture	}" alt="Digital Product"></a></td>
	                                    <td class="product-title"><a href="${contextPath}/detail/${c.productId}">${c.title}</a></td>
	                                    <td class="product-price" data-title="Price"><span class="currency-symbol">$</span><f:formatNumber value="${c.price}"/></td>
	                                    <td class="product-quantity" data-title="Qty">
	                                        <div class="">
	                                            <input type="number" onchange="updateCart('${c.productId}',this.value)" class="" value="${c.quantity}" min="1" max="100">
	                                        </div>
	                                    </td>
	                                    
	                                    <td class="product-subtotal" data-title="Subtotal">
	                                    	<span>$</span>
	                                    	<f:formatNumber value="${c.price*c.quantity}"/>
	                                    </td>
	                                    <c:set var="total" value="${total+b.price*b.quantity}" />
	                                </tr>
	                             </c:forEach>
                               
                        </table>
                    </div>
                    <div class="cart-update-btn-area">
                        <div class="input-group product-cupon">
                            <input placeholder="Nhập mã giảm giá" type="text">
                            <div class="product-cupon-btn">
                                <button type="submit" class="axil-btn btn-outline">Apply</button>
                            </div>
                        </div>
                        <div class="update-btn">
                            <a href="${contextPath }/cart" class="axil-btn btn-outline">Cập nhật giỏ hàng</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-5 col-lg-7 offset-xl-7 offset-lg-5">
                            <div class="axil-order-summery mt--80">
                                <h5 class="title mb--20">Tóm tắt hóa đơn</h5>
                                <h6 class="title mb--20">Tổng tiền: <f:formatNumber value="${total}"></f:formatNumber></h6>
                                <div class="summery-table-wrap">
                                	<form method="post" action="order">
	                                    <table class="table summery-table mb--30">
	                                        <tbody>
	                                            <tr class="order-subtotal">
	                                                <td>Họ và tên: </td>
	                                                <td>${sessionScope.fullname}</td>
	                                            </tr>
	                                            <tr class="order-subtotal">
	                                                <td>Địa chỉ: </td>
	                                                <td><input type="text" name="address" value="${sessionScope.address}" /></td> 
	                                            </tr>
	                                           
	                                            <tr class="order-subtotal">
	                                                <td>Số điện thoại: </td>
	                                                	<td><input type="text" name="phone" value="${sessionScope.phone}"/></td>
													
	                                            </tr>
	                                        </tbody>
	                                    </table>
	                                    <button class="axil-btn btn-bg-primary checkout-btn">Đặt hàng</button>
                                    </form>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Cart Area  -->