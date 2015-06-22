<?php
include "connect.php";

$kode_film=$_POST ["kode_film"];
$no_pegawaiFK=$_POST["no_pegawaiFK"];
$jenis_film=$_POST["jenis_film"];
$judul_film=$_POST["judul_film"];

$connect = mysql_query("insert into cd_dvdfilm values ('$kode_film','$no_pegawaiFK','$jenis_film','$judul_film')");

if ($connect){
	 header('location:cddvdfilm.php');
}

?>