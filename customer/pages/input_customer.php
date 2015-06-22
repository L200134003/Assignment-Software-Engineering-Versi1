<?php
include "connect.php";

$no_customer = $_POST ["no_customer"];
$nama_customer = $_POST["nama_customer"];
$alamat_customer = $_POST["alamat_customer"];

$connect = mysql_query("insert into customer values ('$no_customer','$nama_customer','$alamat_customer')");

if ($connect){
	
	 header('location:customer.php');
}

?>