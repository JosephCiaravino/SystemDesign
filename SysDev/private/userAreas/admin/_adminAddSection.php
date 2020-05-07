<?php

//get values to populate option group menu
$facultyNumsArray = array();
$queryFacultyOptions = "SELECT * FROM epiz_25399161_testdb.faculty ORDER BY Dept_Id;";
$facultyNumsResource = mysqli_query($connection, $queryFacultyOptions);
while($facultyNumsResourceRow = mysqli_fetch_assoc($facultyNumsResource)){
	$facultyNumsArray[$facultyNumsResourceRow['Faculty_Id']] = $facultyNumsResourceRow['Dept_Id'];
}

$departmentArray = array();
$queryDepartments = "SELECT `dept_id`, `dept_name` FROM epiz_25399161_testdb.department ORDER BY dept_name;";
$departmentNumsResource = mysqli_query($connection, $queryDepartments);
//$departmentArray[0]=0;
while($departmentResourceRow = mysqli_fetch_assoc($departmentNumsResource)){
	$departmentArray[$departmentResourceRow['dept_id']]=$departmentResourceRow['dept_name'];

}

$facultyNamesArray = array();
$queryFacultyNames = "SELECT `Last_Name`,`First_Name`,`User_Id` FROM epiz_25399161_testdb.user ORDER BY Last_name;";
 $facNamesResource = mysqli_query($connection, $queryFacultyNames);
	//echo print_r($facNamesResource);

 while($facultyNamesResourceRow = mysqli_fetch_assoc($facNamesResource)){
 	  
	$facultyNamesArray[$facultyNamesResourceRow['User_Id']] = $facultyNamesResourceRow['Last_Name']." ,".$facultyNamesResourceRow['First_Name'];
 	  
 }	





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
		

//checks for how many classes faculty is teaching
		$teachingCount;
		$queryTeachingCount = "SELECT COUNT(faculty_id) AS coursesCount FROM epiz_25399161_testdb.section WHERE ";
		$queryTeachingCount.= "faculty_id=".$desiredFaculty.";";
		$teachingCount = mysqli_fetch_assoc( mysqli_query($connection, $queryTeachingCount) )['coursesCount'] ;
		
		if($teachingCount<=3 && empty(mysqli_fetch_assoc(mysqli_query($connection, $checkAvailablilityQuery) ) )==1){
			echo "<div class ='bg-success col-12'>Class Inserted.</div><br />".$teachingCount;


			$insertSectionQuery = "INSERT INTO epiz_25399161_testdb.section (`course_id`,`semester_id`,`faculty_id`,`room_id`,`time_slot_id`,`capacity`) VALUES('";
			$insertSectionQuery.= $desiredCourseId."', ".$desiredSemesterID.", ".$desiredFaculty.", ".$desiredRoom.", ".$desiredSlot.", ".$_POST['maxSeats'].");";
		
            echo $insertSectionQuery;
			mysqli_query($connection, $insertSectionQuery);
			
			//echo $insertSectionQuery."<br >";
		}else{
			//echo print_r(mysqli_fetch_assoc(mysqli_query($connection, $checkAvailablilityQuery) ));
            if($_POST['yearSelector']<2020 || $_POST['termSelector']!='fall') //HARD CODED!!!!!!!
                echo "<div class = 'col-12 bg-warning'>Semester already in progress</div>";
            else if($teachingCount>=3)
			     echo "<div class = 'col-12 bg-warning'>Instructor teaching too many classes</div>";
            else if(empty(mysqli_fetch_assoc(mysqli_query($connection, $checkAvailablilityQuery) ) )==1){
                echo "<div class = 'col-12 bg-warning'>Time or location conflict exists.</div>";
                
            }
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
	  <select type="text" class="form-control" id="instructor_id" name = 'instructors_id' required>
	  		<?php
	  			foreach ($departmentArray as $depid => $depname) {
	  				
	  				echo "<optgroup label = '".$depname."'>";
	  				
	  				foreach ($facultyNumsArray as $id => $deptid) {
	  					if($deptid == $depid)
	  					echo "<option value='".$id."'>".$facultyNamesArray[$id]." -- (User ID#: ".$id.")</option>";
	  					
	  				}
	  				echo "</optgroup>";
	  			}

	  		?>

	  </select>

	  

	  <label for = 'termSelector' class="col-form-label" >Term</label>
	  <select id = 'termSelector' name = 'termSelector' class = 'form-control'required>
	  	<option value = 'Spring'>Spring</option>
	  	<option value = 'fall'>Fall</option>
	  </select>

	  <label class="col-form-label" for = 'yearSelector'>Term Year</label>
	  <select id = 'yearSelector' name = 'yearSelector' class = 'form-control' required>
	  	<option value = '<?php echo date('Y') ?>'><?php echo date('Y') ?></option>
	  	<option value = '<?php echo date('Y')+1 ?>'><?php echo date('Y')+1 ?></option>
	  </select>

	  <label class="col-form-label" for = 'bldgSelector'>Building</label>
	  <select id = 'bldgSelector' name = 'bldgSelector' class = 'form-control' >
	  	<option value = 'Campus Center Building'>Campus Center Building</option>
	  	<option value = 'Computer Science Building'>Computer Science Building</option>
	  	<option value = 'Education Building'>Education Building</option>
	  </select>

	  <label class="col-form-label" for="roomNum">Room Number</label>
	  <input type="text" class="form-control" id="roomNum" name ='roomId' required>
    
      <label class="col-form-label" for="maxSeats">Maximum Seats</label>
	  <input type="number" class="form-control" id="maxSeats" name ='maxSeats' min = 1 required>


	  <label class="col-form-label" for="days_id">Days</label>
	  <select  class="form-control" id="days_id" name = 'days_id' required>
	  		<option value = '1'>Monday/Wednessday</option>
	  		<option value = '8'>Tuesday/Thursday</option>
	  	
	  </select>
	  

	  <label class="col-form-label" for="time_slot_id">Time Slot</label>
	  <select type="text" class="form-control" id="time_slot_id" name = 'time_slot_id' required>
	  
	  	<?php
	  		foreach ($globalAllTimeSlots as $key => $slot) {
	  			if($key>0)
	  				echo "<option value = '".$key."'> ".$slot."</option>";
	  		}
	  	?>
	  </select>

	</div>


		


	<button class="btn btn-primary" name = "submitNewSection" value = "submitNewSection">Add This Section</button>

</form>
