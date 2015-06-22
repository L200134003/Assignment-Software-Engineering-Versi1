<?php
include("connect.php");
   $no_customerFK = $_POST['no_customerFK'];
   $no_transaksiFK = $_POST['no_transaksiFK'];
  
   $update = mysql_query("update customerhas_transaksi set no_transaksiFK ='$no_transaksiFK' where 
   no_customerFK='$no_customerFK'");
if($update) {

echo 
 header('location:customerhastransaksi.php');

}

?>