<?php
class cacheData{
	private $_dir;
	
	const EXT ='.txt';
	public function __construct(){
		$this->_dir=dirname(__FILE__).'/files/';
		
	}
	public function cache($key,$value='',$path=''){
		$filename = $this->_dir.$path.$key.self::EXT;
		
		if($value!==''){
			$dir=dirname($filename);
			if(!is_dir($dir)){
				mkdir($dir,0777);
			}
			return file_put_contents($filename,json_encode($value));
		}
	}
}
?>