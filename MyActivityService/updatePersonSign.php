<?php
require_once('db.php');
require_once('response.php');
header('content-type:text/html;charset=utf-8');
$person_sign=$_POST['person_sign'];
$username=$_POST['username'];

$connect=Db::getInstance()->connect();
$query="UPDATE `time_analysis`.`user_info` SET `person_sign` = '$person_sign' WHERE `user_info`.`USERNAME` ='$username';";
$result=mysqli_query($connect, $query);
if($result){
	response::json(200,"成功",$result);
}else{
	response::json(0,"失败",$result);
}
?>