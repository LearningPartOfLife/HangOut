<?php
require_once ('db.php');
require_once ('response.php');
header('content-type:text/html;charset=utf-8');
$unid = $_POST['unid'];
$username = $_POST['username'];
$content = $_POST['content'];
$createtime = $_POST['createtime'];
$connect = Db::getInstance() -> connect();
$query = "INSERT INTO `time_analysis`.`comment` (`unid`, `username`, `content`, `createtime`) VALUES ('$unid', '$username', '$content', '$createtime');";
$result = mysqli_query($connect, $query);
if($result){
	response::json(1,"成功",$result);
}else{
	response::json(0,"失败",$result);
}
?>