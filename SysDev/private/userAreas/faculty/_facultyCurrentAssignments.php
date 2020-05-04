<?php
$facultyId=$_SESSION['id'];
?>
  
  <h2>Your Current Schedule</h2>
  <table class="table-striped col-12 table-bordered">
    <thead>
      <tr>
        <th>Course Title</th>
        <th>Course Code</th>
        <th>Meeting Days</th>
        <th>Meeting Time</th>
        <th>Room</th>
        <th>Credits</th>
        <th>Term</th>
      </tr>
    </thead>
    <tbody>
     
<?php
    
        //current semester is 1, next semester is 9
  //To Get: course_title, course_id, time_slot_day, period (from time_slot_period), credits, semester
        $getCurrentSchedule = "SELECT section_id, course_id, room_id, time_slot_id FROM epiz_25399161_testdb.section WHERE section.faculty_id='".$facultyId."' AND section.semester_id='".$currentSemesterID."';";
        $currentCoursesTeaching = mysqli_query($connection, $getCurrentSchedule);
        $courseArray = array();
        $roomArray = array();
        $timeSlotArray = array();
        $sectionArray = array();
        while($currentlyTeachingList = mysqli_fetch_assoc($currentCoursesTeaching)){
            array_push($courseArray, $currentlyTeachingList['course_id']);
            array_push($roomArray, $currentlyTeachingList['room_id']);
            array_push($timeSlotArray, $currentlyTeachingList['time_slot_id']);
            array_push($sectionArray, $currentlyTeachingList['section_id']);
        }
        //foreach($sectionArray as $index => $sectionId){
        foreach($courseArray as $index => $courseId){
            //TO GET :semester
            $courseTitleQuery = "SELECT course_title, credits FROM epiz_25399161_testdb.courses WHERE courses.course_id = '".$courseId."';";
            $courseTitle = mysqli_fetch_assoc(mysqli_query($connection, $courseTitleQuery));
            $credits = $courseTitle['credits'];
            $courseTitle = $courseTitle['course_title'];
            
            $timeSlotDaysQuery = "SELECT * FROM time_slot_days WHERE time_slot_id='".$timeSlotArray[$index]."';";
            $timeSlotDays = mysqli_query($connection, $timeSlotDaysQuery);
            
            $courseDays = array();
            while($courseDaysGrabber = mysqli_fetch_assoc($timeSlotDays)){
                array_push($courseDays, $courseDaysGrabber['day_name']);
            }
            
            $timePeriodQuery = "SELECT start_time, end_time FROM time_slot_period, time_period WHERE ";
            $timePeriodQuery.="time_slot_period.time_slot_id='".$timeSlotArray[$index]."' AND ";
            $timePeriodQuery.="time_slot_period.time_period_id = time_period.time_period_id;";
            $timePeriods = mysqli_fetch_assoc(mysqli_query($connection, $timePeriodQuery));
            $startTime = $timePeriods['start_time'];
            $endTime = $timePeriods['end_time'];
            
            $semesterQuery = "SELECT semester_term, semester_year FROM epiz_25399161_testdb.semester WHERE semester.semester_id='".$currentSemesterID."';";
            $semesterInfo = mysqli_fetch_assoc(mysqli_query($connection, $semesterQuery));
            $semesterSeason = $semesterInfo['semester_term'];
            $semesterYear = $semesterInfo['semester_year'];
            
            $roomQuery = "SELECT building, room_number FROM rooms WHERE room_id = '".$roomArray[$index]."';";
            $roomReturn = mysqli_fetch_assoc(mysqli_query($connection, $roomQuery));
            $roomNum = $roomReturn['room_number'];
            $building = $roomReturn['building'];
            
            
            echo "<tr>";
            
            //<a href = '_facultyEditGrades.php?stuid=".$studentId."&secid=".$sectionId."' target = '_self'>Edit Grades</a>
            echo "<td><a href = '_facultyViewRostersUpdated.php?secid=".$sectionArray[$index]."' target= '_self'>$courseTitle</td>";
            echo "<td>".$courseId."</td>";
            echo "<td>";
            
            foreach($courseDays as $days){
                echo $days." ";
            }
            echo "</td>";
            echo "<td>".$startTime."-".$endTime."</td>";
            echo "<td>".$building." ".$roomNum."</td>";
            echo "<td>".$credits."</td>";
            echo "<td>".$semesterSeason." ".$semesterYear."</td>";
            echo "</tr>";             
        }
        
        
