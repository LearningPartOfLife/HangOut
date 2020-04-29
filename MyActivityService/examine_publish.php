<?php
require_once ('db.php');
require_once ('response.php');
header('content-type:text/html;charset=utf-8');
$unid=$_GET['unid'];	
$connect = Db::getInstance() -> connect();
$query = "UPDATE `time_analysis`.`activity` SET `isshow` = '1' WHERE `activity`.`unid` = '$unid'";
$result = mysqli_query($connect, $query);
//$row = mysqli_fetch_all($result);
require 'examine.php';
?>