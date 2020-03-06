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
     
      //Include code here to handle case where student is submitted and FT/PT GRAD/UG

      mysqli_query($connection, $queryAddUsr);
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

      header('location: '.$_SERVER['PHP_SELF']);



?>