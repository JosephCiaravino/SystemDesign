
<?php
//SELECT COUNT(column_name) FROM table_name WHERE condition;
	$queryStudentCount = "SELECT COUNT('User_Id') AS `stuTotal` FROM epiz_25399161_testdb.user WHERE role = 'student';";
	$studentCount = mysqli_fetch_assoc(mysqli_query($connection, $queryStudentCount));
	$totalStudents = (int)$studentCount['stuTotal'];

	$stateCountStudent = array();

	foreach ($stateAbbArray as $key => $value) {
		$queryAllStatesStudents = "SELECT COUNT(`User_Id`) AS `count` FROM epiz_25399161_testdb.user WHERE ";
		$queryAllStatesStudents.= "`role`= 'student' AND `State`='".$value."';";
		$tallyStateStudent = mysqli_fetch_assoc(mysqli_query($connection, $queryAllStatesStudents))['count'];
		array_push($stateCountStudent, $tallyStateStudent);

	}

	$queryStudentUGCount = "SELECT COUNT('student_id') AS `stuTotal` FROM epiz_25399161_testdb.grad_student;";
	$undergraduateCount = mysqli_fetch_assoc(mysqli_query($connection, $queryStudentUGCount));
	$totalUndergrad = (int)$studentCount['stuTotal'];
	

?>

<h3 class = 'row col-12'>Student Stats for <?php echo $totalStudents." total Students"?></h3>


<div class = 'row'>

	<table class = 'table col-12'>
		<thead>
			<tr>
				<td>Total Students Enrolled</td>
				<td>Total Graduate Students</td>
				<td>Total Undergraduate Students</td>
				<td>Total Full Time</td>
				<td>Total Part Time</td>

			</tr>
		</thead>

		<tbody>
			<?php
					echo "<tr>";
					echo "<td>".$totalStudents."</td>";
					echo "<td>".$totalUndergrad."</td>";/*
					echo "<td>""</td>";
					echo "<td>""</td>";

					echo "</tr>";*/
				

			?>

			
		</tbody>

	</table>

</div>


<div class = 'row'>

	<table class = 'table col-2'>
		<thead>
			<tr>
				<td>State</td>
				<td>Student Count</td>
				<td>Percentage Of Student Body</td>

			</tr>
		</thead>

		<tbody>
			<?php
				foreach ($stateNames as $key => $value) {
					echo "<tr>";
					echo "<td>".$value."</td>";
					echo "<td>".$stateCountStudent[$key]."</td>";
					echo "<td>".(100*$stateCountStudent[$key]/$totalStudents)."</td>";
					echo "</tr>";
				}

			?>
			
		</tbody>

	</table>

</div>










