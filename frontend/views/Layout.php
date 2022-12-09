<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="https://pubcdn2.ivymoda.com/images/logo-icon.ico" type="image/png" sizes="16x16">
<!-- <link rel="stylesheet" href="../fontawesome-free-6.1.2-web/css/all.min.css" /> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
<link rel="stylesheet" href="../assets/frontend/style.css"/>
<title>Trang Chủ | IVY moda</title>
</head>
<body>
<?php include("HeaderView.php") ?>
<main id="main" class="site-main">
    <div class="container">
        <?php echo $view; ?> 
    </div> 
</main>
<footer>
        <div class="container">
            <div class="main-footer d-flex">
                <div class="left-footer">
                    <div class="top-left">
                        <div class="logo-footer">
                            <a href="./index.html">
                                <img src="https://pubcdn2.ivymoda.com/images/logo-footer.png">
                            </a>
                        </div>
                        <a href="" class="dmca-badge">
                            <img src="https://images.dmca.com/Badges/dmca_protected_16_120.png?ID=0cfdeac4-6e7f-4fca-941f-57a0a0962777">
                        </a>
                        <div class="logo-conthuong">
                            <a href="">
                                <img src="https://pubcdn2.ivymoda.com/images/img-congthuong.png">
                            </a>
                        </div>
                    </div>
                    <div class="content-left-ft">
                        <div class="content-left-ft content-ft">
                            <div class="info-left-ft">
                                <p>Công ty Cổ phần Dự Kim với số đăng ký kinh doanh: 0105777650</p>
                                <p><strong>Địa chỉ đăng ký: </strong>Tổ dân phố Tháp, P.Đại Mỗ, Q.Nam Từ Liêm, TP.Hà Nội, Việt Nam</p>
                                <p><strong>Số điện thoại: </strong>0243 205 2222</p>
                            </div>
                            <ul class="list-social">
                                <li>
                                    <a href="">
                                        <img src="https://pubcdn2.ivymoda.com/images/ic_fb.svg">
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="https://pubcdn2.ivymoda.com/images/ic_gg.svg">
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="https://pubcdn2.ivymoda.com/images/ic_instagram.svg" style="height: 30px;">
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="https://pubcdn2.ivymoda.com/images/ic_pinterest.svg" style="height: 27px">
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="https://pubcdn2.ivymoda.com/images/ic_ytb.svg">
                                    </a>
                                </li>
                            </ul>
                            <div class="hotline">
                                <a href="tel:02466623434">Hotline: 0246 662 3434</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="center-footer d-flex">
                    <div class="left-center-ft item-center-ft">
                        <p class="title-footer">Giới thiệu</p>
                        <ul>
                            <li>
                                <a href="">Về IVY moda</a>
                            </li>
                            <li>
                                <a href="">Tuyển dụng</a>
                            </li>
                            <li>
                                <a href="">Hệ thống cửa hàng</a>
                            </li>
                        </ul>
                    </div>
                    <div class="main-center-ft item-center-ft">
                        <p class="title-footer">Dịch vụ khách hàng</p>
                        <ul>
                            <li>
                                <a href="">Chính sách điều khoản</a>
                            </li>
                            <li>
                                <a href="">Hướng dẫn mua hàng</a>
                            </li>
                            <li>
                                <a href="">Chính sách thanh toán</a>
                            </li>
                            <li>
                                <a href="">Chính sách đổi trả</a>
                            </li>
                            <li>
                                <a href="">Chính sách bảo hành</a>
                            </li>
                            <li>
                                <a href="">Chính sách giao nhận vận chuyển</a>
                            </li>
                        </ul>
                    </div>
                    <div class="right-center-ft item-center-ft">
                        <p class="title-footer">Liên hệ</p>
                        <ul>
                            <li>
                                <a href="">Hotline</a>
                            </li>
                            <li>
                                <a href="">Email</a>
                            </li>
                            <li>
                                <a href="">Live Chat</a>
                            </li>
                            <li>
                                <a href="">Messenger</a>
                            </li>
                            <li>
                                <a href="">Liên hệ</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="right-footer">
                    <div class="register-form">
                        <p class="title-footer">Nhận thông tin các chương trình của IVY moda</p>
                        <form id="frm_subscribe">
                            <input id="email_subscribe" type="text" name="email" placeholder="Nhập địa chỉ email" required>
                            <div class="btn-submit">
                                <input id="btn-submit" class="form-submit" value="Đăng ký" type="submit">
                            </div>
                        </form>
                        <div id="subscribe_error"></div>
                    </div>
                    <div class="info-right-ft">
                        <p class="title-footer">Download App</p>
                        <ul>
                            <li>
                                <a id="app_ios" href=""> <img src="https://pubcdn2.ivymoda.com/images/appstore.png"></a>
                            </li>
                            <li>
                                <a id="app_android" href=""> <img src="https://pubcdn2.ivymoda.com/images/googleplay.png"> </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="coppy-right">Sản Phẩm 1</div>
        </div>
</footer>
<!-- end footer -->
</body>
</html>