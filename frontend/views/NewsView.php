<?php 
    //load file layout vao day
    $layout = "LayoutTrangTrong.php";
?>
<div class="right_top">
    <h1>Tin tức</h1>
</div>
<div class="right_bottom">
    <div class="posts">
        <!-- start -->
        <?php foreach($data as $rows): ?>
        <div class="item1">
            <div class="post">
                <div class="box-hover">
                    <a href="index.php?controller=news&action=detail&newsId=<?php echo $rows->id; ?>">
                        <img src="../assets/upload/news/<?php echo $rows->photo; ?>" alt="<?php echo $rows->name; ?>" title="<?php echo $rows->name; ?>">
                    </a>
                </div>
                <div class="info">
                    <h2 class="post_name"><a href="index.php?controller=news&action=detail&newsId=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></h2>
                    <p class="desc"><?php echo $rows->description; ?></p>
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
            <li class="page-item"><a class="page-link" href="index.php?controller=news&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
            <?php endfor; ?>
        </ul>
    </div>
    
</div>