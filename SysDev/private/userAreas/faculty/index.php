<?php
session_start();
session_regenerate_id(TRUE);
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
          <a class="nav-link" data-toggle="tab" href="#CurrentAssignments">
          <i class="far fa-calendar-alt fa-3x "></i><br>Teaching Schedules</a>
        </li>

        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#viewHist">
          <i class="far fa-clock fa-3x "></i><br>Your Assignment History</a>
        </li>

         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#advisees">
          <i class="far fa-edit fa-3x "></i><br>Advisees</a>
        </li>


         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#rosters">
          <i class="far fa-file-alt fa-3x"></i><br>View Rosters</a>
        </li>
    </ul>    
    <!--
      TABLES IN THIS SECTION ARE CURRENTLY HARD-CODED TO SERVE A PLACE HOLDERS.  
      WE ARE FREE TO RE-DRAW as we pease using PHP
    -->
    <div id="myTabContent" class="tab-content container">

      <div class="tab-pane fade active show" id="profile"><hr>
        <div class = "row">
         <?php require_once "_facultyViewPersonalData.php";?>
        </div><!--END .row-->
      </div><!--END .tab-pane-->

      <!--Current Semester Table-->
      <div class="tab-pane fade" id="CurrentAssignments"><hr>
        <div class = "row">
          <?php require_once "_facultyCurrentAssignments.php";?>   
        </div>
      </div>

      <div class = "tab-pane fade" id = "viewHist"><hr>
        <div class = "row">
            <?php require_once "_facultyTeachingHistory.php";?>
        </div>
      </div>

      <div class = "tab-pane fade" id = "advisees"><hr>
        <div class = "row">    
         <?php require_once "_facultyViewAdvisees.php"; ?>   
        </div>
      </div>
      
      <div class = "tab-pane fade" id = "rosters"><hr>
         <div class = "row">
          <?php require_once "_facultyViewRosters.php";?>
          </div>
      </div>
     

      <div class = "tab-pane fade" id = "gradeInput"><hr>
        <h2>Post Grades</h2>
        <p>Available <span>***INSERT PHP DATE***</span></p>
        Everything to do with degree requirements
      </div>

      
    </div><!--Close My Tab Content-->
</main>

<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
   session_regenerate_id(TRUE); 
?>
