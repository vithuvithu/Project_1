	<?php
	if (isset($_GET['pageId'])) {
		$curpageId =(int) $_GET['pageId'];
		$book = getBookDetails($conn,$curpageId);
		$nxtpageId = $curpageId + 1;
		$prvpageId = $curpageId - 1;
		if ($curpageId == (getBookCount($conn) -1)) {
			$nxtpageId = 0;
		}
		elseif ($curpageId == 0) {
			$prvpageId = getBookCount($conn) -1;
		}
	}
	else{
			$nxtpageId = 1;
			$prvpageId = getBookCount($conn) -1;
			$book = getBookDetails($conn);
	}
	
	if (!empty($book)) {
		echo "<table>";
		echo "<tr>";
		echo "<td><a href='index.php?pageId=$prvpageId'>Previous</a></td>";
		echo "<td><a href='index.php?pageId=$nxtpageId'>Next</a></td> ";
		echo"</tr>";
		foreach ($book[0] as $key => $detail) {
			echo "<tr>";
			if ($key == 'image_name') {
				echo"<td></td>";
				echo "<td><img style='height:90%' src='img/coverimage/".$detail."' alt='$detail'/></td>";
			} else {
				echo"<td>$key</td>";
				echo "<td>$detail</td>";
			}


			echo "</tr>";
		}
		echo "</table>";
	} else {
		echo "Nothing found";
	}


	?>


