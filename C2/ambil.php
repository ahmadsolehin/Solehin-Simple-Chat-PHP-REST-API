<?php
include "koneksi.php";
$ambil=$koneksi->prepare("select * from pesan order by id");
$ambil->execute();
while($ulangi=$ambil->fetch())
{
	// this is emoticon's operation bro 
	$text_awal=$ulangi['pesan'];
	$symbol=array("[kasmaran]","[kedip]","[ketawa]","[marah]","[melet]","[nangis]",
				"[sakit]","[bye]","[maki-maki]","[cmarah]","[cmurung]","[cnangis]",
				"[csedih]","[csenyum]","[bonus]");
				
	$icon=array("<img src='../nge_chat//emot/akasmaran.gif' title='handup'>",
			"<img src='../nge_chat/emot/akedip.gif' title='bingung'>",
			"<img src='../nge_chat/emot/aketawa.gif' title='capek'>",
			"<img src='../nge_chat/emot/amarah.gif' title='cemen'>",
			"<img src='../nge_chat/emot/amelet.gif' title='cool'>",
			"<img src='../nge_chat/emot/anangis.gif' title='galau'>",
			"<img src='../nge_chat/emot/asakit.gif' title='hay'>",
			"<img src='../nge_chat/emot/bye.gif' title='kedip'>",
			"<img src='../nge_chat/emot/maki-maki.gif' title='kesetrum'>",
			"<img src='../nge_chat/emot/marah.gif' title='lol'>",
			"<img src='../nge_chat/emot/murung.gif' title='mewek'>",
			"<img src='../nge_chat/emot/nangis.gif' title='nangis'>",
			"<img src='../nge_chat/emot/sedih.gif' title='nyengir'>",
			"<img src='../nge_chat/emot/smile.gif' title='psimis'>",
			"<img src='../nge_chat/emot/bonus.png' title='rokok'>");
	$pesan=str_replace($symbol,$icon,$text_awal);
	
	
	// this is emoticon's operation bro 
	echo "<p><span class='label label-info text-center'><i class='icon-user icon-white'></i> ".$ulangi['nick']." </span><small>&nbsp;".$pesan."</small>
	<small class='muted'>(".$ulangi['waktu'].")</small></p>";	
}
?>