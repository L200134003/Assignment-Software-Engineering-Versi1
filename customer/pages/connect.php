<?php
$host = "localhost";
$user = "root";
$password = "";
$db = "customer";

mysql_connect($host, $user, $password) or die ("Connecting failed ! ");
mysql_select_db($db) or die ("database not yet !");

?>