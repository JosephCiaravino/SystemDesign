<?php

 if( !empty($_POST['submitNewSection']) ){

		//gets emester ID
		$queryGetSemesterID = "SELECT `semester_id` FROM epiz_25399161_testdb.semester WHERE ";
		$queryGetSemesterID.= "semester_year = ".$_POST['yearSelector']." AND `semester_term` = '";
		$queryGetSemesterID.= $_POST['termSelector']."';";
			  
		$desiredSemesterID =  mysqli_fetch_assoc(mysqli_query($connection,$queryGetSemesterID))['semester_id'];	
		$desiredFaculty = $_POST['instructors_id'];
		$desiredRoom = $_POST['roomId'];
		$desiredSlot = (int) substr( $_POST['time_slot_id'],-1);
		$desiredCourseId = $_POST['course_id'];



		$checkAvailablilityQuery = "SELECT * FROM epiz_25399161_testdb.section WHERE ";
		$checkAvailablilityQuery.= "course_id = '".$desiredCourseId."' AND ";
		$checkAvailablilityQuery.= "semester_id = ".$desiredSemesterID." AND ";
		$checkAvailablilityQuery.= "faculty_id = ".$desiredFaculty." AND ";
		$checkAvailablilityQuery.= "room_id = ".$desiredRoom." AND ";
		$checkAvailablilityQuery.= "time_slot_id = ".$desiredSlot.";";
		echo $checkAvailablilityQuery."<br />";


		if(empty(mysqli_fetch_assoc(mysqli_query($connection, $checkAvailablilityQuery) ) ) ==1){
			echo "NOTING RETURNED<br />";


			$insertSectionQuery = "INSERT INTO epiz_25399161_testdb.section (`course_id`,`semester_id`,`faculty_id`,`room_id`,`time_slot_id`) VALUES('";
			$insertSectionQuery.= $desiredCourseId."', ".$desiredSemesterID.", ".$desiredFaculty.", ".$desiredRoom.", ";
			$insertSectionQuery.= $desiredSlot.");";
			mysqli_query($connection, 'SET foreign_key_checks = 0;');
			mysqli_query($connection, $checkAvailablilityQuery);
			
			echo $insertSectionQuery."<br >";
		}else{
			echo print_r(mysqli_fetch_assoc(mysqli_query($connection, $checkAvailablilityQuery) ));
			echo "A Section conflict exists.";
		}
}
//echo print_r( mysqli_fetch_assoc() );

?>
<h2 class = 'col-4'>Add a Section</h2>

<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	
	<div class="form-group">
	  

	  <label class="col-form-label" for="course_id">Course ID</label>
	  <input type="text" class="form-control" id="course_id" name = 'course_id' required>

	  <label class="col-form-label" for="course_id">Instructor's ID</label>
	  <input type="text" class="form-control" id="instructor_id" name = 'instructors_id' required>

	  <label for = 'termSelector' class="col-form-label" >Term</label>
	  <select id = 'termSelector' name = 'termSelector' class = 'form-control'required>
	  	<option value = 'Spring'>Spring</option>
	  	<option value = 'fall'>Fall</option>
	  </select>

	  <label class="col-form-label" for = 'yearSelector'>Term</label>
	  <select id = 'yearSelector' name = 'yearSelector' class = 'form-control' required>
	  	<option value = '<?php echo date('Y') ?>'><?php echo date('Y') ?></option>
	  	<option value = '<?php echo date('Y')+1 ?>'><?php echo date('Y')+1 ?></option>
	  </select>

	  <label class="col-form-label" for = 'bldgSelector'>Building</label>
	  <select id = 'bldgSelector' name = 'bldgSelector' class = 'form-control' >
	  	<option>Campus Center Building</option>
	  	<option>Computer Science Building</option>
	  	<option>Education Building</option>
	  </select>

	  <label class="col-form-label" for="roomNum">Room Number</label>
	  <input type="text" class="form-control" id="roomNum" name ='roomId' required>

	  <label class="col-form-label" for="days_id">Days</label>
	  <select  class="form-control" id="days_id" name = 'days_id' required>
	  		<?php
	  			foreach ($courseDaysLookup as $key => $slot) {
	  			 
	  			 	echo "<option val = '$key'>  ".$slot."</option>";
	  		}
	  		?>
	  	
	  </select>
	  

	  <label class="col-form-label" for="time_slot_id">Time Slot</label>
	  <select type="text" class="form-control" id="time_slot_id" name = 'time_slot_id' required>

	  
	  	<?php
	  		foreach ($globalAllTimeSlots as $key => $slot) {
	  			echo "<option val = '$key'> ".$slot."</option>";
	  		}
	  	?>
	  </select>

	</div>


		


	<button class="btn btn-primary" name = "submitNewSection" value = "submitNewSection">Add This Section</button>

</form>
