<?php
function getBookCount($conn)
{
	$query = "select * from books";
	$result = mysqli_query($conn,$query);
	$count = 0;
	if ($result) {
		$count = mysqli_num_rows($result);
	}

	return $count;

}
//echo getBookCount($conn);
function getBookDetails($conn,$pageId = 0)
{
	$i = 0;
	$query = "select b.Book_name,b.ISBN,b.Author,bt.Book_type,b.No_pages,b.Description,b.image_name from books as b inner join booktype as bt 
	on bt.Book_type_id = b.Book_type_id limit $pageId,1";
    $result = mysqli_query($conn,$query);
	$books = null;
    if (mysqli_num_rows($result) > 0){
        $books = mysqli_fetch_all($result,MYSQLI_ASSOC);
    }

	return $books;
}
?>