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

 



?>


<div  id = "loginContainer" class = "container" ><br><br>
	<div class = "row">
		<div class = "col-4"></div><br><br>

		<form id = 'loginForm' class ='col-4 border border-dark bg-primary' method='post' action = "../private/process_user.php" >
		  <legend>Login</legend>
			
		  <?php

		  	if(!empty($_SESSION['loginCount']) && $_SESSION['loginCount']==3 ){
		  		$now = (int) strtotime("now");
		  		$loginPermitted = (int)strtotime("now +2 minutes");
		  		$_SESSION['loginPermit'] = $loginPermitted;
		  		$displayedTimeLimit =  ($loginPermitted-$now)/60;
		  		echo "<p class = 'text-warning' >Maximum login attempts reached.<br/> Try again in ".$displayedTimeLimit." minutes.</p>";
			
			}else if(!empty($_SESSION['loginCount']) && $_SESSION['loginCount']>3 && !empty($_SESSION['loginPermit']) && $_SESSION['loginPermit']>=0){
				$displayedTimeLimit = round(($_SESSION['loginPermit']-strtotime('now'))/60);

				if($displayedTimeLimit>0 && $_SESSION['loginCount']>3){
					echo "<p class ='text-warning'>You may attempt to login in ".$displayedTimeLimit." minutes.</p>";
				}else{
					$_SESSION['loginPermit']=0;
					$_SESSION['loginCount']=0;
				}

				
			}

			if(!isset($_SESSION['loginPermit'])){
				$_SESSION['loginPermit']=0;
			}

				

		  ?>


		  <hr id = loginBarTitle>
		  <label for="userLogin">Login ID:</label>
		  <br />

		  <?php
		  	if($_SESSION['loginPermit']-strtotime('now')<0){
		  		echo "<input id = 'userLogin' type='email' name='loginIdentity' value = ''>";
		  	}elseif($_SESSION['loginPermit']-strtotime('now')>=0){
		  		echo "<input id = 'userLogin' type='email' name='loginIdentity' value = '' disabled>";
		  	}
		  ?>
		  
			
				

		  <br />
		  <br />

		  <label for = "password">Password:</label>
		  <br />

		  <?php
		  	if($_SESSION['loginPermit']-strtotime('now')<0){
		  		echo "<input type='password' name='password' value = '' > ";
		  	}elseif($_SESSION['loginPermit']-strtotime('now')>=0){
		  		echo "<input type='password' name='password' value = '' disabled>";
		  	}
		  ?>


		  
		  <br />
		  <br />


		  <button type = "submit" name = "Submit">Submit</button>
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

