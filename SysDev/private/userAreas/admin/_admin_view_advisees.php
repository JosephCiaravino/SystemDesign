


<h2>View Advisees</h2>
<div class = 'col-1'></div>
<form class = 'col-10' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<div class = 'form-group'>	
		
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

    
        ?>
        
        
        <label class="col-form-label" for="facultyAdvisees">Faculty ID</label>
         <select  class="form-control" id="facultyAdvisees" name = 'facultyAdvisees'> 
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
         </select >
        
		
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

//href="javascript:window.open('some.html', 'yourWindowName', 'width=200,height=150');">Test</a>
			   	echo "<tr>";
			   	echo"<td><a title = 'View Degree Progress' target = '_blank' href = '_adminDegreeAudit.php?uid=".$adviseePersonalRows['User_Id']."' >".transform_userID($adviseePersonalRows['User_Id'])."</a></td>";
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
			   
			   	 echo "</tr>";

				


			   	
		   }

		}
		?>
	</table><hr><p><em>END LIST</em></p>
</div>