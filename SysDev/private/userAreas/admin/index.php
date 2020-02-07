
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
          <a class="nav-link" data-toggle="tab" href="#add">
          <i class="fas fa-plus fa-3x"></i><br>Add Course</a>
        </li>

         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#placeHolds">
          <i class="far fa-edit fa-3x "></i><br>Place Holds</a>
        </li>


         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#remove">
          <i class="far fa-times-circle fa-3x"></i><br>Close Class Section</a>
        </li>
         
    <!--
      TABLES IN THIS SECTION ARE CURRENTLY HARD-CODED TO SERVE A PLACE HOLDERS.  
      WE ARE FREE TO RE-DRAW as we pease using PHP
    -->
    <div id="myTabContent" class="tab-content container">

      <div class="tab-pane fade active show" id="profile"><hr>
        <div class = "row">

          <div class = "col-1"></div>

          <div class="card text-white bg-secondary mb-3 col-" style="max-width: 20rem; display: block">
            <div class="card-header"><h3>Your Personal Information<h3></div>
            <div class="card-body">
              <h4 class="card-title">Last Name:</h4>
              <p class="card-text">***Insert PHP***</p>

              <h4 class="card-title">First Name:</h4>
              <p class="card-text">***Insert PHP***</p>

              <h4 class="card-title">Student ID:</h4>
              <p class="card-text">***Insert PHP***</p>

              <h4 class="card-title">Address:</h4>
              <p class="card-text"><address>***Insert PHP***<br>***insert PHP***<br>***insert PHP***</address></p>

              <h4 class="card-title">Email:</h4>
              <p class ="card-text">Anyone@wherever.net</p>

              <h4 class = "card-title">Current Holds:</h4>
              <p class = "card-text">***No holds -- Insert PHP***</p>
            </div>
          </div>

          <div class = "col-1"></div> <!--Blank Column Used to Separate Cards-->

          <div class="card text-white bg-secondary mb-3 col-5" style="max-width: 20rem; display: block">
            <div class="card-header"><h3>Your Academic Information<h3></div>
            <div class="card-body">
              <h4 class="card-title">Academic Standing:</h4>
              <p class="card-text">***Insert PHP-Probattion/GoodStanding***</p>

              <h4 class="card-title">Current Total Credits:</h4>
              <p class="card-text">***Insert PHP: number***</p>
           </div> 
          </div>
        </div><!--END .row-->
      </div><!--END .tab-pane-->

      <div class = "tab-pane fade" id = "placeHolds"><hr>
          <div class = "row">
            <h2>Some Heading</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
      </div>
     

      <!--Current Semester Table-->
      <div class="tab-pane fade" id="masterSched"><hr>
        <h2>Some Heading</h2>
        <div class = "row">
          
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>  
      </div>

      <div class = "tab-pane fade" id = "add"><hr>
        <div class = "row">
        <h2>Some Heading</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
      </div>

   

      <div class = "tab-pane fade" id = "remove"><hr>
        <div class = "row">
          <h2>Some Heading</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          </div>
      </div>

      
    </div><!--Close My Tab Content-->
</main>

<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
    
?>
