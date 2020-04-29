<?php
	function __autoload($classNmae){
		require $className . ".php";
	}
	
	$imooc =new Imooc();
	var_dump($imooc);
?>