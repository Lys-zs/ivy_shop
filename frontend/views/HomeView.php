<?php 
	//load file LayoutTrangChu.php vao day
	$layout = "LayoutTrangChu.php";
 ?>

<div class="posts">
		<?php 
	  		$hotProducts = $this->modelHotProducts();
	  	 ?>
	  	<?php foreach($hotProducts as $rows): ?>
	<!-- start -->
	<div class="item">
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
<div class="link-product">
	<a href="#" class="all-product">Xem tất cả</a>
</div>