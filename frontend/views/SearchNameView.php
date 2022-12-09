<?php 
  //load file LayoutTrangTrong.php vao day
  $layout = "LayoutTrangTrong.php";
?>
<div class="right_top">
    <h2>
        Tìm kiếm
    </h2>
</div>
<div class="right_bottom">
    <div class="posts">
        <!-- start -->
        <?php foreach($data as $rows): ?>
        <div class="item1">
            
            <div class="post">
                <div class="box-hover">
                    <a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>">
                        <img src="../assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>">
                    </a>
                </div>
                <div class="list-color">
                    <ul>
                        <li class="checked">
                            <a href="" class="color-picker">
                                <img src="https://pubcdn2.ivymoda.com/images/color/h06.png">
                            </a>
                        </li>
                    </ul>
                    <div class="favourite">
                        <i class="fa-regular fa-heart"></i>
                    </div>
                </div>
                <div class="info">
                    <h2 class="post_name"><a href="index.php?controller=products&action=detail&productId=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></h2>
                    <div class="price-product">
                        <span><?php echo number_format($rows->price); ?>đ</span>
                        <del>
                        <span><?php echo number_format($rows->price - ($rows->price * $rows->discount)/100); ?>đ</span>
                        </del>
                    </div>
                    <div class="add-to-cart">
                        <a href="index.php?controller=cart&action=create&productId=<?php echo $rows->id; ?>"><i class="fa-solid fa-bag-shopping"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end -->
        <?php endforeach; ?>
    </div>
    <div class="paginate">
        <ul>
            <li>    
                <a> Trang  </a>
            </li>
            <?php for($i = 1; $i <= $numPage; $i++): ?>
            <li class="page-item"><a class="page-link" href="index.php?controller=search&action=name&key=<?php echo $key; ?>&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
            <?php endfor; ?>
        </ul>
    </div>
    
</div>