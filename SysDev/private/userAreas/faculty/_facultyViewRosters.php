<?php

$facultyId = $SESSION_['User_Id'];
$query = "SELECT `course_title`, `section_id` FROM courses,section ";
$query.="WHERE section.faculty_id='".$facultyId."' AND courses.course_id=section.course_id;";
echo $query;
$courseInfo = mysqli_query($connection, $query)
while( $courseInfoList = mysqli_fetch_assoc($courseInfo)){
         array_push($sectionArray, $courseInfoList['section_id']);
        array_push($courseArray, $courseInfoList['course_title']);
     }

foreach($sectionArray as $sectionId){
    $incrementor = 0;
    $courseTitle = $courseArray[$incrementor];
    $incrementor++;
    $studentInfoQuery = "SELECT `studentId` FROM class_registration, student WHERE student.student_id=class_registration.student_id AND class_registration.section_id='".$sectionId"';";
    $studentInfoResults = mysqli_query($connection, $studentInfoQuery);
    while($studentInfoResults = mysqli_fetch_assoc($studentInfoRestults)){
        array_push($stuIdArray, $studentInfoResults['student_id']);
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
               
              </tr>
            </thead>
            <tbody>
              <tr>
<?php
foreach($stuIdArray as $studentId){
    $individualQuery = "SELECT `First_Name`,`Last_Name` FROM user WHERE student.student_id=user.User_Id ";
    $individualQuery.= "AND student.student_id='".$studentId."';";
    $studentInfoEndResults = mysqli_fetch_assoc(mysqli_query($connection, $individualQuery));
    echo "<td>".$studentId."</td>";
    echo "<td>".$studentInfoEndResults['Last_Name']."</td>";
    echo "<td>".$studentInfoEndResults['First_Name']."</td>";
    }
 ?>
      
            </tbody>
            </table>

<?php
    }
    ?>
