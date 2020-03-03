<h2 class = 'col-4'>Edit User</h2>


<form class = 'col-6' action ="" method = "POST">
	
	<div class="form-group">
	  <label class="col-form-label" for="fname">First Name</label>
	  <input type="text" class="form-control" id="fname">
	
	  <label class="col-form-label" for="email">Email</label>
	  <input type="text" class="form-control" id="email">
	
	  <label class="col-form-label" for="zip">User ID</label>
	  <input type="text" class="form-control" id="userID">
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

	<button class = "nonRefresh" name = "submit" value = "submitEditUser">Add This User</button>

</form>