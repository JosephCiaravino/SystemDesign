<?php
//echo "FUNCTIONS WORKING";

define("SHARED_PUBLIC", "/SystemDesign/SysDev/public/_includes");
define("SHARED_PRIVATE","/SystemDesign/SysDev/private/_includes");

$currentURL = $_SERVER['REQUEST_URI']; 

function is_func_working(){
	echo "<div style ='background-color: lightgreen;'>FUNCTIONS WORKING</div>";
}

function is_post_request(){
	return $_SERVER['REQUEST_METHOD']=='POST';
}

function is_get_request(){
	return $_SERVER['REQUEST_METHOD']=='GET';
}

function transform_userID($rawID){
	return strval($rawID)+500000;

}

//populates a GPAs for student table.
/*
	UPDATE table_name
	SET column1 = value1, column2 = value2, ...
	WHERE condition;
*/

function computeGPA($array){
	$gradePoints = array('A' => 4, 'A-' => 3.70, 'B+' => 3.30, 'B' => 3.0, 'B-' => 2.70, 'C'=> 2.0, 
		'C-'=>1.7, 'C+'=>2.30,'D+'=> 1.3, 'D'=> 1.0, 'D-'=>0.7, 'F'=> 0);
	
	$totalPoints = (double)0.0;
	$gpa = 0.00;
	foreach ($array as $grade) {
		$totalPoints += $gradePoints[$grade];
	}

	if(count($array)==0){
		$gpa = 0;
	}else{
		$gpa = round($totalPoints/count($array)+0.00,2);
	}


	return $gpa;

}


function updateGPA($stuID, $connection){
	$gradesArray = array();
	$stuID = (String)$stuID;
	$studentGetGradesQuery = "SELECT grade FROM epiz_25399161_testdb.student_history WHERE ";
	$studentGetGradesQuery .="`student_id` = '".$stuID."';";

	$gradesResult = mysqli_query($connection,$studentGetGradesQuery);
	while($gradesResultRow = mysqli_fetch_assoc($gradesResult)){
		array_push($gradesArray,$gradesResultRow['grade']);
	}
	
	$studentComputedGPA = computeGPA($gradesArray);

	$updateGPAQuery = "UPDATE epiz_25399161_testdb.student SET GPA = ";
	$updateGPAQuery .="'".$studentComputedGPA."' WHERE student_id = '".$stuID."';";
	mysqli_query($connection, $updateGPAQuery);

		
}

//updateGPA(265, $connection);

























?>