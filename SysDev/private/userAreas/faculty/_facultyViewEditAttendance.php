<?php
session_regenerate_id(TRUE);
echo print_r($_SESSION);
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
$sectionId = $_GET['secid'];
$studentId = $_GET['stuid'];



if(isset($_POST['attended'])&&isset($_POST['attendance'])&&isset($_POST['submit'])){
   $dateToInput =  $_POST['attended'];
    $attendedStatus =  $_POST['attendance'];
    $_POST['attendance']=NULL;
    
        
    $inputAttendanceQuery = "INSERT INTO `attendance`(`section_id`, `student_id`, `date`, `attended`) VALUES (".$sectionId.",".$studentId.",'".$dateToInput."','".$attendedStatus."');";
    mysqli_query($connection, $inputAttendanceQuery);
}

$studentInformationQuery = "SELECT First_Name, Last_Name FROM user WHERE user.User_Id='".$studentId."';";
$studentInformationReturn = mysqli_fetch_assoc(mysqli_query($connection, $studentInformationQuery));
$studentFirstName = $studentInformationReturn['First_Name'];
$studentLastName = $studentInformationReturn['Last_Name'];

$courseInformationQuery = "SELECT course_title, section.course_id FROM courses,section WHERE section_id='".$sectionId."' AND courses.course_id=section.course_id;";
$courseInfo = mysqli_fetch_assoc(mysqli_query($connection, $courseInformationQuery));
$courseId = $courseInfo['course_id'];
$courseTitle = $courseInfo['course_title'];

//echo "<h2>".$studentFirstName." ".$studentLastName."</h2>";
//echo "<h3>".$courseId."-".$courseTitle."</h3>";

$attendanceQuery = "SELECT * FROM attendance WHERE student_id='".$studentId."' AND section_id='".$sectionId."' ORDER BY date DESC;";
$attendanceResult = mysqli_query($connection, $attendanceQuery);
$dateArray = array();
$attendanceArray = array();
while( $attendanceList = mysqli_fetch_assoc($attendanceResult)){
        array_push($dateArray, $attendanceList['date']);
        array_push($attendanceArray, $attendanceList['attended']);
     }
?>

<div class = 'container'>
  <div class = 'row'>
    <h2><?php echo $studentFirstName." ".$studentLastName ?></h2>
    <h3><?php echo $courseId."-".$courseTitle?></h3>
            
            <table class="table-striped col-12 table-bordered">
                <thead class = thead-dark>
                  <tr colspan = "3">
                    <th class = "table-primary">Attendance</th>
                  </tr>
                  <tr class = "table-primary">
                    <th>Date</th>
                    <th>Attended</th>       
                  </tr>
                </thead>
                <tbody>
    <?php
    foreach($dateArray as $index => $date){
        echo "<tr>";
        echo "<td>".$date."</td>";
        echo "<td>".$attendanceArray[$index]."</td>";
        echo "</tr>";
        
    }
    ?>

                </tbody>
    </table>
  </div>
    <br>
    <br>

    <?php
    $currentSemesterStartAndEndDateQuery = "SELECT semester_start, semester_finish FROM semester WHERE ";
    $currentSemesterStartAndEndDateQuery.= "semester_id='".$currentSemesterID."';";
    $dateLimitResults = mysqli_fetch_assoc(mysqli_query($connection, $currentSemesterStartAndEndDateQuery));
    $startDate = $dateLimitResults['semester_start'];
    $endDate = $dateLimitResults['semester_finish'];
    ?>

    <form name='Attendance' method='POST' class = 'row'>
    <label for='attended'>Date:</label>

    <input type='date' id='attendance' name='attended' value='<?php echo date("Y-m-d");?>' min='<?php echo $startDate;?>' max='<?php echo $endDate?>' >
    
    <label>Attendance:</label>
    <select required name="attendance">
            <option selected="selected"></option>
            <option value="P">Present</option>
            <option value="A">Absent</option>
        </select>
    <button class = 'btn btn-primary' name = 'submit' value = 'Enter Attendance'>Enter Attendance</button>

    <!--<input type='submit' name='submit' value='Enter Attendance'/>-->
    </form>
    

</div>

<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
   session_regenerate_id(TRUE); 
?>