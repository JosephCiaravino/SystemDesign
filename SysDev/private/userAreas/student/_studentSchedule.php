<?php
$studentId = $_SESSION['id'];

?>
    <div>
  <h2 class = "alert">This Semester's Schedule</h2>
  <table class="table-striped col-12 table-bordered">
    <thead>
      <tr class ="table-primary">
        <th>Course Title</th>
        <th>Meeting Days</th>
        <th>Meeting Time</th>
        <th>Location</th>
        <th>Instructor</th>
        <th>Credits</th>
        <th>Midterm Grade</th>
        <th>Final Grade</th>
      </tr>
    </thead>
<?php

$registrationQuery = "SELECT section_id FROM class_registration WHERE student_id='".$studentId."' ;";
$registrationQueryResult = mysqli_query($connection, $registrationQuery);
$sectionIdArray = array();
while($registeredList = mysqli_fetch_assoc($registrationQueryResult)){
    array_push($sectionIdArray, $registeredList['section_id']);
}

foreach($sectionIdArray as $sectionId){
    $semesterIdQuery = "SELECT semester_id FROM section WHERE section_id='".$sectionId."';";
    $semesterId = mysqli_fetch_assoc(mysqli_query($connection, $semesterIdQuery));
    $semesterId = $semesterId['semester_id'];

    
    if($semesterId == $currentSemesterIDnum){
        $sectionInfoQuery = "SELECT course_id, room_id, time_slot_id, faculty_id FROM section WHERE section_id='".$sectionId."';";
        $sectionInfoResult = mysqli_fetch_assoc(mysqli_query($connection, $sectionInfoQuery));
        //get course id
        $courseId = $sectionInfoResult['course_id'];
        $roomId = $sectionInfoResult['room_id'];
        $timeSlotId = $sectionInfoResult['time_slot_id'];
        $facultyId = $sectionInfoResult['faculty_id'];
        
        //get course title
        $courseTitleQuery = "SELECT course_title, credits FROM courses WHERE course_id='".$courseId."';";
        $courseTitle = mysqli_fetch_assoc(mysqli_query($connection, $courseTitleQuery));
        $courseCredits = $courseTitle['credits'];
        $courseTitle = $courseTitle['course_title'];
        
        //Get course days
        $courseDaysQuery = "SELECT day_name FROM time_slot_days WHERE time_slot_id='".$timeSlotId."';";
        $courseDaysResult = mysqli_query($connection, $courseDaysQuery);
        $courseDaysArray = array();
        while($courseDayList = mysqli_fetch_assoc($courseDaysResult)){
            array_push($courseDaysArray, $courseDayList['day_name']);

        }
        
        //course meeting time
        $courseTimeQuery = "SELECT start_time, end_time FROM time_period, time_slot_period WHERE ";
        $courseTimeQuery.= "time_slot_id='".$timeSlotId."' AND time_period.time_period_id = time_slot_period.time_period_id;";
        $courseTimeResult = mysqli_fetch_assoc(mysqli_query($connection, $courseTimeQuery));
        $startTime = $courseTimeResult['start_time'];
        $endTime = $courseTimeResult['end_time'];
        
        
        $roomInfoQuery = "SELECT building, room_number FROM rooms WHERE room_id='".$roomId."';";
        $roomInfoResult = mysqli_fetch_assoc(mysqli_query($connection, $roomInfoQuery));
        $roomNumber = $roomInfoResult['room_number'];
        $buildingName = $roomInfoResult['building'];
        
        
        $facultyQuery = "SELECT First_Name, Last_Name FROM user WHERE User_id='".$facultyId."';";
        $facultyResult = mysqli_fetch_assoc(mysqli_query($connection, $facultyQuery));
        $facultyFirstName = $facultyResult['First_Name'];
        $facultyLastName = $facultyResult['Last_Name'];
        
        //get grades
        $gradeQuery = "SELECT midterm_grade, final_grade FROM class_registration WHERE student_id='".$studentId."' AND section_id='".$sectionId."';";
        $gradeResult = mysqli_fetch_assoc(mysqli_query($connection, $gradeQuery));
        $midtermGrade = $gradeResult['midterm_grade'];
        $finalGrade = $gradeResult['final_grade'];

?>

    <tbody>
     <?php
        
    echo "<tr>";
       echo "<td>".$courseId."-".$courseTitle."</td>";
        echo "<td>";
        
        foreach($courseDaysArray as $days){
                echo $days." ";
            }
        
        echo "</td>";
        echo "<td>".$startTime."-".$endTime."</td>";
        echo "<td>".$buildingName." ".$roomNumber."</td>";
        echo "<td>".$facultyFirstName." ".$facultyLastName."</td>";
        echo "<td>".$courseCredits."</td>";
        echo "<td>";
        if($midtermGrade != NULL){
            echo $midtermGrade;
        }else{
            echo "N/A";
        }
        echo "</td>";
        echo "<td>";
        if($finalGrade != NULL){
            echo $finalGrade;
        }else{
            echo "N/A";
        }
        echo "</td>";
      echo "</tr>";          
        ?> 

  <?php
            }
    
}
        ?>
            </tbody>
  </table><br><br><hr>

