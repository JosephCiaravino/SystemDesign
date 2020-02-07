
<div style = "background-color: lightgreen; border: 2px solid green;">
  <p>Testing Purposes -- Delete For Deployment</p>
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

          <a class="nav-link" data-toggle="tab" href="#CurrentReg">
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
         
    <!--
      TABLES IN THIS SECTION ARE CURRENTLY HARD-CODED TO SERVE A PLACE HOLDERS.  
      WE ARE FREE TO RE-DRAW as we pease using PHP
    -->
    <div id="myTabContent" class="tab-content container">

      <div class="tab-pane fade active show" id="profile"><hr>
        <div class = "row">


          <div class="card text-white bg-primary mb-6" style="max-width: 20rem; display: block">
            <div class="card-header"><h3>Your Personal Information<h3></div>
            <div class="card-body">
              <h4 class="card-title">Last Name:</h4>
              <p class="card-text">***Insert PHP***</p>

              <h4 class="card-title">First Name:</h4>
              <p class="card-text">***Insert PHP***</p>

              <h4 class="card-title">Student ID:</h4>
              <p class="card-text">***Insert PHP***</p>

              <h4 class="card-title">Address:</h4>
              <p class="card-text">
                <address>***Insert PHP***
                <br>***insert PHP***
                <br>***insert PHP***</address>
              </p>

              <h4 class="card-title">Email:</h4>
              <p class ="card-text">Anyone@wherever.net</p>

              <h4 class = "card-title">Home:</h4>
              <p class = "card-text">*** -- Insert PHP***</p>

              <h4 class = "card-title">Cell:</h4>
              <p class = "card-text">***Insert PHP***</p>

              <h4 class = "card-title">Work:</h4>
              <p class = "card-text">*** Insert PHP***</p>

              <h4 class = "card-title">Current Holds:</h4>
              <p class = "card-text">***No holds -- Insert PHP***</p>
            </div>
          </div>

          <div class = "col-1"></div>
          
          <div class="card text-white bg-primary mb-6 " style="max-width: 20rem; display: block">
            <div class="card-header"><h3>Your Academic Information<h3></div>
            <div class="card-body">
              <h4 class="card-title">Academic Standing:</h4>
              <p class="card-text">***Insert PHP-Probattion/GoodStanding***</p>

              <h4 class="card-title">Current Total Credits:</h4>
              <p class="card-text">***Insert PHP: number***</p>

              <h4 class = "card-title">Current Class Level:</h4>
              <p class = "card-text">***Sophomore -- Insert PHP***</p>
           </div> 
          </div>
        </div><!--END .row-->
      </div><!--END .tab-pane-->

      <!--Current Semester Table-->
      <div class="tab-pane fade" id="currentReg"><hr>
        <h2>Your Current Schedule</h2>
        <div class = "row">
          <table class="table-striped col-12 table-bordered">
            <thead>
              <tr class ="table-primary">
                <th>Course Title</th>
                <th>Course Code</th>
                <th>Meeting Days</th>
                <th>Meeting Time</th>
                <th>Instructor</th>
                <th>Credits</th>
                <th>Term</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Class 1</td>
                <td>1234</td>
                <td>M/W</td>
                <td>8:00-9:30</td>
                <td>Williams, P.</td>
                <td>3</td>
                <td>FA-2020</td>
              </tr>      
              <tr>
                <td>Class 2</td>
                <td>1234</td>
                <td>M/W</td>
                <td>8:00-9:30</td>
                <td>Williams, P.</td>
                <td>3</td>
                <td>FA-2020</td>
              </tr>
              <tr>
                <td>Class 3</td>
                <td>1234</td>
                <td>M/W</td>
                <td>8:00-9:30</td>
                <td>Williams, P.</td>
                <td>3</td>
                <td>FA-2020</td>
              </tr>
              <tr>
                <td>Class 4</td>
                <td>1234</td>
                <td>M/W</td>
                <td>8:00-9:30</td>
                <td>Williams, P.</td>
                <td>3</td>
                <td>FA-2020</td>
              </tr>
              <tr>
                <td>Class 5</td>
                <td>1234</td>
                <td>M/W</td>
                <td>8:00-9:30</td>
                <td>Williams, P.</td>
                <td>3</td>
                <td>FA-2020</td>
              </tr>
              
            </tbody>
          </table><br><br><hr>

        <!--NEXT SEMESTER SCHEDULE TABLE-->
        </div>
         <h2 class = "alert">Next Semester's Schedule</h2>
         <div class = "row">
          <table class="table-striped col-12 table-bordered">
            <thead>
              <tr class ="table-primary">
                <th>Course Title</th>
                <th>Course Code</th>
                <th>Meeting Days</th>
                <th>Meeting Time</th>
                <th>Instructor</th>
                <th>Credits</th>
                <th>Term</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Class 1</td>
                <td>1234</td>
                <td>M/W</td>
                <td>8:00-9:30</td>
                <td>Williams, P.</td>
                <td>3</td>
                <td>FA-2020</td>
              </tr>      
              <tr>
                <td>Class 2</td>
                <td>1234</td>
                <td>M/W</td>
                <td>8:00-9:30</td>
                <td>Williams, P.</td>
                <td>3</td>
                <td>FA-2020</td>
              </tr>
              <tr>
                <td>Class 3</td>
                <td>1234</td>
                <td>M/W</td>
                <td>8:00-9:30</td>
                <td>Williams, P.</td>
                <td>3</td>
                <td>FA-2020</td>
              </tr>
              <tr>
                <td>Class 4</td>
                <td>1234</td>
                <td>M/W</td>
                <td>8:00-9:30</td>
                <td>Williams, P.</td>
                <td>3</td>
                <td>FA-2020</td>
              </tr>
              <tr>
                <td>Class 5</td>
                <td>1234</td>
                <td>M/W</td>
                <td>8:00-9:30</td>
                <td>Williams, P.</td>
                <td>3</td>
                <td>FA-2020</td>
              </tr>
              
            </tbody>
          </table><br><br>

          
        </div>
      </div>

      <div class = "tab-pane fade" id = "viewHist"><hr>
        <div class = "row">
          <div>
            <h2>Your Degree Progress</h2>
            <progress max="100" value="20"></progress><p>20% Complete</p>
          </div>

          <table class="table-striped col-12 table-bordered">
            <caption>--END--Your Academic History</caption>
            <thead>
              <tr colspan = "3">
                <th class = "table-primary">Academic History</th>
              </tr>
              <tr class ="table-primary">
                <th>Course Title</th>
                <th>Course Code</th>
                <th>Final Grade</th>
                <th>Term</th>
               
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Basket Weaving</td>
                <td>1234</td>
                <td>B</td>
                <td>Sp-2017</td>
                
              </tr>      
              <tr>
                <td>Basket Weaving</td>
                <td>1234</td>
                <td>A</td>
                <td>Sp-2017</td>
              </tr>
              <tr>
                <td>Basket Weaving</td>
                <td>1234</td>
                <td>A</td>
                <td>Sp-2017</td>
              </tr>
              <tr class = "table-danger">
                <td>Astrophysics</td>
                <td>3000</td>
                <td>F</td>
                <td>Sp-2017</td>
              </tr>
              <tr>
                <td>Basket Weaving</td>
                <td>1234</td>
                <td>A</td>
                <td>Sp-2017</td>
              </tr>
              <tr class = table-warning>
                <td>Basket Weaving</td>
                <td>1234</td>
                <td>C</td>
                <td>Sp-2017</td>
              </tr>
              <tr>
                <td>Basket Weaving</td>
                <td>1234</td>
                <td>A</td>
                <td>Sp-2017</td>
              </tr>
              
            </tbody>
          </table><br><br>
        </div>
      </div>

      <div class = "tab-pane fade" id = "registration"><hr>
        <div class = "row">
            <div class = col-6>
              <form  method = "post" action = "#">
                  <div class = "form-group">
                    <legend>Search For Sections</legend>
                    <label for = "searchChoices">Search Options</label>
                    
                    <select class = "form-control">
                      <option>Subject</option>
                      <option>Department</option>
                      <option>Instructor</option>
                      <option>Day</option>
                      
                    </select>
                  </div>
              </form>
            </div>
          </div>
      </div>
      <br>

      <div class = "tab-pane fade" id = "degreeAudit"><hr>
        <p>Everything to do with degree requirements</p>
        <br>
        <progress max="100" value="20"></progress><p>20% Complete</p>
      </div>

      
    </div><!--Close My Tab Content-->
</main>

<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
    
?>
