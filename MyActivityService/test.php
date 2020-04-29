<?php
require_once('db.php');
require_once('response.php');
header('content-type:text/html;charset=utf-8');
		$connect=Db::getInstance()->connect();
		$query="SELECT * FROM `activity` WHERE `activity_show`=1";
		$result=mysqli_query($connect, $query);
		var_dump($result);
		$row=mysqli_num_rows($result);
		$rows=mysqli_fetch_all($result);
		var_dump($rows);


?>