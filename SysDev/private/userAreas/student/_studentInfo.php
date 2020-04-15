<?php
$holdsArray = array();

$queryMyHolds = "SELECT hold_type FROM epiz_25399161_testdb.student_holds ";
$queryMyHolds.= "WHERE `student_id` = '".$_SESSION['id']."';";
$queryMyHoldsResult = mysqli_query($connection, $queryMyHolds);
//echo $queryMyHolds;

while($queryMyHoldsToOutput = mysqli_fetch_assoc($queryMyHoldsResult)){
  array_push($holdsArray, $queryMyHoldsToOutput['hold_type']);
}

updateGPA($_SESSION['id'], $connection);

$queryMyGPA = "SELECT GPA FROM epiz_25399161_testdb.student WHERE ";
$queryMyGPA.= "`student_id` ='".$_SESSION['id']."';";
$queryMyGPAresult = mysqli_query($connection, $queryMyGPA);

$myGPA = mysqli_fetch_row($queryMyGPAresult);

 echo $myGPA[0];

?>

<div class="card text-white bg-primary mb-12 col-12" >
  <div class="card-header"><h3>Your Information</h3></div>
  <div class="card-body">
    <h4 class="card-title">Last Name:</h4>
    <p class="card-text"><?php echo $_SESSION['lName']; ?></p>

    <h4 class="card-title">First Name:</h4>
    <p class="card-text"><?php echo $_SESSION['fName']; ?></p>

    <h4 class="card-title">Student ID:</h4>
    <p class="card-text"><?php echo transform_userID($_SESSION['id']); ?></p>

    <h4 class="card-title">Address:</h4>
    <p class="card-text">
      <address>
      <?php echo $_SESSION['street']; ?>
      <br><?php echo $_SESSION['city'].", "; echo $_SESSION['state']." "; echo $_SESSION['zip'] ?></address>
    </p>

    <h4 class="card-title">Email:</h4>
    <p class ="card-text">Anyone@wherever.net</p>

    <h4 class = "card-title">Phone:</h4>
    <p class = "card-text"><?php echo $_SESSION['phone']; ?></p>

    <h4 class = "card-title">Current Holds:</h4>
    <?php
      foreach ($holdsArray as $value) {
        # code...
        echo "<p class = 'card-text'>HOLD TYPE: ".$value."<br />";
        echo "</p>";
      }
      

    ?>

    <h4 class="card-title">Your Current GPA:</h4>
    <p class="card-text"><?php echo $myGPA[0]; ?></p>

    
  </div>
</div>





