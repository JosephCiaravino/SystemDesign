<h2>Place or Remove Hold</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>


<div class = "form-group col-5 bg-light">
	<form action = "<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
		<legend>Place Hold</legend>
		<label>User ID Number:</label><br /><br />
		<input class ="form-control" type="text" name="userToHold" type = "number"><br /><br />
		

		<div class = 'custom-control custom-checkbox'>
			<input type="checkbox"  id = "financialPlace" class = "custom-control-input" name="financial" value="Financial">
			<label for="financialPlace" class = "custom-control-label"> Financial Hold</label>
		</div>

		<div class = 'custom-control custom-checkbox'>
			<input type="checkbox"  id = "medicalPlace" class = "custom-control-input" name="medical" value="Medical">
			<label for="medicalPlace" class = "custom-control-label">Medical Hold</label>
		</div>

		<div class = 'custom-control custom-checkbox'>
			<input type="checkbox"  id = "disciplinaryPlace" class = "custom-control-input" name="disciplinary" value="Disciplinary">
			<label for="disciplinaryPlace" class = "custom-control-label">Disciplinary Hold</label>
		</div>

		<div class = 'custom-control custom-checkbox'>
			<input type="checkbox"  id = "academicPlace" class = "custom-control-input" name="academic" value="Academic">
			<label for="academicPlace" class = "custom-control-label">Academic Hold</label>
		</div><br />

		<button type = 'submit' name = "submitPlaceHold" value = "plcHold" class = "btn btn-primary">Place Hold(s)</button><br />
	</form>
</div>

<div class = "form-group col-2"></div>

<div class = "form-group col-5 bg-light">
	<form action = "<?php echo $_SERVER['PHP_SELF']; ?>" method="POST"> 
		<!--Bad security hole. Don't use php_self-->
		<legend>Remove Hold</legend>
		<label>User ID Number:</label><br />
		<input class ="form-control" type="text" name="userToUnhold" type = "number"><br /><br />
		<br />
	
		<div class = 'custom-control custom-checkbox'>
			<input type="checkbox"  id = "financialRmv" class = "custom-control-input" name="financial" value="financial">
			<label for="financialRmv" class = "custom-control-label">Financial Hold</label>
		</div>

		<div class = 'custom-control custom-checkbox'>
			<input type="checkbox"  id = "medicalRmv" class = "custom-control-input" name="medical" value="medical">
			<label for="medicalRmv" class = "custom-control-label">Medical Hold</label>
		</div>

		<div class = 'custom-control custom-checkbox'>
			<input type="checkbox"  id = "disciplinaryRmv" class = "custom-control-input" name="disciplinary" value="disciplinary">
			<label for="disciplinaryRmv" class = "custom-control-label">Disciplinary Hold</label>
		</div>

		<div class = 'custom-control custom-checkbox'>
			<input type="checkbox"  id = "academicRmv" class = "custom-control-input" name="academic" value="Academic">
			<label for="academicRmv" class = "custom-control-label">Academic Hold</label>
		</div><br />

		<button type = "submit" name = "submitRmvHold" value = "rmvHold" class = "btn btn-primary">Remove Hold(s)</button><br /><br />
	</form>	
</div>





