<?php 
    //load file layout vao day
    $layout = "Layout.php";
?>
<div class="auth">
    <div class="auth-container">
            <div class="auth__login auth__block">
                <h1 class="auth__title">Đăng ký tài khoản</h1>
                <?php if(isset($_GET["notify"]) && $_GET["notify"] == "error"): ?>
                    <p class="auth__title" style="color:red; font-weight: bold;">Đăng ký thất bại, email đã bị trùng!</p>
                <?php elseif(isset($_GET["notify"]) && $_GET["notify"] == "success"): ?>
                    <p class="auth__title" style="color:red; font-weight: bold;">Đăng ký thành công, click vào đăng nhập để đăng nhập tài khoản</p>
                <?php else: ?>
                <p class="auth__title"> Nếu bạn chưa có tài khoản, hãy đăng ký ngay để nhận thông tin ưu đãi cùng những ưu đãi từ cửa hàng.</p>
                <?php endif; ?>
                <div class="auth__login__content">
                    <form class="auth__form" role="login" name="frm_customer_account_email" enctype="application/x-www-form-urlencoded" method="post" action="index.php?controller=account&action=registerPost" autocomplete="off">
                        <div class="form-group">
                            <label>Họ và tên:</label>
                            <input class="form-control" name="name" required="" type="text" value="">
                        </div>
                        <div class="form-group">
                            <label>Email:<b id="req">*</b></label>
                            <input type="email" class="form-control" name="email" required="">
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ:</label>
                            <input type="text" name="address" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Điện thoại:</label>
                            <input type="text" name="phone" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Password:<b id="req">*</b></label>
                            <input class="form-control" type="password" name="password" required="">
                        </div>
                        <div class="auth__form__buttons">
                            <button id="but_login_email" name="but_login_email" class="btn btn--large">Đăng ký</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>