<?php
session_start();
require_once 'conf/conf.php';
require_once 'function/bookfun.php';
if (isset($_SESSION['loginuser'])) {
	echo "<h3>Hi user ".$_SESSION['loginuser']."</h3>";
	echo "<a style='float:right' href='logout.php'>Logout</a>";
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<?php
include 'design/bookdetail.php';
}
else{
	header('location:loginpage.php');
}
?>

</body>
</html>