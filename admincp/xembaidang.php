<?php
session_start();
include("header.php");
include("navbar.php");
include("../dbcon.php");
?>
<?php
      $id = $_GET['id'];
      $sql_pro_bd = "SELECT * FROM review, users WHERE review.id_users = users.id
       AND review.id_review = $id LIMIT 1";
       $query_pro_bd = mysqli_query($conn,$sql_pro_bd);

       $query_pro_bd_all = mysqli_query($conn,$sql_pro_bd);

       $row_bd_title = mysqli_fetch_array($query_pro_bd);
       
?>
<b><?php echo  $row_bd_title['hovaten']  ?></b>: <?php echo  $row_bd_title['thoigian']  ?>
<div style="text-align: center; text-transform: uppercase; display: flex; justify-content: center;">
<h3>
    <?php echo $row_bd_title['tenbaiviet'] ?>
</h3>
</div>
<div class="row">
           <ul class="baiviet">
            <?php
               while($row_pro = mysqli_fetch_array($query_pro_bd_all)){
            ?>
             <li>
                <p class="title_product"> <?php  echo $row_pro['tenbaiviet'] ?></p>
             </li>
             <li>
             <img src="../review/<?php echo $row_pro['hinhanh'] ?>"
                                        width="150px"></td>
                                        <td></p>
             </li>

             <?php
               }
               ?>
           </ul>
</div>
<p  style="text-align: center;padding: 15px 0px;"><a class="btn btn-danger" href="duyetbaireview.php"><-BACK</a></p>
<?php
include("footer.php");
?>