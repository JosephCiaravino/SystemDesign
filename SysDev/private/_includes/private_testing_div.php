<?php 

if($testing==true){
  echo '<div style = "background-color: lightgreen; border: 2px solid green;">';
  echo '<p>Testing Purposes -- Delete For Deployment</p>';
  echo " DISABLE IN 'private/_includes/functionalityscripts/initialize.php' ";
  echo " AND IN private_testing.php";
  echo "CurrentURL: ". $currentURL;
echo "<br /><br />";
  if(isset($_POST)){
  	echo "POST: ";
  	print_r($_POST);
  }
echo "<br /><br />";
  if(isset($_GET)){
  	echo "GET: ";
  	print_r($_GET);
  }
  echo "<br /><br />";
if(isset($_SESSION)){
  	echo "SESSION:  ";
  	print_r($_SESSION);
  }

  echo "<br /><br />";
if(isset($_COOKIE)){
    echo "COOKIE:  ";
    print_r($_COOKIE);
  }

  echo "</div>";
}

