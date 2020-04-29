<?php
require_once ('db.php');
require_once ('response.php');
header('content-type:text/html;charset=utf-8');
$unid = $_POST['unid'];
$content= $_POST['username'];
$createtime= $_POST['createtime'];
$connect = Db::getInstance() -> connect();

$query = "SELECT `username` FROM `activity` WHERE `unid` ='$unid'";
$result1 = mysqli_query($connect, $query);
$row=mysqli_fetch_assoc($result1);
$username=$row['username'];
//var_dump($username);
$insert = "INSERT INTO `time_analysis`.`message` (`username`, `content`, `createtime`) VALUES ('$username', '$content', '$createtime');";
$result2 = mysqli_query($connect, $insert);

response::json(1111111111,"成功",$result1);
?>