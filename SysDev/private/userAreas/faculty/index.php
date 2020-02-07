
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

      <!--Current Semester Table-->
      <div class="tab-pane fade" id="currentReg"><hr>
        <h2>Your Current Schedule</h2>
        <div class = "row">
          <table class="table-striped col-12 table-bordered">
            <thead>
              <tr>
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
              <tr>
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
            <progress max="100" value="30"></progress><p>30% Complete</p>
          </div>

          <table class="table-striped col-12 table-bordered">
          <caption>--END--Your Academic History</caption>
            <thead>
              <tr colspan = "3">
                <th class = "table-primary">Academic History</th>
              </tr>
              <tr>
                <th>Course Title</th>
                <th>Course Code</th>
                <th>Average Studet Grade</th>
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

      <div class = "tab-pane fade" id = "advisees"><hr>
        <div class = "row">
            
          <div class="card text-white bg-secondary mb-3 col-4" style="max-width: 20rem; display: block">
            <div class="card-header"><h3>Advisee<h3></div>
            <div class="card-body">
              <h4 class="card-title">Student Name:</h4>
              <p class="card-text">McCringleberry, Dingle</p>

              <h4 class="card-title">Student ID:</h4>
              <p class="card-text">***Insert PHP***</p>

              <h4 class="card-title">Email:</h4>
              <p class ="card-text">Anyone@wherever.net</p>

              <h4 class = "card-title">Current Standing:</h4>
              <p class = "card-text">***Junior -- Insert PHP***</p>
            </div>
          </div>  

          <div class="card text-white bg-secondary mb-3 col-4" style="max-width: 20rem; display: block">
            <div class="card-header"><h3>Advisee<h3></div>
            <div class="card-body">
              <h4 class="card-title">Student Name:</h4>
              <p class="card-text">Skittle, Mergatron</p>

              <h4 class="card-title">Student ID:</h4>
              <p class="card-text">***Insert PHP***</p>

              <h4 class="card-title">Email:</h4>
              <p class ="card-text">Anyone@wherever.net</p>

              <h4 class = "card-title">Current Standing:</h4>
              <p class = "card-text">***Junior -- Insert PHP***</p>
            </div>
          </div>  

          <div class="card text-white bg-secondary mb-3 col-4" style="max-width: 20rem; display: block">
            <div class="card-header"><h3>Advisee<h3></div>
            <div class="card-body">
              <h4 class="card-title">Student Name:</h4>
              <p class="card-text">Smiff, Locknester</p>

              <h4 class="card-title">Student ID:</h4>
              <p class="card-text">***Insert PHP***</p>

              <h4 class="card-title">Email:</h4>
              <p class ="card-text">Anyone@wherever.net</p>

              <h4 class = "card-title">Current Standing:</h4>
              <p class = "card-text">***Junior -- Insert PHP***</p>
            </div>
          </div>  

            
          </div>
      </div>
      <br>

      <div class = "tab-pane fade" id = "rosters"><hr>
        <h2>Class 101</h2>
        <table class="table-striped col-12 table-bordered">
          <caption>--END--Roster</caption>
            <thead class = thead-dark>
              <tr colspan = "3">
                <th class = "table-primary">Roster</th>
              </tr>
              <tr class = "table-primary">
                <th>Student ID#</th>
                <th>Student Last</th>
                <th>Student First</th>
                <th>Term</th>
               
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1544</td>
                <td>Doe</td>
                <td>John</td>
                <td>Sp-2017</td>
                
              </tr>      
              <tr>
                <td>1534</td>
                <td>Blank</td>
                <td>Jane</td>
                <td>Sp-2017</td>
              </tr>
              <tr>
                <td>3334</td>
                <td>Space</td>
                <td>Samantha</td>
                <td>Sp-2017</td>
              </tr>
              <tr>
                <td>3044</td>
                <td>Skittle</td>
                <td>Mergatron</td>
                <td>Sp-2017</td>
              </tr>
              <tr>
                <td>6534</td>
                <td>Flugget</td>
                <td>Strunk</td>
                <td>Sp-2017</td>
              </tr>
              <tr>
                <td>9084</td>
                <td>Roboclick</td>
                <td>Strunktavian</td>
                <td>Sp-2017</td>
              </tr>
              <tr>
                <td>2364</td>
                <td>Shazzbot</td>
                <td>Marmadune</td>
                <td>Sp-2017</td>
              </tr>
              
            </tbody>
          </table>

        <h2>Class 102</h2>
        <table class="table-striped col-12 table-bordered">
          <caption>--END--Roster</caption>
            <thead>
              <tr colspan = "3">
                <th class = "table-primary">Roster</th>
              </tr>
              <tr class = "table-primary">
                <th>Student ID#</th>
                <th>Student Last</th>
                <th>Student First</th>
                <th>Term</th>
               
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1234</td>
                <td>Doe</td>
                <td>John</td>
                <td>Sp-2017</td>
                
              </tr>      
              <tr>
                <td>1234</td>
                <td>Blank</td>
                <td>Jane</td>
                <td>Sp-2017</td>
              </tr>
              <tr>
                <td>1234</td>
                <td>Space</td>
                <td>Samantha</td>
                <td>Sp-2017</td>
              </tr>
              <tr>
                <td>3000</td>
                <td>Skittle</td>
                <td>Mergatron</td>
                <td>Sp-2017</td>
              </tr>
              <tr>
                <td>1234</td>
                <td>Flugget</td>
                <td>Strunk</td>
                <td>Sp-2017</td>
              </tr>
              <tr>
                <td>1234</td>
                <td>Roboclick</td>
                <td>Strunktavian</td>
                <td>Sp-2017</td>
              </tr>
              <tr>
                <td>1234</td>
                <td>Shazzbot</td>
                <td>Marmadune</td>
                <td>Sp-2017</td>
              </tr>
              
            </tbody>
          </table>
      </div>
      <br>

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
    
?>
