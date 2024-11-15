<?php
include("../dbcon.php");
session_start();
     if(isset($_GET['idblbd'])){
      $idblbd = $_GET['idblbd'];
      $sql_xoa_blbd = "DELETE FROM comments WHERE user_id='".$idblbd."'";
        mysqli_query($conn,$sql_xoa_blbd);
        $sql_xoa_blbd_replies = "DELETE FROM comment_replies WHERE comment_id='".$idblbd."'";
        mysqli_query($conn,$sql_xoa_blbd_replies);
        header('location:quanlybinhluan.php');
}elseif(isset($_GET['idreplies'])){
      $idreplies = $_GET['idreplies'];
      $sql_xoa_blbd_replies = "DELETE FROM comment_replies WHERE user_id='".$idreplies."'";
        mysqli_query($conn,$sql_xoa_blbd_replies);
        header("Location: xembinhluan.php?idbl=$idreplies");
}
?>
