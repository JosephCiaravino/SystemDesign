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
 $missingField = "";



?>


<div  id = "loginContainer" class = "container" ><br><br>
	<div class = "row">
		<div class = "col-4"></div><br><br>

		<form id = 'loginForm' class ='col-4 border border-dark bg-primary' method='post' action = '<?php echo "../private/process_user.php" ?>' >
		  <legend>Login</legend>
			<span class="error"><?php echo '<div style = "color: pink;">'.$missingField.'</div>'; ?></span>

		  <hr id = loginBarTitle>
		  <label for="userLogin">Login ID:</label>
		  <br />
		  <br />
		  <input id = "userLogin" type="email" name="loginIdentity" value = <?php if(isset($_POST['loginIdentity'])) echo $_POST['loginIdentity']; ?>   > 
		  <br />
		  <br />

		  <label for = "password">Password:</label>
		  <br />
		  <input type="password" name="password" value = <?php if(isset($_POST['password'])) echo $_POST['password']; ?>   > 
		  <br />
		  <br />
		  <input type = "submit" name = "Submit">
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
		echo "<div style = 'background-color: lightgreen;'>";
		var_dump($_GET);
		echo '<br>';
	   	echo"</div>";

	   }

	   
/****************************************************************************************/


   require_once '_includes/footer.php';
   require_once '_includes/requiredScripts.php'
?>

