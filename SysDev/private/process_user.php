<?php ob_start(); 
session_start();

require "_includes/functionalityScripts/initialize.php";
require "_includes/functionalityScripts/functions.php";

  if (empty($_POST["loginIdentity"]) || empty($_POST["password"])) {
  	header("Location: ../public/login.php");
  }else{
    
    $connection = mysqli_connect('localhost','webUser','secretPass','testdb');
    $user = $_POST['loginIdentity'];
    $password = $_POST['password'];

    //CREATE QUERY++++++++++++++++++++++++++++++++
    $query = "SELECT * FROM ";
    $query .="testdb.user ";
    $query .="WHERE Email = '$user';";

    $result = mysqli_query($connection, $query);
    $row = $result -> fetch_assoc();
    
    if(!is_null($row) && $row['Password']==$password && $row['Email']==$user){
      //echo "AUTHENTICATED";
      foreach ($row as $value) {
        echo $value. " -- ";
        $_SESSION[] = $value;
      }

    }else{
      //echo "NOT AUTHENTICATED";

    }



//++++++++++++++++++++++  TESTING OUPUT   ++++++++++++++++++++++++++
if($testing){
    if(!isset($db))
      echo "<div style = 'background-color: lightgreen;'>";
      if(!is_null($row) && $row['Password']==$password && $row['Email']==$user){
        echo "AUTHENTICATED";
      }
      echo "TESTING: ".$testing;
      echo "YAY IT IS SET <br />";
      echo "<br />";
      echo "Returned row: ";
      echo var_dump($row);
      echo "<br />";
      echo $user;  //from POST arr
      echo "<br />";
      echo $password; //from POST arr
      echo "<br />";
      echo $query;
      echo "<br /> <br />";
      echo "SESSION: ";
      echo var_dump($_SESSION);
      echo "</div>";
    }
}
  	// header("Location: ../private/userAreas/researcher/index.php");
   //  header("Location: ../private/userAreas/student/index.php");
    // header("Location: ../private/userAreas/faculty/index.php");
   //  
    
//steve7745@hotmail.com
//516-497-9599
  
   // mysqli_free_result($resultSet);

	//mysqli_close();	

?>