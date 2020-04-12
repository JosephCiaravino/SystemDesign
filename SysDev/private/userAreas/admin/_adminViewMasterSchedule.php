 <h2>View Master Schedule</h2>
 <div class = "col-9"></div>
  <form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<!--Security hole.  Don't use PHP_Self-->
	<div class = 'form-group'>	
		<label for="">Department</label>
	    <select class="form-control" id="" name = "">

		    <?php //this code populates the dropdown from the DB
			    while( $deptRet = mysqli_fetch_assoc($results) ){
			      echo "<option value = '".$deptRet['dept_id']."'>".$deptRet['dept_name']."</option>";
			    }
		    ?>

		</select>

		  <label class="col-form-label" for="">New Course Name</label>
		  <input type="text" class="form-control" name = "" id="">

		  
		
		  <label for="">Credit-hours</label>
		  <select class="form-control" id="" name="" >
			  <option value="1">1 credit</option>
			  <option value="2">2 credits</option>
			  <option value="3">3 credits</option>
			  <option value="4">4 credits</option>
			  <option value="5">5 credits</option>
		   </select>

		<br /><!--End Student SPecific-->

		<button class="btn btn-primary" name = "" value = "">Add This Course</button>
	</div>

</form>