<?php

$studentId = $_SESSION['id'];

$checkHolds;
$prereqsArray = array(); 
$maxCred;
$minCred;
$nextSemCred=0;
$currentCredSemTotal=0;
$stuPrereqs = array();
$hasPre=True;
$credDif;


$holdsQuery = "SELECT COUNT(hold_type) AS holdCount FROM epiz_25399161_testdb.student_holds WHERE ";
$holdsQuery.= "student_id = ".$studentId.";";
$checkHolds = mysqli_fetch_assoc( mysqli_query($connection,$holdsQuery) )['holdCount'] ;

$queryCoursesTaken = "SELECT `course_id` FROM epiz_25399161_testdb.student_history WHERE ";
$queryCoursesTaken.= "student_id =".$studentId.";";

$coursesTakenResource = mysqli_query($connection,$queryCoursesTaken);
//echo print_r($coursesTakenResource);
while( $theRow = mysqli_fetch_assoc($coursesTakenResource) ){
  array_push($prereqsArray, $theRow['course_id']);
}

$queryTimeType="SELECT * FROM epiz_25399161_testdb.undergrad_full WHERE student_id =".$studentId.";";
 $q1resource = mysqli_query($connection,$queryTimeType);
$queryTimeType2="SELECT * FROM epiz_25399161_testdb.undergrad_part WHERE student_id =".$studentId.";";
 $q2resource = mysqli_query($connection,$queryTimeType2);
$queryTimeType3="SELECT * FROM epiz_25399161_testdb.grad_full WHERE student_id =".$studentId.";";
 $q3resource =mysqli_query($connection,$queryTimeType3);
$queryTimeType4="SELECT * FROM epiz_25399161_testdb.grad_part WHERE student_id =".$studentId.";";
 $q4resource =mysqli_query($connection,$queryTimeType4);

//get max and min credits for the student type
if($q1resource->num_rows > 0){                      //ug-full
    $credAssoc = mysqli_fetch_assoc($q1resource);
    $maxCred = $credAssoc['max_credits'];
    $minCred = $credAssoc['min_credits'];
}else if($q2resource->num_rows > 0){                //ug-part
    $credAssoc = mysqli_fetch_assoc($q2resource);
    $maxCred = $credAssoc['max_credits'];
    $minCred = 0;
}else if($q3resource->num_rows > 0){                //grad-full
    $credAssoc = mysqli_fetch_assoc($q3resource);
    $maxCred = $credAssoc['max_credits'];
    $minCred = $credAssoc['min_credits'];
}else if($q4resource->num_rows > 0){                //grad-part
    $credAssoc = mysqli_fetch_assoc($q4resource);
    $maxCred = $credAssoc['max_credits'];
    $minCred = 0;
}

//echo "Max CREDITS: ".$maxCred;
// to get actual credits taken
$allCurrentSections = array();
$querySectionsEnrolled = "SELECT `section_id` FROM epiz_25399161_testdb.class_registration WHERE ";
$querySectionsEnrolled.= "student_id = ".$studentId.";";
$enrolledResource = mysqli_query($connection, $querySectionsEnrolled);

while($secRows = mysqli_fetch_assoc($enrolledResource)){
    array_push($allCurrentSections, $secRows['section_id']);
    
}

$nowSections = array();
$nextSections = array();


//echo print_r($currentSections);
//populates for next semester
$allCurrentCourses = array();
foreach($allCurrentSections as $item){
    $queryCourses ="SELECT * FROM epiz_25399161_testdb.section WHERE ";
    $queryCourses.="`section_id`=".$item." AND semester_id = 9;";
    $crns = mysqli_query($connection, $queryCourses);
    array_push($allCurrentCourses, mysqli_fetch_assoc($crns)['course_id']);
    
}

$nextSemCourses = array();
    
foreach($allCurrentCourses as $crs){
    $queryCredits = "SELECT `credits` FROM epiz_25399161_testdb.courses WHERE ";
    $queryCredits.= "course_id='".$crs."';";
    $credResource = mysqli_query($connection, $queryCredits);
    
    $currentCredSemTotal += (int)mysqli_fetch_assoc($credResource)['credits'] ;
}
    
$credDif = $maxCred-$currentCredSemTotal;


