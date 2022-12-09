<?php 
    //load file Layout.php vao day
    $layout = "Layout.php";
 ?>
<div class="card">
    <div class="card-body">
    <h4 class="card-title">Add edit news</h4>
    <form class="forms-sample" method="post" enctype="multipart/form-data" action="<?php echo $action; ?>">
        <div class="form-group row">
        <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Name</label>
        <div class="col-sm-9">
            <input type="text" value="<?php echo isset($record->name)?$record->name:''; ?>" name="name" class="form-control" id="exampleInputUsername2" required>
        </div>
        </div>
        <div class="form-group row">
        <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Discount</label>
        <div class="col-sm-9">
            <input type="number" value="<?php echo isset($record->discount)?$record->discount:'0'; ?>" name="discount" class="form-control" id="exampleInputUsername2" required>
        </div>
        </div>
        <div class="form-group row">
        <label for="exampleInputEmail2" class="col-sm-3 col-form-label">Category</label>
        <div class="col-sm-9">
            <?php 
                $conn = Connection::getInstance();
                $query = $conn->query("select * from categories where parent_id = 0 order by id desc");
                $categories = $query->fetchAll(PDO::FETCH_OBJ);
                ?>
            <select name="category_id" class="form-control" style="width: 300px;">
                <?php foreach($categories as $rows): ?>
                <option <?php if(isset($record->category_id) && $record->category_id == $rows->id): ?> selected <?php endif; ?> value="<?php echo $rows->id; ?>"><?php echo $rows->name; ?></option>
                    <?php 
                        $querySub = $conn->query("select * from categories where parent_id = {$rows->id} order by id desc");
                        $categoriesSub = $querySub->fetchAll(PDO::FETCH_OBJ);
                        ?>
                    <?php foreach($categoriesSub as $rowsSub): ?>
                    <option <?php if(isset($record->category_id) && $record->category_id == $rowsSub->id): ?> selected <?php endif; ?> value="<?php echo $rowsSub->id; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $rowsSub->name; ?></option>
                    <?php endforeach; ?>
                <?php endforeach; ?>
            </select>
        </div>
        </div>
        <div class="form-group row" style="margin-top:5px;">
            <div class="col-md-3">Descripition</div>
            <div class="col-md-9">
                <textarea name="description" id="description"><?php echo isset($record->description)?$record->description:""; ?></textarea>
                    <script type="text/javascript">
                        CKEDITOR.replace("description");
                    </script>
            </div>
        </div>
        <div class="form-group row" style="margin-top:5px;">
            <div class="col-md-3">Content</div>
            <div class="col-md-9">
                 <textarea name="content" id="content"><?php echo isset($record->content)?$record->content:""; ?></textarea>
                    <script type="text/javascript">
                        CKEDITOR.replace("content");
                    </script>
            </div>
        </div>
        <div class="form-group row" style="margin-top:5px;">
            <div class="col-md-3"></div>
            <div class="col-md-9">
                <input type="checkbox" <?php if(isset($record->hot) && $record->hot == 1): ?> checked <?php endif; ?> name="hot" id="hot"> <label for="hot">Hot news</label>
            </div>
        </div>
        <div class="form-group row" style="margin-top:5px;">
                <div class="col-md-3">Upload image</div>
                <div class="col-md-9">
                    <input type="file" name="photo">
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