<?php
try{
	$koneksi=new PDO('mysql:host=localhost;dbname=nge-chat','root','');	
}catch(PDOException $e){
	echo "Koneksi Database gagal ".$e->getMessage();
	exit;
}
?>