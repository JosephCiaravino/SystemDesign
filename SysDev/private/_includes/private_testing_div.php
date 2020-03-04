<?php 

if($testing==true){
  echo '<div style = "background-color: lightgreen; border: 2px solid green;">';
  echo '<p>Testing Purposes -- Delete For Deployment</p>';
  echo "CurrentURL: ". $currentURL;
echo "<br /><br />";
  if(isset($_POST)){
  	echo "POST: ";
  	var_dump($_POST);
  }
echo "<br /><br />";
  if(isset($_GET)){
  	echo "GET: ";
  	var_dump($_GET);
  }
  echo "<br /><br />";
if(isset($_SESSION)){
  	echo "SESSION:  ";
  	var_dump($_SESSION);
  }

  echo "</div>";
}

