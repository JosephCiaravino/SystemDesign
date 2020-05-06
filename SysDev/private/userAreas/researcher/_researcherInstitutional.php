
<?php
//SELECT COUNT(column_name) FROM table_name WHERE condition;

//get total Students
	$queryStudentCount = "SELECT COUNT('student_id') AS `stuTotal` FROM epiz_25399161_testdb.student;";
	$studentCount = mysqli_fetch_assoc(mysqli_query($connection, $queryStudentCount));
	$totalStudents = (int)$studentCount['stuTotal'];
//get total grad students
	$queryGradStudentCount = "SELECT COUNT('student_id') AS `gStuTotal` FROM epiz_25399161_testdb.grad_student;";
	$gradStuCount = mysqli_fetch_assoc(mysqli_query($connection, $queryGradStudentCount));
	$gradStuCount = (int)$gradStuCount['gStuTotal'];
//get total undergrad students
    $queryUnderStudentCount = "SELECT COUNT('student_id') AS `ugstu` FROM epiz_25399161_testdb.undergrad_student;";
	$underGradStuCount = mysqli_fetch_assoc(mysqli_query($connection, $queryUnderStudentCount));
	$ugStuCount = (int)$underGradStuCount['ugstu'];

//get faculty Count
    $queryFacCount = "SELECT COUNT('Faculty_Id') AS `facCount` FROM epiz_25399161_testdb.faculty;";
	$facCount = mysqli_fetch_assoc(mysqli_query($connection, $queryFacCount));
	$facCount = (int)$facCount['facCount'];

    

//get enrollment times
    
    $queryUGpartCount = "SELECT COUNT('student_id') AS `partCnt` FROM epiz_25399161_testdb.undergrad_student ";
    $queryUGpartCount.= "WHERE time_type = 'part';";
	$underGradStuCount = mysqli_fetch_assoc(mysqli_query($connection, $queryUGpartCount));
	$ugStuCountPart = (int)$underGradStuCount['partCnt'];

    $queryUGpartCount = "SELECT COUNT('student_id') AS `partGradCnt` FROM epiz_25399161_testdb.grad_student ";
    $queryUGpartCount.= "WHERE time_type = 'part';";
	$GradStuCount = mysqli_fetch_assoc(mysqli_query($connection, $queryUGpartCount));
	$gStuCountPart = (int)$GradStuCount['partGradCnt'];

    $queryUGpartCount = "SELECT COUNT('student_id') AS `fullCnt` FROM epiz_25399161_testdb.undergrad_student ";
    $queryUGpartCount.= "WHERE time_type = 'full';";
	$underGradStuCount = mysqli_fetch_assoc(mysqli_query($connection, $queryUGpartCount));
	$ugStuCountFull = (int)$underGradStuCount['fullCnt'];

    $queryUGpartCount = "SELECT COUNT('student_id') AS `fullGradCnt` FROM epiz_25399161_testdb.grad_student ";
    $queryUGpartCount.= "WHERE time_type = 'part';";
	$GradStuCount = mysqli_fetch_assoc(mysqli_query($connection, $queryUGpartCount));
	$gStuCountFull = (int)$GradStuCount['fullGradCnt'];

    $stateCountStudent = array();
	foreach ($stateAbbArray as $key => $value) {
		$queryAllStatesStudents = "SELECT COUNT(`User_Id`) AS `count` FROM epiz_25399161_testdb.user WHERE ";
		$queryAllStatesStudents.= "`role`= 'student' AND `State`='".$value."';";
		$tallyStateStudent = mysqli_fetch_assoc(mysqli_query($connection, $queryAllStatesStudents))['count'];
		array_push($stateCountStudent, $tallyStateStudent);

	}

//get passing rate
    $queyAllHistories = "SELECT COUNT('grade') AS `allgrades` FROM epiz_25399161_testdb.student_history;";
    $gradeCount = mysqli_fetch_assoc( mysqli_query($connection, $queyAllHistories))['allgrades'];
    
    $queyPassHistories = "SELECT COUNT('grade') AS `allpassinggrades` FROM epiz_25399161_testdb.student_history ";
    $queyPassHistories.= "WHERE grade LIKE 'A%' OR grade LIKE 'B%' OR grade LIKE 'C%'; ";
    $gradeCountPass = mysqli_fetch_assoc( mysqli_query($connection, $queyPassHistories))['allpassinggrades'];

//get GPAs
    $gpasArray = array();
    $gpasArrayGrades = array();
    $queryGrades = "SELECT student_id, grade FROM epiz_25399161_testdb.student_history ORDER BY student_id;";
    $allGradesByStu = mysqli_query($connection, $queryGrades);
    $student=0;
    while($gradesByStuRow = mysqli_fetch_assoc($allGradesByStu)){
       
        
    }
    
   

