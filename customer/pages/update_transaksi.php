<?php
include("connect.php");
   $no_transaksi = $_POST['no_transaksi'];
   $no_pegawaiFK = $_POST['no_pegawaiFK'];
   $pembayaran = $_POST['pembayaran'];
   $tanggal_pinjam = $_POST['tanggal_pinjam'];
   $tanggal_kembali = $_POST['tanggal_kembali'];
   
   
   $update = mysql_query("update transaksi set no_pegawaiFK ='$no_pegawaiFK',pembayaran='$pembayaran',tanggal_pinjam ='$tanggal_pinjam',tanggal_kembali = '$tanggal_kembali' where no_transaksi = '$no_transaksi'");
if($update) {

echo 
 header('location:transaksi.php');

}

?>