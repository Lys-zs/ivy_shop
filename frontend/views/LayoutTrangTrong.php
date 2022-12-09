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
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/635cfd20daff0e1306d49c5c/1gghjpi06';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
<?php include("HeaderView.php") ?>
<main id="main" class="site-main">
    <div class="container">
<div class="content">
    <div class="left">
        <div class="menu_left">
            <div class="menu_left">
                <div class="new_title">
                    <h2>Hỗ trợ trực tuyến</h2>
                </div>
                <div class="block-content">
                    <div class="sp_1">
                        <p>Tư vấn bán hàng 1</p>
                        <p>Mrs. Dung: (04) 3786 8904</p>
                    </div>
                    <div class="sp_1">
                        <p>Tư vấn bán hàng 2</p>
                        <p>Mr. Tuấn: (04) 3786 8904</p>
                    </div>
                    <div class="sp_1">
                        <p>Email liên hệ</p>
                        <p>support@mail.com</p>
                    </div>
                </div>
            </div>
            <?php 
                $fromPrice = isset($_GET["fromPrice"]) ? $_GET["fromPrice"] : 0;
                $toPrice = isset($_GET["toPrice"]) ? $_GET["toPrice"] : 0;
            ?>
            <div class="menu_left_bottom" style="margin-top:15px;">
                <div class="panel-heading"> Tìm theo mức giá </div>
                <div class="panel-body">
                    <ul class="list-group" style="border:0px;">
                    <li class="list-group-item" style="border:0px;">Giá từ &nbsp;&nbsp;
                        <input type="number" min="0" value="<?php echo $fromPrice ?>" id="fromPrice" class="form-control" />
                    </li>
                    <li class="list-group-item" style="border:0px;">Đến &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="number" min="0" value="<?php echo $toPrice ?>" id="toPrice" class="form-control"/>
                    </li>
                    <li class="list-group-item" style="border:0px; text-align:center">
                        <input type="button" class="btn btn-warning" value="Tìm mức giá" onclick="location.href = 'index.php?controller=search&action=price&fromPrice=' + document.getElementById('fromPrice').value + '&toPrice=' + document.getElementById('toPrice').value;" />
                    </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="right">
        <?php echo $view; ?>
    </div>
</div>
<section class="home-new-prod">
        <div class="title-section">
            TIN ĐÃ XEM
        </div>
        <div class="posts">
            <?php 
                $conn = Connection::getInstance();
                //lay 6 tin noi bat
                $queryHotNews = $conn->query("select * from news where hot = 1 order by id desc");
                $hotNews = $queryHotNews->fetchAll(PDO::FETCH_OBJ);
            ?>            
            <?php foreach($hotNews as $rows): ?>
                <div class="item">
                    <div class="article"> <a href="index.php?controller=news&action=detail&id=<?php echo $rows->id; ?>" class="image"> <img src="../assets/upload/news/<?php echo $rows->photo; ?>" alt="<?php echo $rows->name; ?>" title="<?php echo $rows->name; ?>" class="img-responsive"> </a>
                        <div class="info">
                            <h6><a href="index.php?controller=news&action=detail&newsId=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></h6>
                            <p class="desc"></p>
                        </div>
                    </div>
                </div>
            <!-- end list hot news --> 
            <?php endforeach; ?>
        </div>
    </section>
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