<?php
class Db{
	static private $_instance;
	static private $_connectSource;
	private $_dbConfig=array(
		'host'=>'127.0.0.1',
		'user'=>'root',
		'password'=>'',
		'database'=>'time_analysis'
	);
	private function __construct(){
		
	}
	
	static public function getInstance(){
		//如果已经存在就不在创建
		if(!(self::$_instance instanceof self)){
			self::$_instance = new self();
		}
		return self::$_instance;
	}
	
	public function connect(){
		if(!self::$_connectSource){
			self::$_connectSource= mysqli_connect(
			$this->_dbConfig['host'],
			$this->_dbConfig['user'],
			$this->_dbConfig['password'],
			$this->_dbConfig['database']
			);		
			if(!self::$_connectSource){
				throw new Exception('mysql connect eroor'.mysql_error());
			}
			//mysql_select_db($this->_dbConfig['database'],self::$_connectSource);
			//mysql_query("set names UTF8",self::$_connectSource);
		}
		
		return self::$_connectSource;
	}
}

//$connect=Db::getInstance()->connect();
//$query='select * from book_info';
//$result =mysqli_query($link, $query);
//$row= mysqli_fetch_array($result);
//$sql="select * from user_info";
//$result =mysqli_query($connect, $sql);
//$num= mysqli_num_rows($result);
//echo $num;
//echo $result."123";
//var_dump($connect);
//var_dump($result);
?>