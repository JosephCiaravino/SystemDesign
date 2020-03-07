<?php

echo "<div class='col-6 alert alert-dismissible alert-success'>CONDITIONS MET FOR SUBMITTING NEW USER</div>";
      //CREATE QUERY++++++++++++++++++++++++++++++++ 
      $connection = mysqli_connect('localhost','webUser','secretPass','testdb');

     
      $queryAddUsr = "INSERT INTO ";
      $queryAddUsr .="testdb.user ( `Email`, `Password`, `First_Name`, `Last_Name`";
      $queryAddUsr .=", `Street_Address`, `City`, `State`, `Zipcode`, `Phone`, `Role`) ";
      $queryAddUsr .="VALUES (";
      $queryAddUsr .="'".$_POST['emailAdd']."', '".$_POST['pword']."', '".$_POST['firstN']."', '";
      $queryAddUsr .=$_POST['lastN']."', '".$_POST['streetAdd']."', '";
      $queryAddUsr .=$_POST['cityAdd']."', '".$_POST['stateAdd']."', '".$_POST['zipAdd']."', '";
      $queryAddUsr .=$_POST['tele']."', '".$_POST['usertype']."');";
      
      $userRole = $_POST['usertype'];
      //Include code here to handle case where student is submitted and FT/PT GRAD/UG

      mysqli_query($connection, $queryAddUsr);

      //we are resetting query here to find the user again and add to the table with ID
      //since it can't be gotten immediately
      //INSERT INTO testdb.admin (`Admin_Id`) SELECT `User_Id` FROM testdb.user WHERE `email` ='KLam@weu.edu'
      if($userRole == 'admin'){
            $queryAddUsr = "INSERT INTO testdb.admin (`Admin_Id`) SELECT ";
            $queryAddUsr .= "`User_Id` FROM testdb.user WHERE `email` ='".$_POST['emailAdd']."';";

            mysqli_query($connection, $queryAddUsr);   
           

      }else if($userRole == 'researcher'){
            $queryAddUsr = "INSERT INTO testdb.researcher (`Researcher_Id`) SELECT ";
            $queryAddUsr .= "`User_Id` FROM testdb.user WHERE `email` ='".$_POST['emailAdd']."';";
            mysqli_query($connection, $queryAddUsr);   

      }else if($userRole == 'faculty'){
            
            if(isset($_POST['Dept_Id'])){
                  $tempDept = $_POST['Dept_Id'];
            }      

            //gets row of inserted user from user table
            $query2 = "SELECT * FROM testdb.user WHERE `email` ='".$_POST['emailAdd']."';";
            //creates array and extracts User_Id
            $resultUID = mysqli_query($connection, $query2);
            $rowQuery = $resultUID -> fetch_assoc();
            $userIdTemp = $rowQuery['User_Id']; 
            //create and execute query to insert both values into faculty
            $query3 = "INSERT INTO testdb.faculty(`Faculty_Id`, `Dept_Id`) ";
            $query3 .= "VALUES('".$userIdTemp."', '".$_POST['facultyDept_Id']."');";
            mysqli_query($connection, $query3);

// INSERT INTO table_name (column1, column2, column3, ...)
// VALUES (value1, value2, value3, ...);           
      }else if($userRole == 'student'){

            if(isset($_POST['Dept_Id'])){
                  $temptime = $_POST['enrollment'];
                  $level = $_POST['grad-under'];
            }      

            //gets row of inserted user from user table
            $query2 = "SELECT * FROM testdb.user WHERE `email` ='".$_POST['emailAdd']."';";
            //creates array and extracts User_Id
            $resultUID = mysqli_query($connection, $query2);
            $rowQuery = $resultUID -> fetch_assoc();
            $userIdTemp = $rowQuery['User_Id']; 
            //create and execute query to insert both values into faculty
            $query3 = "INSERT INTO testdb.student(`student_id`, `GPA`, `student_type`) ";
            $query3 .= "VALUES('".$userIdTemp."', '0', '".$_POST['grad-under']."');";
            echo $query3."<br />";
            mysqli_query($connection, $query3);


      }


      $queryAddUsr = "";

      unset( $_POST['submitNewUser'] );
      unset($_POST['emailAdd']);
      unset($_POST['pword']);
      unset($_POST['firstN']);
      unset($_POST['lastN']);
      unset($_POST['streetAdd']);
      unset($_POST['cityAdd']);
      unset($_POST['stateAdd']);
      unset($_POST['zipAdd']);
      unset($_POST['tele']);
      unset($_POST['usertype']);


      if(isset($_POST['grad-under']) && isset($_POST['enrollment'])){
            echo "STUDENT enrollment AND grad-under ARE SET IN POST";
      }


      unset($_POST['enrollment']);
      unset($_POST['grad-under']);

     // header('location: '.$_SERVER['PHP_SELF']);



?>