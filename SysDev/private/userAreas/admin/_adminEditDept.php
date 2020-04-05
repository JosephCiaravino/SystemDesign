<h2 class = "col-12"> Edit Department Chair</h2>

<p class = "col-12">Insert form to edit department details.  </p>

<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<div class = 'form-group'>	
		

		<?php
		$populateDropDownDeptQuery = "SELECT `dept_name`, `dept_id` FROM epiz_25399161_testdb.department ORDER BY dept_name;";
	    $results = mysqli_query($connection, $populateDropDownDeptQuery);
	    $deptRet ="";   


	    if(!empty($_POST['submitUpdateChair']) && !empty($_POST['newChairId']) ){
	    	//this query 
	    	$queryNewChair = "UPDATE epiz_25399161_testdb.department SET `faculty_chair_id` = '"; 
	    	$queryNewChair .= $_POST['newChairId']."' WHERE `dept_id` ='".$_POST['chairDept']."';";

	    	//this query checks to be sure the person being put in the DB is a faculty member
	    	$validUserCheckQuery = "SELECT `Role` FROM epiz_25399161_testdb.user WHERE `User_ID` = '";
	    	$validUserCheckQuery.= $_POST['newChairId']."';";
	    	
	    	$returnedRole =  mysqli_fetch_assoc(mysqli_query($connection, $validUserCheckQuery))['Role'];
	    	
	    	if($returnedRole == "faculty"){ //checks if faculty member
	    		mysqli_query($connection, $queryNewChair); //update the chair for dept
	    	}

	    }

		?>

		<label for="courseDept">Department</label>
	    <select class="form-control" id="chairDept" name = "chairDept">
		    <?php //this code populates the dropdown from the DB
			    while( $deptRet = mysqli_fetch_assoc($results) ){
			      echo "<option value = '".$deptRet['dept_id']."'>".$deptRet['dept_name']."</option>";
			    }
		    ?>
		</select>


		  <label class="col-form-label" for="newChairId">Enter ID of User To Assign As Chair</label>
		  <input type="text" class="form-control" name = "newChairId" id="newChairId">


		
		
		<br /><!--End Student SPecific-->

		<button class="btn btn-primary" name = "submitUpdateChair" value = "submitUpdateChair">Update Department Chair</button>
	</div>

</form>