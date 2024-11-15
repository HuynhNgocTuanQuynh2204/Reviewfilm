<?php
session_start();
include("header.php");
include("navbar.php");
include("../dbcon.php");

if (!isset($_SESSION['auth_user_id'])) {
    echo '<script type="text/javascript">
            alert("Bạn cần đăng nhập mới có thể sửa danh mục");
            window.location.href = "index.php";
          </script>';
    exit();
}

// Lấy id_danhmuc từ URL để biết danh mục nào cần sửa
if (isset($_GET['iddanhmuc'])) {
    $id_danhmuc = $_GET['iddanhmuc'];
    
    // Truy vấn lấy thông tin của danh mục cần sửa
    $sql_lietke_dm = "SELECT * FROM danhmuc WHERE id_danhmuc = ?";
    $stmt = $conn->prepare($sql_lietke_dm);
    $stmt->bind_param("i", $id_danhmuc);
    $stmt->execute();
    $result = $stmt->get_result();
    $danhmuc = $result->fetch_assoc();

    if (!$danhmuc) {
        echo '<script type="text/javascript">
                alert("Danh mục không tồn tại");
                window.location.href = "danhmuc.php";
              </script>';
        exit();
    }
} else {
    echo '<script type="text/javascript">
            alert("Không tìm thấy danh mục để sửa");
            window.location.href = "danhmuc.php";
          </script>';
    exit();
}

?>

<div class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h4>Sửa danh mục</h4>
                    </div>
                    <div class="card-body">
                        <?php
                        if (isset($_SESSION['status'])) {
                            echo "<div class='alert alert-success'>{$_SESSION['status']}</div>";
                            unset($_SESSION['status']);
                        }
                        ?>
                        <form method="POST" action="xulythemdanhmuc.php?iddanhmuc=<?php echo $danhmuc['id_danhmuc']; ?>" enctype="multipart/form-data">

                            <div class="mb-3">
                                <label for="tendanhmuc" class="form-label">Tên danh mục</label>
                                <input type="text" class="form-control" id="tendanhmuc" name="tendanhmuc" value="<?php echo htmlspecialchars($danhmuc['tendanhmuc']); ?>" required>
                            </div>
                            <button type="submit" name="suadanhmuc" class="btn btn-primary">Cập nhật danh mục</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
include("footer.php");
?>