?>

<h3 class = 'row col-12'>Student Stats for <?php echo $totalStudents." total Students"?></h3><br/>


<div class = 'row'>

	<table class = 'table col-12'>
		<thead>
			<tr class = 'table-primary table-border'>
				<td>Students Enrolled</td>
				<td>Graduate Students</td>
				<td>Undergraduate Students</td>
                
				<td>Full Time</td>
				<td>Part Time</td>
                
                <td>Undergrad FT</td>
                <td>Undergrad PT</td>
                
				<td>Graduate FT</td>
				<td>Graduate PT</td>

			</tr>
		</thead>

		<tbody>
			<?php
					echo "<tr>";
					echo "<td>".$totalStudents."</td>";
					echo "<td>".$gradStuCount."</td>";
					echo "<td>".$ugStuCount."</td>";
    
					echo "<td>".($ugStuCountFull+$gStuCountFull)."</td>";
					echo "<td>".($gStuCountPart + $ugStuCountPart)."</td>";	
					
                    echo "<td>".$ugStuCountFull."</td>";
					echo "<td>".$ugStuCountPart."</td>";
    
					echo "<td>".$gStuCountFull."</td>";
					echo "<td>".$gStuCountPart."</td>";

					echo "</tr>";
				

			?>

			
		</tbody>

	</table>

</div>


<div class = 'row'>

	<table class = 'table col-12'>
		<thead>
			<tr class = 'table-primary table-border'>
				<td>Faculty Count</td>
				<td>Faculy-to-Student Ratio</td>
                <td>Average Student GPA</td>
			</tr>
		</thead>

		<tbody>
			<?php
                    $d = gmp_gcd($facCount, $totalStudents);
					echo "<tr>";
					echo "<td>".$facCount."</td>";
					echo "<td>".$facCount/$d.":".$totalStudents/$d."</td>";
                    echo "<td></td>";

					echo "</tr>";
			?>
		</tbody>
	</table>
</div>

<div class = 'col-1'></div>
<div class = 'row'>

	<table class = 'table col-5'>
		<thead>
			<tr class = 'table-primary table-border'>
				<td>Avg GPA</td>
				<td>Passing Rate</td>
                

                

			</tr>
		</thead>

		<tbody>
			<?php
					echo "<tr>";
					echo "<td>2.73</td>";
					echo "<td>".round((100*$gradeCountPass/$gradeCount),2)."%</td>";
					echo "</tr>";
				

			?>

			
		</tbody>

	</table>

</div>


<div class = 'row'>
	<table class = 'table col-5'>
		<thead>
			<tr class = 'table-primary'>
				<td>State</td>
				<td>Student Count</td>
				<td>% Of Student Body</td>
			</tr>
		</thead>
		<tbody>
			<?php
				foreach ($stateNames as $key => $value) {
					echo "<tr>";
					echo "<td>".$value."</td>";
					echo "<td>".$stateCountStudent[$key]."</td>";
					echo "<td>".round((100*$stateCountStudent[$key]/$totalStudents),2)."%</td>";
					echo "</tr>";
				}
			?>	
		</tbody>
	</table>
    <?php
    $queryMajors = "SELECT * FROM major;";
    $majorsRes = mysqli_query( $connection, $queryMajors );
    $majorCounts = array(); 
    $majorTitleCollection = array();
    $departmentTitleCollection = array();
    
    while($majorsResRow = mysqli_fetch_assoc($majorsRes)){        
        array_push($majorTitleCollection, $majorsResRow['major_title']);
        
        //SELECT COUNT(column_name) FROM table_name WHERE condition;
        $queryCountMajor = "SELECT COUNT(student_id) AS `majCnt` FROM epiz_25399161_testdb.student_major WHERE ";
        $queryCountMajor.= "major_id = ".$majorsResRow['major_id'].";";
        $countResource = mysqli_query($connection, $queryCountMajor);
        $majorCounts[$majorsResRow['major_title']] = mysqli_fetch_assoc($countResource)['majCnt'];
    }
    
    //echo print_r($majorCounts);
    ?>
    
    <div class = 'col-1'></div>
    
    <table class = 'table col-6'>
        <thead>
            <tr class = 'table-primary'>
                <td>Major</td>
                <td>Students</td>
                <td>% of Stu.</td>
            </tr>
            
        </thead>
        
        <tbody>
            <?php
                foreach($majorCounts as $key => $item){
                    echo "<tr>";
                    echo "<td>".$key."</td>";
                    echo "<td>".$item."</td>";
                    echo "<td>".round((100*$item/$totalStudents),2)."%</td>";
                    echo "</tr>";
                }
            ?>
        
        
        </tbody>
    
    
    
    </table>
    

</div>