?>    
      
    </tbody>
  </table><br><br><hr>

<!--NEXT SEMESTER SCHEDULE TABLE-->



  <h2>Next Semester's Schedule</h2>
  <table class="table-striped col-12 table-bordered">
    <thead>
      <tr>
        <th>Course Title</th>
        <th>Course Code</th>
        <th>Meeting Days</th>
        <th>Meeting Time</th>
        <th>Room</th>
        <th>Credits</th>
        <th>Term</th>
      </tr>
    </thead>
    <tbody>
     
<?php
        $getNextSchedule = "SELECT course_id, room_id, time_slot_id FROM epiz_25399161_testdb.section WHERE section.faculty_id='".$facultyId."' AND section.semester_id='".$nextSemesterID."';";
        $nextCoursesTeaching = mysqli_query($connection, $getNextSchedule);
        $courseArray = array();
        $roomArray = array();
        $timeSlotArray = array();
        while($nextTeachingList = mysqli_fetch_assoc($nextCoursesTeaching)){
            array_push($courseArray, $nextTeachingList['course_id']);
            array_push($roomArray, $nextTeachingList['room_id']);
            array_push($timeSlotArray, $nextTeachingList['time_slot_id']);
        }
        //foreach($sectionArray as $index => $sectionId){
        foreach($courseArray as $index => $courseId){
            //TO GET :semester
            $courseTitleQuery = "SELECT course_title, credits FROM epiz_25399161_testdb.courses WHERE courses.course_id = '".$courseId."';";
            $courseTitle = mysqli_fetch_assoc(mysqli_query($connection, $courseTitleQuery));
            $credits = $courseTitle['credits'];
            $courseTitle = $courseTitle['course_title'];
            
            $timeSlotDaysQuery = "SELECT * FROM epiz_25399161_testdb.time_slot_days WHERE time_slot_id='".$timeSlotArray[$index]."';";
            $timeSlotDays = mysqli_query($connection, $timeSlotDaysQuery);
            
            $courseDays = array();
            while($courseDaysGrabber = mysqli_fetch_assoc($timeSlotDays)){
                array_push($courseDays, $courseDaysGrabber['day_name']);
            }
            
            $timePeriodQuery = "SELECT start_time, end_time FROM time_slot_period, time_period WHERE ";
            $timePeriodQuery.="time_slot_period.time_slot_id='".$timeSlotArray[$index]."' AND ";
            $timePeriodQuery.="time_slot_period.time_period_id = time_period.time_period_id;";
            $timePeriods = mysqli_fetch_assoc(mysqli_query($connection, $timePeriodQuery));
            $startTime = $timePeriods['start_time'];
            $endTime = $timePeriods['end_time'];
            
            $semesterQuery = "SELECT semester_term, semester_year FROM epiz_25399161_testdb.semester WHERE semester.semester_id='".$nextSemesterID."';";
            $semesterInfo = mysqli_fetch_assoc(mysqli_query($connection, $semesterQuery));
            $semesterSeason = $semesterInfo['semester_term'];
            $semesterYear = $semesterInfo['semester_year'];
            
            $roomQuery = "SELECT building, room_number FROM rooms WHERE room_id = '".$roomArray[$index]."';";
            $roomReturn = mysqli_fetch_assoc(mysqli_query($connection, $roomQuery));
            $roomNum = $roomReturn['room_number'];
            $building = $roomReturn['building'];
            
            
            echo "<tr>";
            echo "<td>".$courseTitle."</td>";
            echo "<td>".$courseId."</td>";
            echo "<td>";
            
            foreach($courseDays as $days){
                echo $days." ";
            }
            echo "</td>";
            echo "<td>".$startTime."-".$endTime."</td>";
            echo "<td>".$building." ".$roomNum."</td>";
            echo "<td>".$credits."</td>";
            echo "<td>".$semesterSeason." ".$semesterYear."</td>";
            echo "</tr>";             
        }
        
?>
      
    </tbody>
  </table><br><br>