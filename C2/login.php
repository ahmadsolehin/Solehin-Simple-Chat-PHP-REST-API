<?php
session_start();
include "koneksi.php";
$nick=trim($_POST['nick']);
$pass=md5(trim($_POST['pass']));

$cari=$koneksi->prepare("select * from user where nick=:nick and pass=:pass ");
$cari->BindParam(":nick",$nick);
$cari->BindParam(":pass",$pass);
$cari->execute();
if($cari->rowCount()==0)
{ 
echo "failed";
}
else
{ 
$_SESSION['nick']=$nick;
$waktu=date("h:m:s");
$online=$koneksi->prepare("insert into online (nick,waktu) values (:nick,:waktu)");
$online->BindParam(":nick",$nick);
$online->BindParam(":waktu",$waktu);
$online->execute();
if(isset($_POST['cokie']))
{
	if($_POST['cokie']=="ingataku")
	{
	setcookie("nick",$nick, time()+3600);
	}
}
echo "ok";
}
?>