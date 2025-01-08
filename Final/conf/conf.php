<?php
	Define('SERVER','localhost');
	Define('USER','root');
	Define('PASSWORD','');
	Define('DB','book_db');

	//Make a connection
	$conn = mysqli_connect(SERVER,USER,PASSWORD,DB);

	//Check connection
	//echo var_dump($conn);
	if (!$conn) {
		die("Mysql Connection failed".mysqli_connect_error());
	} 
?>