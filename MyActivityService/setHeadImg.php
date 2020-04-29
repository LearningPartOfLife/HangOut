<?php
require_once ('db.php');
require_once ('response.php');
header('content-type:text/html;charset=utf-8');
$username = $_POST['username'];
$headimg = $_POST['photoname'];

$connect = Db::getInstance() -> connect();
$query = "UPDATE `time_analysis`.`user_info` SET `HEAD_IMG` = '$headimg' WHERE `user_info`.`username` = '$username'";
$result = mysqli_query($connect, $query);

response::json(1,"成功",$result);
?>