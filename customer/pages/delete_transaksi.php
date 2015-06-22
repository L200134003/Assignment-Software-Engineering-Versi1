

<?php
include "connect.php";


$id = $_GET["id"];

$hapus = mysql_query("DELETE FROM transaksi where no_transaksi  ='$id'");

if($hapus) {
echo
 header('location:transaksi.php');

}
?>