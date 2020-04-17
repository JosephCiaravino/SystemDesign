<?php
$facultyId = $_SESSION['id'];

$facultyRosterScheduleQuery = "SELECT `course_title`, `section_id` FROM courses, section ";
$facultyRosterScheduleQuery.="WHERE section.faculty_id='".$facultyId."' AND courses.course_id=section.course_id AND ";
$facultyRosterScheduleQuery.="section.semester_id='1';";

$courseInfo = mysqli_query($connection, $facultyRosterScheduleQuery);
$sectionArray = array();
$courseArray = array();
while( $courseInfoList = mysqli_fetch_assoc($courseInfo)){
        array_push($sectionArray, $courseInfoList['section_id']);
        array_push($courseArray, $courseInfoList['course_title']);
     }

foreach($sectionArray as $index => $sectionId){
    $studentInfoQuery = "SELECT student.student_id AS`student_id` FROM class_registration, student WHERE student.student_id=class_registration.student_id AND class_registration.section_id='".$sectionId."';";
    $studentInfoResults = mysqli_query($connection, $studentInfoQuery);
    
    $studentIdArray = array();
    while( $studentInfoList = mysqli_fetch_assoc($studentInfoResults)){
        array_push($studentIdArray, $studentInfoList['student_id']);
    }
    echo "<h2>".$courseArray[$index]."</h2>";
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
                <th>Grades</th>
               
              </tr>
            </thead>
            <tbody>
              
    <?php
    foreach($studentIdArray as $studentId){
        echo "<tr>";
        $individualQuery = "SELECT `First_Name`,`Last_Name` FROM user, student WHERE student.student_id=user.User_Id ";
        $individualQuery.= "AND student.student_id='".$studentId."';";
       // echo $individualQuery;
        $studentInfoEndResults = mysqli_fetch_assoc(mysqli_query($connection, $individualQuery));
        echo "<td>".transform_userID($studentId)."</td>";
        echo "<td>".$studentInfoEndResults['Last_Name']."</td>";
        echo "<td>".$studentInfoEndResults['First_Name']."</td>";
        echo "<td>Edit Grades Link Here </td>";
        echo "</tr>";
    }
   ?>
    
    </tbody>
    </table>
<?php }
    
    ?>        
            