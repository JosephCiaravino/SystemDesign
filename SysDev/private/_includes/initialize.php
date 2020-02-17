<?php

function is_init_working(){
	echo "INITIALIZE WORKING";
}

/********************************FOR DEVELOPMENT ONLY********************************************/
		ini_set('display_errors', 1);
		ini_set('display_startup_errors', 1);
		error_reporting(E_ALL);
		//if this is set to false, the testing divs will not appear on the public areas.
		$testing = true;  
/************************************************************************************************/

session_start(); //turn on sessions














?>