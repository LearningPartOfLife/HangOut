<?php
require_once ('db.php');
$ret = array('strings' => $_POST, 'error' => '0');
$fs = array();
if ($_FILES != null) {
	foreach ($_FILES as $name => $file) {
		$fn = $file['name'];
		$ft = strrpos($fn, '.', 0);
		//返回字符串在另一字符串中最后一次出现的位置，如果没有找到字符串则返回 FALSE
		$fm = substr($fn, 0, $ft);
		$fe = substr($fn, $ft);
		$fp = 'files/' . $fn;
		$fi = 1;
		while (file_exists($fp)) {
			$fn = $fm . '[' . $fi . ']' . $fe;
			$fp = 'files/' . $fn;
			$fi++;
		}
		$images = $fn;
		move_uploaded_file($file['tmp_name'], $fp);
		$fs[$name] = array('name' => $fn, 'url' => $fp, 'type' => $file['type'], 'size' => $file['size']);
	}
}

$ret['files'] = $fs;

//将数据插入到数据库中
$theme = $_POST['theme'];
$descript = $_POST['descript'];
$datatime = $_POST['datatime'];
$createtime = $_POST['createtime'];
$dataaddress = $_POST['dataaddress'];
$datapoint = $_POST['datapoint'];
$phone = $_POST['phone'];
$publishaddress = $_POST['publishaddress'];
$username = $_POST['username'];
//$theme=$_POST['theme'];

$connect = Db::getInstance() -> connect();
$insert_str = "INSERT INTO `time_analysis`.`activity` (`theme`,`descript`,`datatime`,`createtime`,`dataaddress`,`datapoint`,`phone`,`publishaddress`,`username`,`images`)
	 VALUES ('$theme','$descript','$datatime','$createtime','$dataaddress','$datapoint','$phone','$publishaddress','$username','$images');";
$result = mysqli_query($connect, $insert_str);

echo json_encode($ret);
?>