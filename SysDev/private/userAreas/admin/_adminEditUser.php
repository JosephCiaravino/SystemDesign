<?php
	//these are for user table
	$tableHeadings = array("First_Name","Last_Name","Password", "Email", "Street_Address", "City", "State", "Zip", "Phone");
	$formElements = array( "firstNameEdit","lastNameEdit","pwordEdit","emailEdit", "streetEdit", "cityEdit", "stateEdit", "zipEdit", "teleEdit");

	if(!empty($_POST['submitAdminEditUser']) ){
		for ($x = 0; $x < count($formElements); $x++) {
		    if( !empty($_POST[ $formElements[$x] ]) && $_POST[ $formElements[$x] ] != ""){
		    	$queryStudentSelfUpdate = "UPDATE epiz_25399161_testdb.user SET `";
		    	$queryStudentSelfUpdate.= $tableHeadings[$x]."` = '".$_POST[ $formElements[$x] ];
		    	$queryStudentSelfUpdate.="' WHERE `User_Id` = '".$_SESSION['id']."';";
		    	mysqli_query($connection, $queryStudentSelfUpdate);
		    }else{
		    	continue;
		    }
		}

		//if(!empty()){}
	}
	

?>
<h2 class = 'row col-10'>Edit A User</h2>
<br>

<form class = 'row col-10' action ="" method = "POST">
	
<legend>User Type To Edit</legend>
	  <div  class="form-group" id = "adminUpdateUser">
	    <div id = 'editStuRadio' class="customEditSelector custom-radio">
	      <input type="radio" id="adminEditStudent" name="userTypeToEdit" class="custom-control-input"  value = "adminEditStudent" checked >
	      <label class="custom-control-label" for="adminEditStudent">Student</label>
	    </div>

	    <div id = 'editFacRadio' class="customEditSelector custom-radio">
	      <input type="radio" id="adminEditFaculty" name="userTypeToEdit" class="custom-control-input" value = "adminEditFaculty" >
	      <label class="custom-control-label" for="adminEditFaculty">Faculty</label>
	    </div>

	    <div id = 'editOtherRadio' class="customEditSelector custom-radio">
	      <input type="radio" id="adminEditOther" name="userTypeToEdit" class="custom-control-input" value = "adminEditOther" >
	      <label class="custom-control-label" for="adminEditOther">Other</label>
	    </div>
	  </div>

	    <label class="col-form-label" for="user-ID">User ID</label>
  		<input type="text" class="form-control" placeholder="User's ID" id="user-ID">
	  
<!--

