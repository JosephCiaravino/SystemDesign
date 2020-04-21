<?php
	
	if(isset($_POST['course_id_del']) && !empty($_POST['submitDeleteSection']) ){
		$removeSectionQuery = "DELETE FROM epiz_25399161_testdb.section WHERE `section_id` = ";
		$removeSectionQuery.= $_POST['course_id_del'].";";
		echo $removeSectionQuery;
		mysqli_query($connection, $removeSectionQuery);
	}

?>


<h2 class = 'col-4'>Remove Section</h2>


<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<div class = 'form-group'>	
		
		  <label class="col-form-label" for="newcoursename">Enter ID of Section To Remove</label>
		  <input type="text" class="form-control" name = "course_id_del" id="newcoursename">
		
		
		<br /><!--End Student SPecific-->

		<button class="btn btn-primary" name = "submitDeleteSection" value = "submitDeleteSection">Remove this section</button>
	</div>

</form>
          