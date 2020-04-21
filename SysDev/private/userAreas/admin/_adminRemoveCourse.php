<?php
if(!empty($_POST['submitRmvCourse']) && $_POST['submitRmvCourse'] != ""){

	$rmvCourseQuery = "DELETE FROM epiz_25399161_testdb.courses WHERE `course_id` = '".$_POST['courseIdRmv']."';";

	mysqli_query($connection, $rmvCourseQuery);

	echo $rmvCourseQuery;
}

?>
<h2 class = 'col-4'>Remove Course</h2>

<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<div class = 'form-group'>	
		
		  <label class="col-form-label" for="courseIdRmv">Course ID To Remove</label>
		  <input type="text" class="form-control" name = "courseIdRmv" id="courseIdRmv" required>
		
		
		<br /><!--End Student SPecific-->

		<button class="btn btn-primary" name = "submitRmvCourse" value = "submitRmvCourse">
		Remove This Course
		</button>

	</div>

</form>
          
          