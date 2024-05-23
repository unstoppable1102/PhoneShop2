<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Start Breadcrumb Area  -->
        <div class="axil-breadcrumb-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-8">
                        <div class="inner">
                            <ul class="axil-breadcrumb">
                                <li class="axil-breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                                <li class="separator"></li>
                                <li class="axil-breadcrumb-item active" aria-current="page">Liên hệ</li>
                            </ul>
                            <h1 class="title">Liên hệ với chúng tôi</h1>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4">
                        <div class="inner">
                            <div class="bradcrumb-thumb">
                                <img src="${contextPath}/home/images/product/product-45.png" alt="Image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Breadcrumb Area  -->

        <!-- Start Contact Area  -->
        <div class="axil-contact-page-area axil-section-gap">
            <div class="container">
                <div class="axil-contact-page">
                    <div class="row row--30">
                        <div class="col-lg-8">
                            <div class="contact-form">
                                <h3 class="title mb--10">Chúng tôi rất mong nhận được hồi âm từ bạn.</h3>
                                <p>Nếu bạn có những sản phẩm tuyệt vời mà bạn đang tạo ra hoặc muốn hợp tác với chúng tôi thì hãy liên hệ với chúng tôi</p>
                                <form id="contact-form" method="POST" action="https://new.axilthemes.com/demo/template/etrade/mail.php" class="axil-contact-form">
                                    <div class="row row--10">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label for="contact-name">Tên <span>*</span></label>
                                                <input type="text" name="contact-name" id="contact-name">
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label for="contact-phone">Số điện thoại <span>*</span></label>
                                                <input type="text" name="contact-phone" id="contact-phone">
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label for="contact-email">E-mail <span>*</span></label>
                                                <input type="email" name="contact-email" id="contact-email">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="contact-message">Tin nhắn của bạn</label>
                                                <textarea name="contact-message" id="contact-message" cols="1" rows="2"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group mb--0">
                                                <button name="submit" type="submit" id="submit" class="axil-btn btn-bg-primary">Gửi tin nhắn</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="contact-location mb--40">
                                <h4 class="title mb--20">Địa chỉ</h4>
                                <span class="address mb--20">Số 238 Hoàng Quốc Việt, phường Cổ Nhuế, quận Bắc Từ Liêm, thành phố Hà Nội, Việt Nam</span>
                                <span class="phone">Số điện thoại: +123 456 7890</span>
                                <span class="email">Email: Hello@etrade.com</span>
                            </div>
                           
                            <div class="opening-hour">
                                <h4 class="title mb--20">Giờ mở cửa:</h4>
                                <p>Thứ Hai đến thứ Bảy: 9am - 10pm
                                    <br> Chủ nhật: 10am - 6pm
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Start Google Map Area  -->
                <div class="axil-google-map-wrap axil-section-gap pb--0">
                    <div class="mapouter">
                        <div class="gmap_canvas">
                            <iframe width="1080" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=melbourne&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed"></iframe>
                        </div>
                    </div>
                </div>
                <!-- End Google Map Area  -->
            </div>
        </div>
        <!-- End Contact Area  -->