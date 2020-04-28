<?php
session_regenerate_id(TRUE);
echo print_r($_SESSION);

$pageType = "student";

require_once "../../_includes/private_docHead.php";

/***********************************************************************************/
include_once "../../_includes/private_testing_div.php";
/***********************************************************************************/

require_once "../../_includes/private_masthead.php";
require_once "../../_includes/private_navBar.php";

//this code prevents visitor from directly accessing private areas
require_once "../../_includes/functionalityScripts/pageRestrictionScript.php";

?>

<main class = "container">
    <h2>Your Tools</h2>
    <p><?php echo "Welcome Back, ".$_SESSION['fName']; ?> </p> <!--............SESSON USED HERE............-->

    <ul class="nav nav-tabs">
        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#profile">
          <i class="far fa-address-card fa-3x "></i><br>Your Profile</a>
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
          <a class="nav-link" data-toggle="tab" href="#dropClass">
          <i class="far fa-edit fa-3x "></i><br>Drop Classes</a>
        </li>

         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#degreeAudit">
          <i class="fas fa-scroll fa-3x "></i><br>Degree Audit</a>
        </li>

        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#editDetails">
          <i class="fas fa-user-edit fa-3x "></i><br>Edit Details</a>
        </li>


    </ul>
        
         
    <!--
      TABLES IN THIS SECTION ARE CURRENTLY HARD-CODED TO SERVE A PLACE HOLDERS.  
      WE ARE FREE TO RE-DRAW as we pease using PHP
    -->
    <div id="myTabContent" class="tab-content container">

      <div class="tab-pane fade active show" id="profile"><hr>
        <div class = 'row'>
            <?php require_once "_studentInfo.php"; ?>
        </div>

        <div class = "tab-pane fade container">
          <?php require_once "_studentInfo.php";  ?>  
        </div><!--END .row-->
      </div><!--END .tab-pane-->

      <div class = "tab-pane fade container" id = "editDetails"><hr>
        <div class = "row">  
            <?php require_once "_studentEditDetails.php"; ?>
        </div>
      </div>

      <div class="tab-pane fade container" id="currentReg"><hr>
        <div class = "row">
          <?php require_once "_studentSchedule.php"; ?>   
        </div>
      </div>

      <div class = "tab-pane fade container" id = "viewHist"><hr>
        <div class = "row">  
          <?php require_once "_studentHistory.php"; ?>
        </div>
      </div>

      <div class = "tab-pane fade container" id = "registration"><hr>
        <div class = "row">  
            <?php require_once "_studentRegistration.php"; ?>
        </div>
      </div>

      <div class = "tab-pane fade container" id = "dropClass"><hr>
        <div class = "row">  
            <?php require_once "_studentDropClass.php"; ?>
        </div>
      </div>      

      <div class = "tab-pane fade" id = "degreeAudit"><hr>
        <div class = "row"> 
            <?php require_once "_studentDegreeAudit.php";?>
        </div>
      </div>

      
   

      
    </div><!--Close My Tab Content-->
</main><br />

<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
    
?>
