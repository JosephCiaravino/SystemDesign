<?php 

  if (empty($_POST["loginIdentity"]) || empty($_POST["password"])) {
  	header("Location: ../public/login.php");

  }else if($_POST["loginIdentity"] == 'john@weu.edu' && $_POST["password"] == 'stuPass'){
   	header("Location: ../private/userAreas/student/index.php");
    
  }else if($_POST["loginIdentity"] == 'jane@weu.edu' && $_POST["password"] == 'facPass'){
   	header("Location: ../private/userAreas/faculty/index.php");

  }else if($_POST["loginIdentity"] == 'jamie@weu.edu' && $_POST["password"]== 'adminPass'){
  	header("Location: ../private/userAreas/admin/index.php");

  }else if($_POST["loginIdentity"] == 'jill@weu.edu' && $_POST["password"]== 'resPass'){
  	header("Location: ../private/userAreas/researcher/index.php");

  }else{
  	var_dump($_POST);
  }


		

?>