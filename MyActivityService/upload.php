<?php
require_once('register.php');
    $ret=array('strings'=>$_POST,'error'=>'0');
    $fs=array();
    foreach ( $_FILES as $name=>$file ) {
        $fn=$file['name'];
        $ft=strrpos($fn,'.',0); //返回字符串在另一字符串中最后一次出现的位置，如果没有找到字符串则返回 FALSE
        $fm=substr($fn,0,$ft);
        $fe=substr($fn,$ft);
        $fp='files/'.$fn;
        $fi=1;
        while( file_exists($fp) ) {
            $fn=$fm.'['.$fi.']'.$fe;
            $fp='files/'.$fn;
            $fi++;
        }
        move_uploaded_file($file['tmp_name'],$fp);
        $fs[$name]=array('name'=>$fn,'url'=>$fp,'type'=>$file['type'],'size'=>$file['size']);
		register::addHeadImg($fn, $_POST['username']);
    }
    $ret['files']=$fs;
    echo json_encode($ret);
?>