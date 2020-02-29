<?php 
ob_start(); 
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

                  echo "<div style = 'background-color: lightgreen'>";
                  echo "ROW: <br />";
                  echo var_dump($row);
                  echo "</div>";

    foreach($row as $item){
      $_SESSION[]=$item;
    }

    
    if(!is_null($row) && $row['Password']==$password && $row['Email']==$user){
      // echo "<div style = 'background-color: lightgreen'><br />AUTHENTICATED!<br /><br/>";
      // echo "SESSION: <br /><br />";
      // echo var_dump($_SESSION);
      // echo "</div>";
     if($row['Role']=='faculty'){
          header("Location: ../private/userAreas/faculty/index.php");
          exit;
        }elseif($row['Role']=='student'){
          header("Location: ../private/userAreas/student/index.php");
          exit;
        }elseif($row['Role']=='admin'){
          header("Location: ../private/userAreas/admin/index.php");
          exit;
        }elseif($row['Role']=='researcher'){
          header("Location: ../private/userAreas/researcher/index.php");
          exit;
        }
       
      }else{
        //echo "NOT AUTHENTICATED";
        header("Location: ../public/login.php");
        echo "NOT AUTHENTICATED.";
      }




} //CLOSES MAIN ELSE LOOP OF PAGE



?>