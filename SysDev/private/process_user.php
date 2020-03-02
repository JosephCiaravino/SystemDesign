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

    //foreach loop didn't work, but this did, so I left it
      $_SESSION['id']=$row['User_Id'];
      $_SESSION['fName']=$row['First_Name'];
      $_SESSION['lName']=$row['Last_Name'];
      $_SESSION['email']=$row['Email'];
      $_SESSION['street']=$row['Street_Address'];
      $_SESSION['city']=$row['City'];
      $_SESSION['state']=$row['State'];
      $_SESSION['zip']=$row['Zipcode'];
      $_SESSION['role']=$row['Role'];
      $_SESSION['phone']=$row['Phone'];
    

    
    if(!is_null($row) && $row['Password']==$password && $row['Email']==$user){
 
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
        
      }




} //CLOSES MAIN ELSE LOOP OF PAGE



?>