<?php
require_once('db.php');
require_once('response.php');
header('content-type:text/html;charset=utf-8');
$phone=$_POST['phone'];
$username=$_POST['username'];

$connect=Db::getInstance()->connect();
$query="UPDATE `time_analysis`.`user_info` SET `phone` = '$phone' WHERE `user_info`.`USERNAME` ='$username';";
$result=mysqli_query($connect, $query);
if($result){
	response::json(200,"成功",$result);
}else{
	response::json(0,"失败",$result);
}
?>