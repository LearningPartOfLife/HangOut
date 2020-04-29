<?php
require_once ('db.php');
require_once ('response.php');

class register {
	//如果有相同用户名则返回false
	public static function findSameUser($username) {
		$connect = Db::getInstance() -> connect();
		$query = "SELECT * FROM `user_info` WHERE `USERNAME`='$username'";
		$result = mysqli_query($connect, $query);
		$row = mysqli_num_rows($result);
		if ($row > 0) {
			return TRUE;
		} else {
			return FALSE;
		}
	}

	//添加用户
	public static function addUser($username, $password) {
		$value = array('username' => $username, 'password' => $password);
		if (empty($username) || empty($password)) {
			response::json(401, "账号密码不能为空！ ", $value);
		} else {
			if (self::findSameUser($username)) {
				response::json(402, "该用户已经存在！ ", $value);
			} else {
				$connect = Db::getInstance() -> connect();
				$insert_str = "INSERT INTO `time_analysis`.`user_info` (`username`, `password`) VALUES ('$username', '$password');";
				$result = mysqli_query($connect, $insert_str);
				if ($result) {
					response::json(400, "注册成功！", $value);
				} else {
					response::json(403, "注册失败！", $value);
				}
			}
		}
	}

	public static function addHeadImg($path,$username) {
		$connect = Db::getInstance() -> connect();
		$insert_str = "UPDATE `time_analysis`.`user_info` SET `HEAD_IMG` = '$path' WHERE `user_info`.`USERNAME` = '$username';";
		$result = mysqli_query($connect, $insert_str);
		
	}
	
	public static function updateName($realname,$username) {
		$connect = Db::getInstance() -> connect();
		$insert_str = "UPDATE `time_analysis`.`user_info` SET `REALNAME` = '$realname' WHERE `user_info`.`USERNAME` = '$username';";
		$result = mysqli_query($connect, $insert_str);
		response::json(400, "注册成功！", $value);
	}

}
?>