<?php
require_once('db.php');
require_once('response.php');
header('content-type:text/html;charset=utf-8');
$age=$_POST['age'];
$username=$_POST['username'];

$connect=Db::getInstance()->connect();
$query="UPDATE `time_analysis`.`user_info` SET `age` = '$age' WHERE `user_info`.`USERNAME` ='$username';";
$result=mysqli_query($connect, $query);
if($result){
	response::json(200,"成功",$result);
}else{
	response::json(0,"失败",$result);
}
?>