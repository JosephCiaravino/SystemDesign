<h2 class = 'col-4'>Add Course</h2>
<?php
	 $populateDropDownDeptQuery = "SELECT `dept_name`, `dept_id` FROM epiz_25399161_testdb.department ORDER BY dept_name;";
	     $results = mysqli_query($connection, $populateDropDownDeptQuery);
	     $deptRet ="";
	    

?>

<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<!--Security hole.  Don't use PHP_Self-->
	<div class = 'form-group'>	
		<label for="courseDept">Department</label>
	    <select class="form-control" id="courseDept" name = "crsDept">

	    <?php //this code populates the dropdown from the DB
		    while( $deptRet = mysqli_fetch_assoc($results) ){
		      echo "<option value = '".$deptRet['dept_id']."'>".$deptRet['dept_name']."</option>";
		    }
	    ?>

	
		</select>

		  <label class="col-form-label" for="newcoursename">New Course Name</label>
		  <input type="text" class="form-control" name = "course_title" id="newcoursename">

		  <label class="col-form-label" for="newcoursecode">New Course Code</label>
		  <input type="text" class="form-control" name = "course_code" id="newcoursecode">

		  <label class="col-form-label" for="newCoursePrereq">New Course Prerequisites</label>
		  <input type="text" class="form-control" name = "newCoursePrereq" id="newCoursePrereq">
		
		  <label class="col-form-label" for="newcoursedesc">Course Description</label>
		  <textarea type="textarea" class="form-control" name = "course_desc" id="newcoursedesc"></textarea>
		
		  <label for="creds">Credit-hours</label>
		  <select class="form-control" id="creds" name="crsCreds" >
			  <option value="1">1 credit</option>
			  <option value="2">2 credits</option>
			  <option value="3">3 credits</option>
			  <option value="4">4 credits</option>
			  <option value="5">5 credits</option>
		   </select>

		<br /><!--End Student SPecific-->

		<button class="btn btn-primary" name = "submitNewCourse" value = "submitNewCourse">Add This Course</button>
	</div>

</form>