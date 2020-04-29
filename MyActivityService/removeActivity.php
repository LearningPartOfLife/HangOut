<?php
require_once ('db.php');
require_once ('response.php');
header('content-type:text/html;charset=utf-8');
$unid = $_POST['unid'];
$connect = Db::getInstance() -> connect();
$query = "DELETE FROM `time_analysis`.`activity` WHERE `activity`.`unid` = '$unid'";
$result = mysqli_query($connect, $query);

response::json(1,"成功",$result);
?>