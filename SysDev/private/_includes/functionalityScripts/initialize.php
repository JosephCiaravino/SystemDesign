<?php


	//echo "INITIALIZE WORKING,<br />";

//$connection = mysqli_connect('sql312.epizy.com','epiz_25399161','Pkn9tFRDUQ0Q','epiz_25399161_testdb');
$connection = mysqli_connect('localhost','webUser','secretPass','epiz_25399161_testdb');

ob_start();
session_start(); //turn on sessions

/************************************************************************************************/
/********************************FOR DEVELOPMENT ONLY********************************************/
		ini_set('display_errors', 1);
		ini_set('display_startup_errors', 1);
		error_reporting(E_ALL);
		//if this is set to false, the testing divs will not appear on the public areas.
		$testing = true;  

		
/********************************FOR DEVELOPMENT ONLY********************************************/
/************************************************************************************************/











?>