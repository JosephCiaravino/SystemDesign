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
$myGPA = $myGPA[0];

$queryGetMyAdvisor = "SELECT `faculty_id` FROM epiz_25399161_testdb.advisor WHERE ";
$queryGetMyAdvisor.= "`student_id` ='".$_SESSION['id']."';";
echo $queryGetMyAdvisor;
$myAdvisorsResult = mysqli_query($connection, $queryGetMyAdvisor);

 

?>

<div class="card text-white bg-primary mb-10 col-12" >
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
    <p class ="card-text"><?php echo $_SESSION['email'] ?></p>

    <h4 class = "card-title">Phone:</h4>
    <p class = "card-text"><?php echo $_SESSION['phone']; ?></p>

    <h4 class = "card-title">Current Holds:</h4>
    <?php
      if(!empty($holdsArray)){
        foreach ($holdsArray as $value) {
          # code...
          echo "<p class = 'card-text'>HOLD TYPE: ".$value."<br />";
          echo "</p>";
        }
      }else{
        echo "<p class = 'card-text'>NONE</p>";
      }

    ?>

    <h4 class="card-title">Advisor(s):</h4>
<?php
    if( !empty($myAdvisorsResult) ){
      while($myAdvisorResultRow = mysqli_fetch_assoc($myAdvisorsResult)){
        //echo print_r($myAdvisorResultRow['faculty_id']);
        echo "<p class ='card-text'>".$globalAdvisorIDLookup[ $myAdvisorResultRow['faculty_id'] ]."</p>";
      }
    }else{
      echo "<p class = 'card-text'>No Advisor Set</p>";
    }
?>
    

    <h4 class="card-title">Your Current GPA:</h4>
    <p class="card-text"><?php echo $myGPA; ?></p>

    
  </div>
</div>





