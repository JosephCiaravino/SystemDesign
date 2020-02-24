<?php

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



?>