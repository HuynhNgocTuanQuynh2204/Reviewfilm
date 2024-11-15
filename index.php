<?php
session_start();
include("includes/header.php");
include("includes/navbar.php");
include("dbcon.php");
?>
<link rel="stylesheet" href="css/style.css">
<?php
if (isset($_SESSION['status'])) {
    echo "<div class='alert alert-success'>{$_SESSION['status']}</div>";
    unset($_SESSION['status']);
}
?>

<?php
$sql_lietke_bv = "SELECT * FROM baiviet, users WHERE baiviet.id_users = users.id ORDER BY baiviet.id_baiviet DESC";
$query_lietke_bv = mysqli_query($conn, $sql_lietke_bv);
?>

<h3 style="text-align: center; text-transform: uppercase; font-weight: bold;">Trang chủ</h3>
<?php
$sql_lietke_dm = "SELECT * FROM danhmuc  ORDER BY id_danhmuc DESC";
$query_lietke_dm = mysqli_query($conn, $sql_lietke_dm);
?>
<php style="text-align: center;">
    <?php
    while ($row_dm = mysqli_fetch_array($query_lietke_dm)) {
?>
    <a href="danhmuc.php?iddanhmuc=<?php echo $row_dm['id_danhmuc'] ?>" class="btn btn-primary"><?php echo $row_dm['tendanhmuc'] ?></a>
    <?php
    }
    ?>
</p>

<div class="row"> <!-- Di chuyển row ra ngoài vòng lặp -->
    <?php 
    while ($row = mysqli_fetch_array($query_lietke_bv)) {
    ?>
    <div class="col-md-3 col-sm-6 mb-4"> <!-- Đặt cột trong vòng lặp -->
        <div class="post-item text-center p-2" style="border: 1px solid #ddd; border-radius: 8px;">
            <a href="<?php echo $row['trailer'] ?>" style="text-decoration: none;">
                <img class="img-fluid w-100" style="height: 150px; object-fit: cover; border-radius: 8px;" src="uploads/<?php echo $row['hinhanh'] ?>" alt="Post Image">
                
                <p class="title_product mt-2" style="font-weight: bold; font-size: 1.1em; color: #333;">
                    <?php echo htmlspecialchars($row['tenbaiviet']); ?>
                </p>
                
                <span class="text-muted" style="font-size: 0.9em;"><?php echo htmlspecialchars($row['thoigian']); ?></span>
                
                <p class="title_product text-success mt-1" style="font-size: 0.95em; color: #28a745;">
                    Tác giả: <?php echo htmlspecialchars($row['hovaten']); ?>
                </p>
            </a>
        </div>
    </div>
    <?php
    }
    ?>
</div> <!-- Đóng row sau khi kết thúc vòng lặp -->

<?php
include("includes/footer.php");
?>
