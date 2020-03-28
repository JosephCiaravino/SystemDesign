<?php



?>

<h2>Add or Remove Programs Of Study</h2>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

<?php
	$populateDropDownDeptQuery = "SELECT `dept_name`, `dept_id` FROM epiz_25399161_testdb.department ORDER BY dept_name;";
	    $results = mysqli_query($connection, $populateDropDownDeptQuery);
	    $deptRet ="";   

?>

<h3>Add A Program</h3>
<div class = "col-1"></div>
<form class = 'col-10' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<div class = 'form-group'>	
		<label for="courseDept">Department</label>
	    <select class="form-control" id="courseDept" name = "crsDept">
		    <?php //this code populates the dropdown from the DB
			    while( $deptRet = mysqli_fetch_assoc($results) ){
			      echo "<option value = '".$deptRet['dept_id']."'>".$deptRet['dept_name']."</option>";
			    }
		    ?>
		</select>

		<label for = ''>New Program Name</label>
		<input type = 'text' name = "newPrgmName">
		
<!--PLACE CODE TO ADD PROGRAMS HERE-->

	</div>
	
<button class="btn btn-primary" name = "submitInsertProgram" value = "submitInsertProgram">Add This Program</button>
<hr>
</form>

<br /><br />
<h3>Remove A Program</h3>
<form class = 'col-10' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<div class = 'form-group'>	
		<label for="courseDept">Program To Be Removed</label>
	    <select class="form-control" id="courseDept" name = "crsDept">

	    <?php //this code populates the dropdown from the DB

		    echo "<option value = ''>None Selected</option>";
		    while( $deptRet = mysqli_fetch_assoc($results) ){

		      echo "<option value = '".$deptRet['dept_id']."'>".$deptRet['dept_name']."</option>";
		    }
	    ?>

	
		</select><br />
		
		<button class="btn btn-primary" name = "submitRmvProgram" value = "submitRmvProgram">Remove Program</button>
	</div>
</form>


