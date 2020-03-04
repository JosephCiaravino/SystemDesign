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

$createUserArr = array();

?>

<main class = "container">

<?php
    if(isset($_POST['submitNewUser']) && $_POST['submitNewUser']=='submitNewUser'){
      echo "<div class=' col-12 alert alert-dismissible alert-success'>CONDITIONS MET FOR SUBMITTING NEW USER</div>";

    }else if(isset($_POST['submitNewCourse']) && $_POST['submitNewCourse']=='submitNewCourse'){
      echo "<div class=' col-12 alert alert-dismissible alert-success'>CONDITIONS MET FOR SUBMITTING NEW COURSE</div>";

    }else{
      echo "<div class=' col-12 alert alert-dismissible alert-success'>CONDITIONS NOT MET FOR NEW USER SUBMISSION</div>";
    }

?>

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
          <a class="nav-link" data-toggle="tab" href="#addCourse">
          <i class="fas fa-plus fa-3x"></i><br>Add Course</a>
        </li>

        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#removeCourse">
          <i class="fas fa-minus fa-3x"></i><br>Remove Course</a>
        </li>

        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#addSection">
          <i class="far fa-calendar-plus fa-3x"></i><br>Add Section</a>
        </li>

         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#removeSection">
          <i class="far fa-calendar-minus fa-3x"></i><br>Remove Section</a>
        </li>

         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#addUser">
          <i class="fas fa-user-plus fa-3x"></i><br>Add User</a>  
         </li>

         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#removeUser">
          <i class="fas fa-user-minus fa-3x"></i><br>Remove User</a>  
         </li>
         

        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#editUser">
          <i class="fas fa-user-edit fa-3x"></i><br>Edit User</a>
        </li>

        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#placeHolds">
          <i class="fas fa-user-tag fa-3x"></i></i><br>Holds</a>
        </li>

        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#addDept">
          <i class="far fa-building fa-3x"></i><br>Add Dept</a>
        </li>

    </ul>


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

      <div class = "tab-pane fade" id = "addCourse"><hr>
        <div class = "row">
          <?php require_once "_adminAddCourse.php";?>
        </div>
      </div>

      <div class = "tab-pane fade" id = "removeCourse"><hr>
        <div class = "row">
          <?php require_once "_adminRemoveCourse.php"; ?>
        </div>
      </div>

      <div class = "tab-pane fade" id = "addUser"><hr>
        <div class = "row">
          <?php require_once "_adminAddUser.php";?>
        </div>
      </div>

      <div class = "tab-pane fade" id = "addSection"><hr>
        <div class = "row">
          <?php require_once "_adminAddSection.php";?>
        </div>
      </div>

      <div class = "tab-pane fade" id = "addDept"><hr>
        <div class = "row">
          <?php require_once "_adminAddDept.php";?>
        </div>
      </div>

      <div class = "tab-pane fade" id = "removeSection"><hr>
        <div class = "row">
          <?php require_once "_adminRemoveSection.php";?>
        </div>
      </div>

      <div class = "tab-pane fade" id = "editUser"><hr>
        <div class = "row">
          <?php require_once "_adminEditUser.php";?>
        </div>
      </div>

      <div class = "tab-pane fade" id = "removeUser"><hr>
        <div class = "row">
          <?php require_once "_adminRemoveUser.php";?>
        </div>
      </div>
 
    </div><!--Close My Tab Content-->
</main>
<br /> <br />

<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
    
?>
