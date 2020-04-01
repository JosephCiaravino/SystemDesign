


<h2>View Advisees</h2>
<div class = 'col-1'></div>
<form class = 'col-10' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<div class = 'form-group'>	
		
		  <label class="col-form-label" for="facultyAdvisees">Enter Faculty ID:</label>
		  <input type="text" class="form-control" name = "facultyAdvisees" id="facultyAdvisees">
		
		
		<br /><!--End Student SPecific-->

		<button class="btn btn-primary" name = "submitAdminViewAdvisees" value = "submitAdminViewAdvisees">View This Faculty Member's Advisee List</button>
	</div>
</form>

<div class = 'container'>
	<table class="table table-hover">
	  <thead>
	    <tr>
	      <th scope="col">ID #</th>
	      <th scope="col">Name</th>
	      <th scope="col">Email</th>
	      <th scope="col">Phone</th>
	      <th scope="col">Address</th>
	      <th scope="col">GPA</th>
	      <th scope="col">Type</th>
	      <th scope="col">Credits</th>
	    </tr>

	  </thead>

		<?php
		if( !empty($_POST['facultyAdvisees']) ){
			//returns all student IDs of people that are advised by this faculty member
			$facID = $_POST['facultyAdvisees'];
			$stuIdArray = array();
			$adminRetrieveAdviseesQuery = "SELECT * FROM epiz_25399161_testdb.advisor WHERE ";
			$adminRetrieveAdviseesQuery.= "faculty_id = '".$_POST['facultyAdvisees']."';";
			//echo $adminRetrieveAdviseesQuery;

			$adminAdviseesResult = mysqli_query($connection, $adminRetrieveAdviseesQuery);
			while( $adminAdviseesNum = mysqli_fetch_assoc($adminAdviseesResult)){
				array_push( $stuIdArray,$adminAdviseesNum['student_id'] );
				//echo var_dump($stuIdArray)."<br /><br />";
			}

		   foreach($stuIdArray as $value) {
		
		   		$queryAdvisees = "SELECT `User_Id`, `Last_name`, `First_Name`, `Email`, `Phone`, ";
		   		$queryAdvisees.= "`Street_address`, `City`, `State`, `Zipcode`";
		   		$queryAdvisees.= "FROM epiz_25399161_testdb.user WHERE ";
			   	$queryAdvisees.= "user_id = '". $value."';";
			   	
			   	$adviseePersonalRows = mysqli_fetch_assoc(mysqli_query($connection, $queryAdvisees));


			   	echo "<tr>";
			   	echo"<td>".transform_userID($adviseePersonalRows['User_Id'])."</td>";
			   	echo"<td>".$adviseePersonalRows['Last_name'].", ".$adviseePersonalRows['First_Name']."</td>";
			   	echo"<td>".$adviseePersonalRows['Email']."</td>";
			   	echo"<td>".$adviseePersonalRows['Phone']."</td>";
			   	echo"<td>".$adviseePersonalRows['Street_address']."; ".$adviseePersonalRows['City']."; ".$adviseePersonalRows['State']."; ".$adviseePersonalRows['Zipcode']."</td>";
			   	
			   	updateGPA($adviseePersonalRows['User_Id'], $connection);

			   	$queryAdviseesSchoolStats1 = "SELECT * FROM epiz_25399161_testdb.student WHERE "; 
			   	$queryAdviseesSchoolStats1 .= "`student_id` = '".$adviseePersonalRows['User_Id']."';";

			   	$adviseeSchoolStatsRows = mysqli_fetch_assoc(mysqli_query($connection, $queryAdviseesSchoolStats1));
			   	echo "<td>".$adviseeSchoolStatsRows['GPA']."</td>";
			   	echo "<td>".$adviseeSchoolStatsRows['student_type'];
			   	echo "<td>Temp</td>";
			   	 echo "</tr>";

				


			   	
		   }

		}
		?>
	</table><hr><p><em>END LIST</em></p>
</div>