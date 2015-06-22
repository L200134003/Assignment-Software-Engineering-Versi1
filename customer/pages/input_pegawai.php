<?php
include "connect.php";

$no_pegawai = $_POST ["no_pegawai"];
$nama_pegawai = $_POST["nama_pegawai"];


$connect = mysql_query("insert into pegawai values ('$no_pegawai','$nama_pegawai')");

if ($connect){
	
	 header('location:pegawai.php');
}

?>