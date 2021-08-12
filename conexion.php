<?php 
	$host = 'localhost';
	$user = 'root';
	$password = '040319659';
	$db = 'agenda';

	$conection = @mysqli_connect($host, $user, $password, $db);
	if(!$conection){
		echo "Error en la conxión";
	}
?>