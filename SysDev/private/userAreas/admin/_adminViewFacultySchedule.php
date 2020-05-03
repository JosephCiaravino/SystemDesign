<?php

 // $globalSemesterIDLookup
// $globalAllTimeSlotsLookup
// $globalCourseIDLookup\


if( !empty($_POST['submitFacQuery']) && $_POST['submitFacQuery'] != "" && !empty($_POST['queryFacSched']) ){    

    $queryFactultySchedule = "SELECT * FROM epiz_25399161_testdb.section WHERE faculty_id = ";
    $queryFactultySchedule.= $_POST['queryFacSched']." ORDER BY semester_id DESC;";

    $facSchedResource = mysqli_query($connection, $queryFactultySchedule);
    //echo $queryFactultySchedule."<br />FACULTY SELECTED <br />".print_r($facSchedResource);

    $facultyId=$_POST['queryFacSched'];

    $facultyNameQuery = "SELECT First_Name, Last_Name, User_Id, Role FROM epiz_25399161_testdb.user WHERE User_Id = ";
    $facultyNameQuery.= $_POST['queryFacSched'].";";
    $facultyNameRes = mysqli_query($connection, $facultyNameQuery);
    //echo $facultyNameQuery;
    $facNameSet = mysqli_fetch_assoc($facultyNameRes);
    $role = $facNameSet['Role'];
    $uid = $facNameSet['User_Id'];
    
}else if(!empty($_POST['submitStuQuery']) && $_POST['submitStuQuery']!="" && !empty($_POST['queryStuSched']) ){
    $queryStudentSchedule = "SELECT section_id, student_id FROM epiz_25399161_testdb.class_registration WHERE student_id = ";
    $queryStudentSchedule.= $_POST['queryStuSched'].";";

    $stuSchedResource = mysqli_query($connection, $queryStudentSchedule);
    
    $studentId=$_POST['queryStuSched'];

    $studentNameQuery = "SELECT First_Name, Last_Name,User_Id, Role FROM epiz_25399161_testdb.user WHERE User_Id = ";
    $studentNameQuery.= $_POST['queryStuSched'].";";
    $studentNameRes = mysqli_query($connection, $studentNameQuery);
    //echo $facultyNameQuery;
    $stuNameSet = mysqli_fetch_assoc($studentNameRes);
    $role = $stuNameSet['Role'];
    $uid = $stuNameSet['User_Id'];

}



?>

<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
    <!--Security hole.  Don't use PHP_Self-->
    <legend>View Current Faculty Schedule</legend>
    <div class = 'form-group'> 

          <label class="col-form-label" for="queryFacSched">Faculty ID</label>
         <select  class="form-control" id="queryFacSched" name = 'queryFacSched'> 
          <?php
                foreach ($departmentArray as $depid => $depname) {
                    
                    echo "<optgroup label = '".$depname."'>";
                    
                    foreach ($facultyNumsArray as $id => $deptid) {
                        if($deptid == $depid)
                        echo "<option value='".$id."'>".$facultyNamesArray[$id]." -- (User ID#: ".$id.")</option>";
                        
                    }
                    echo "</optgroup>";
                }

            ?>
         </select >

          <button class="btn btn-primary" name = "submitFacQuery" value = "submitFacQuery">
            Query Faculty Schedule
            </button>
    </div>

    <legend>View Current Student Schedule</legend>
    <div class = 'form-group'> 
          <label class="col-form-label" for="queryStuSched">Student ID</label>
          <input type="number" class="form-control" name = "queryStuSched" id="queryStuSched">

          <button class="btn btn-primary" name = "submitStuQuery" value = "submitStuQuery">
            Query Faculty Schedule
            </button>
    </div>
</form>
<?php
    if(!empty($facNameSet) ){
        echo "<h3 class ='col-10'>Viewing schedule of ".$role."<br />".$facNameSet['Last_Name'].", ".$facNameSet['First_Name']." - User ID#: ".$uid."</h3>";
    }else if(!empty($stuNameSet) ){
        echo "<h3 class ='col-10'>";
        echo "<a href = '_adminDegreeAudit.php?uid =".$uid."'"."target = '_blank'>Viewing schedule of ".$role."<br />".$stuNameSet['Last_Name'].", ".$stuNameSet['First_Name']." - User ID:".$uid;
        echo "</a></h3>";
    }


?>

