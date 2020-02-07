<?php
  //**SECURITY RISK** THis LINE FOR PRODUCTION ONLY.  DISABLE FOR DEPLOYMENT **SECURITY RISK**
  require_once '../private/_includes/showErrors.php';

  //THIS LINE imports all lines in HTML <head> element.
  require_once '_includes/documentHead.php';

  //DISABLE FOR Deployment
  echo "php working.";

  
  //These lines import masthead and navigation sections
  require_once "_includes/masthead.php";
  require_once "_includes/mainNavigation.php";





?>

<!--
	I'm not sure if BootStrap styles can be changed in CSS so I'm using this until I figure 
	out whether or not it's necessary
-->


<div  id = "loginContainer" class = "container" >
	
		<div>Log into Your Account.</div>
	<div class = "row">
		<div class = "col-4"></div>
		<form id = "loginForm" method="POST" action = "#" class ="col-4 border border-dark bg-primary">
		  <legend>Login</legend>
		  <hr id = loginBarTitle>
		  <label for="userLogin">Login ID:</label>
		  <br>
		  <input id = "userLogin" type="email" name="loginIdentity">
		  <br><br>
		  <label for = "passwordField">Password:</label>
		  <br>
		  <input type="password" name="lastname">
		  <br><br>
		  <button name = "Submit" type = "submit">Log In</button>
		</form>

		<div class = "col-4"></div>
	</div>
	<div style="min-height: 100px;"></div>
</div>

<div style = "background-color: white">
	<p>CODE TESTING - Production ONLY</p>
	
	<br>
	<a href="/SysDev/private/userAreas/student"> LINK TO STUDENT</a><br>
	<a href="/SysDev/private/userAreas/student"> LINK TO FACULTY</a><br>
	<a href="/SysDev/private/userAreas/student"> LINK TO ADMIN</a><br>
	<a href="/SysDev/private/userAreas/student"> LINK TO RESEARCH</a><br>


</div>




<?php

   require_once '_includes/footer.php';
   require_once '_includes/requiredScripts.php'
?>

