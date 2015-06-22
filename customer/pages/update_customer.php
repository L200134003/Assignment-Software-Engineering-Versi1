<?php
include("connect.php");
   $no_customer = $_POST['no_customer'];
   $nama_customer = $_POST['nama_customer'];
   $alamat_customer = $_POST['alamat_customer'];
   $update = mysql_query("update customer set nama_customer ='$nama_customer',alamat_customer='$alamat_customer' where 
   no_customer='$no_customer'");
if($update) {

echo 
 header('location:customer.php');

}

?>