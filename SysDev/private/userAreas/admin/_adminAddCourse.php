<h2 class = 'col-4'>Add Course</h2>


<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<div class = 'form-group'>	
		<label for="courseDept">User Type</label>
	    <select class="form-control" id="courseDept">
		  <option value="biology">Biology</option>
		  <option value="business">Business</option>
		  <option value="chemistry">Chemistry</option>
		  <option value="computersci">Computer Science</option>
		  <option value="english">English</option>
		  <option value="mathematics">mathematics</option>
		  <option value="physics">Physics</option>
		</select>

		  <label class="col-form-label" for="newcoursename">New Course Name</label>
		  <input type="text" class="form-control" name = "course_title" id="newcoursename">
		
		  <label class="col-form-label" for="newcoursedesc">Course Description</label>
		  <textarea type="textarea" class="form-control" name = "course_desc" id="newcoursedesc"></textarea>
		
		  <label for="creds">Credit-hours</label>
		  <select class="form-control" id="creds">
			  <option value="1">1 credit</option>
			  <option value="2">2 credits</option>
			  <option value="3">3 credits</option>
			  <option value="4">4 credits</option>
			  <option value="5">5 credits</option>
		   </select>

		<br /><!--End Student SPecific-->

		<button class="btn btn-primary" name = "submitNewCourse" value = "submitNewCourse">Add This Course</button>
	</div>

</form>