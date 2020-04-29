<?php
require_once ('db.php');
require_once ('response.php');
header('content-type:text/html;charset=utf-8');
$connect = Db::getInstance() -> connect();
$query = "SELECT a.*,b.HEAD_IMG FROM activity a,user_info b WHERE a.username=b.USERNAME and a.isshow=0";
$result = mysqli_query($connect, $query);
$num=mysqli_num_rows($result);
//$row = mysqli_fetch_all($result);
require './view/index.html';
?>