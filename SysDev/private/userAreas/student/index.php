<?php
require_once "../../_includes/private_docHead.php";

/***********************************************************************************/
include_once "../../_includes/private_testing_div.php";
/***********************************************************************************/

require_once "../../_includes/private_masthead.php";
require_once "../../_includes/private_navBar.php";



?>

<main class = "container">
    <h2>Your Tools</h2>
    <p></p>

    <ul class="nav nav-tabs">
        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#profile">
          <i class="far fa-user fa-3x "></i><br>Your Profile</a>
        </li>

        <li class="nav-item text-center">

          <a class="nav-link" data-toggle="tab" href="#currentReg">
          <i class="far fa-calendar-alt fa-3x "></i><br>View Schedules</a>
        </li>

        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#viewHist">
          <i class="far fa-clock fa-3x "></i><br>Your History</a>
        </li>

         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#registration">
          <i class="far fa-edit fa-3x "></i><br>Registration</a>
        </li>


         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#degreeAudit">
          <i class="fas fa-scroll fa-3x "></i><br>Degree Audit</a>
        </li>
    </ul>
        
         
    <!--
      TABLES IN THIS SECTION ARE CURRENTLY HARD-CODED TO SERVE A PLACE HOLDERS.  
      WE ARE FREE TO RE-DRAW as we pease using PHP
    -->
    <div id="myTabContent" class="tab-content container">

      <div class="tab-pane fade active show" id="profile"><hr>
        <div class = 'row'>
            <ul>
              <li> Reset Password</li>
              <li> Edit Info</li>
            </ul>
        </div>

        <div class = "row">
          <?php require_once "_studentInfo.php";  ?>  
        </div><!--END .row-->
      </div><!--END .tab-pane-->

      <!--Current Semester Table-->
      <div class="tab-pane fade" id="currentReg"><hr>
        <div class = "row">
          <?php require_once "_studentSchedule.php"; ?>   
        </div>
      </div>

      <div class = "tab-pane fade" id = "viewHist"><hr>
        <div class = "row">  
          <?php require_once "_studentHistory.php"; ?>
        </div>
      </div>

      <div class = "tab-pane fade" id = "registration"><hr>
        <div class = "row">  
            <?php require_once "_studentRegistration.php"; ?>
        </div>
      </div>
      

      <div class = "tab-pane fade" id = "degreeAudit"><hr>
        <div class = "row">  
            <?php require_once "_studentDegreeAudit.php";?>
        </div>
      </div>

     

      
    </div><!--Close My Tab Content-->
</main>

<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
    
?>
