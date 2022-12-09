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