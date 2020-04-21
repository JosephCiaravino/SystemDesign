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
$facultyId=$_SESSION['id'];
$studentId=$_GET['stuid'];

$studentInformationQuery = "SELECT First_Name, Last_Name FROM user WHERE user.User_Id='".$studentId."';";
$studentInformationReturn = mysqli_fetch_assoc(mysqli_query($connection, $studentInformationQuery));
$studentFirstName = $studentInformationReturn['First_Name'];
$studentLastName = $studentInformationReturn['Last_Name'];
//echo "<h2>".$studentFirstName." ".$studentLastName."'s Transcript</h2>";

 echo "<div class = 'container' ><h3 class = 'row col-12'>".$studentFirstName." ".$studentLastName."'s Transcript</h3> </div>";

$studentHistoryQuery = "SELECT DISTINCT semester_id FROM student_history WHERE student_id='".$studentId."';";
$studentHistoryReturn = mysqli_query($connection, $studentHistoryQuery);
$semesterArray = array();
while($semesterList = mysqli_fetch_assoc($studentHistoryReturn)){
            array_push($semesterArray, $semesterList['semester_id']);
        }
$cumulativeGpaArray = array();
foreach($semesterArray as $semester){
    $semesterGpaArray = array();
    $semesterInfoQuery = "SELECT semester_year, semester_term FROM semester WHERE semester_id='".$semester."';";
    $semesterInfo = mysqli_fetch_assoc(mysqli_query($connection, $semesterInfoQuery));
    $semesterYear = $semesterInfo['semester_year'];
    $semesterTerm = $semesterInfo['semester_term'];
    

 

?>
<div class = 'container'>  
  <?php 

  echo $semesterTerm." ".$semesterYear."</h2>";
?>
  <table class="table-striped table-bordered">
    <thead>
      <tr>
        <th scope = 'row' class = 'col-5'>Course Title</th>
        <th scope = 'row'class = 'col-3'>Course Code</th>
        <th scope = 'row' class = 'col-2'>Grade</th>
        <th scope = 'row'  class = 'col-2'>Credits</th>
      </tr>
    </thead>
    <tbody>
<?php
  $studentHistoricalCoursesQuery = "SELECT * FROM student_history WHERE student_id='".$studentId."' AND ";
  $studentHistoricalCoursesQuery.= "semester_id='".$semester."';";
  $studentHistoricalCourses = mysqli_query($connection, $studentHistoricalCoursesQuery);
  $coursesArray = array();
  $gradeArray = array();

    while($studentHistory = mysqli_fetch_assoc($studentHistoricalCourses)){
        array_push($coursesArray, $studentHistory['course_id']);
        array_push($gradeArray, $studentHistory['grade']);
        array_push($semesterGpaArray, $studentHistory['grade']);
        array_push($cumulativeGpaArray, $studentHistory['grade']);
    }

    foreach($coursesArray as $index =>$courseId){
        $courseTitleQuery = "SELECT course_title, credits FROM courses WHERE course_id='".$courseId."';";
        $courseTitle=mysqli_fetch_assoc(mysqli_query($connection, $courseTitleQuery));
        $credits = $courseTitle['credits'];
        $courseTitle = $courseTitle['course_title'];
        $courseGrade = $gradeArray[$index];
        echo "<tr>";
        echo "<td>".$courseTitle."</td>";
        echo "<td>".$courseId."</td>";
        echo "<td>".$courseGrade."</td>";
        echo "<td>".$credits."</td>";
        echo "</tr>";
    }
    

  
?>

      </tbody>
</table>

</div>

<?php
    echo "<div class = 'container";
    echo "<div class = 'row'>";
    echo "<p style='text-align:right' class = 'col-10'>Semester GPA: ".computeGpa($semesterGpaArray)." <br />";
    echo "Cumulative GPA: ".computeGpa($cumulativeGpaArray)."</p>";
    echo "</div>";
    echo "</div>";
}
?>

<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
   session_regenerate_id(TRUE); 
?>