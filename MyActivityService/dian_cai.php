<?php
require_once ('db.php');
require_once ('response.php');
header('content-type:text/html;charset=utf-8');
$unid = $_POST['unid'];
$username = $_POST['username'];
$connect = Db::getInstance() -> connect();
$query = "select * from `time_analysis`.`dian_zan` where `username`='$username' and `unid`='$unid'";
$result = mysqli_query($connect, $query);
$row = mysqli_num_rows($result);

if($row>0) {
	response::json(0,"失败",$row);
}else{
	$insert = "INSERT INTO `time_analysis`.`dian_zan` (`username`, `unid`, `cai`) VALUES ('$username', '$unid', '1')";
	$result = mysqli_query($connect, $insert);
	response::json(1,"成功",$result);
}


?>