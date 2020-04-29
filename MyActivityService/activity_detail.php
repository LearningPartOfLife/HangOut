<?php
require_once('db.php');
require_once('response.php');
header('content-type:text/html;charset=utf-8');
		$unid=$_POST['unid'];
		$connect=Db::getInstance()->connect();
		$query="SELECT * FROM `activity` WHERE `unid`=$unid";
		$result=mysqli_query($connect, $query);
		$rows=mysqli_fetch_assoc($result);
		//var_dump($rows);
		//response::json(405,"活动获取成功!",$rows);
		echo json_encode($rows);
?>