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

$currentSemesterID = 9;


?>