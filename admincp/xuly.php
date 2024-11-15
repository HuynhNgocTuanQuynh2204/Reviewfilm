<?php
include("../dbcon.php");
session_start();

if (isset($_GET['tinhtrang']) && isset($_GET['id'])) {
    $tinhtrang = $_GET['tinhtrang'];
    $id = $_GET['id'];

    // Cập nhật trạng thái của bài review
    $sql = "UPDATE review SET tinhtrang = '$tinhtrang' WHERE id_review = '$id'";
    $sql_query = mysqli_query($conn, $sql);

    // Kiểm tra nếu câu lệnh update thành công
    if ($sql_query) {
        // Nếu update thành công, chuyển hướng về trang duyệt bài
        header('Location: duyetbaireview.php');
        exit;  // Đảm bảo dừng quá trình script sau khi chuyển hướng
    } else {
        // Nếu có lỗi xảy ra, bạn có thể hiển thị thông báo lỗi
        echo "Có lỗi xảy ra khi cập nhật trạng thái bài viết.";
    }
}
?>
