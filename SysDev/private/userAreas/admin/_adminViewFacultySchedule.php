<?php

 // $globalSemesterIDLookup
// $globalAllTimeSlotsLookup
// $globalCourseIDLookup
if( !empty($_POST['submitFacQuery']) && $_POST['submitFacQuery'] != "" && !empty($_POST['queryFacSched']) ){    

    $queryFactultySchedule = "SELECT * FROM epiz_25399161_testdb.section WHERE faculty_id = ";
    $queryFactultySchedule.= $_POST['queryFacSched']." ORDER BY semester_id DESC;";

    $facSchedResource = mysqli_query($connection, $queryFactultySchedule);
    echo $queryFactultySchedule."<br />FACULTY SELECTED <br />".print_r($facSchedResource);

    

}else if(!empty($_POST['submitStuQuery']) && $_POST['submitStuQuery']!="" && !empty($_POST['queryStuSched']) ){
    echo "STUDENT SELECTED";

}



?>

<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
    <!--Security hole.  Don't use PHP_Self-->
    <legend>View Faculty Schedule</legend>
    <div class = 'form-group'> 
          <label class="col-form-label" for="queryFacSched">Faculty ID</label>
          <input type="text" class="form-control" name = "queryFacSched" id="queryFacSched">

          <button class="btn btn-primary" name = "submitFacQuery" value = "submitFacQuery">
            Query Faculty Schedule
            </button>
    </div>

    <legend>View Student Schedule</legend>
    <div class = 'form-group'> 
          <label class="col-form-label" for="queryStuSched">Student ID</label>
          <input type="text" class="form-control" name = "queryStuSched" id="queryStuSched">

          <button class="btn btn-primary" name = "submitStuQuery" value = "submitStuQuery">
            Query Faculty Schedule
            </button>
    </div>
</form>


<table class ='table-striped col-12 table-bordered'>
    <thead>
        <th>Section</th>
        <th>Term</th>
        <th>Faculty ID</th>
        <th>Course ID</th>
        <th>Course Title</th>
        <th>Location</th>
        <th>Time</th>
    </thead>

    <tbody>
        <?php
        while($facSchedResourceRow = mysqli_fetch_assoc($facSchedResource)){
            echo "<tr>";
            echo "<td>".$facSchedResourceRow['section_id']."</td>";
            echo "<td>".$globalSemesterIDLookup[ $facSchedResourceRow['semester_id'] ]."</td>";
            echo "<td>".transform_userID($facSchedResourceRow['faculty_id'])."</td>";
            echo "<td>".$facSchedResourceRow['course_id']."</td>";
            echo "<td>".$globalCourseIDLookup[ $facSchedResourceRow['course_id'] ]."</td>";
            echo "<td>".$globalBuildingsIDLookup[ $facSchedResourceRow['room_id'] ]."</td>";
            echo "<td>".$globalAllTimeSlots[ $facSchedResourceRow['time_slot_id'] ]."</td>";
            echo "</tr>";

        }




        ?>
        

    </tbody>

</table>



























