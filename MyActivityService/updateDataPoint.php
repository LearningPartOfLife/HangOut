<?php
require_once('db.php');
require_once('response.php');
header('content-type:text/html;charset=utf-8');
$datapoint=$_POST['datapoint'];
$username=$_POST['username'];

$connect=Db::getInstance()->connect();
$query="UPDATE `time_analysis`.`activity` SET `datapoint` = '$datapoint' WHERE `$datapoint`.`USERNAME` ='$username';";
$result=mysqli_query($connect, $query);
if($result){
	response::json(200,"成功",$result);
}else{
	response::json(0,"失败",$result);
}
?>