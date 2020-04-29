<?php
require_once ('db.php');
require_once ('response.php');
header('content-type:text/html;charset=utf-8');
$unid = $_POST['unid'];

$connect = Db::getInstance() -> connect();
$query = "SELECT username,sex,age,phone FROM `user_info` WHERE `username` in (SELECT username FROM `paticipate` WHERE `unid`='$unid')";
$result = mysqli_query($connect, $query);
//var_dump($result);
$rows=mysqli_fetch_all($result);
echo json_encode($rows);
?>