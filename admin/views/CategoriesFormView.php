<?php 
    //load file Layout.php vao day
    $layout = "Layout.php";
 ?>
<div class="card">
    <div class="card-body">
    <h4 class="card-title">Add edit category</h4>
    <form class="forms-sample" method="post" action="<?php echo $action; ?>">
        <div class="form-group row">
        <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Name</label>
        <div class="col-sm-9">
        <input type="text" value="<?php echo isset($record->name)?$record->name:''; ?>" name="name" class="form-control" id="exampleInputUsername2" required>
        </div>
        </div>
        <div class="form-group row">
        <label for="exampleInputEmail2" class="col-sm-3 col-form-label">Parent</label>
        <div class="col-sm-9">
        <?php 
                        //lay bien ket noi csdl
                        $conn = Connection::getInstance();
                        $query = $conn->query("select * from categories where parent_id = 0 order by id desc");
                        //lay tat ca cac ket qua tra ve
                        $categories = $query->fetchAll(PDO::FETCH_OBJ);
                     ?>
                     <select name="parent_id">
                         <option value="0"></option>
                         <?php foreach($categories as $rows): ?>
                            <option <?php if(isset($record->parent_id)&&$record->parent_id == $rows->id): ?> selected <?php endif; ?> value="<?php echo $rows->id; ?>"><?php echo $rows->name; ?></option>
                         <?php endforeach; ?>
                     </select>
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