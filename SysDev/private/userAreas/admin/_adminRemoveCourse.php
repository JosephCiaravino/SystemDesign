
<h2 class = 'col-4'>Remove Course</h2>

<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<div class = 'form-group'>	
		
		  <label class="col-form-label" for="newcoursename">Course ID To Remove</label>
		  <input type="text" class="form-control" name = "course_title" id="newcoursename">
		
		
		<br /><!--End Student SPecific-->

		<button class="btn btn-primary" name = "submitRmvCourse" value = "submitRmvCourse">Remove This Course</button>
	</div>

</form>
          
          