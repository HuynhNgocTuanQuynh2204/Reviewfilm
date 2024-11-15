<?php
session_start();
include("header.php");
include("navbar.php");
include("../dbcon.php");
?>

<?php
if (isset($_SESSION['status'])) {
?>
<div class="alert"><?php echo $_SESSION['status']; ?></div>
<?php
unset($_SESSION['status']); 
}
?>
<?php
if (!isset($_SESSION['auth_user_id'])) {
    echo '<script type="text/javascript">
            alert("Bạn cần đăng nhập mới có thể đăng bài");
            window.location.href = "index.php";
          </script>';
}
?>

<div class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h4>Thêm danh mục</h4>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="xulythemdanhmuc.php" enctype="multipart/form-data">
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td><label for="tendanhmuc" class="form-label">Tên danh mục</label></td>
                                        <td><input type="text" class="form-control" id="tendanhmuc" name="tendanhmuc"
                                                required></td>
                                    </tr>
                                </tbody>
                            </table>
                            <tr>
                                <td colspan="2"><input type="submit" name="themdanhmuc" value="Thêm danh mục"
                                        class="btn btn-primary"></td>
                            </tr>
                        </form>
                        <hr>
                        <div id="error_status"></div>
                        <?php
$sql_lietke_dm = "SELECT * FROM danhmuc ORDER BY id_danhmuc DESC";
$stmt = $conn->prepare($sql_lietke_dm);

if ($stmt) {
    $stmt->execute(); // Thực thi câu lệnh đã chuẩn bị
    $query_lietke_dm = $stmt->get_result(); // Lấy kết quả của truy vấn
} else {
    echo "Lỗi: " . $conn->error; // In ra lỗi nếu có
}
?>

                        <h6 style="text-align: center;text-transform: uppercase;font-weight: bold;">Liệt kê danh muc
                        </h6>
                        <table style="width: 100%;" border="1" style="border-collapse: collapse;">
                            <tr>
                                <th>ID</th>
                                <th>Tên danh mục</th>
                                <th>Quản lý</th>
                            </tr>
                            <?php 
                                $i=0;
                                while($row = mysqli_fetch_array($query_lietke_dm)){
                                $i++;  
                                ?>
                            <tr>
                                <td><?php echo $i ?></td>
                                <td><?php echo $row['tendanhmuc'] ?></td>
                                
                                <td>
                                    <a class="btn btn-primary"
                                        href="xulythemdanhmuc.php?iddanhmuc=<?php echo  $row['id_danhmuc']?>">Xóa</a>
                                    |
                                    <a class="btn btn-secondary"
                                        href="editdanhmuc.php?iddanhmuc=<?php echo  $row['id_danhmuc']?>">Sửa</a>
                                </td>
                            </tr>
                            <?php } ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    ClassicEditor
        .create( document.querySelector( '#noidung' ) )
        .catch( error => {
            console.error( error );
    } );
    </script>
</div>
<?php
include("footer.php");
?>