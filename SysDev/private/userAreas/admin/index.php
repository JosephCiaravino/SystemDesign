
<div style = "background-color: lightgreen; border: 2px solid green;">
  <p>Testing Purposes (Development) - Delete On all pages for Deploymet</p>
<?php
echo "CurrentURL: ". $currentURL;
//echo '<div><a href = "../../_includes">TestLink</a></div>'
?>
<!-- ************************************************************************ -->
</div>

<?php
require_once "../../_includes/functions.php";

require_once "../../_includes/private_docHead.php";

require_once "../../_includes/private_masthead.php";

require_once "../../_includes/private_navBar.php";

?>

<main class = "container">
    <h2>Your Details</h2>
    <p></p>

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


        
         
    <!--
      TABLES IN THIS SECTION ARE CURRENTLY HARD-CODED TO SERVE A PLACE HOLDERS.  
      WE ARE FREE TO RE-DRAW as we pease using PHP
    -->
    <div id="myTabContent" class="tab-content container">

      <div class="tab-pane fade active show" id="profile"><hr>
        <div class = "row">

          <div class="card text-white bg-secondary mb-3 col-" style="max-width: 20rem; display: block">
            <div class="card-header"><h3>Your Personal Information<h3></div>
            <div class="card-body">
              <h4 class="card-title">Last Name:</h4>
              <p class="card-text">***Insert PHP***</p>

              <h4 class="card-title">First Name:</h4>
              <p class="card-text">***Insert PHP***</p>

              <h4 class="card-title">Employee ID:</h4>
              <p class="card-text">***Insert PHP***</p>

              <h4 class="card-title">Address:</h4>
              <p class="card-text">
                <address>
                  ***Insert PHP***<br>
                  ***insert PHP***<br>
                  ***insert PHP***
              </address></p>

              <h4 class="card-title">Email:</h4>
              <p class ="card-text">Anyone@wherever.net</p>

              <h4 class = "card-title">Current Standing:</h4>
              <p class = "card-text">***Insert PHP***</p>
            </div>
          </div>
      
        </div><!--END .row-->
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
</main>

<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
    
?>
