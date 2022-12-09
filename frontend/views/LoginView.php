<?php 
    //load file layout vao day
    $layout = "Layout.php";
?>
<div class="auth">
    <div class="auth-container">
        <div class="auth-row">
            <div class="auth__login auth__block">
                <h3 class="auth__title">Bạn đã có tài khoản IVY</h3>
                <div class="auth__login__content">
                    <p class="auth__description">
                        Nếu bạn đã có tài khoản, hãy đăng nhập để tích lũy điểm
                        thành viên và nhận được những ưu đãi tốt hơn!
                    </p>
                    <form class="auth__form" role="login" name="frm_customer_account_email" enctype="application/x-www-form-urlencoded" method="post" action="index.php?controller=account&action=loginPost" autocomplete="off">
                        <div class="form-group">
                            <label>Email:<b id="req">*</b></label>
                            <input class="form-control" name="email" required="" type="email" placeholder="nhập email vào đây" value="">
                        </div>
                        <div class="form-group">
                            <label>Password:<b id="req">*</b></label>
                            <input class="form-control" placeholder="Nhập password vào đây" type="password" name="password" required="">
                        </div>
                        <div class="auth__form__buttons">
                            <button id="but_login_email" name="but_login_email" class="btn btn--large">Đăng nhập</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="auth__register auth__block">
                <h3 class="auth__title">Khách hàng mới của IVY moda</h3>
                <div class="auth__login__content">
                    <p class="auth__description">
                        Nếu bạn chưa có tài khoản trên ivymoda.com, hãy sử dụng tùy chọn này để truy cập biểu mẫu đăng ký.
                    </p>
                    <p class="auth__description">
                        Bằng cách cung cấp cho IVY moda thông tin chi tiết của bạn, quá trình mua hàng trên ivymoda.com sẽ là một trải nghiệm thú vị và nhanh chóng hơn!
                    </p>

                    <div class="auth__form__buttons">
                        <a href="index.php?controller=account&action=register"> <button class="btn btn--large">Đăng ký</button></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>