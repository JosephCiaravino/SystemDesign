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



      //echo $queryAddUsr;

      mysqli_query($connection, $queryAddUsr);





?>