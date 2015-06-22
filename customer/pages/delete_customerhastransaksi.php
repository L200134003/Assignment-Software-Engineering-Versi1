

<?php
include "connect.php";


$id = $_GET["id"];

$hapus = mysql_query("DELETE FROM customerhas_transaksi where no_customerFK  ='$id'");

if($hapus) {
echo
 header('location:customerhastransaksi.php');

}
?>