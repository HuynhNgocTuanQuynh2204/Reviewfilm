<?php
session_start();
include("header.php");
include("navbar.php");
include("../dbcon.php");
?>
<?php
$sql_lietke_cm_bd = "SELECT * FROM comments,review,users WHERE comments.user_id = users.id AND comments.id_review =  review.id_review
ORDER BY comments.id DESC";

$query_lietke_cm_bd = mysqli_query($conn, $sql_lietke_cm_bd);
?>
<div class="quanly">
<h6 style="text-align: center;text-transform: uppercase;font-weight: bold;">Liệt kê bình luận </h6>
<table style="width: 100%;" border="1" style="border-collapse: collapse;">
  <tr>
    <th>ID</th>
    <th>Tên bài đăng</th>
    <th>Name</th>
    <th>Nội dung bình luận</th>
    <th>Quản lý</th>
    
  </tr>
  <?php 
    $i=0;
    while($row_bd = mysqli_fetch_array($query_lietke_cm_bd)){
      $i++;  
    ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $row_bd['tenbaiviet'] ?></td> 
    <td><?php echo $row_bd['hovaten'] ?></td> 
    <td><?php echo $row_bd['msg'] ?></td>

    <td>
    <a  class="btn btn-success" href="xembinhluan.php?idbl=<?php echo  $row_bd['id']?>">Xem bình luận reply</a>
    <a  class="btn btn-primary"  href="xulybl.php?idblbd=<?php echo  $row_bd['id']?>">Xóa</a>
  </td>
  </tr>
  <?php } ?>
</table>
</div>
<style>
    div.quanly{
        padding: 100px 0px;
    }
</style>
<?php
include("footer.php");
?>