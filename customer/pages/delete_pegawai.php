

<?php
include "connect.php";


$id = $_GET["id"];

$hapus = mysql_query("DELETE FROM pegawai where no_pegawai  ='$id'");

if($hapus) {
echo
 header('location:pegawai.php');

}
?>