<h2 class = 'col-4'>Add User</h2>


<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF']; ?>" method = "POST">
	<label for="usertype">User Type</label>
    <select class="form-control" id="usertype">
	  <option value="student">Student</option>
	  <option value="faculty">faculty</option>
	  <option value="admin">admin</option>
	  <option value="researcher">researcher</option>
	</select>

	
	<div class="form-group">
	  <label class="col-form-label" for="fname">First Name</label>
	  <input type="text" class="form-control" id="fname">
	
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
	
	  <label class="col-form-label" for="email">State</label>
	  <input type="text" class="form-control" id="state">
	
	  <label class="col-form-label" for="zip">Zip</label>
	  <input type="text" class="form-control" id="zip">
	</div>

	<div id = "studentSpecific">
		<hr>		
		<fieldset>
			  <legend>Student Type</legend>
			  <div class="form-group">
			    <div class="custom-control custom-radio">
			      <input type="radio" id="undergraduate" name="grad-under" value = 'undergrad' class="custom-control-input" checked="">
			      <label class="custom-control-label" for="undergraduate">Undergraduate</label>
			    </div>
			    <div class="custom-control custom-radio">
			      <input type="radio" id="graduate" name="grad-under" value = 'grad' class="custom-control-input">
			      <label class="custom-control-label" for="graduate">Graduate</label>
			    </div>
			   </div>
		</fieldset>

		<fieldset>
		     <legend>Enrollment Type</legend>
			  <div class="form-group">
			    <div class="custom-control custom-radio">
			      <input type="radio" id="fulltime" name="enrollment" class="custom-control-input"  value = "ft"checked="">
			      <label class="custom-control-label" for="fulltime">Full time</label>
			    </div>
			    <div class="custom-control custom-radio">
			      <input type="radio" id="parttime" name="enrollment" class="custom-control-input" value = "pt">
			      <label class="custom-control-label" for="parttime">Part time</label>
			    </div>
			  </div>
		 </fieldset>
	</div><br /><!--End Student SPecific-->

	<button class="btn btn-primary" name = "submitNewUser" value = "submitNewUser">Add This User</button>

</form>




