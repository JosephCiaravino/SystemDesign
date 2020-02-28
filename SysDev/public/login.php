<?php
//THIS LINE imports all lines in HTML <head> element.
require_once '_includes/documentHead.php';

//These lines import masthead and navigation sections
require_once "_includes/masthead.php";
require_once "_includes/mainNavigation.php";

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
 
//$_POST['missingData']= "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["name"]) || empty($_POST["password"])) {
    $_POST['missingData']= "Both name and password are required.";
  }
}

?>


<div  id = "loginContainer" class = "container" ><br><br>
	<div class = "row">
		<div class = "col-4"></div><br><br>

		<form id = 'loginForm' class ='col-4 border border-dark bg-primary' method='post' action = "../private/process_user.php" >
		  <legend>Login</legend>
			<span class="error"><?php echo '<div style = "color: pink;">'."".'</div>'; ?></span>

		  <hr id = loginBarTitle>
		  <label for="userLogin">Login ID:</label>
		  <br />

		  <input id = "userLogin" type="email" name="loginIdentity" value = "" > 
		  <br />
		  <br />

		  <label for = "password">Password:</label>
		  <br />
		  <input type="password" name="password" value = "" > 
		  <br />
		  <br />

		  <input type = "submit" name = "Submit">
		</form>

		<div class = "col-4"></div>
	</div>
	<div style="min-height: 100px;"></div>
</div>


<?php

/*****************************TESTING ONLY**************************************************
	   

	  if($testing == true){
	  	
	    echo '<div style = "background-color: lightgreen;">
		<p>CODE TESTING - Development ONLY -- Delete For deployment</p> <br>
		<a href="/SystemDesign/SysDev/private/userAreas/student"> LINK TO STUDENT</a><br>
		<a href="/SystemDesign/SysDev/private/userAreas/faculty"> LINK TO FACULTY</a><br>
		<a href="/SystemDesign/SysDev/private/userAreas/admin"> LINK TO ADMIN</a><br>
		<a href="/SystemDesign/SysDev/private/userAreas/researcher"> LINK TO RESEARCH</a><br>
		</div>';
		echo "<div style = 'background-color: lightgreen;'>";
		var_dump($_GET);
		echo '<br>';
	   	echo"</div>";

	   }

	   
*************************************************************************************/


   require_once '_includes/footer.php';
   require_once '_includes/requiredScripts.php'
?>

