<?php
require_once('db.php');
require_once('response.php');
header('content-type:text/html;charset=utf-8');
		$connect=Db::getInstance()->connect();
		$query="SELECT a.*,b.HEAD_IMG FROM activity a,user_info b WHERE a.username=b.USERNAME and a.isshow=1";
		$result=mysqli_query($connect, $query);
		$rows=mysqli_fetch_all($result);
		//var_dump($rows);
		//response::json(405,"活动获取成功!",$rows);
		echo json_encode($rows);
?>