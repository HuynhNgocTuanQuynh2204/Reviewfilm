<?php
include("../dbcon.php");
session_start();

   $tenbaiviet = $_POST['tenbaiviet'];
    //xulyhinhanh
   $hinhanh = $_FILES['hinhanh']['name'];
   $danhmuc = $_POST['danhmuc'];
   $hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
   $hinhanh_time = time().'_'.$hinhanh;
   $id_admin =$_SESSION['auth_user_id'];
   $trailer =$_POST['trailer'];
   $noidung = $_POST['noidung'];
   

  

   if(isset($_POST['thembaiviet'])){
   //them
    $sql_them = "INSERT INTO baiviet(tenbaiviet,noidung,hinhanh,id_users,id_danhmuc,trailer) VALUE('".$tenbaiviet.",'".$noidung."','".$hinhanh_time."','".$id_admin."','".$danhmuc."','".$trailer."')";
   mysqli_query($conn,$sql_them);
   move_uploaded_file($hinhanh_tmp,'../uploads/'.$hinhanh_time);
   header('location:index.php');
   
   
   }
   elseif (isset($_POST['suabaiviet'])){
      //sua
      if($hinhanh !=''){
         move_uploaded_file($hinhanh_tmp,'../uploads/'.$hinhanh_time);       
         $sql_update = "UPDATE baiviet SET tenbaiviet='". $tenbaiviet."', noidung='". $noidung."', hinhanh='". $hinhanh_time."', id_danhmuc='". $danhmuc."', trailer='". $trailer."' WHERE id_baiviet='$_GET[idbaiviet]'";
         $sql = "SELECT * FROM baiviet WHERE id_baiviet = '$_GET[idbaiviet]' LIMIT 1";
         $query = mysqli_query($conn,$sql);
         while($row = mysqli_fetch_array($query)){
            unlink('../uploads/'.$row['hinhanh']);
         }
      }else{
         $sql_update = "UPDATE baiviet SET tenbaiviet='". $tenbaiviet."', noidung='". $noidung."', id_danhmuc='". $danhmuc."', trailer='". $trailer."'
         WHERE id_baiviet='$_GET[idbaiviet]'";
      }
      mysqli_query($conn,query: $sql_update);
      header('location:index.php');
   
   
   }else{
      $id = $_GET['idbaiviet'];
      $sql = "SELECT * FROM baiviet WHERE id_baiviet = '$id' LIMIT 1";
      $query = mysqli_query($conn,$sql);
      while($row = mysqli_fetch_array($query)){
         unlink('../uploads/'.$row['hinhanh']);
      }
      $sql_xoa = "DELETE FROM baiviet WHERE id_baiviet='".$id."'";
      mysqli_query($conn,$sql_xoa);
      header('location:index.php');
   }
?>