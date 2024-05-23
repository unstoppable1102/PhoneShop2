<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from new.axilthemes.com/demo/template/etrade/sign-up.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Oct 2023 08:14:51 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>eTrade || Sign Up</title>
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


<body>
    <div class="axil-signin-area">

        <!-- Start Header -->
        <div class="signin-header">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <a href="${contextPath}/" class="site-logo"><img src="${contextPath}/home/images/logo/logo.png" alt="logo"></a>
                </div>
                <div class="col-md-6">
                    <div class="singin-header-btn">
                        <p>Đã là thành viên?</p>
                        <a href="${contextPath}/login" class="axil-btn btn-bg-secondary sign-up-btn">Đăng nhập</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Header -->

        <div class="row">
            <div class="col-xl-4 col-lg-6">
                <div class="axil-signin-banner bg_image bg_image--10">
                    <h3 class="title">We Offer the Best Products</h3>
                </div>
            </div>
            <div class="col-lg-6 offset-xl-2">
                <div class="axil-signin-form-wrap">
                    <div class="axil-signin-form">
                        <h3 class="title">ĐĂNG KÝ</h3>
                        <p class="b2 mb--55">Nhập thông tin chi tiết của bạn dưới đây</p>
                        <f:form class="singin-form" action="save" method="post" modelAttribute="account">
                            <div class="form-group">
                                <label>Tên người dùng</label>
                                <f:input type="text" class="form-control" path="username"/>
                                <span style="color: red">${error}</span>
                            </div>
                            <div class="form-group">
                                <label>Họ và tên</label>
                                <f:input type="text" class="form-control" path="fullName"/>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <f:input type="email" class="form-control" path="email"/>
                            </div>
                            <div class="form-group">
                                <label>Mật khẩu</label>
                                <f:input type="password" class="form-control" path="password"/>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="axil-btn btn-bg-primary submit-btn">Tạo tài khoản</button>
                            </div>
                        </f:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
    <!-- <script src="${contextPath}/home/js/vendor/jquery.style.switcher.js"></script> -->
    <script src="${contextPath}/home/js/vendor/jquery-ui.min.js"></script>
    <script src="${contextPath}/home/js/vendor/jquery.ui.touch-punch.min.js"></script>
    <script src="${contextPath}/home/js/vendor/jquery.countdown.min.js"></script>
    <script src="${contextPath}/home/js/vendor/sal.js"></script>
    <script src="${contextPath}/home/js/vendor/jquery.magnific-popup.min.js"></script>
    <script src="${contextPath}/home/js/vendor/imagesloaded.pkgd.min.js"></script>
    <script src="${contextPath}/home/js/vendor/isotope.pkgd.min.js"></script>
    <script src="${contextPath}/home/js/vendor/counterup.js"></script>
    <script src="${contextPath}/home/js/vendor/waypoints.min.js"></script>

    <!-- Main JS -->
    <script src="${contextPath}/home/js/main.js"></script>

</body>


<!-- Mirrored from new.axilthemes.com/demo/template/etrade/sign-up.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Oct 2023 08:14:51 GMT -->
</html>