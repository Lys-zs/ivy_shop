<?php 
    //load file Layout.php vao day
    $layout = "Layout.php";
 ?>
<div class="card">
    <div class="card-body">
    <h4 class="card-title">Add edit user</h4>
    <form class="forms-sample" method="post" action="<?php echo $action; ?>">
        <div class="form-group row">
            <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Name</label>
            <div class="col-sm-9">
                <input type="text" value="<?php echo isset($record->name)?$record->name:''; ?>" name="name" class="form-control" id="exampleInputUsername2" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Email</label>
            <div class="col-sm-9">
                <input type="email" value="<?php echo isset($record->email)?$record->email:''; ?>" <?php if(isset($record->email)): ?> disabled <?php else: ?> required <?php endif; ?> name="email" class="form-control" id="exampleInputUsername2" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">Password</label>
            <div class="col-sm-9">
                <input type="password" name="password" <?php if(isset($record->email)): ?> placeholder="Không đổi password thì không nhập thông tin vào ô textbox này" <?php else: ?> required <?php endif; ?> class="form-control">
            </div>
        </div>
        <div class="form-group row" style="margin-top:5px;">
            <div class="col-md-3"></div>
            <div class="col-md-9">
                <button type="submit" class="btn btn-primary mr-2">Submit</button>
            </div>
        </div>
    </form>
    </div>
</div>