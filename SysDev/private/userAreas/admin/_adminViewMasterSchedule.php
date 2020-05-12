<?php
	
	$coursesLookup;
	$roomsLookup;
	$facultyLookup;
	$timeLookup;
	$dayLookup;
	
	//This block makes the course look up array
	if(!empty($_POST['viewMasterSched']) && $_POST['viewMasterSched'] != "" ){
		$getDeptCoursesQuery = "SELECT `course_id`, `course_title` FROM epiz_25399161_testdb.courses WHERE ";
		$getDeptCoursesQuery.= "`dept_id`=".$_POST['viewMasterDeptOption'].";";
		$referenceCoursesResult = mysqli_query($connection, $getDeptCoursesQuery);

		while($courseReferenceArray = mysqli_fetch_assoc($referenceCoursesResult)){
			$coursesLookup[$courseReferenceArray['course_id']]=$courseReferenceArray['course_title'];
			//echo print_r($courseReferenceArray)."<br />";
		}

		//echo print_r($coursesLookup);
		//this block makes up the rooms lookup
		$getRoomsQuery = "SELECT * FROM epiz_25399161_testdb.rooms; ";
		$referenceRoomsResult = mysqli_query($connection, $getRoomsQuery);

		while($referenceRoomsArray = mysqli_fetch_assoc($referenceRoomsResult)){
			$roomsLookup[$referenceRoomsArray['room_id']] = $referenceRoomsArray['building']."; <br />Room: ".$referenceRoomsArray['room_number'];	
		}

		//this block make sup the faculty lookup
		//echo print_r($roomsLookup)."<br />";
		$getFacultyQuery = "SELECT `User_Id`, `Last_Name`, `First_Name` FROM epiz_25399161_testdb.user WHERE `Role` = 'faculty'; ";
		$referenceFacultyResult = mysqli_query($connection, $getFacultyQuery);

		while($referenceFacultyArray = mysqli_fetch_assoc($referenceFacultyResult)){
			$facultyLookup[$referenceFacultyArray['User_Id']] = $referenceFacultyArray['Last_Name'].", ".$referenceFacultyArray['First_Name'];	
		}

		//this block gets the time slot hours
		$getHoursQuery = "SELECT * FROM epiz_25399161_testdb.time_period; ";
		$referenceTimeResult = mysqli_query($connection, $getHoursQuery);

		while($referenceHoursArray = mysqli_fetch_assoc($referenceTimeResult)){
			$timeLookup[$referenceHoursArray['time_period_id']] = $referenceHoursArray['start_time']." - ".$referenceHoursArray['end_time'];
		}

		//echo print_r($timeLookup);
	

		$getAllSemClasses = "SELECT * FROM epiz_25399161_testdb.section WHERE `semester_id`=";
		$getAllSemClasses.= $_POST['viewMasterSemOption']." ORDER BY `course_id` ASC;";

		$chosenSemesterSectionResult = mysqli_query($connection, $getAllSemClasses);
		

	}else if(!empty($_POST['viewUserSched']) && $_POST['viewUserSched'] != "" && isset($_POST['viewSchedByID'])){ 

		///user case if field is filled in
		$queryRole = "SELECT `role` FROM epiz_25399161_testdb.user WHERE `User_Id` =".$_POST['viewSchedByID'].";";

	}
//echo print_r($timeLookup)."TIME LOOKUP<br />";

?> 


<div class = 'col-12'></div>
<hr >

 <h2>View Master Schedule</h2>
 <div class = "col-9"></div>
  <form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF']; ?>" method = "POST">
	<!--Security hole.  Don't use PHP_Self-->
	<div class = 'form-group'>	
		<label for="viewMasterDeptOption">View By Department</label>
	    <select class="form-control" id="viewMasterDeptOption" name = "viewMasterDeptOption" required>
		    <?php //this code populates the dropdown from the DB
			    while( $deptRet = mysqli_fetch_assoc($results) ){
			      echo "<option value = '".$deptRet['dept_id']."'>".$deptRet['dept_name']."</option>";
			    }
		    ?>

		</select>
		<br/>

		<label for ='viewMasterSemOption'>Semester</label>
		<select class="form-control" id="viewMasterSemOption" name = "viewMasterSemOption" required>
		    <option value = '1'>Spring-2020</option>
		    <option value = '9'>Fall-2020</option>
		    <?php 
		    	//$globalSemesterIDLookupRev = array_reverse($globalSemesterIDLookup);
		    	//array_unshift($globalSemesterIDLookupRev,0);
//		    	foreach ($globalSemesterIDLookup as $key => $value) {
//		    		if($key!=0){
//		    			echo "<option value = '".$key."'>".$value."</option>";
//		    		}
//		    	
//		    	}
		    ?>
		</select>

		<br />

		<button class="btn btn-primary" name = "viewMasterSched" value = "viewMasterSched">View</button>
	</div>

<?php
	
	

?>

</form>

<div class = 'col-12'>

	<table class="table table-hover">
  <thead>
    <tr class ='table-primary'>
      <th scope="col">Section ID</th>
      <th scope="col">Code</th>
      <th scope="col">Title</th>
      <th scope="col">Instructor</th>
      <th scope="col">Room</th>
      <th scope="col">Meeting Days</th>
      <th scope='col'>Meeting Time</th>
    </tr>
  </thead>
  <tbody>


<?php 
  if(!empty($chosenSemesterSectionResult) ){	


  	while($masterSchedResource = mysqli_fetch_assoc($chosenSemesterSectionResult)){
  		//echo print_r($masterSchedResource)."<br />";
  		 	if(isset($coursesLookup[$masterSchedResource["course_id"]] ) ){



				echo '<tr>';
				echo "<td>".$masterSchedResource['section_id']."</td>";
				echo "<td>".$masterSchedResource['course_id']."</td>";
				echo "<td>".$coursesLookup[ $masterSchedResource['course_id'] ]."</td>";

				echo "<td>".$facultyLookup[ $masterSchedResource['faculty_id'] ]."</td>";
				echo "<td>".$roomsLookup[ $masterSchedResource['room_id'] ]."</td>";
				echo "<td>".$courseDaysLookup[$masterSchedResource['time_slot_id']]."</td>";

				echo "<td>".$globalAllTimeSlots[$globalTimeRelationLookup[$masterSchedResource['time_slot_id']]]."</td>";
				

				echo "</tr>";

  			}	
  		}
	}

?>

 
   
    
  </tbody>
</table> 


</div>