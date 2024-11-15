<?php
session_start();
include("includes/header.php");
include("includes/navbar.php");
include("dbcon.php");
?>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<?php
      $sql_pro_bd = "SELECT * FROM baiviet WHERE id_baiviet = '$_GET[idbaiviet]' LIMIT 1";

       $query_pro_bd = mysqli_query($conn,$sql_pro_bd);
       $row_bd_title = mysqli_fetch_array($query_pro_bd);
       
?>
<p  style="text-align: center;padding: 15px 0px;"><a class="btn btn-danger" href="review.php"><-BACK</a></p>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                  <div class="card">
                    <div class="card-header">
                    <h3  style="text-align: center; text-transform: uppercase; display: flex; justify-content: center;" >
                       <?php echo $row_bd_title['tenbaiviet'] ?>
                    </h3>
                    </div>
                    <div class="card-body">
                    <?php echo $row_bd_title['noidung'] ?>
                       

                    </div>
                  </div>
            </div>
        </div>
    </div>
 </div>
<?php
include("includes/footer.php");
?>