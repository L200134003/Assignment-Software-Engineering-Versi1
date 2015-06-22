

<?php
include "connect.php";


$id = $_GET["id"];

$hapus = mysql_query("DELETE FROM cd_dvdfilm where kode_film  ='$id'");

if($hapus) {
echo
 header('location:cddvdfilm.php');

}
?>