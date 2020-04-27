<?php
//echo $_SESSION['id'];

$studentId = $_SESSION['id'];

$getStudentTypeQuery = "SELECT student_type FROM student WHERE student_id='".$studentId."';";
$studentType = mysqli_fetch_assoc(mysqli_query($connection, $getStudentTypeQuery));
$studentType = $studentType['student_type'];
if($studentType == "undergrad"){
    //get student major
    $studentMajorQuery = "SELECT major_id FROM student_major WHERE student_id='".$studentId."';";
    $studentMajorResult = mysqli_query($connection, $studentMajorQuery);
    $studentMajorIdArray = array();
    while($studentMajorList = mysqli_fetch_assoc($studentMajorResult)){
        array_push($studentMajorIdArray, $studentMajorList['major_id']);
    }
    // get student minor
    $studentMinorQuery = "SELECT minor_id FROM student_minor WHERE student_id='".$studentId."';";
    $studentMinorResult = mysqli_query($connection, $studentMinorQuery);
    $studentMinorIdArray = array();
    while($studentMinorList = mysqli_fetch_assoc($studentMinorResult)){
        array_push($studentMinorIdArray, $studentMinorList['minor_id']);
    }
    //get course history
    $studentHistoryQuery = "SELECT course_id FROM student_history WHERE student_id='".$studentId."';";
    $studentHistoryResult = mysqli_query($connection, $studentHistoryQuery);
    $studentHistoryArray = array();
    while($studentHistoryList = mysqli_fetch_assoc($studentHistoryResult)){
        array_push($studentHistoryArray, $studentHistoryList['course_id']);
    }

    //get currently taking courses
    $studentCurrentClassQuery = "SELECT DISTINCT course_id FROM class_registration, section WHERE student_id='".$studentId."' AND semester_id='".$currentSemesterID."' AND section.section_id=class_registration.section_id ";
    $studentCurrentClassReturn = mysqli_query($connection, $studentCurrentClassQuery);
    $studentCurrentArray = array();
    while($currentClassList = mysqli_fetch_assoc($studentCurrentClassReturn)){
        array_push($studentCurrentArray, $currentClassList['course_id']);
    }

?>
<div><a href = "#">Request Official Transcript</a></div>
<br><br>


<table class="table-striped col-12 table-bordered">
  <thead>
    <tr class ="table-primary">
<?php
    foreach($studentMajorIdArray as $majorId){
        $majorTitleQuery = "SELECT major_title FROM major WHERE major_id='".$majorId."';";
        $majorTitle = mysqli_fetch_assoc(mysqli_query($connection, $majorTitleQuery));
        $majorTitle = $majorTitle['major_title'];
      
        $majorRequirementsQuery = "SELECT req_course_id FROM major_requirements WHERE major_id='".$majorId."';";
        $majorRequirementsResult = mysqli_query($connection, $majorRequirementsQuery);
        $majorReqIdArray = array();
        while($majorReqList = mysqli_fetch_assoc($majorRequirementsResult)){
            array_push($majorReqIdArray, $majorReqList['req_course_id']);
        }   
?>
     <br>
      <th>Major Requirement - <?php echo $majorTitle; ?></th>
      <th>Completed</th>
    </tr>
  </thead>
  <tbody>
<?php
            foreach($majorReqIdArray as $majorCourseId){
            //get the course title
            $courseTitleQuery = "SELECT course_title FROM courses WHERE course_id='".$majorCourseId."';";
            $courseTitle = mysqli_fetch_assoc(mysqli_query($connection, $courseTitleQuery));
            $courseTitle = $courseTitle['course_title'];
          
            $completedCheck = FALSE;
            $inProgressCheck = FALSE;
                foreach($studentHistoryArray as $historyClass){
                    if($historyClass == $majorCourseId){
                        $completedCheck = TRUE;
                    }
                }
                foreach($studentCurrentArray as $currentlyTaking){
                    if($currentlyTaking == $majorCourseId){
                        $inProgressCheck = TRUE;
                    }
                }
          
                echo "<tr>";
                echo "<td>".$majorCourseId." - ".$courseTitle."</td>";
                if($completedCheck){
                    echo "<td><i class='fas fa-check-square'></i></td>";
                }
                elseif($inProgressCheck){
                    echo "<td>In Progress</td>";
                }else{
                    echo "<td></td> ";
                }
                echo "</tr>";
                }
      ?>

  </tbody>
</table><br><br><hr>

<?php
      }
    
        foreach($studentMinorIdArray as $minorId){
        $minorTitleQuery = "SELECT minor_title FROM minor WHERE minor_id='".$minorId."';";
        $minorTitle = mysqli_fetch_assoc(mysqli_query($connection, $minorTitleQuery));
        $minorTitle = $minorTitle['minor_title'];
      
        $minorRequirementsQuery = "SELECT req_course_id FROM minor_requirements WHERE minor_id='".$minorId."';";
        $minorRequirementsResult = mysqli_query($connection, $minorRequirementsQuery);
        $minorReqIdArray = array();
        while($minorReqList = mysqli_fetch_assoc($minorRequirementsResult)){
            array_push($minorReqIdArray, $minorReqList['req_course_id']);
        }   
    ?>
      
      <table class="table-striped col-12 table-bordered">
  <thead>
    <tr class ="table-primary">
      <th>Minor Requirements - <?php echo $minorTitle; ?></th>
      <th>Completed</th>
    </tr>
  </thead>
  <tbody>
       <?php
    
        
    foreach($minorReqIdArray as $minorRequirement){
            $minorCourseTitleQuery = "SELECT course_title FROM courses WHERE course_id='".$minorRequirement."';";
            $courseTitle = mysqli_fetch_assoc(mysqli_query($connection, $minorCourseTitleQuery));
            $courseTitle = $courseTitle['course_title'];
          
            $completedCheck = FALSE;
            $inProgressCheck = FALSE;
                foreach($studentHistoryArray as $historyClass){
                    if($historyClass == $minorRequirement){
                        $completedCheck = TRUE;
                    }
                }
                foreach($studentCurrentArray as $currentlyTaking){
                    if($currentlyTaking == $minorRequirement){
                        $inProgressCheck = TRUE;
                    }
                }
          
                echo "<tr>";
                echo "<td>".$minorRequirement." - ".$courseTitle."</td>";
                if($completedCheck){
                    echo "<td><i class='fas fa-check-square'></i></td>";
                }
                elseif($inProgressCheck){
                    echo "<td>In Progress</td>";
                }else{
                    echo "<td></td> ";
                }
                echo "</tr>";
                }
    
}

      ?>

  </tbody>
</table><br><br><hr>

<?php
}
elseif($studentType == "grad"){
    $studentGradProgramQuery = "SELECT grad_program_id FROM grad_registration WHERE student_id='".$studentId."';";
    $gradProgramId = mysqli_fetch_assoc(mysqli_query($connection, $studentGradProgramQuery));
    $gradProgramId = $gradProgramId['grad_program_id'];
    
    $gradTitleQuery = "SELECT grad_program_title FROM grad_program WHERE grad_program_id='".$gradProgramId."';";
    $gradProgramTitle = mysqli_fetch_assoc(mysqli_query($connection, $gradTitleQuery));
    $gradProgramTitle = $gradProgramTitle['grad_program_title'];
    
    $gradRequirementsQuery = "SELECT course_id FROM grad_program_requirements WHERE grad_program_id='".$gradProgramId."';";
    $gradReqId = mysqli_query($connection, $gradRequirementsQuery);
    $gradReqIdArray = array();
    while($gradReqList = mysqli_fetch_assoc($gradReqId)){
        array_push($gradReqIdArray, $gradReqList['course_id']);
        
    }
    
        //get course history
    $studentHistoryQuery = "SELECT course_id FROM student_history WHERE student_id='".$studentId."';";
    $studentHistoryResult = mysqli_query($connection, $studentHistoryQuery);
    $studentHistoryArray = array();
    while($studentHistoryList = mysqli_fetch_assoc($studentHistoryResult)){
        array_push($studentHistoryArray, $studentHistoryList['course_id']);
    }

    //get currently taking courses
    $studentCurrentClassQuery = "SELECT DISTINCT course_id FROM class_registration, section WHERE student_id='".$studentId."' AND semester_id='".$currentSemesterID."' AND section.section_id=class_registration.section_id ";
    $studentCurrentClassReturn = mysqli_query($connection, $studentCurrentClassQuery);
    $studentCurrentArray = array();
    while($currentClassList = mysqli_fetch_assoc($studentCurrentClassReturn)){
        array_push($studentCurrentArray, $currentClassList['course_id']);
    }
    
    ?>

          <table class="table-striped col-12 table-bordered">
  <thead>
    <tr class ="table-primary">
      <th>Graduate Requirements - <?php echo $gradProgramTitle; ?></th>
      <th>Completed</th>
    </tr>
  </thead>
  <tbody>
    
    <?php
    
        foreach($gradReqIdArray as $gradRequirement){
            $gradCourseTitleQuery = "SELECT course_title FROM courses WHERE course_id='".$gradRequirement."';";
            $courseTitle = mysqli_fetch_assoc(mysqli_query($connection, $gradCourseTitleQuery));
            $courseTitle = $courseTitle['course_title'];
          
            $completedCheck = FALSE;
            $inProgressCheck = FALSE;
                foreach($studentHistoryArray as $historyClass){
                    if($historyClass == $gradRequirement){
                        $completedCheck = TRUE;
                    }
                }
                foreach($studentCurrentArray as $currentlyTaking){
                    if($currentlyTaking == $gradRequirement){
                        $inProgressCheck = TRUE;
                    }
                }
          
                echo "<tr>";
                echo "<td>".$gradRequirement." - ".$courseTitle."</td>";
                if($completedCheck){
                    echo "<td><i class='fas fa-check-square'></i></td>";
                }
                elseif($inProgressCheck){
                    echo "<td>In Progress</td>";
                }else{
                    echo "<td></td> ";
                }
                echo "</tr>";
                }
    
}
    
    

?>

</tbody>
</table>