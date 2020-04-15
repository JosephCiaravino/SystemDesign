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


$populateSemester = "SELECT * FROM epiz_25399161_testdb.semester ORDER BY semester_year DESC;";
	$semResults = mysqli_query($connection, $populateSemester);

//creates an array of pairs of courseID/course name.========================================

$globalCourseIDLookup = array();
$queryCourseNameLookupGlobal = "SELECT `course_id`,`course_title` FROM epiz_25399161_testdb.courses;";
	$courseLookupResult = mysqli_query($connection, $queryCourseNameLookupGlobal);
	while($courseLookupResultRow = mysqli_fetch_assoc($courseLookupResult)){
		$globalCourseIDLookup[$courseLookupResultRow['course_id']] = $courseLookupResultRow['course_title'];

	} 

//creates an array of semester ID/time/year===================================
$globalSemesterIDLookup = array();
$querySemesterLookupGlobal = "SELECT `semester_id`,`semester_term`,`semester_year` FROM epiz_25399161_testdb.semester;";
	$semesterLookupResult = mysqli_query($connection, $querySemesterLookupGlobal);
	while($semesterLookupResultRow = mysqli_fetch_assoc($semesterLookupResult)){
		$globalSemesterIDLookup[$semesterLookupResultRow['semester_id']] = $semesterLookupResultRow['semester_term']."-".$semesterLookupResultRow['semester_year'];

	} 

echo print_r($globalSemesterIDLookup);


$currentSemesterID = 9;


?>