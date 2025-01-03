<?php 

function GetData($connect,$query){
	$arr = array();
	try {
		$sql = $query;
		$result = mysqli_query($connect,$sql);	
		while ($row = mysqli_fetch_assoc($result)) {
			array_push($arr,$row);
		}
	} catch (Exception $e) {
		$arr = null;
		die($e->getMessage());
	}
	return $arr;
}

function GetBookCoverPrice($connect)
{
	$sql ="select Book_name,image_name,price from books";
	return GetData($connect,$sql);
}
function GetBookTypes($connect)
{
	$sql ="select * from booktype";
	return GetData($connect,$sql);
}

function FilterBooksByTypes($connect,$tid)
{
	$sql ="select * from books where Book_type_id = '$tid'";
	return GetData($connect,$sql);
}


?>