<?php
	
	$coursesLookup;
	$roomsLookup;
	$facultyLookup;
	$timeLookup;
	
	//This block makes the course look up array
	if(!empty($_POST['viewMasterSched']) && $_POST['viewMasterSched'] != "" ){
		$getDeptCoursesQuery = "SELECT `course_id`, `course_title` FROM epiz_25399161_testdb.courses WHERE ";
		$getDeptCoursesQuery.= "`dept_id`='".$_POST['viewMasterDeptOption']."';";
		$referenceCoursesResult = mysqli_query($connection, $getDeptCoursesQuery);

		while($courseReferenceArray = mysqli_fetch_assoc($referenceCoursesResult)){
			$coursesLookup[$courseReferenceArray['course_id']]=$courseReferenceArray['course_title'];
			//echo print_r($courseReferenceArray)."<br />";
		}

		//echo print_r($coursesLookup);
		//this block makes up the rooms looup
		
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
		$getHoursQuery = "SELECT * FROM epiz_25399161_testdb.time_period ; ";
		$referenceTimeResult = mysqli_query($connection, $getHoursQuery);

		while($referenceHoursArray = mysqli_fetch_assoc($referenceTimeResult)){
			$timeLookup[$referenceHoursArray['time_period_id']] = $referenceHoursArray['start_time']." - ".$referenceHoursArray['end_time'];
		}

		//echo print_r($timeLookup);
	

		$getAllSemClasses = "SELECT * FROM epiz_25399161_testdb.section WHERE `semester_id`='";
		$getAllSemClasses.= $_POST['viewMasterSemOption']."' ORDER BY `course_id` ASC;";
		
		$chosenSemesterSectionResult = mysqli_query($connection, $getAllSemClasses);

		// while($masterSchedResource = mysqli_fetch_assoc($chosenSemesterSectionResult)){
		// 	echo print_r($masterSchedResource)."<br/>";
		// }

		//echo $getAllSemClasses;
	}else if(!empty($_POST['viewUserSched']) && $_POST['viewUserSched'] != "" && isset($_POST['viewSchedByID'])){ 

		///user case if field is filled in

		$queryRole = "SELECT `role` FROM epiz_25399161_testdb.user WHERE `User_Id` =".$_POST['viewSchedByID'].";";
		echo $queryRole;



	}


?> 


<h2>View User Schedule </h2>
 <div class = "col-1 "></div>
  <form class = 'col-10 bg-secondary' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<!--Security hole.  Don't use PHP_Self-->
	<div class = 'form-group'>	
		<label for="">View By ID</label>
		<input name = 'viewSchedByID' type = 'number' min='1' >
	    
		
		<br />

		<button class="btn btn-primary" name = "viewUserSched" value = "viewUserSched">View</button>
	</div>

</form>

<div class = 'col-12'></div>
<hr >

 <h2>View Master Schedule</h2>
 <div class = "col-9"></div>
  <form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<!--Security hole.  Don't use PHP_Self-->
	<div class = 'form-group'>	
		<label for="viewMasterDeptOption">View By Department</label>
	    <select class="form-control" id="viewMasterDeptOption" name = "viewMasterDeptOption">
		    <?php //this code populates the dropdown from the DB
			    while( $deptRet = mysqli_fetch_assoc($results) ){
			      echo "<option value = '".$deptRet['dept_id']."'>".$deptRet['dept_name']."</option>";
			    }
		    ?>

		</select>
		<br/>

		<select class="form-control" id="viewMasterDeptOption" name = "viewMasterSemOption">
		    <?php //this code populates the dropdown from the DB
			    while( $semRet = mysqli_fetch_assoc($semResults) ){
			      echo "<option value = '".$semRet['semester_id']."'>".$semRet['semester_term']."-".$semRet['semester_year']."</option>";
			    }
		    ?>

		</select>

		<br />

		<button class="btn btn-primary" name = "viewMasterSched" value = "viewMasterSched">View</button>
	</div>

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
      <th scope="col">Meeting Time</th>
    </tr>
  </thead>
  <tbody>


<?php 
  if(!empty($_POST['viewMasterSched']) ){	


  	while($masterSchedResource = mysqli_fetch_assoc($chosenSemesterSectionResult)){
  		//echo print_r($masterSchedResource)."<br />";
  		 	if(isset($coursesLookup[$masterSchedResource["course_id"]] ) ){

				echo '<tr>';
				echo "<td>".$masterSchedResource['section_id']."</td>";
				echo "<td>".$masterSchedResource['course_id']."</td>";
				echo "<td>".$coursesLookup[ $masterSchedResource['course_id'] ]."</td>";

				echo "<td>".$facultyLookup[ $masterSchedResource['faculty_id'] ]."</td>";
				echo "<td>".$roomsLookup[ $masterSchedResource['room_id'] ]."</td>";
				echo "<td>"."*TIME & DAY*"."</td>";
				echo "</tr>";

  			}	
  		}
	}

?>

 
   
    
  </tbody>
</table> 


</div>