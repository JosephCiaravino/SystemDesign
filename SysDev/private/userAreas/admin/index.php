<?php

session_regenerate_id(TRUE);
print_r($_SESSION);
$pageType = "admin";

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
    <h2>Your Details</h2>

    <ul class="nav nav-tabs">
        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#profile">
          <i class="far fa-user fa-3x "></i><br>Your Profile</a>
        </li>

        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#masterSched">
          <i class="far fa-calendar-alt fa-3x "></i><br>View Schedules</a>
        </li>

        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#addClass">
          <i class="fas fa-plus fa-3x"></i><br>Add Course</a>
        </li>

         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#placeHolds">
          <i class="far fa-edit fa-3x "></i><br>Place Holds</a>
        </li>


         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#removeClass">
          <i class="far fa-times-circle fa-3x"></i><br>Close Class Section</a>
        </li>

         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#addUser">
          <i class="fas fa-user-plus fa-3x"></i><br>Add A User</a>
        </li>
    </ul>

        
         
    <!--
      TABLES IN THIS SECTION ARE CURRENTLY HARD-CODED TO SERVE A PLACE HOLDERS.  
      WE ARE FREE TO RE-DRAW as we pease using PHP
    -->
    <div id="myTabContent" class="tab-content container">

      <div class="tab-pane fade active show" id="profile"><hr>
        <div class = "row">
          <?php require_once "_adminInfo.php"; ?>  
        </div>   
      </div><!--END .tab-pane-->

      <div class = "tab-pane fade" id = "placeHolds"><hr>
          <div class = "row">
            <?php require_once "_adminPlaceHolds.php"; ?>  
          </div>
      </div>

      <div class="tab-pane fade" id="masterSched"><hr>
        <div class = "row">
         <?php require_once "_adminViewMasterSchedule.php";?>
        </div>  
      </div>

      <div class = "tab-pane fade" id = "addClass"><hr>
        <div class = "row">
          <?php require_once "_adminAddClass.php";?>
        </div>
      </div>

      <div class = "tab-pane fade" id = "removeClass"><hr>
        <div class = "row">
          <?php require_once "_adminRemoveClass.php"; ?>
        </div>
      </div>

      <div class = "tab-pane fade" id = "addUser"><hr>
        <div class = "row">
          <?php require_once "_adminAddUser.php";?>
        </div>
      </div>
      
    </div><!--Close My Tab Content-->
</main><br /> <br />

<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
    
?>