//get student's history of courses with passing grades
    $queryPreHist = "SELECT `course_id` FROM epiz_25399161_testdb.student_history ";
    $queryPreHist.= "WHERE student_id = ".$studentId." AND `grade`!='F' AND `grade`!='D' AND `grade`!='D+' AND `grade`!='D-' AND `grade`!='C-';";
    $stuHistResource = mysqli_query($connection, $queryPreHist);
    while($stuHistRow = mysqli_fetch_assoc($stuHistResource)){   
        array_push($stuPrereqs, $stuHistRow['course_id']); 
        echo print_r($stuPrereqs)."<br />";
    }
    


    if($checkHolds>0){
        echo "<div class = 'col-12 bg-primary'><p class = 'text-light'>ALERT:<br />You currently have holds on your account. Contact an administrator. To View holds please view your personal data page.</p></div>";
    }
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



<div class = ''>

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
            <th>Sec. ID</th>
            <th>CR</th>
            <th>Pre</th>
            <th>Semester</th>
            <th>Instructor</th>
            <th>Days</th>
            <th>Times</th>
            <th>Tally</th>
            <th>Max.</th>
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

          
//echo "ALL SECTIONS: ".print_r($allSections[0]);
        foreach ($allSections as $key => $value) {
            if($value['semester_id']==9){
                $tallyQuery = "SELECT COUNT(section_id) FROM class_registration WHERE section_id ='".$value['section_id']."';";
                $rowResource = mysqli_query($connection, $tallyQuery);
                $tally = mysqli_fetch_assoc($rowResource);
                $tally = $tally['COUNT(section_id)'];

                //get credits for each to display
                $queryCreds = "SELECT `credits` FROM epiz_25399161_testdb.courses WHERE ";
                $queryCreds.= "course_id='".$value['course_id']."';";
                $dispCreds =  mysqli_fetch_assoc(mysqli_query($connection,$queryCreds))['credits'] ;

                //get prereqs for the course
                $course = $value['course_id'];
                $queryPrerequisites = "SELECT `prereq_course_id` FROM epiz_25399161_testdb.prereq WHERE ";
                $queryPrerequisites.= "course_id ='".$course."';";
                $dispPre = "";  
                $prereqResource = mysqli_query($connection, $queryPrerequisites);
                $prereqsArray = array();
                $hasPre = true;
                while($myrow = mysqli_fetch_assoc($prereqResource)){ 
                    $dispPre.=$myrow['prereq_course_id']."<br />";   
                    array_push($prereqsArray,$myrow['prereq_course_id']);
                }
                
                foreach($prereqsArray as $item){
                    
                    if(in_array($item,$stuPrereqs)){
                        $hasPre = true;
                    }else{
                        $hasPre = false;
                        break;
                    }
                    
                }
                
                
                
                
                if($tally>=$value['capacity'] || $dispCreds>$credDif)
                  echo "<tr class = 'table-warning'>";
                else
                  echo "<tr>";

                echo "<td><strong>".$value['course_id']."</strong>-".$globalCourseIDLookup[$value['course_id']]."</td>";
                echo "<td>".$value['section_id']."</td>";
                echo "<td>".$dispCreds."</td>";
                
                if($hasPre){
                    echo "<td>".$dispPre."</td>";
                }else{
                    echo "<td class = 'text-danger'>".$dispPre."</td>";
                }
                
                echo "<td>".$globalSemesterIDLookupRef[$value['semester_id']]."</td>";
                //echo "<td>".$globalSemesterIDLookupRef[$value['semester_id']]."</td>";
                echo "<td>".$globalAdvisorIDLookup[$value['faculty_id']]."</td>";
                echo "<td>".$courseDaysLookup[$value['time_slot_id']]."</td>";
                echo "<td>".$globalAllTimeSlots[$globalTimeRelationLookup[$value['time_slot_id']]]."</td>";
                echo "<td >".$tally."</td>";
                echo "<td>".$value['capacity']."</td>";

                
            
                if( $checkHolds>0){
                  echo "<td>H!</td>";
                }
                else if($tally>=$value['capacity']){
                  echo "<td>C!</td>";
                }
                else if($dispCreds>$credDif){
                    echo "<td>N!</td>";
                }
                
                else if($hasPre==false){
                    echo "<td>P!</td>";
                }
                else{
                    echo "<td><input type = 'radio' name= 'secID' value = '".$value['section_id']."'></td>";
                }
                    echo "</tr>";
            }
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