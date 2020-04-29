<?php
$studentId = $_SESSION['id'];

?>


<div class = 'row'>
  <h2 class = col-12> Current Schedules:</h2>
  <h3 class = "alert"><?php echo $globalSemesterIDLookup[1];?> Schedule</h3>
    <table class="table-striped col-12 table-bordered">
      <thead>
        <tr class ="table-primary">
          <td>Course Title</td>
          <td>Meeting Days</td>
          <td>Meeting Time</td>
          <td>Location</td>
          <td>Instructor</td>
          <td>Credits</td>
       
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
          
          
          echo "</tr>";          
          ?> 

    <?php
              }
      
  }
          ?>
              </tbody>
    </table><br><br><hr>
  </div >
  <!--NEXT SEMESTER SCHEDULE TABLE-->

    
    <div class = 'row'>
      <h3 class = "alert"><?php echo $globalSemesterIDLookup[0];?> Schedule</h3>
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
         

        echo "</tr>";     
    }
  }
            ?>
      
          
        </tbody>
      </table><br>
  </div>



<div class = 'container'>

    <form class = 'row  bg-secondary' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
    <legend>Search Classes To Add</legend>
    <br>
    <div class = 'form-group col-12'>  
      
      <br />
      <div class = "toggleAddRmv1">
        <label for="courseDept">Department</label>
          <select class="form-control t" id="courseDept" name = "crsDept" required>
            <?php //this code populates the dropdown from the DB
              while( $deptRet = mysqli_fetch_assoc($results) ){
                echo "<option value = '".$deptRet['dept_id']."'>".$deptRet['dept_name']."</option>";
              }
            ?>
        </select><br />
      </div>
  
    <button class="btn btn-primary" id = "searchReg" name = "submitSearch" value = "submitSearch">
      Search Courses
    </button>
  
      
    </div>
    

    <div class = 'bg-light' style =  'overflow-y: scroll; max-height: 400px; border: 2px solid black'>
      <table class = "table table-hover table-bordered ">
      <thead>
          <tr class = 'table-primary'>
            <th>Class Name</th>
            <th>Sec ID</th>
            <!-- <th>Course Code</th> -->
            <th>Semester</th>
            <th>Instructor</th>
            <th>Days</th>
            <th>Times</th>
            <th>Tally</th>
            <th>Reg</th>
          </tr>
      </thead>
        <tbody >
      
      <?php
        $allCourses = array();
        $allSections = array();
      if(!empty($_POST['submitSearch']) && !empty($_POST['crsDept']) ){
        $queryCourses = "SELECT course_id, credits FROM epiz_25399161_testdb.courses WHERE dept_id =".$_POST['crsDept'].";";
        
        $coursesRes = mysqli_query($connection, $queryCourses); 
        while($coursesResRow = mysqli_fetch_assoc($coursesRes)){
          array_push($allCourses, $coursesResRow['course_id']);
        }    
           
        foreach ($allCourses as $key => $value) {
          $querySection="SELECT * FROM epiz_25399161_testdb.section WHERE course_id = '".$value."';";
          $querySectionResource = mysqli_query($connection,$querySection);
          while($querySectionRow = mysqli_fetch_assoc($querySectionResource)){
            array_push($allSections, $querySectionRow);
          }
        }

//echo print_r($allSections[0]);
        foreach ($allSections as $value) {
            $tallyQuery = "SELECT COUNT(section_id) FROM class_registration WHERE section_id ='".$value['section_id']."';";
            $rowResource = mysqli_query($connection, $tallyQuery);
            $tally = mysqli_fetch_assoc($rowResource);
            $tally = $tally['COUNT(section_id)'];
            
            if($tally>=27)
              echo "<tr table-danger>";
            else
              echo "<tr>";

            echo "<td><strong>".$value['course_id']."</strong>-".$globalCourseIDLookup[$value['course_id']]."</td>";
            echo "<td>".$value['section_id']."</td>";
            //echo "<td>".$value['course_id']."</td>";
            echo "<td>".$globalSemesterIDLookupRef[$value['semester_id']]."</td>";
            echo "<td>".$globalAdvisorIDLookup[$value['faculty_id']]."</td>";
            echo "<td>".$courseDaysLookup[$value['time_slot_id']]."</td>";
            echo "<td>".$globalAllTimeSlots[$globalTimeRelationLookup[$value['time_slot_id']]]."</td>";
            echo "<td >".$tally."</td>";
            
            if($tally<=27)
              echo "<td><input type = 'radio' name= 'secID' value = '".$value['section_id']."'></td>";
            else
              echo "<td>-C-</td>";
            echo "</tr>";
          }  
      }elseif(!empty($_POST['submitReg']) && !empty($_POST['secID'])){  //insert registration nto table
        $registerStuQuery = "INSERT INTO epiz_25399161_testdb.class_registration VALUES('".$_POST['secID']."',".$studentId.",NULL,NULL);"; 
        echo $registerStuQuery;
          mysqli_query($connection, $registerStuQuery);



      }

      ?>

      </tbody>
    </table>
    </div> <br />

    <button class="btn btn-primary" id = "changeBtn" name = "submitReg" value = "submitReg">
        Add Selected Class
      </button><br/>
  </form>
</div>



<!--https://www.afterhoursprogramming.com/tutorial/sql/date-and-datetime/-->