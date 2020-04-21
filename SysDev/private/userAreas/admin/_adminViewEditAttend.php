<?php
session_regenerate_id(TRUE);
//echo print_r($_SESSION);
$pageType = "faculty";
require_once "../../_includes/private_docHead.php";

/***********************************************************************************/
include_once "../../_includes/private_testing_div.php";
/***********************************************************************************/

require_once "../../_includes/private_masthead.php";
require_once "../../_includes/private_navBar.php";

//this code prevents visitor from directly accessing private areas
require_once "../../_includes/functionalityScripts/pageRestrictionScript.php";
?>


<?php
  if(!empty($_POST['submitStuAttView'])){
        $sectionId = $_POST['theSecId'];
        $studentId = $_POST['theStuId'];

      $studentInformationQuery = "SELECT First_Name, Last_Name FROM user WHERE ";
      $studentInformationQuery.= "user.User_Id='".$studentId."';";
      $studentInformationReturn = mysqli_fetch_assoc(mysqli_query($connection, $studentInformationQuery));
      $studentFirstName = $studentInformationReturn['First_Name'];
      $studentLastName = $studentInformationReturn['Last_Name'];

      //echo $studentInformationQuery;

      $courseInformationQuery = "SELECT course_title, section.course_id FROM courses,section WHERE section_id='";
      $courseInformationQuery.=$sectionId."' AND courses.course_id=section.course_id;";
      $courseInfo = mysqli_fetch_assoc(mysqli_query($connection, $courseInformationQuery));
      $courseId = $courseInfo['course_id'];
      $courseTitle = $courseInfo['course_title'];



      $attendanceQuery = "SELECT * FROM attendance WHERE student_id='".$studentId."' AND section_id='".$sectionId."';";
      $attendanceResult = mysqli_query($connection, $attendanceQuery);
      $dateArray = array();
      $attendanceArray = array();
      while( $attendanceList = mysqli_fetch_assoc($attendanceResult)){
              array_push($dateArray, $attendanceList['date']);
              array_push($attendanceArray, $attendanceList['attended']);
           }

      $currentSemesterStartAndEndDateQuery = "SELECT semester_start, semester_finish FROM semester WHERE ";
      $currentSemesterStartAndEndDateQuery.= "semester_id='".$currentSemesterID."';";
      $dateLimitResults = mysqli_fetch_assoc(mysqli_query($connection, $currentSemesterStartAndEndDateQuery));
      $startDate = $dateLimitResults['semester_start'];
      $endDate = $dateLimitResults['semester_finish'];
}

?>


<form name='Attendance' class = 'col-6' method='POST' action = "<?php echo $_SERVER['PHP_SELF'];?>">
    <div class = 'form-group col-10'>

        <label for='theStuId'>Enter a student's ID</label>
        <input class = 'form-control' type = 'number' id = 'theStuId' name = 'theStuId' min = '0' required="">

        <label for='theSecId'>Enter a section ID</label>
        <input class = 'form-control' type = 'number' id = 'theSecId' name = 'theSecId' min = '0' required="">

        <label for='attended'>Date:</label>
        <input class = 'form-control' type='date' id='attendance' name='attended' value='<?php echo date("Y-m-d");?>' 
              min='<?php echo $startDate;?>' max='<?php echo $endDate;?>' required="">


            <br /><br>
            <button class = 'btn btn-primary col-10' type='submit' name='submitStuAttView' value='StuAttView'>View</button>
    </div>
    
    <br />
</form >
<!--
<form class = 'col-6'>

  <label for = 'attendance'>Attendance</label>
  <select class = 'form-control' required name="attendance">
      <option selected="selected"></option>
      <option value="P">Present</option>
      <option value="A">Absent</option>
  </select>
</form>
-->


<br />


<div class = 'col-6'>
  <?php
  if(isset($studentFirstName) && isset($studentLastName) && isset($courseId) && isset($courseTitle)) 
    echo '<h3>'.$studentFirstName." ".$studentLastName."'s Attendance Record For<br />".$courseId."-".$courseTitle.'</h3>';

?>
  <table class="col-6 table table-striped table-bordered row" >
      
     
        <tr class = "table-primary">
          <th>Date</th>
          <th>Attended</th>       
        </tr>
  
  
        <?php
        if(isset($attendanceArray)){
            foreach($dateArray as $index => $date){
                echo "<tr>";
                echo "<td>".$date."</td>";
                echo "<td>".$attendanceArray[$index]."</td>";
                echo "</tr>";
                
            }

        }
        ?>
 
    
</table>

</div>
<br />
<br />



<?php
//require_once '../../_includes/private_footer.php';
//require_once '../../_includes/private_requiredScripts.php';
   session_regenerate_id(TRUE); 
?>