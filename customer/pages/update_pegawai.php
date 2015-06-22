<?php
include("connect.php");
   $no_pegawai = $_POST['no_pegawai'];
   $nama_pegawai = $_POST['nama_pegawai'];
 
   $update = mysql_query("update pegawai set nama_pegawai ='$nama_pegawai' where 
   no_pegawai='$no_pegawai'");
if($update) {

echo 
 header('location:pegawai.php');

}

?>