<?php


	//echo "INITIALIZE WORKING,<br />";

//$connection = mysqli_connect('sql312.epizy.com','epiz_25399161','Pkn9tFRDUQ0Q','epiz_25399161_testdb');
$connection = mysqli_connect('localhost','webUser','secretPass','epiz_25399161_testdb');

ob_start();
session_start(); //turn on sessions
date_default_timezone_set("America/New_York");

/************************************************************************************************/
/********************************FOR DEVELOPMENT ONLY********************************************/
		ini_set('display_errors', 1);
		ini_set('display_startup_errors', 1);
		error_reporting(E_ALL);
		//if this is set to false, the testing divs will not appear on the public areas.
		$testing = true;  

		
/********************************FOR DEVELOPMENT ONLY********************************************/
/************************************************************************************************/





$populateDropDownDeptQuery = "SELECT `dept_name`, `dept_id` FROM epiz_25399161_testdb.department ORDER BY dept_name;";
	    $results = mysqli_query($connection, $populateDropDownDeptQuery);
	    $deptRet ="";

$semesterIDintegers = array();
$populateSemester = "SELECT * FROM epiz_25399161_testdb.semester ORDER BY semester_start DESC;";
	$semResults = mysqli_query($connection, $populateSemester);
	while($semResRow = mysqli_fetch_assoc($semResults)){
		array_push($semesterIDintegers, $semResRow['semester_id']);

	}
		//echo print_r($semesterIDintegers)."<br>";
	$currentSemesterIDnum = $semesterIDintegers[1];
//creates an array of pairs of courseID/course name.========================================

$globalCourseIDLookup = array();
$queryCourseNameLookupGlobal = "SELECT `course_id`,`course_title` FROM epiz_25399161_testdb.courses;";
	$courseLookupResult = mysqli_query($connection, $queryCourseNameLookupGlobal);
	while($courseLookupResultRow = mysqli_fetch_assoc($courseLookupResult)){
		$globalCourseIDLookup[$courseLookupResultRow['course_id']] = $courseLookupResultRow['course_title'];

	} 



//creates an array of semester ID/time/year===================================
$globalSemesterIDLookup = array();
$querySemesterLookupGlobal = "SELECT `semester_id`,`semester_term`,`semester_year` FROM epiz_25399161_testdb.semester ORDER BY `semester_start` ASC;";
	$semesterLookupResult = mysqli_query($connection, $querySemesterLookupGlobal);
	//array_push($globalSemesterIDLookup,"Select");
	while($semesterLookupResultRow = mysqli_fetch_assoc($semesterLookupResult)){
		$globalSemesterIDLookup[$semesterLookupResultRow['semester_id']] = $semesterLookupResultRow['semester_term']."-".$semesterLookupResultRow['semester_year'];

	} 
echo print_r($globalSemesterIDLookup);

//creates an array of semester ID/time/year===================================
$globalAdvisorIDLookup = array();
$queryAdvisorLookupGlobal = "SELECT `User_Id`,`First_Name`,`Last_Name`,`Email` FROM epiz_25399161_testdb.user WHERE `Role` = 'faculty';";

	$advisorLookupResult = mysqli_query($connection, $queryAdvisorLookupGlobal);
	while($facultyLookupResultRow = mysqli_fetch_assoc($advisorLookupResult)){
		//echo print_r($facultyLookupResultRow)."<br />";
		$globalAdvisorIDLookup[ $facultyLookupResultRow['User_Id'] ] = $facultyLookupResultRow['Last_Name'].", ".$facultyLookupResultRow['First_Name']."<br />EMAIL: ".$facultyLookupResultRow['Email'];

		

	} 


$nextSemesterID=$globalSemesterIDLookup[count($globalSemesterIDLookup)];
	
$currentSemesterID = $globalSemesterIDLookup[count($globalSemesterIDLookup)-1];

//Gets all time slot Id nums
$globalAllTimeSlots = array();
$queryGetTimeSlots = "SELECT * FROM epiz_25399161_testdb.time_period ORDER BY `time_period_id` ASC;";
$timeSlotResource = mysqli_query($connection, $queryGetTimeSlots);
	array_push($globalAllTimeSlots,"Select");
	while($timeSlotRow = mysqli_fetch_assoc($timeSlotResource)){
		array_push($globalAllTimeSlots, $timeSlotRow['time_period_id'] = $timeSlotRow['start_time']."-".$timeSlotRow['end_time']);
	}
//print_r($globalAllTimeSlots)."<br />";
$globalTimeRelationLookup = array();
$queryGetTimeRelation = "SELECT * FROM epiz_25399161_testdb.time_slot_period;";
$timeRelationResource = mysqli_query($connection, $queryGetTimeRelation);
array_push($globalTimeRelationLookup,"None");
while($timeRelRow = mysqli_fetch_assoc($timeRelationResource)){
	array_push($globalTimeRelationLookup, $timeRelRow['time_period_id']);
}

echo print_r($globalTimeRelationLookup);

$globalBuildingsIDLookup = array();
$queryGetAllBldgs = "SELECT * FROM epiz_25399161_testdb.rooms;";
$buildingsResource = mysqli_query($connection, $queryGetAllBldgs);
	array_push($globalBuildingsIDLookup, "Select");
	while($buildingsResourceRow = mysqli_fetch_assoc($buildingsResource)){
		array_push($globalBuildingsIDLookup, $buildingsResourceRow['room_id'] = $buildingsResourceRow['building']." Room: ".$buildingsResourceRow['room_number'] );
	}

//echo print_r($globalAdvisorIDLookup);
    $courseDaysLookup = array();
  	$courseDaysQuery = "SELECT * FROM time_slot_days;";
    $courseDaysResult = mysqli_query($connection, $courseDaysQuery);
    //array_push($courseDaysArray,0);
    array_push($courseDaysLookup,'Select');
    while($courseDayRow = mysqli_fetch_assoc($courseDaysResult)){
    	//echo $courseDayRow['day_name'];
    	if( !array_key_exists($courseDayRow['time_slot_id'], $courseDaysLookup) ){
    		 array_push($courseDaysLookup, substr($courseDayRow['day_name'],0,3) );
    	}else if( array_key_exists($courseDayRow['time_slot_id'], $courseDaysLookup) ){
    		$courseDaysLookup[ $courseDayRow['time_slot_id'] ] .= "/".substr($courseDayRow['day_name'],0,3);
    	}


    	
	}

//echo print_r($courseDaysLookup);



?>