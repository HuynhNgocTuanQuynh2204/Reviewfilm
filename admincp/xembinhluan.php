<?php
session_start();
include("header.php");
include("navbar.php");
include("../dbcon.php");
?>
<?php
$sql_lietke_cm_bd = "SELECT * FROM comment_replies,users WHERE comment_replies.user_id =users.id ORDER BY comment_replies.id = '$_GET[idbl]'";
$query_lietke_cm_bd = mysqli_query($conn, $sql_lietke_cm_bd);
?>
<h6 style="text-align: center;text-transform: uppercase;font-weight: bold;">Liệt kê bình luận  reply</h6>
<table style="width: 100%;" border="1" style="border-collapse: collapse;">
  <tr>
    <th>ID</th>
    <th>Tên người bình luận</th>
    <th>Nội dung bình luận</th>
    <th>Thời gian</th>
    <th>Quản lý</th>
  </tr>
  <?php
  $num_rows = mysqli_num_rows($query_lietke_cm_bd); // Đếm số dòng trả về từ truy vấn

  if ($num_rows > 0) {
    $i = 0;
    while ($row_bd = mysqli_fetch_array($query_lietke_cm_bd)) {
      $i++;
  ?>
      <tr>
        <td><?php echo $i ?></td>
        <td><?php echo $row_bd['hovaten'] ?></td>
        <td><?php echo $row_bd['reply_msg'] ?></td>
        <td><?php echo $row_bd['created_at'] ?></td>
        <td>
          <a class="btn btn-primary" href="xulybl.php?idreplies=<?php echo $row_bd['user_id'] ?>">Xóa</a>
        </td>
      </tr>
    <?php }
  } else { ?>
    <tr>
      <td colspan="5" style="text-align: center;color: violet;"><?php echo 'Không có bình luận nào khác'; ?></td>
    </tr>
  <?php } ?>
</table>
<p  style="text-align: center;padding: 15px 0px;"><a class="btn btn-danger" href="quanlybinhluan.php "><-BACK</a></p>
<?php
include("footer.php");
?>