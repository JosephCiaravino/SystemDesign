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
$facultyId = $_SESSION['id'];
$sectionId = $_GET['secid'];

$facultyRosterScheduleQuery = "SELECT `course_title`, `section_id` FROM courses, section ";
$facultyRosterScheduleQuery.="WHERE section.faculty_id='".$facultyId."' AND courses.course_id=section.course_id AND ";
$facultyRosterScheduleQuery.="section.semester_id='1' AND section.section_id='".$sectionId."';";


$courseInfo = mysqli_fetch_assoc(mysqli_query($connection, $facultyRosterScheduleQuery));
$courseTitle = $courseInfo['course_title'];


    $studentInfoQuery = "SELECT student.student_id AS`student_id` FROM class_registration, student WHERE student.student_id=class_registration.student_id AND class_registration.section_id='".$sectionId."';";
    $studentInfoResults = mysqli_query($connection, $studentInfoQuery);
    
    $studentIdArray = array();
    while( $studentInfoList = mysqli_fetch_assoc($studentInfoResults)){
        array_push($studentIdArray, $studentInfoList['student_id']);
    }
    echo "<h2>".$courseTitle."</h2>";
?>
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
                <th>Midterm Grade</th>
                <th>Final Grade</th>
                <th>Grades</th>
                <th>Attendance</th>
               
              </tr>
            </thead>
            <tbody>
              
    <?php
    foreach($studentIdArray as $studentId){
        echo "<tr>";
        $individualQuery = "SELECT `First_Name`,`Last_Name` FROM user, student WHERE student.student_id=user.User_Id ";
        $individualQuery.= "AND student.student_id='".$studentId."';";
        
        $gradeQuery = "SELECT midterm_grade, final_grade FROM class_registration WHERE ";
        $gradeQuery.= "section_id='".$sectionId."' AND student_id='".$studentId."';";
        $gradesResult = mysqli_fetch_assoc(mysqli_query($connection, $gradeQuery));
        $midtermGrades = $gradesResult['midterm_grade'];
        $finalGrade = $gradesResult['final_grade'];
        if(!$midtermGrades){
            $midtermGrades = "N/A";
        }
        if(!$finalGrade){
            $finalGrade="N/A";
        }
       // echo $individualQuery;
        $studentInfoEndResults = mysqli_fetch_assoc(mysqli_query($connection, $individualQuery));
        echo "<td>".transform_userID($studentId)."</td>";
        echo "<td>".$studentInfoEndResults['Last_Name']."</td>";
        echo "<td>".$studentInfoEndResults['First_Name']."</td>";
        echo "<td>".$midtermGrades."</td>";
        echo "<td>".$finalGrade."</td>";
        //pass through section id too***********
        echo "<td><a href = '_facultyEditGrades.php?stuid=".$studentId."&secid=".$sectionId."' target = '_self'>Edit Grades</a></td>";
        echo "<td><a href = '_facultyViewEditAttendance.php?stuid=".$studentId."&secid=".$sectionId."' target = '_self'>Edit Attendance</a></td>";
        echo "</tr>";
    }
   ?>
    
    </tbody>
    </table>
   
           
<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
   session_regenerate_id(TRUE); 
?>  
            
            