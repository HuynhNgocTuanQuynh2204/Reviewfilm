<?php
include("dbcon.php");
session_start();

   $tenbaiviet = $_POST['tenbaiviet'];
    //xulyhinhanh
   $hinhanh = $_FILES['hinhanh']['name'];
   $hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
   $hinhanh_time = time().'_'.$hinhanh;
   $id_admin =$_SESSION['auth_user_id'];
   

  

   if(isset($_POST['thembaiviet'])){
   //them
    $sql_them = "INSERT INTO review(tenbaiviet,hinhanh,id_users,tinhtrang) VALUE('".$tenbaiviet."
      ','".$hinhanh_time."','".$id_admin."',1)";
   mysqli_query($conn,$sql_them);
   move_uploaded_file($hinhanh_tmp,'review/'.$hinhanh_time);
   header('location:dangreview.php');
   
   
   }
   elseif (isset($_POST['suabaiviet'])){
      //sua
      if($hinhanh !=''){
         move_uploaded_file($hinhanh_tmp,'review/'.$hinhanh_time);       
         $sql_update = "UPDATE review SET tenbaiviet='". $tenbaiviet."', hinhanh='". $hinhanh_time."' WHERE id_review='$_GET[idreview]'";
         $sql = "SELECT * FROM review WHERE id_review = '$_GET[idreview]' LIMIT 1";
         $query = mysqli_query($conn,$sql);
         while($row = mysqli_fetch_array($query)){
            unlink('review/'.$row['hinhanh']);
         }
      }else{
         $sql_update = "UPDATE review SET tenbaiviet='". $tenbaiviet."'
         WHERE id_review='$_GET[idreview]'";
      }
      mysqli_query($conn,$sql_update);
      header('location:dangreview.php');
   
   
   }else{
      $id = $_GET['idreview'];
      $sql = "SELECT * FROM review WHERE id_review = '$id' LIMIT 1";
      $query = mysqli_query($conn,$sql);
      while($row = mysqli_fetch_array($query)){
         unlink('review/'.$row['hinhanh']);
      }
      $sql_xoa = "DELETE FROM review WHERE id_review='".$id."'";
      mysqli_query($conn,$sql_xoa);
      header('location:dangreview.php');
   }
?>