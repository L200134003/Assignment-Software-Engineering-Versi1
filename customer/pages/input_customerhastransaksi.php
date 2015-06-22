<?php
include "connect.php";

$no_customerFK = $_POST ["no_customerFK"];
$no_transaksiFK = $_POST["no_transaksiFK"];

$connect = mysql_query("insert into customerhas_transaksi values ('$no_customerFK','$no_transaksiFK')");

if ($connect){
	
	 header('location:customerhastransaksi.php');
}

?>