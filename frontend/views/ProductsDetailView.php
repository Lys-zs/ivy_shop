<?php 
  //load file LayoutTrangTrong.php vao day
  $layout = "LayoutTrangTrong.php";
 ?>
 <div class="product-content">
    <div class="product-content-left">
        <div class="product-content-left-big-img">
            <img src="../assets/upload/products/<?php echo $record->photo; ?>" />
        </div>
        <div class="product-content-left-small-img">
            <img src="https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/08/29/20b3f46d888b97b3957601834e18a994.jpg" />
            <img src="https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/08/29/6e9872818446c4aeedfa631afeb856e9.jpg" />
            <img src="https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/08/29/d68e67f92ba97baface0a18a3a553a26.jpg" />
            <img src="https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/08/29/ef46624e4b74dd7989b026772c763873.jpg" />
        </div>
    </div>
    <div class="product-content-right">
        <div class="product-content-right-product-name">
            <h1><?php echo $record->name; ?></h1>
            <p style="font-size: 20px;">CATEGORY:
                <span> 
                    <?php 
                    $category = $this->modelGetCategory($record->category_id); 
                    echo isset($category->name) ? $category->name : "";
                    ?> 
                </span>
            </p>
        </div>
        <div class="product-content-right-product-price">
            <p><?php echo number_format($record->price); ?><sup>đ</sup></p>
        </div>
        <div class="product-content-right-product-color">
            <p><span style="font-weight: bold;">Màu Sắc</span>:Hồng Phấn</p>
            <div class="product-content-right-product-color-img">
                <img src="https://pubcdn2.ivymoda.com/images/color/009.png">
                <img src="https://pubcdn2.ivymoda.com/images/color/012.png">
                <img src="https://pubcdn2.ivymoda.com/images/color/013.png">
            </div>
        </div>
        <div class="product-content-right-product-size">
            <p style="font-weight: bold;">Size</p>
            <div class="size">
                <span>S</span>
                <span>M</span>
                <span>L</span>
                <span>XL</span>
            </div>
            <p style="color: red;">Vui lòng chọn size</p>
        </div>
        <div class="quantity">
            <p style="font-weight:bold;">Số lượng:</p>
            <input type="number" min="0" value="1">
        </div>
        <div class="product-content-right-product-button">
            <button><a href="index.php?controller=cart&action=create&id=<?php echo $record->id; ?>"><i class="fa-solid fa-bag-shopping" style="padding-right: 10px;"></i>Thêm vào giỏ</a></button>
            <button><p>Mua Hàng</p></button>
            <button><i class="fa-regular fa-heart"></i></button>
        </div>
        <div class="cartt">
            <p><a href="index.php">Tìm tại của hàng</a></p>
        </div>
        <div class="product-content-right-bottom">
            <div class="product-content-right-bottom-content-big">
            </div>
            <div class="product-content-right-bottom-content">
                <p>
                    - Đầm dáng suông dài, bên trong có lớp lót cùng màu, tay sát nách.<br>

                    - Chất liệu vải thô mềm mát, nhăn nhẹ. <br>

                    - Chi tiết cut-out trước ngực tạo điểm nhấn, tùng váy xếp tầng xòe rộng.<br>

                    - Đầm kèm đai nhún chun co giãn thoải mái.<br>

                    - Mix đầm cùng túi xách và sandals/ sneakers là hoàn thiện outfit đi chơi dành cho nàng.<br>

                    Lưu ý: Màu sắc sản phẩm thực tế sẽ có sự chênh lệch nhỏ so với ảnh do điều kiện ánh sáng khi chụp và màu sắc hiển thị qua mản hình máy tính/ điện thoại.
                </p>
            </div>
        </div>
    </div>
</div>
