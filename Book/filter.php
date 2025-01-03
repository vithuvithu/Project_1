<h1>Search Books</h1>
<hr/>
<h3>Filter By Categorey</h3>
<form class="text-start" method="GET" action="index.php">
	<?php
try {
  require_once "conf/dbconf.php";
  require_once "fun/myfunc.php";
  $types = GetBookTypes($connect);
  foreach ( $types as $key => $value) {
    $tid = $value['Book_type_id'];
    $tname = $value['Book_type'];
    
?>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" name="types[]" value="<?php echo $tid; ?>">
    <label class="form-check-label"><?php echo $tname; ?></label>
  </div>
<?php
  } //loop close
}//try close
  catch (e) {
    echo "<h1>500 Internal error</h1>";
  }
  
?>
  <div class="mb-3 text-center">
  	<input type="submit" class="btn btn-primary" value="Search">
</div>
</form>