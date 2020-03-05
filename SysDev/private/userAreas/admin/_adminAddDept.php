<h2>Add Departments</h2>
<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF']; ?>" method = "POST">

	
	  <label class="col-form-label" for="newdeptname">New Deptartment Name</label>
	  <input type="text" class="form-control" name = "newdeptname" id="newdeptname">
	
	  <label class="col-form-label" for="newdeptdesc">New Department Description</label>
	  <input type="text" class="form-control" name = "newdeptdesc" id="newdeptdesc">
	
	  <label class="col-form-label" for="newdeptchair">New Department Chair ID</label>
	  <input type="text" class="form-control" name = "newdeptchair" id="newdeptchair">
	
	  

		
	<br /><!--End Student SPecific-->

	<button class="btn btn-primary" name = "submitNewDept" value = "submitNewDept">Add This Dept</button>

</form>




