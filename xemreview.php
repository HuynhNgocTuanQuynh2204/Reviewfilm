<?php
session_start();
include("includes/header.php");
include("includes/navbar.php");
include("dbcon.php");
?>
<style>
.comment-container {
    display: none;
}
</style>
<?php
if (isset($_SESSION['status'])) {
?>
<div class="alert"><?php echo $_SESSION['status']; ?></div>
<?php
unset($_SESSION['status']);
}
?>

<?php
$sql_lietke_bv = "SELECT * FROM review, users WHERE review.id_users = users.id ORDER BY review.id_review DESC";
$query_lietke_bv = mysqli_query($conn, $sql_lietke_bv);
?>
<?php 
$i = 0;
while ($row = mysqli_fetch_array($query_lietke_bv)) {
    // Kiểm tra nếu trạng thái không phải là 0 hoặc 1
    if ($row['tinhtrang'] == 0 || $row['tinhtrang'] == 1) {
        continue;  // Nếu trạng thái là 0 hoặc 1, bỏ qua bài viết này
    }

    $i++;
    
    // Truy vấn để đếm bình luận và phản hồi cho bài viết hiện tại
    $post_id = $row['id_review'];
    $sql_count_comments = "SELECT COUNT(*) AS total_comments FROM comments WHERE id_review = $post_id";
    $sql_count_replies = "SELECT COUNT(*) AS total_replies FROM comment_replies WHERE comment_id IN (SELECT id FROM comments WHERE id_review = $post_id)";
    
    $result_comments = mysqli_query($conn, $sql_count_comments);
    $result_replies = mysqli_query($conn, $sql_count_replies);
    
    $total_comments = mysqli_fetch_assoc($result_comments)['total_comments'];
    $total_replies = mysqli_fetch_assoc($result_replies)['total_replies'];
    
    $total_all_comments = $total_comments + $total_replies; // Tổng số bình luận và phản hồi
?>
<div class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">

                    <div class="card-header">
                        <h4><?php echo $row['hovaten'] ?></h4>
                        <h4><?php echo $row['tenbaiviet'] ?></h4>
                    </div>
                    <div class="card-body">
                        <img src="review/<?php echo $row['hinhanh'] ?>" width="150px">
                        <hr>
                        <div class="main-comment">

                            <div id="error_status"></div>
                            <input type="hidden" class="post_id" value="<?php echo $row['id_review']; ?>">
                            <textarea class="comment_textbox form-control mb-1" rows="2"></textarea>
                            <button type="button" class="btn btn-primary add_comment_btn">Comment</button>
                            <hr>
                            <p><strong>Tổng số bình luận: </strong><?php echo $total_all_comments; ?></p> <!-- Hiển thị tổng số bình luận -->
                            <button class="toggleButton" data-id="<?php echo $row['id_review']; ?>">Xem bình luận</button>
                            <div class="comment-container" id="comment-container-<?php echo $row['id_review']; ?>" data-post-id="<?php echo $row['id_review']; ?>">
                                <!-- Bình luận sẽ được tải vào đây -->
                            </div>

                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<?php 
} 
if ($i == 0) {
    echo "Không có bài viết nào.";
}
?>
<?php
include("includes/footer.php");
?>
