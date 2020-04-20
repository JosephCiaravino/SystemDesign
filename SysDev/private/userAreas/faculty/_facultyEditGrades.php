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

$studentInformationQuery = "SELECT First_Name, Last_Name FROM user WHERE user.User_Id='".$studentId."';";
$studentInformationReturn = mysqli_fetch_assoc(mysqli_query($connection, $studentInformationQuery));
$studentFirstName = $studentInformationReturn['First_Name'];
$studentLastName = $studentInformationReturn['Last_Name'];

$courseInformationQuery = "SELECT course_title, section.course_id FROM courses,section WHERE section_id='".$sectionId."' AND courses.course_id=section.course_id;";
$courseInfo = mysqli_fetch_assoc(mysqli_query($connection, $courseInformationQuery));
$courseId = $courseInfo['course_id'];
$courseTitle = $courseInfo['course_title'];

$tableHeadings = array("Midterm Grade", "Final Grade");
$formElements = array( "midtermGrade", "finalGrade");
$midtermGradesArray = array("S", "U", "F");
$finalGradesArray = array('A', 'A-', 'B+', 'B','B-','C+','C','C-','D+', 'D','D-','F');



if(isset($_POST['finalGrades'])){
    $finalGrade = $_POST['finalGrades'];
    $checkFinalDateQuery = "SELECT semester_final FROM semester WHERE semester.semester_id='".$currentSemesterID."';";
    $finalDate = mysqli_fetch_assoc(mysqli_query($connection, $checkFinalDateQuery));
    $finalDate = $finalDate['semester_final'];
    if(strtotime(date("Y-m-d")) > strtotime($finalDate)){
        //ADD ERROR MESSAGE HERE FANCY-FUL
        echo "Cannot post a finalgrade";
    }else{
        $insertFinalGradeQuery = "UPDATE `class_registration` SET `final_grade`='".$finalGrade."' WHERE ";
        $insertFinalGradeQuery.= "student_id='".$studentId."' AND section_id='".$sectionId."';";
        mysqli_query($connection, $insertFinalGradeQuery);
    }
   
}


if(isset($_POST['midtermGrades'])){
    $midtermGrade = $_POST['midtermGrades'];
    $checkMidtermDateQuery = "SELECT semester_midterm FROM semester WHERE semester.semester_id='".$currentSemesterID."';";
    $midtermDate = mysqli_fetch_assoc(mysqli_query($connection, $checkMidtermDateQuery));
    $midtermDate = $midtermDate['semester_midterm'];
    if(strtotime(date("Y-m-d")) > strtotime($midtermDate)){
        //ADD ERROR MESSAGE HERE FANCY-FUL
        echo "Cannot post a midterm grade";
    }else{
        $insertMidtermGradeQuery = "UPDATE `class_registration` SET `midterm_grade`='".$midtermGrade."' WHERE ";
        $insertMidtermGradeQuery.= "student_id='".$studentId."' AND section_id='".$sectionId."';";
        mysqli_query($connection, $insertMidtermGradeQuery);
    }
}


?>
<body>
<?php
        echo "<h2>".$studentFirstName." ".$studentLastName."</h2>";
        echo "<h3>".$courseId."-".$courseTitle."</h3>";
?>
<form >
   <br>
   <h5>Select A Midterm Grade</h5>
    <select required name="midtermGrades">
        <option selected="selected"></option>
        <?php
        foreach($midtermGradesArray as $midtermGrades){
        ?>
        <option value="<?php echo $midtermGrades; ?>"><?php echo $midtermGrades; ?></option>
        <?php
        }
        ?>
    </select>
    <input type="submit" formmethod="post" value="Submit Midterm Grade" name="submitMidtermGrade">
</form>
<br>
<br>
<form>
   <br>
   <h5>Select A Final Grade</h5>
    <select required name="finalGrades">
        <option selected="selected"></option>
        <?php
        foreach($finalGradesArray as $finalGrades){
        ?>
        <option value="<?php echo $finalGrades; ?>"><?php echo $finalGrades; ?></option>
        <?php
        }
        ?>
    </select>
    <input type="submit" formmethod="post" value="Submit Final Grade" name="submitFinalGrade">
</form>


</body>

<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
   session_regenerate_id(TRUE); 
?>