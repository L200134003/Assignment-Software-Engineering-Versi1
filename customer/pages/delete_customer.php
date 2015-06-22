

<?php
include "connect.php";


$id = $_GET["id"];

$hapus = mysql_query("DELETE FROM customer where no_customer  ='$id'");

if($hapus) {
echo
 header('location:customer.php');

}
?>