<header class="site-header">
    <div class="container">
        <div class="sub_header">
            <div class="menu">
                <li>
                    <a class="nu" href="">Nữ</a>
                    <ul class="sub-menu">
                        <?php 
                          $conn = Connection::getInstance();
                          $query = $conn->query("select * from categories where parent_id = 0 order by id desc");
                          $categories = $query->fetchAll(PDO::FETCH_OBJ);
                        ?>
                        <?php foreach($categories as $rows): ?>
                          <li><a href="index.php?controller=products&action=category&catId=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></li>
                          <?php 
                            $querySub = $conn->query("select * from categories where parent_id={$rows->id} order by id desc");
                            $categoriesSub = $querySub->fetchAll(PDO::FETCH_OBJ);
                          ?>
                          <?php foreach($categoriesSub as $rowsSub): ?>
                          <li style="padding-left:20px;"><a href="index.php?controller=products&action=category&catId=<?php echo $rowsSub->id; ?>"><?php echo $rowsSub->name; ?></a></li>
                        <?php endforeach; ?>
                        <?php endforeach; ?>
                    </ul>
                </li>
                <li><a href="">Nam</a></li>
                <li><a href="">Trẻ em</a></li>
                <li><a href="">Sale up to 50%</a></li>
                <li><a href="">Bộ sưu tập</a></li>
                <li><a href="index.php?controller=contact">Liên hệ</a></li>
                <li><a href="index.php?controller=news">Tin Tức</a></li>
            </div>
            <div class="logo">
                <a href="index.php"><img src="https://pubcdn2.ivymoda.com/images/logo.png" alt="Trang chủ | IVY moda"></a>
            </div>
            <div class="others">
                <li class="a1">
                    <!-- <form id="form_search" action="" method="post"> -->
                    <div id="form_search">
                        <input type="text" onkeyup="searchAjax();" value="" placeholder="Nhập từ khóa tìm kiếm..." id="key" />
                        <button type="submit" class="btn-search">
                            <i class="fa-solid fa-magnifying-glass" onclick="return search();"></i>
                        </button>
                    <!-- </form> -->
                    <div id="smart-search-box">
                      <ul>            
                            
                      </ul>
                    </div>
                    </div>
                    <style type="text/css">
                          #smart-search{
                            position: relative;
                          }
                          #smart-search-box{
                            width: 150%;
                            background: white;
                            position: absolute;
                            z-index: 1;
                          }
                          #smart-search-box ul{
                            padding: 0px; margin: 0px; list-style: none;
                          }
                          #smart-search-box ul li{
                            border-bottom: 1px solid #dddddd;
                            display:flex;
                          }
                          #smart-search-box img{
                            width: 50px;
                            margin-right: 5px;
                          }
                          #smart-search-box a{
                            text-decoration: none;
                            color: black;
                            font-size:12px;
                            padding-top:20px;
                          }
                          #smart-search-box{
                            max-height: 300px; overflow: scroll;
                            display: none;
                          }
                        </style>
                      <script type="text/javascript">
                          function search(){
                            //lay gia tri cua textbox co id=key
                            var key = document.getElementById("key").value;
                            //di chuyen den trang tim kiem
                            location.href = "index.php?controller=search&action=name&key="+key;
                          }
                          
                          //kiem tra jquery (neu website chua co jquery thi phai download va add jquery vao trang)
                          // $(document).ready(function(){
                          //   alert("jquery da load vao trang");
                          // });
                          function searchAjax(){
                            var key =$("#key").val();
                            //hien thi box search
                            $("#smart-search-box").attr("style","display:block");
                            //thuc hien lay thong tin bang ajax
                            $.get("index.php?controller=search&action=ajax&key="+key, function(data){
                              //lam rong du lieu trong the ul
                              $("#smart-search-box ul").empty();
                              //them du lieu vao the ul
                              $("#smart-search-box ul").append(data);
                            });
                          }
                      </script>
                </li>
                <li><a href=""><i class="fa-solid fa-headphones"></i></a></li>
                <li><a href="index.php?controller=account&action=login"><i class="fa-solid fa-user"></i></a></li>
                <?php 
                  $numberProduct = isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0;
                ?>
                <li>
                    <a href="index.php?controller=cart">
                        <i class="fa-solid fa-bag-shopping"></i>
                        <span class="number-cart"><?php echo $numberProduct ?></span>
                    </a>
                </li>
            </div>
        </div>
    </div>
</header>