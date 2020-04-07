<?php



?>

<h2>Add or Remove Programs Of Study</h2>

<?php
	$populateDropDownDeptQuery = "SELECT `dept_name`, `dept_id` FROM epiz_25399161_testdb.department ORDER BY dept_name;";
	    $results = mysqli_query($connection, $populateDropDownDeptQuery);
	    $deptRet ="";   

?>

<div class = "col-1"></div>

<form class = 'col-9' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	
	<div class = 'form-group'>
		<label for ="addOrRemoveProgram"> </label>
		<select id = "addOrRemoveProgram" class = 'form-control' name = "addOrRemove">
			<option value = 'add'>ADD Program Of Study</option>
			<option value = 'remove'>REMOVE Program Of Study</option>
		</select>
	
	<div class = 'form-group'>	
		<label for="courseDept">Department</label>
	    <select class="form-control" id="courseDept" name = "crsDept">
		    <?php //this code populates the dropdown from the DB
			    while( $deptRet = mysqli_fetch_assoc($results) ){
			      echo "<option value = '".$deptRet['dept_id']."'>".$deptRet['dept_name']."</option>";
			    }
		    ?>
		</select><br />
	
		<div class="custom-control custom-radio">
	      <input type="radio" id="radioAddRmvGradPgrm" name="radioAddRmvStudy" value = "grad_program" class="custom-control-input">
	      <label class="custom-control-label" for="radioAddRmvGradPgrm">Graduate Program</label>
	    </div>

	    <div class="custom-control custom-radio">
	      <input type="radio" id="radioAddRmvUndergradMajor" name="radioAddRmvStudy" value = "major" class="custom-control-input">
	      <label class="custom-control-label" for="radioAddRmvUndergradMajor">Undergraduate Major</label>
	    </div>

	    <div class="custom-control custom-radio">
	      <input type="radio" id="radioAddRmvUndergradMinor" name="radioAddRmvStudy" value = "minor" class="custom-control-input">
	      <label class="custom-control-label" for="radioAddRmvUndergradMinor">Undergraduate Minor</label>
	    </div>
	</div>
	<div class = 'toggleAddRmv'>
		<label class="col-form-label" for="inputDefault">Program ID To Remove</label>
  		<input type="text" class="form-control" placeholder="Default input" id="inputDefault">
  	</div>
	</div>
	
<button class="btn btn-primary" name = "submitInsertProgram" value = "submitAddRmvProgram">Add This Program</button><br/>

</form>



