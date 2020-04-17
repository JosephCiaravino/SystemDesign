<?php
  //gets all sections registered for.
  $queryGetSchedule = "SELECT * FROM epiz_25399161_testdb.class_registration WHERE ";
  $queryGetSchedule.= "`student_id` = '".$_SESSION['id']."';";
  //echo $queryGetSchedule."<br />";
  $studentScheduleResults = mysqli_query($connection, $queryGetSchedule);


////WHERE I LEFT OFF FOR STUDENT USE CASES..4/17  Back to admin attendance and schedule
  $activeSections = array();
  $activeSemesters = array();
  while($studentScheduleResultsRow = mysqli_fetch_assoc($studentScheduleResults)){
    array_push($activeSections, $studentScheduleResultsRow[ 'section_id' ] );
  }
    echo print_r($activeSections)."<br />";

  //this gets the details
  for ($x = 0; $x < count($activeSections); $x++) {
    $queryGetActiveSecDetails = "SELECT * FROM epiz_25399161_testdb.section WHERE `section_id` = ";
    $queryGetActiveSecDetails.= $activeSections[$x].";";
    $getSectionDetails = mysqli_query($connection, $queryGetActiveSecDetails);
    echo print_r( mysqli_fetch_assoc($getSectionDetails) )."<br />";
  }

  

?>
<br />
  <form class = 'col-10' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
    <label for="studentSchedSemester">Semester</label>
    <select class="form-control" id="studentSchedSemester" name = "studentSchedSemester" >

    </select>
  </form>

<div>


  <h2 class = "alert"><?php echo "**PHP HERE**" ?>Schedule</h2>
  <table class="table-striped col-12 table-bordered">
    <thead>
      <tr class ="table-primary">
        <th>Course Code</th>
        <th>Course Title</th>
        <th>Meeting Days</th>
        <th>Meeting Time</th>
        <th>Instructor</th>
        <th>Credits</th>
        <th>Term</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1234</td>
        <td>Class 1</td>
        <td>M/W</td>
        <td>8:00-9:30</td>
        <td>Williams, P.</td>
        <td>3</td>
        <td>FA-2020</td>
      </tr>      
      <tr>
        <td>1234</td>
        <td>Class 2</td>
        <td>M/W</td>
        <td>8:00-9:30</td>
        <td>Williams, P.</td>
        <td>3</td>
        <td>FA-2020</td>
      </tr>
      <tr>
        <td>1234</td>
        <td>Class 3</td>
        <td>M/W</td>
        <td>8:00-9:30</td>
        <td>Williams, P.</td>
        <td>3</td>
        <td>FA-2020</td>
      </tr>
      <tr>
        <td>1234</td>
        <td>Class 4</td>
        <td>M/W</td>
        <td>8:00-9:30</td>
        <td>Williams, P.</td>
        <td>3</td>
        <td>FA-2020</td>
      </tr>
      <tr>
        <td>1234</td>
        <td>Class 5</td>
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
  
 

