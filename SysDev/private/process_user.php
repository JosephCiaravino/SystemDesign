<?php 
if ($_SERVER["REQUEST_METHOD"] == "POST") {

  if (empty($_POST["loginIdentity"]) || empty($_POST["password"])) {
  	header("Location: ../public/login.php");
  }else {
   	var_dump($_POST);
    
  }

}
		

?>