<?php 
    //load file layout vao day
    $layout = "LayoutTrangTrong.php";
?>
<div class="right_bottom">
    <div class="posts">
        <!-- start -->
        <h3><?php echo $record->name; ?></h3>
        <img src="../assets/upload/news/<?php echo $record->photo; ?>" style="width: 100%;">
        <p><?php echo $record->description; ?></p>
        <p><?php echo $record->content; ?></p>
    </div>
</div>