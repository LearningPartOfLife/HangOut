<?php
require_once ('db.php');
require_once ('response.php');
header('content-type:text/html;charset=utf-8');
$unid = $_POST['unid'];

$connect = Db::getInstance() -> connect();
$query = "SELECT * FROM `comment` WHERE `unid` = '$unid'";
$result = mysqli_query($connect, $query);
$result=mysqli_query($connect, $query);
$rows=mysqli_fetch_all($result);
echo json_encode($rows);
?>