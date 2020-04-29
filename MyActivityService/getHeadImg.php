<?php
require_once ('db.php');
require_once ('response.php');
header('content-type:text/html;charset=utf-8');
$username = $_POST['username'];

$connect = Db::getInstance() -> connect();
$query = "SELECT `HEAD_IMG` FROM `user_info` WHERE `USERNAME` = '$username'";
$result = mysqli_query($connect, $query);
$result=mysqli_query($connect, $query);
$rows=mysqli_fetch_assoc($result);
echo json_encode($rows);
?>