<!--NEXT SEMESTER SCHEDULE TABLE-->
</div>
  
  <div>
    <h2 class = "alert">Next Semester's Schedule</h2>
    <table class="table-striped col-12 table-bordered">
      <thead>
        <tr class ="table-primary">
          <th>Course Title</th>
          <th>Course Code</th>
          <th>Meeting Days</th>
          <th>Meeting Time</th>
          <th>Instructor</th>
          <th>Credits</th>
        </tr>
      </thead>
      <tbody>
       
       <?php
foreach($sectionIdArray as $sectionId){
        $semesterIdQuery = "SELECT semester_id FROM section WHERE section_id='".$sectionId."';";
    $semesterId = mysqli_fetch_assoc(mysqli_query($connection, $semesterIdQuery));
    $semesterId = $semesterId['semester_id'];

   
    if($semesterId == $nextSemesterID){
        $sectionInfoQuery = "SELECT course_id, room_id, time_slot_id, faculty_id FROM section WHERE section_id='".$sectionId."';";
        $sectionInfoResult = mysqli_fetch_assoc(mysqli_query($connection, $sectionInfoQuery));
        //get course id
        $courseId = $sectionInfoResult['course_id'];
        $roomId = $sectionInfoResult['room_id'];
        $timeSlotId = $sectionInfoResult['time_slot_id'];
        $facultyId = $sectionInfoResult['faculty_id'];
//        
////        //get course title
        $courseTitleQuery = "SELECT course_title, credits FROM courses WHERE course_id='".$courseId."';";
        $courseTitle = mysqli_fetch_assoc(mysqli_query($connection, $courseTitleQuery));
        $courseCredits = $courseTitle['credits'];
        $courseTitle = $courseTitle['course_title'];
        
//        //Get course days
        $courseDaysQuery = "SELECT day_name FROM time_slot_days WHERE time_slot_id='".$timeSlotId."';";
        $courseDaysResult = mysqli_query($connection, $courseDaysQuery);
        $courseDaysArray = array();
        while($courseDayList = mysqli_fetch_assoc($courseDaysResult)){
            array_push($courseDaysArray, $courseDayList['day_name']);

        }
//        
//        //course meeting time
        $courseTimeQuery = "SELECT start_time, end_time FROM time_period, time_slot_period WHERE ";
        $courseTimeQuery.= "time_slot_id='".$timeSlotId."' AND time_period.time_period_id = time_slot_period.time_period_id;";
        $courseTimeResult = mysqli_fetch_assoc(mysqli_query($connection, $courseTimeQuery));
        $startTime = $courseTimeResult['start_time'];
        $endTime = $courseTimeResult['end_time'];
//        
//        
        $roomInfoQuery = "SELECT building, room_number FROM rooms WHERE room_id='".$roomId."';";
        $roomInfoResult = mysqli_fetch_assoc(mysqli_query($connection, $roomInfoQuery));
        $roomNumber = $roomInfoResult['room_number'];
        $buildingName = $roomInfoResult['building'];
        
        
        $facultyQuery = "SELECT First_Name, Last_Name FROM user WHERE User_id='".$facultyId."';";
        $facultyResult = mysqli_fetch_assoc(mysqli_query($connection, $facultyQuery));
        $facultyFirstName = $facultyResult['First_Name'];
        $facultyLastName = $facultyResult['Last_Name'];
//        
            echo "<tr>";
       echo "<td>".$courseId."-".$courseTitle."</td>";
        echo "<td>";
        
        foreach($courseDaysArray as $days){
                echo $days." ";
            }
        
        echo "</td>";
        echo "<td>".$startTime."-".$endTime."</td>";
        echo "<td>".$buildingName." ".$roomNumber."</td>";
        echo "<td>".$facultyFirstName." ".$facultyLastName."</td>";
        echo "<td>".$courseCredits."</td>";

      echo "</tr>";     
}
}
          ?>
    
        
      </tbody>
    </table><br><br><hr>
  </div>
