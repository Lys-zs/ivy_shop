<?php 
    //load file layout vao day
    $layout = "Layout.php";
 ?>
 <div class="card">
	<div class="card-body">
	<h4 class="card-title">List orders</h4>
	<div class="table-responsive">
		<table class="table table-bordered table-contextual">
		<thead>
			<tr class="table-info" >
 					<th style="color:white;">Họ và tên</th>
 					<th style="color:white;">Địa chỉ</th>
 					<th style="color:white;">Điện thoại</th>
 					<th style="color:white;">Ngày mua</th>
 					<th style="color:white;">Giá</th>
 					<th style="width: 150px;color:white;">Trạng thái</th>
 					<th style="width:150px;"></th>
 				</tr>
		</thead>
		<?php foreach($data as $rows): ?>
 				<?php $customer = $this->modelGetCustomer($rows->customer_id); ?>
		<tbody >
			<tr class="table-primary">
			<td ><?php echo isset($customer->name)?$customer->name:""; ?></td>
 					<td><?php echo isset($customer->address)?$customer->address:""; ?></td>
 					<td><?php echo isset($customer->phone)?$customer->phone:""; ?></td>
 					<td><?php echo date("d/m/Y",strtotime($rows->date)); ?></td>
 					<td><?php echo number_format($rows->price); ?></td>
 					<td>
 						<?php if($rows->status == 1): ?>
 							<div>Đã giao hàng</div>
 						<?php else: ?>
 							<div>Chưa giao hàng</div>
 						<?php endif; ?>
 					</td>
 					<td style="text-align:center;">
 						<?php if($rows->status == 0): ?>
 							<a href="index.php?controller=orders&action=delivery&id=<?php echo $rows->id; ?>" class="label label-info">Giao hàng</a>
 							&nbsp;&nbsp;
 						<?php endif; ?>
 						<a href="index.php?controller=orders&action=detail&id=<?php echo $rows->id; ?>" class="label label-success" style="color:black;">Chi tiết</a>
 					</td>
			</tr>
		</tbody>
		<?php endforeach; ?>
		</table>
		<style type="text/css">
                .pagination{padding:0px; margin:0px;}
            </style>
            <ul class="pagination">
                <li class="page-item"><a href="#" class="page-link">Trang</a></li>
                <?php for($i = 1; $i <= $numPage; $i++): ?>
                <li class="page-item"><a href="index.php?controller=orders&p=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a></li>
                <?php endfor; ?>
            </ul>
	</div>
	</div>
</div>