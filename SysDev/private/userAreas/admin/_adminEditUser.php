<?php



?>
<h2 class = 'row col-10'>Edit A User</h2>
<br>

<form class = 'row col-10' action ="" method = "POST">
	
<legend>User Type To Edit</legend>
	  <div  class="form-group" id = "adminUpdateUser">
	    <div id = 'editStuRadio' class="customEditSelector custom-radio">
	      <input type="radio" id="adminEditStudent" name="userTypeToEdit" class="custom-control-input"  value = "adminEditStudent" checked >
	      <label class="custom-control-label" for="adminEditStudent">Student</label>
	    </div>

	    <div id = 'editFacRadio' class="customEditSelector custom-radio">
	      <input type="radio" id="adminEditFaculty" name="userTypeToEdit" class="custom-control-input" value = "adminEditFaculty" >
	      <label class="custom-control-label" for="adminEditFaculty">Faculty</label>
	    </div>

	    <div id = 'editOtherRadio' class="customEditSelector custom-radio">
	      <input type="radio" id="adminEditOther" name="userTypeToEdit" class="custom-control-input" value = "adminEditOther" >
	      <label class="custom-control-label" for="adminEditOther">Other</label>
	    </div>
	  </div>

	    <label class="col-form-label" for="user-ID">User ID</label>
  		<input type="text" class="form-control" placeholder="User's ID" id="user-ID">
	  
<!--
<legend>Student Type</legend>	
<div class="form-group">
	<div class="custom-control custom-radio">
      <input type="radio" id="adminEditGradStudent" name="adminEditStudentLevel" class="custom-control-input"  value = "adminEditGradStudent" checked >
      <label class="custom-control-label" for="adminEditGradStudent">Graduate Student</label>
    </div>

    <div class="custom-control custom-radio">
      <input type="radio" id="adminEditUnderGrad" name="adminEditStudentLevel" class="custom-control-input" value = "adminEditUnderGrad" >
      <label class="custom-control-label" for="adminEditUnderGrad">Undergraduate Student</label>
    </div>

</div>
-->
<legend>Details</legend>
<div class = 'form-group'>

	<label class="col-form-label gradeChangeField text-danger hideIt hideIt-grade" for="gradeEdit">Change Grade</label>
	  <select type="text" class="form-control gradeChangeField text-danger hideIt hideIt-grade" name = "gradeEdit" id="gradeEditAdmin" >
	  		<option>A</option>
	  		<option>A-</option>
	  		<option>B+</option>
	  		<option>B</option>
	  		<option>B-</option>
	  		<option>C+</option>
	  		<option>C</option>
	  		<option>C-</option>
	  		<option>D+</option>
	  		<option>D-</option>
	  		<option>F</option>
	  </select>

	  <label class="col-form-label gradeChangeField text-danger hideIt hideIt-dept" for="gradeEdit">Change Department</label>
	  <select type="text" class="form-control gradeChangeField text-danger hideIt hideIt-dept" name = "gradeEdit" id="deptEditAdmin" >
	   <?php //this code populates the dropdown from the DB
                $publicDeptQuery = "SELECT * FROM epiz_25399161_testdb.department ORDER BY dept_name;";
                $publicDeptResult = mysqli_query($connection, $publicDeptQuery);
                  
                  while( $publicDeptQueryResults = mysqli_fetch_assoc($publicDeptResult) ){
                    
                    echo "<option value = '".$publicDeptQueryResults['dept_id']."'>".$publicDeptQueryResults['dept_name']."</option>";
                  }
              ?>
       </select>

	<label class="col-form-label" for="lastNameEdit">Last Name</label>
	  <input type="text" class="form-control" name = "lastNameEdit" id="lastNameEdit" >

	  <label class="col-form-label" for="firstNameEdit">First Name</label>
	  <input type="text" class="form-control" name = "firstNameEdit" id="firstNameEdit" >

	 <label class="col-form-label" for="emailEdit">Email</label>
	  <input type="text" class="form-control" name = "emailEdit" id="emailEdit" >

	  <label class="col-form-label" for="phoneEdit">Phone</label>
	  <input type="text" class="form-control" name = "teleEdit" id="phoneEdit" >

	  <label class="col-form-label" for="pwordEdit">Password</label>
	  <input type="text" class="form-control" name = "pwordEdit" id="pwordEdit" >
	
	  <label class="col-form-label" for="streetEdit">Street Address</label>
	  <input type="text" class="form-control" name = "streetEdit" id="streetEdit" >
	
	  <label class="col-form-label" for="cityEdit">City</label>
	  <input type="text" class="form-control" name = "cityEdit" id="cityEdit" >
	
	  <label class="col-form-label" for="emailEdit">State</label>
	  <input type="text" class="form-control" name = "stateEdit" id="stateEdit" >

	  <label class="col-form-label" for="zipEdit">Zip</label>
	  <input type="text" class="form-control" name = "zipEdit" id="zipEdit" >

	  
</div>


<br />


<button class="btn btn-primary" name = "submit" value = "submitEditUser">Submit Changes To User</button>

</form>
