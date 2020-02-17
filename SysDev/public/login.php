<?php

  //THIS LINE imports all lines in HTML <head> element.
  require_once '_includes/documentHead.php';

  //These lines import masthead and navigation sections
  require_once "_includes/masthead.php";
  require_once "_includes/mainNavigation.php";

?>



<div  id = "loginContainer" class = "container" >
	
	<div>Log into Your Account.</div>
	<div class = "row">
		<div class = "col-4"></div>
		<form id = "loginForm" method="POST" action = "../private/process_user.php" class ="col-4 border border-dark bg-primary">
		  <legend>Login</legend>
		  <hr id = loginBarTitle>
		  <label for="userLogin">Login ID:</label>
		  <br>
		  <input id = "userLogin" type="email" name="loginIdentity">
		  <br><br>
		  <label for = "password">Password:</label>
		  <br>
		  <input type="password" name="password">
		  <br><br>
		  <input name = "submit" type = "submit">
		</form>

		<div class = "col-4"></div>
	</div>
	<div style="min-height: 100px;"></div>
</div>


<?php

/****************************************************************************************/
	  if($testing == true){
	    echo '<div style = "background-color: lightgreen;">
		<p>CODE TESTING - Development ONLY -- Delete For deployment</p> <br>
		<a href="/SystemDesign/SysDev/private/userAreas/student"> LINK TO STUDENT</a><br>
		<a href="/SystemDesign/SysDev/private/userAreas/faculty"> LINK TO FACULTY</a><br>
		<a href="/SystemDesign/SysDev/private/userAreas/admin"> LINK TO ADMIN</a><br>
		<a href="/SystemDesign/SysDev/private/userAreas/researcher"> LINK TO RESEARCH</a><br>
		</div>';
	   }
/****************************************************************************************/


   require_once '_includes/footer.php';
   require_once '_includes/requiredScripts.php'
?>

