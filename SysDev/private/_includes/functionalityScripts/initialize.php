<?php

function is_init_working(){
	echo "INITIALIZE WORKING";
}

$connection = mysqli_connect('localhost','webUser','secretPass','testdb');

ob_start();
session_start(); //turn on sessions

/************************************************************************************************/
/********************************FOR DEVELOPMENT ONLY********************************************/
		ini_set('display_errors', 1);
		ini_set('display_startup_errors', 1);
		error_reporting(E_ALL);
		//if this is set to false, the testing divs will not appear on the public areas.
		$testing = true;  
/************************************************************************************************/
/********************************DUMMY VARIBLES ************************************************/
		$testStu = array("john@weu.edu", "stuPass", "student", 100100, 'john', 'doe');

		$testFac = array("jane@weu.edu", "facPass", "faculty", 200200, 'jane', 'plain');

		$testAdmin = array("jamie@weu.edu","adminPass","admin", 300300, 'jamie', 'blank');

		$testRes = array("jill@weu.edu", "resPass","researcher", 400400, 'jill', 'gray');

/********************************FOR DEVELOPMENT ONLY********************************************/
/************************************************************************************************/










?>