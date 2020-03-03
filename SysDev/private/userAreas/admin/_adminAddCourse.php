

<h2 class = 'col-4'>Add Course</h2>


<form class = 'col-6' action ="" method = "POST">
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

	
	<div class="form-group">
	  <label class="col-form-label" for="newcourse">New Course Name</label>
	  <input type="text" class="form-control" id="newcourse">
	
	  <label class="col-form-label" for="lname">Last Name</label>
	  <input type="text" class="form-control" id="lname">
	
	  <label class="col-form-label" for="phone">Phone (10 digits, no spaces or hyphens)</label>
	  <input type="text" class="form-control" id="phone">
	
	  <label class="col-form-label" for="email">Email</label>
	  <input type="text" class="form-control" id="email">
	
	  <label class="col-form-label" for="street">Street Address</label>
	  <input type="text" class="form-control" id="street">
	
	  <label class="col-form-label" for="city">City</label>
	  <input type="text" class="form-control" id="city">
	
	  <label class="col-form-label" for="email">Email</label>
	  <input type="text" class="form-control" id="email">
	
	  <label class="col-form-label" for="zip">Zip</label>
	  <input type="text" class="form-control" id="zip">
	</div>

	<div id = "studentSpecific">
		<hr><legend>Select Student User Options</legend>	
		<fieldset>
			<legend>Full or Part</legend>
			<div class="custom-control custom-radio">
		      <input type="radio" id="fulltime" name="partFul" class="custom-control-input">
		      <label class="custom-control-label" for="fulltime">Full Time</label>
		    </div>

		    <div class="custom-control custom-radio">
		      <input type="radio" id="parttime" name="partFul" class="custom-control-input">
		      <label class="custom-control-label" for="parttime">Part Time</label>
		    </div>
		</fieldset>

		<fieldset>
		<legend>Level</legend>
			<div class="custom-control custom-radio">
		      <input type="radio" id="grad" name="gradlevel" class="custom-control-input">
		      <label class="custom-control-label" for="grad">Graduate</label>
		    </div>

		    <div class="custom-control custom-radio">
		      <input type="radio" id="undergrad" name="gradlevel" class="custom-control-input">
		      <label class="custom-control-label" for="undergrad">Undergrad</label>
		    </div>
		</fieldset>

	</div><br /><!--End Student SPecific-->

	<button class = "nonRefresh" name = "submit" value = "submitNewCourse">Add This User</button>

</form>