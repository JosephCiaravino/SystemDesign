<h2 class = 'col-4'>Remove User</h2>


<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<div class = 'form-group'>	
		
		  <label class="col-form-label" for="rmvUser">Enter ID of User To Remove</label>
		  <input type="text" class="form-control" name = "userToRemove" id="rmvUser">
		
		
		<br /><!--End Student SPecific-->

		<button class="btn btn-primary" name = "submitRmvUser" value = "submitRmvUser">Remove this user</button>
	</div>

</form>