<h2 class = 'col-4'>Add User</h2>


<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF']; ?>" method = "POST">
	<label for="usertype">User Type</label>
    <select class="form-control" id="usertype" name = "usertype">
	  <option value="student">student</option>
	  <option value="faculty">faculty</option>
	  <option value="admin">admin</option>
	  <option value="researcher">researcher</option>
	</select>

	
	  <label class="col-form-label" for="fname">First Name</label>
	  <input type="text" class="form-control" name = "firstN" id="fname" >
	
	  <label class="col-form-label" for="lname">Last Name</label>
	  <input type="text" class="form-control" name = "lastN" id="lname" >
	
	  <label class="col-form-label" for="phone">Phone (10 digits, no spaces or hyphens)</label>
	  <input type="text" class="form-control" name = "tele" id="phone" >
	
	  <label class="col-form-label" for="email">Email</label>
	  <input type="text" class="form-control" name = "emailAdd" id="email" >

	  <label class="col-form-label" for="pword">Password</label>
	  <input type="text" class="form-control" name = "pword" id="pword" >
	
	  <label class="col-form-label" for="street">Street Address</label>
	  <input type="text" class="form-control" name = "streetAdd" id="street" >
	
	  <label class="col-form-label" for="city">City</label>
	  <input type="text" class="form-control" name = "cityAdd" id="city" >
	
	  <label class="col-form-label" for="email">State</label>
	  <input type="text" class="form-control" name = "stateAdd" id="state" >

	  <label class="col-form-label" for="zip">Zip</label>
	  <input type="text" class="form-control" name = "zipAdd" id="zip" >

		<hr><hr>		
		<div id = "studentLevelChoice" class = addStudentControls>
			  <legend>Student Type</legend>
			  <div class="form-group">
			    <div class="custom-control custom-radio">
			      <input type="radio" id="undergraduate" name="grad-under" value = 'undergrad' class="custom-control-input" checked >
			      <label class="custom-control-label" for="undergraduate">Undergraduate</label>
			    </div>
			    <div class="custom-control custom-radio">
			      <input type="radio" id="graduate" name="grad-under" value = 'grad' class="custom-control-input" >
			      <label class="custom-control-label" for="graduate">Graduate</label>
			    </div>
			   </div>
	
		     <legend>Enrollment Type</legend>
			  <div  class="form-group">
			    <div class="custom-control custom-radio">
			      <input type="radio" id="fulltime" name="enrollment" class="custom-control-input"  value = "full" checked >
			      <label class="custom-control-label" for="fulltime">Full time</label>
			    </div>
			    <div class="custom-control custom-radio">
			      <input type="radio" id="parttime" name="enrollment" class="custom-control-input" value = "part" >
			      <label class="custom-control-label" for="parttime">Part time</label>
			    </div>
			  </div>

			  <legend>Study Declaration</legend>
			  <?php  //reads from major table to populate <select> list.
					$populateSelectMajorAddUsrPage = "SELECT `major_title`, `major_id` FROM epiz_25399161_testdb.major ORDER BY major_title;";
				    $resultsAddUsrPgMajor = mysqli_query($connection, $populateSelectMajorAddUsrPage);
				    $deptRetAddUsrPgMajor ="";    
				?>
			  <div id = "undergradStudyDetails" class="form-group">
			    <label for="majorDeclaration">Major Declaration</label>
			    <select class="form-control" id="courseDeptAddUsrMajor" name = "majorDeclaration" >
				    <?php //this code populates the dropdown from the DB
					    while( $deptRetAddUsrPgMajor = mysqli_fetch_assoc($resultsAddUsrPgMajor) ){
					      echo "<option value = '".$deptRetAddUsrPgMajor['major_id']."'>".$deptRetAddUsrPgMajor['major_title']."</option>";
					    }
				    ?>
				    <option value = '0'>Undeclared</option>
				</select>

				<?php  //reads from minor table to populate <select> list
					$populateSelectMinorAddUsrPage = "SELECT `minor_title`, `minor_id` FROM epiz_25399161_testdb.minor ORDER BY minor_title;";
				    $resultsAddUsrPgMinor = mysqli_query($connection, $populateSelectMinorAddUsrPage);
				    $deptRetAddUsrPgMinor ="";    
				?>
				 <label for = "minorDeclaration">Minor Declaration</label>
				 <select class="form-control" id="courseDeptAddUsrMinor" name = "minorDeclaration" >
				    <?php //this code populates the dropdown from the DB
					    while( $deptRetAddUsrPgMinor = mysqli_fetch_assoc($resultsAddUsrPgMinor) ){
					      echo "<option value = '".$deptRetAddUsrPgMinor['minor_id']."'>".$deptRetAddUsrPgMinor['minor_title']."</option>";
					    }
				    ?>
				    <option value = '0'>Undeclared</option>
					</select>
			  </div>

			  <div id = 'gradProgramDec' class="form-group" >
			    <label for="gradProgramDeclaration">Grad Program Declaration</label>
			    <select class="form-control" id="gradProgramDeclaration" name = "gradProgramDeclaration" >
				    <?php //this code populates the dropdown from the DB
				    
				    	$queryGradPgrms = "SELECT * FROM epiz_25399161_testdb.grad_program ORDER BY grad_program_title;";



				    	$gradPgrmResults = mysqli_query($connection, $queryGradPgrms);

					    while( $gradPgrms = mysqli_fetch_assoc($gradPgrmResults) ){
					      echo "<option value = '".$gradPgrms['grad_program_id']."'>".$gradPgrms['grad_program_title']."</option>";
					    }
					 
				    ?>
				</select>

				
			  </div>

		</div>
		<hr>

		<div class = "addFacultyControls">
			<legend>Faculty</legend>
			<?php
				// $populateSelectAddUsrPage = "SELECT `dept_name`, `dept_id` FROM epiz_25399161_testdb.department ORDER BY dept_name;";
			 //    $resultsAddUsrPg = mysqli_query($connection, $populateSelectAddUsrPage);
			 //    $deptRetAddUsrPg ="";    
			?>


			<div class = 'form-group'>	
				<label for="courseDeptAddUsr">Department</label>
			    <select class="form-control" id="courseDeptAddUsr" name = "facultyDept_Id" >
				    <?php //this code populates the dropdown from the DB
					    while( $deptRet = mysqli_fetch_assoc($results) ){
					      echo "<option value = '".$deptRet['dept_id']."'>".$deptRet['dept_name']."</option>";
					    }
				    ?>
				</select>
			</div>
		</div>
	<br /><!--End Student SPecific-->

	<button class="btn btn-primary" name = "submitNewUser" value = "submitNewUser">Add This User</button><br />

</form>




