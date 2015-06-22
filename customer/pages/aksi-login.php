
<?php
	session_start(); 		
	include 'config.php'; 		
	$username=$_POST['username']; 	
	$password=$_POST['password']; 	
 
	$query=mysql_query("select * from login where username='$username' and password='$password'");	 
	$xxx=mysql_num_rows($query);	 
	if($xxx==TRUE){ 	
		$_SESSION['username']=$username;  
		header("location:index.php");     
	}else{   				
		header("location:login.php");
		

	}
 
?>