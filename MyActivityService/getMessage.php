<?php
require_once ('db.php');
require_once ('response.php');
header('content-type:text/html;charset=utf-8');
$username = $_POST['username'];

$connect = Db::getInstance() -> connect();
$query = "SELECT * FROM `message` WHERE `username` = '$username'";
$result = mysqli_query($connect, $query);
//var_dump($result);
$rows=mysqli_fetch_all($result);
echo json_encode($rows);
?>