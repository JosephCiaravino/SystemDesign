<?php

$facultyId = $_SESSION['id'];

$studentIdQuery = "SELECT `student_id` FROM advisor WHERE advisor.faculty_id = '".$facultyId."';";

$studentAdviseeIds = mysqli_query($connection, $studentIdQuery);
$studentIdArray = array();
while ($studentIdList = mysqli_fetch_assoc($studentAdviseeIds)){
    array_push($studentIdArray, $studentIdList['student_id']);
}     
?>
<div class = 'container'>
<table class="table-striped col-12 table-bordered">
  <thead>
    <th>Name</th>
    <th>SID</th>
    <th>Credits</th>
    <th>Major</th>
    <th>Transcript</th>
    <th>Degree Audit</th>
  </thead>

  <tbody>
<?php
foreach($studentIdArray as $studentId){
    //get full name
    $nameQuery = "SELECT `First_Name`, `Last_Name` FROM user WHERE user.User_Id = '".$studentId."';";
    $fullName = mysqli_fetch_assoc(mysqli_query($connection, $nameQuery));
    //get student type
    $studentTypeQuery = "SELECT `student_type` FROM student WHERE student.student_id = '".$studentId."';";
    $studentType =mysqli_fetch_assoc(mysqli_query($connection, $studentTypeQuery));
    //get major/program title
    if($studentType['student_type'] == 'undergrad'){
        $majorQuery = "SELECT major_title FROM major, student_major WHERE student_major.student_id = '".$studentId."'";
        $majorQuery.= " AND major.major_id = student_major.major_id;";
        $major = mysqli_fetch_assoc(mysqli_query($connection, $majorQuery));
        $major = $major['major_title'];
        
    }else{
        $gradProgQuery = "SELECT grad_program_title FROM grad_program, grad_registration ";
        $gradProgQuery.="WHERE grad_registration.student_id ='".$studentId."'";
        $gradProgQuery.="AND grad_program.grad_program_id= grad_registration.grad_program_id;";
        $major = mysqli_fetch_assoc(mysqli_query($connection, $gradProgQuery));
        $major = $major['grad_program_title'];
    }
                                    
    //get credits
    $creditsQuery = "SELECT credits from student_history,courses WHERE student_history.student_id = '".$studentId."' ";
    $creditsQuery.= "AND courses.course_id= student_history.course_id;";
    $totalCredits = 0;
    $creditReturnQuery = mysqli_query($connection, $creditsQuery);
    while ($creditsList = mysqli_fetch_assoc($creditReturnQuery)){
        $totalCredits+=$creditsList['credits'];
    } 
    echo "<tr>";
    echo "<td>".$fullName['Last_Name'].", ".$fullName['First_Name']."</td>";
    echo "<td>".transform_userId($studentId)."</td>";
    echo "<td>".$totalCredits."</td>";
    echo "<td>".$major."</td>";
    echo "<td><a href = '_facultyViewAdviseeTranscript.php?stuid=".$studentId."' target = '_self'>View Transcript</a></td>";
    echo "<td><a href = '#' target = '_blank'>View Degree Audit</a></td>";
    echo "</tr>";
    
}
      ?>

  </tbody>
</table>
</div>
  