<?php

    $queryAcademicHistory = "SELECT * FROM epiz_25399161_testdb.student_history WHERE `student_id` = ";
    $queryAcademicHistory.= $_SESSION['id']." ORDER BY `semester_id` DESC;";
    $queryAcademicHistoryResults = mysqli_query($connection, $queryAcademicHistory);

    //here we make new arrays based on semester
    $thisStudentSemesterIDs = array();
     


?>

 <div>
  <h2>Your Course History</h2>
  <br>
  <h3 class = 'col-12 bg-secondary'>Over All Current GPA: <?php echo $myGPA; ?></h3>
</div><br>

<?php
      echo "<table class = 'table table-hover'>";
      //echo "<th class = 'table-primary'><span>Spring 2019</span> - Term GPA: <span>_PHP_</span></th>";
      echo "</tr>";
      echo "<tr class ='table-primary'>";
      echo "<th>Course Title</th>";
      echo "<th>Course Code</th>";
      echo "<th>Final Grade</th>";
      echo "<th>Term</th>";
      echo "</tr>";
      echo "</thead>";
      echo "<tbody>";
      
    while( $academicHistRow = mysqli_fetch_assoc($queryAcademicHistoryResults) ){
      if(strpos($globalSemesterIDLookup[ $academicHistRow['semester_id'] ], 'Spring') !== false)
        echo "<tr>";
      else
        echo "<tr class = 'table-secondary'>";
      echo "<td>".$globalCourseIDLookup[ $academicHistRow['course_id'] ]."</td>";
      echo "<td>".$academicHistRow['course_id']."</td>";
      echo "<td>".$academicHistRow['grade']."</td>";
      echo "<td>".$globalSemesterIDLookup[ $academicHistRow['semester_id'] ]."</td>";
      echo "</tr>";


 
  }
  
?>
</tbody>
  </table><br><br>