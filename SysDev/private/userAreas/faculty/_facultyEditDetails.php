<?php

//UPDATE table_name SET column1 = value1, column2 = value2, ...WHERE condition;
	$tableHeadings = array("Password", "Street_Address", "City", "State", "Zip", "Phone");
	$formElements = array( "pwordEdit", "streetEdit", "cityEdit", "stateEdit", "zipEdit", 'teleEdit');

	if(!empty($_POST['submitSelfEditFaculty']) ){
		for ($x = 0; $x < count($formElements); $x++) {
		    if( !empty($_POST[ $formElements[$x] ]) && $_POST[ $formElements[$x] ] != ""){
		    	$queryFacultySelfUpdate = "UPDATE epiz_25399161_testdb.user SET `";
		    	$queryFacultySelfUpdate.= $tableHeadings[$x]."` = '".$_POST[ $formElements[$x] ];
		    	$queryFacultySelfUpdate.="' WHERE `User_Id` = '".$_SESSION['id']."';";
		    	mysqli_query($connection, $queryFacultySelfUpdate);
		    }else{
		    	continue;
		    }

		    //echo "<br />".$queryFacultySelfUpdate;

		}
	}
	

	
?>
<h2>Edit Your Details</h2>

<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF']; ?>" method = "POST">

	<div class = 'form-group'>
	
	  <label class="col-form-label" for="phoneEdit">Phone</label>
	  <input type="text" class="form-control" name = "teleEdit" id="phoneEdit" >

	  <label class="col-form-label" for="pwordEdit">Password</label>
	  <input type="password" class="form-control" name = "pwordEdit" id="pwordEdit" >
	
	  <label class="col-form-label" for="streetEdit">Street Address</label>
	  <input type="text" class="form-control" name = "streetEdit" id="streetEdit" >
	
	  <label class="col-form-label" for="cityEdit">City</label>
	  <input type="text" class="form-control" name = "cityEdit" id="cityEdit" >
	
	  <label class="col-form-label" for="emailEdit">State</label>
	  <input type="text" class="form-control" name = "stateEdit" id="stateEdit" >

	  <label class="col-form-label" for="zipEdit">Zip</label>
	  <input type="text" class="form-control" name = "zipEdit" id="zipEdit" >

<br />
	<button class="btn btn-primary" name = "submitSelfEditFaculty" value = "submitSelfEditFaculty">
		Edit Your Information
	</button>

</div>
</form>