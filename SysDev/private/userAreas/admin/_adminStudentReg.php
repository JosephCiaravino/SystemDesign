<?php

if(!empty($_POST['submitRegStu']) && $_POST['submitRegStu']!="" ){

	$adminRegisterStuQuery = "INSERT INTO epiz_25399161_testdb.class_registration(student_id, section_id) VALUES(";
	$adminRegisterStuQuery.= $_POST['student_id']." , ".$_POST['section_id_reg'].");";

	mysqli_query($connection, $adminRegisterStuQuery);

echo $adminRegisterStuQuery;

}
 

?>

<h2>Register A Student</h2>

<form class = 'col-10' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	
	<div class="form-group">
	  

	  <label class="col-form-label" for="section_id_reg">Section ID</label>
	  <input type="text" class="form-control" id="section_id_reg" name = 'section_id_reg' required>

	  <label class="col-form-label" for="student_id">Student's ID</label>
	  <input type="text" class="form-control" id="student_id" name = 'student_id' required>

	  
		<br>


	<button class="btn btn-primary" name = "submitRegStu" value = "submitRegStu">Register This Student</button>

</form>