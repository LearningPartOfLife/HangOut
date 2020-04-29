<?php
require_once('db.php');
require_once('response.php');
require_once('register.php');

header('content-type:text/html;charset=utf-8');
$username=$_POST['username'];
$password=$_POST['pwd'];
$do=$_GET['do'];
if($do=="register"){
	register::addUser($username, $password);
}else if($do=="login"){
	$value=array(
		'username'=>$username,
		'password'=>$password
	);
	if(empty($username)||empty($password)){
		response::json(401,"账号密码不能为空！ ",$value);
	}else{
		$connect=Db::getInstance()->connect();
		$query="SELECT * FROM `user_info` WHERE `USERNAME`='$username' and `PASSWORD`='$password'";
		$result=mysqli_query($connect, $query);
		$count=mysqli_num_rows($result);
		$row=mysqli_fetch_assoc($result);
		$value['UNID']=$row['UNID'];
		$value['REALNAME']=$row['REALNAME'];
		$value['HEAD_IMG']=$row['HEAD_IMG'];
		$value['SEX']=$row['SEX'];
		$value['AGE']=$row['age'];
		$value['HEIGHT']=$row['height'];
		$value['EMAIL']=$row['EMAIL'];
		$value['PHONE']=$row['phone'];
		$value['ADDRESS']=$row['ADDRESS'];
		$value['PERSON_SIGN']=$row['PERSON_SIGN'];
		$value['CREATE_TIME']=$row['CREATE_TIME'];
		if($count>0){
			response::json(405,"登录成功！ ",$value);
		}else{
			response::json(406,"账号或密码错误！ ",$value);
		}
	}
}else if($do=="updateName"){
//	$REALNAME=$_POST['REALNAME'];
//	//register::updateName($REALNAME, $username);
//	$connect = Db::getInstance() -> connect();
//	$insert_str = "UPDATE `time_analysis`.`user_info` SET `REALNAME` = '$realname' WHERE `user_info`.`USERNAME` = '$username';";
//	$result = mysqli_query($connect, $insert_str);
//	response::json(400, "修改成功", $value);
	echo "1111111111111";
}

	
//	$value=array();
//	if(empty($username)&&empty($password)){
//		response::json(500,"账号密码不能为空 ",$value);
//		//echo "<script>alert('账号或密码不能为空');</script>";
//	}
//	else{
//		$connect=Db::getInstance()->connect();
//		$insert_str="INSERT INTO `time_analysis`.`user_info` (`username`, `password`) VALUES ('$username', '$password');";
//		$result=mysqli_query($connect, $insert_str);
//		if($result){
//			response::json(400,"注册成功",$value);
//		}else{
//			response::json(501,"注册失败",$value);
//		}
//	}

?>