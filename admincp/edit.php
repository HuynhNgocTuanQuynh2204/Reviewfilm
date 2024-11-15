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
unset($_SESSION['status']); // Xóa session status sau khi hiển thị để tránh hiển thị lại ở các lần tải trang sau
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
<?php
 $sql_sua_bv = "SELECT * FROM baiviet WHERE id_baiviet = '$_GET[idbaiviet]' LIMIT 1";
 $query_sua_bv =   mysqli_query($conn,$sql_sua_bv);
?>
<div class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h4>Sửa bài viết</h4>
                    </div>
                    <div class="card-body">
                        <?php
                        while($row = mysqli_fetch_array($query_sua_bv)){
                        ?>
                        <form method="POST" action="xulythembaiviet.php?idbaiviet=<?php echo  $row['id_baiviet'] ?>"
                            enctype="multipart/form-data">
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td><label for="tenbaiviet" class="form-label">Tên bài viết</label></td>
                                        <td><input type="text" name="tenbaiviet"
                                                value="<?php echo $row['tenbaiviet'] ?>"></td>
                                    </tr>
                                    <tr>
                                        <td>Nội dung</td>
                                        <td>
                                            <textarea id="noidung" rows="10" style="resize: none;"
                                                name="noidung"><?php echo $row['noidung'] ?></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label for="hinhanh" class="form-label">Hình ảnh</label></td>
                                        <td><input type="file" name="hinhanh">
                                            <img src="../uploads/<?php echo $row['hinhanh'] ?>" width="150px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Danh mục phim</td>
                                        <td>
                                            <select name="danhmuc">
                                                <?php
                                                    $sql_danhmuc_phim ="SELECT * FROM danhmuc ORDER BY id_danhmuc DESC";
                                                    $query_danhmuc_phim = mysqli_query($conn,$sql_danhmuc_phim);
                                                    while($row_danhmuc = mysqli_fetch_array($query_danhmuc_phim)){
                                                        if($row_danhmuc['id_danhmuc']==$row['id_danhmuc']){
                                                    ?>
                                                <option selected value="<?php echo $row_danhmuc['id_danhmuc'] ?>">
                                                    <?php echo $row_danhmuc['tendanhmuc'] ?></option>
                                                <?php
                                                } else {
                                                ?>
                                                <option value="<?php echo $row_danhmuc['id_danhmuc'] ?>">
                                                    <?php echo $row_danhmuc['tendanhmuc'] ?></option>
                                                <?php
                                                    }
                                                }
                                                ?>
                                            </select>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <tr>
                                <td colspan="2"><input type="submit" name="suabaiviet" value="Sửa bài viết"
                                        class="btn btn-primary"></td>
                            </tr>
                        </form>
                        <?php
}
?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
ClassicEditor
    .create(document.querySelector('#noidung'))
    .catch(error => {
        console.error(error);
    });
</script>
</div>
<?php
include("footer.php");
?>