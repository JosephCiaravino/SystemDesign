<?php
//[crsDrop] => 467 [submitDropCrs] => submitDropCrs )
//DELETE FROM table_name WHERE condition;
if(!empty($_POST['submitDropCrs']) && !empty($_POST['crsDrop'])){

//get the semester ID in order to find the midterm date to limit droping.
  $queryCourseID = "SELECT semester_id FROM epiz_25399161_testdb.section WHERE section_id = ";
  $queryCourseID.= $_POST['crsDrop'].";";
  $semID = mysqli_fetch_assoc(mysqli_query($connection, $queryCourseID));
  $semID = $semID['semester_id'];
   
 //get midterm date for this course ID
 $queryCrsMidterm = "SELECT `semester_midterm` FROM epiz_25399161_testdb.semester WHERE ";
 $queryCrsMidterm.= "`semester_id` = ".$semID.";";
 $semMidterm = mysqli_fetch_assoc(mysqli_query($connection, $queryCrsMidterm));
 $semMidterm = $semMidterm['semester_midterm'];

 echo print_r($semMidterm);  

  if(true){ //-=-=-=-=-=-=-=-=-=-=-=-=   date("Y-m-d") < $semMidterm
    $queryCrsDrop = "DELETE FROM epiz_25399161_testdb.class_registration WHERE `section_id`=";
    $queryCrsDrop.= $_POST['crsDrop']." AND `student_id`=".$_SESSION['id'].";";
    echo $queryCrsDrop; 
    mysqli_query($connection, $queryCrsDrop);
  }
}

?>

<!--CURRENT SCHEDULE DISPLAY-->
<form class = 'row' action = '<?php echo $_SERVER['PHP_SELF']?>' method = 'POST'>
  <h2 class = col-12> Select Classes to drop:</h2>
  <h3 class = "alert"><?php echo $globalSemesterIDLookup[1];?> Schedule</h3>
    <table class="table-striped col-12 table-bordered">
      <thead>
        <tr class ="table-primary">
          <th class = 'col-4'>Course Title</th>
          <th class = 'col-1'>Meeting Days</th>
          <th class = 'col-1'>Meeting Time</th>
          <th class = 'col-2'>Location</th>
          <th class = 'col-2'>Instructor</th>
          <th class = 'col-1'>Credits</th>
          <th class = 'col-1'>Drop</th>
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

      
      if($semesterId == $currentSemesterID){
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
         echo "<td><strong>".$courseId."</strong>-".$courseTitle."</td>";
          echo "<td>";
          
          foreach($courseDaysArray as $days){
                  echo $days." ";
              }
          
          echo "</td>";
          echo "<td>".$startTime."-".$endTime."</td>";
          echo "<td>".$buildingName."<br />Room: ".$roomNumber."</td>";
          echo "<td>".$facultyFirstName." ".$facultyLastName."</td>";
          echo "<td>".$courseCredits."</td>";
          echo "<td> <input type='radio' name = 'crsDrop' value = '".$sectionId."'></td>";
          
          echo "</tr>";          
          ?> 

    <?php
              }
      
  }
          ?>
              </tbody>
    </table><br><br><hr>
  </div >

  <!--NEXT SEMESTER SCHEDULE TABLE DISPLAY-->  
    <div class = 'row form-group'>
      <h3 class = "alert"><?php echo $globalSemesterIDLookup[0];?> Schedule</h3>
      <table class="table-striped col-12 table-bordered">
        <thead>
          <tr class ="table-primary">
            <th class = 'col-3'>Course Title</th>
            <th class = 'col-2'>Meeting Days</th>
            <th class = 'col-2'>Meeting Time</th>
            <th class = 'col-2'>Instructor</th>
            <th class = 'col-1'>Credits</th>
            <th class = 'col-1'>Drop</th>
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
         echo "<td><strong>".$courseId."</strong>-".$courseTitle."</td>";
          echo "<td>";
          
          foreach($courseDaysArray as $days){
                  echo $days." ";
              }
          
          echo "</td>";
          echo "<td>".$startTime."-".$endTime."</td>";
          echo "<td>".$buildingName."<br /> Room: ".$roomNumber."</td>";
          echo "<td>".$facultyFirstName." ".$facultyLastName."</td>";
          echo "<td>".$courseCredits."</td>";
          echo "<td> <input type='radio' name = 'crsDrop' value = '".$sectionId."'></td>";

        echo "</tr>";     
    }
  }
            ?>
      
          
        </tbody>
      </table><br><br><hr>

      <button type = 'submit' class="btn btn-primary col-12" name = "submitDropCrs" value = "submitDropCrs" style = 'margin-top: 50px;'>Drop Selected Class</button>
  </form>