<table class ='table-striped col-12 table-bordered'>
    <thead>
        <th>Section</th>
        <th>Term</th>
        <th>Faculty ID</th>
        <th>Course ID</th>
        <th>Course Title</th>
        <th>Location</th>
        <th>Days</th>
        <th>Time</th>
    </thead>

    <tbody>
        <?php

        if(!empty($facSchedResource) ){
            while($facSchedResourceRow = mysqli_fetch_assoc($facSchedResource)){
                echo "<tr>";
                echo "<td>".$facSchedResourceRow['section_id']."</td>";

                $section_id = $facSchedResourceRow['section_id'];
                $queryGetTimeSlotFromSec = "SELECT time_slot_id FROM section WHERE section_id = ".$section_id.";";
                $theID = mysqli_fetch_assoc(mysqli_query($connection, $queryGetTimeSlotFromSec));


                 $timeSlotId = $theID['time_slot_id'];


                 $timePeriodQuery = "SELECT start_time, end_time FROM time_slot_period, time_period WHERE ";
                 $timePeriodQuery.="time_slot_period.time_slot_id='".$timeSlotId."' AND ";
                 $timePeriodQuery.="time_slot_period.time_period_id = time_period.time_period_id;";
                 $timePeriods = mysqli_fetch_assoc(mysqli_query($connection, $timePeriodQuery));
                
                 $startTime = $timePeriods['start_time'];
                 $endTime = $timePeriods['end_time'];

                 echo "<td>".$globalSemesterIDLookupRef[ $facSchedResourceRow['semester_id'] ]."</td>";
                 echo "<td>".transform_userID($facSchedResourceRow['faculty_id'])."</td>";
                 echo "<td>".$facSchedResourceRow['course_id']."</td>";
                 echo "<td>".$globalCourseIDLookup[ $facSchedResourceRow['course_id'] ]."</td>";
                 echo "<td>".$globalBuildingsIDLookup[ $facSchedResourceRow['room_id'] ]."</td>";
                
                 echo "<td>".$courseDaysLookup[ $facSchedResourceRow['time_slot_id']]."</td>";
                 echo "<td>". $startTime."-".$endTime."</td>";
                 echo "</tr>";

            }


    }else if(!empty($stuSchedResource)){
        while($stuSchedResourceRow = mysqli_fetch_assoc($stuSchedResource)){
            //echo print_r($stuSchedResourceRow);
               
            echo "<tr>";
            echo "<td>".$stuSchedResourceRow['section_id']."</td>";

            $section_id = $stuSchedResourceRow['section_id'];
            $queryGetInfoFromSec = "SELECT * FROM section WHERE section_id = ".$section_id.";";
            $studentSectionRes = mysqli_query($connection, $queryGetInfoFromSec);
            while($sectionResourceRow = mysqli_fetch_assoc($studentSectionRes)){
                
                $section_id = $sectionResourceRow['section_id'];
                $queryGetTimeSlotFromSec = "SELECT time_slot_id FROM section WHERE section_id = ".$section_id.";";
                $theID = mysqli_fetch_assoc(mysqli_query($connection, $queryGetTimeSlotFromSec));


                 $timeSlotId = $theID['time_slot_id'];


                 $timePeriodQuery = "SELECT start_time, end_time FROM time_slot_period, time_period WHERE ";
                 $timePeriodQuery.="time_slot_period.time_slot_id='".$timeSlotId."' AND ";
                 $timePeriodQuery.="time_slot_period.time_period_id = time_period.time_period_id;";
                 $timePeriods = mysqli_fetch_assoc(mysqli_query($connection, $timePeriodQuery));
                
                 $startTime = $timePeriods['start_time'];
                 $endTime = $timePeriods['end_time'];

                echo "<td>".$globalSemesterIDLookup[ $sectionResourceRow['semester_id'] ]."</td>";
                echo "<td>".transform_userID($sectionResourceRow['faculty_id'])."</td>";
                echo "<td>".$sectionResourceRow['course_id']."</td>";
                echo "<td>".$globalCourseIDLookup[ $sectionResourceRow['course_id'] ]."</td>";
                echo "<td>".$globalBuildingsIDLookup[ $sectionResourceRow['room_id'] ]."</td>";
                echo "<td>".$courseDaysLookup[ $sectionResourceRow['time_slot_id']]."</td>";
                echo "<td>". $startTime."-".$endTime."</td>";
                 echo "</tr>";
            }


        }
    }

        ?>
        

    </tbody>

</table>



<!--========================================-->

























