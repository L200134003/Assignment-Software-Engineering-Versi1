<?php
include "connect.php";

$no_transaksi = $_POST ["no_transaksi"];
$no_pegawaiFK = $_POST["no_pegawaiFK"];
$pembayaran = $_POST["pembayaran"];
$tanggal_pinjam = $_POST["tanggal_pinjam"];
$tanggal_kembali = $_POST["tanggal_kembali"];
$connect = mysql_query("insert into transaksi values ('$no_transaksi','$no_pegawaiFK','$pembayaran','$tanggal_pinjam','$tanggal_kembali')");

if ($connect){
	
	 header('location:transaksi.php');
}

?>