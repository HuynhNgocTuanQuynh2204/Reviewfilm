<?php
include("../dbcon.php");
session_start();

$tendanhmuc = $_POST['tendanhmuc'];

if (isset($_POST['themdanhmuc'])) {
    // Thêm
    $sql_them = "INSERT INTO danhmuc(tendanhmuc) VALUES ('$tendanhmuc')";
    mysqli_query($conn, $sql_them);
    header('Location: danhmuc.php');
    exit();
} elseif (isset($_POST['suadanhmuc'])) {
    // Sửa
    $id = $_GET['iddanhmuc'];
    $sql_update = "UPDATE danhmuc SET tendanhmuc='$tendanhmuc' WHERE id_danhmuc='$id'";
    mysqli_query($conn, $sql_update);
    header('Location: danhmuc.php');
    exit();
} else {
    // Xóa
    $id = $_GET['iddanhmuc'];
    $sql_xoa = "DELETE FROM danhmuc WHERE id_danhmuc='$id'";
    mysqli_query($conn, $sql_xoa);
    header('Location: danhmuc.php');
    exit();
}
?>