-->
<legend>Details</legend>
<div class = 'form-group'>

	<label class="col-form-label gradeChangeField text-danger hideIt hideIt-grade" for="gradeEdit">Change Grade</label>
	  <select type="text" class="form-control gradeChangeField text-danger hideIt hideIt-grade" name = "gradeEdit" id="gradeEditAdmin" >
	  		<option></option>
	  		<option>A</option>
	  		<option>A-</option>
	  		<option>B+</option>
	  		<option>B</option>
	  		<option>B-</option>
	  		<option>C+</option>
	  		<option>C</option>
	  		<option>C-</option>
	  		<option>D+</option>
	  		<option>D-</option>
	  		<option>F</option>
	  </select>

	  <label class="col-form-label ajorChangeField text-danger hideIt hideIt-grade" for="majorChangeField">Change Major</label>
	  <select type="text" class="form-control majorChangeField text-danger hideIt hideIt-grade" name = "majorChangeField" id="majorChangeField" >
	  		<option></option>
	  		  <?php //this code populates the dropdown from the DB
	  		   //reads from major table to populate <select> list.
					$populateSelectMajorAddUsrPage = "SELECT `major_title`, `major_id` FROM epiz_25399161_testdb.major ORDER BY major_title;";
				    $resultsAddUsrPgMajor = mysqli_query($connection, $populateSelectMajorAddUsrPage);
				    $deptRetAddUsrPgMajor ="";    
				
			    while( $deptRetAddUsrPgMajor = mysqli_fetch_assoc($resultsAddUsrPgMajor) ){
			      echo "<option value = '".$deptRetAddUsrPgMajor['major_id']."'>".$deptRetAddUsrPgMajor['major_title']."</option>";
			    }
		    ?>

	  </select>



	  <?php  //reads from minor table to populate <select> list
			$populateSelectMinorAddUsrPage = "SELECT `minor_title`, `minor_id` FROM epiz_25399161_testdb.minor ORDER BY minor_title;";
		    $resultsAddUsrPgMinor = mysqli_query($connection, $populateSelectMinorAddUsrPage);
		    $deptRetAddUsrPgMinor ="";    
		?>
		 <label class = 'col-form-label ajorChangeField text-danger hideIt hideIt-grade"' for = "minorChange">Change Minor</label>
		 <select class="form-control majorChangeField text-danger hideIt hideIt-grade" id="minorChange" name = "minorChange" >
		    <?php //this code populates the dropdown from the DB
			    echo "<option></option>";
			    while( $deptRetAddUsrPgMinor = mysqli_fetch_assoc($resultsAddUsrPgMinor) ){
			      echo "<option value = '".$deptRetAddUsrPgMinor['minor_id']."'>".$deptRetAddUsrPgMinor['minor_title']."</option>";
			    }
		    ?>
		  </select>





	  <label class="col-form-label gradeChangeField text-danger hideIt hideIt-dept" for="gradeEdit">Change Department</label>
	  <select type="text" class="form-control gradeChangeField text-danger hideIt hideIt-dept" name = "gradeEdit" id="deptEditAdmin" >
	   		
	   <?php //this code populates the dropdown from the DB
                $publicDeptQuery = "SELECT * FROM epiz_25399161_testdb.department ORDER BY dept_name;";
                $publicDeptResult = mysqli_query($connection, $publicDeptQuery);
                  echo "<option></option>";
                  while( $publicDeptQueryResults = mysqli_fetch_assoc($publicDeptResult) ){
                    
                    echo "<option value = '".$publicDeptQueryResults['dept_id']."'>".$publicDeptQueryResults['dept_name']."</option>";
                  }
              ?>
       </select>

	<label class="col-form-label" for="lastNameEdit">Last Name</label>
	  <input type="text" class="form-control" name = "lastNameEdit" id="lastNameEdit" >

	  <label class="col-form-label" for="firstNameEdit">First Name</label>
	  <input type="text" class="form-control" name = "firstNameEdit" id="firstNameEdit" >

	 <label class="col-form-label" for="emailEdit">Email</label>
	  <input type="text" class="form-control" name = "emailEdit" id="emailEdit" >

	  <label class="col-form-label" for="phoneEdit">Phone</label>
	  <input type="text" class="form-control" name = "teleEdit" id="phoneEdit" >

	  <label class="col-form-label" for="pwordEdit">Password</label>
	  <input type="text" class="form-control" name = "pwordEdit" id="pwordEdit" >
	
	  <label class="col-form-label" for="streetEdit">Street Address</label>
	  <input type="text" class="form-control" name = "streetEdit" id="streetEdit" >
	
	  <label class="col-form-label" for="cityEdit">City</label>
	  <input type="text" class="form-control" name = "cityEdit" id="cityEdit" >
	
	  <label class="col-form-label" for="emailEdit">State</label>
	  <input type="text" class="form-control" name = "stateEdit" id="stateEdit" >

	  <label class="col-form-label" for="zipEdit">Zip</label>
	  <input type="text" class="form-control" name = "zipEdit" id="zipEdit" >

	  
</div>


<br />


<button class="btn btn-primary" name = "submitAdminEditUser" value = "submitEditUser">Submit Changes To User</button>

</form>
