<?php

$populateDropDownDeptQuery = "SELECT `dept_name`, `dept_id` FROM epiz_25399161_testdb.department ORDER BY dept_name;";
$results = mysqli_query($connection, $populateDropDownDeptQuery);

$deptRet ="";  
$queryPgrmOrMjr = "";
$preReqArray = array();
$queryAddNewPrgrm = "Test";

	if( !empty($_POST['submitAddRmvProgram']) && $_POST['submitAddRmvProgram'] == "submitAddRmvProgram" && $_POST['addOrRemove']=="add" ){
		//INSERT INTO table_name VALUES (value1, value2, value3, ...);
		//INSERT INTO table_name (column1, column2, column3, ...)VALUES (value1, value2, value3, ...);

		if($_POST['radioAddRmvStudy'] == "grad_program"){
			$queryAddNewPrgrm = "INSERT INTO epiz_25399161_testdb.grad_program (`dept_id`, `grad_program_title`) VALUES('";
			$queryAddNewPrgrm.= $_POST['crsDept']."', '".$_POST['prgmNameToAdd']."');";
			


		}else if($_POST['radioAddRmvStudy'] == "major"){
			$queryAddNewPrgrm = "INSERT INTO epiz_25399161_testdb.major (`dept_id`, `major_title`) VALUES('";
			$queryAddNewPrgrm.= $_POST['crsDept']."', '".$_POST['prgmNameToAdd']."');";
			
			


		}else if($_POST['radioAddRmvStudy'] == "minor"){
			$queryAddNewPrgrm = "INSERT INTO epiz_25399161_testdb.minor (`dept_id`, `minor_title`) VALUES('";
			$queryAddNewPrgrm.= $_POST['crsDept']."', '".$_POST['prgmNameToAdd']."');";
			
		}
//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		//breaks the string a comma to make array
		$requirements = explode("," , $_POST['requirements'] );

		foreach ($requirements as $item) {
		  $insertRequirements = "INSERT INTO epiz_25399161_testdb.";

		}
		
//=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=

		echo $queryAddNewPrgrm;
		echo print_r($requirements);

	}else if(!empty($_POST['submitAddRmvProgram']) && $_POST['addOrRemove']=="remove"){
		//DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
		$queryPgrmOrMjr1 = "DELETE FROM";
		$queryPgrmOrMjr2 = "DELETE FROM";
		$queryPgrmOrMjr3 = "DELETE FROM";
		$queryPgrmOrMjr4 = "DELETE FROM";

	}


?>

<h2>Add or Remove Programs Of Study</h2>

<div class = "col-1"></div>
<form class = 'col-9' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	
	<div class = 'form-group'>
		<label for ="addOrRemoveProgram"> </label>
		<select id = "addOrRemoveProgram" class = 'form-control' name = "addOrRemove">
			<option value = 'add'>ADD Program Of Study</option>
			<option value = 'remove'>REMOVE Program Of Study</option>
		</select>
	</div>
		<br>
		<div class = 'form-group'>	
			<legend>Type Of Program</legend>
			<div class="custom-control custom-radio">
		      <input type="radio" id="radioAddRmvGradPgrm" name="radioAddRmvStudy" value = "grad_program" class="custom-control-input">
		      <label class="custom-control-label" for="radioAddRmvGradPgrm">Graduate Program</label>
		    </div>   

		    <div class="custom-control custom-radio">
		      <input type="radio" id="radioAddRmvUndergradMajor" name="radioAddRmvStudy" value = "major" class="custom-control-input">
		      <label class="custom-control-label" for="radioAddRmvUndergradMajor">Undergraduate Major</label>
		    </div>

		    <div class="custom-control custom-radio">
		      <input type="radio" id="radioAddRmvUndergradMinor" name="radioAddRmvStudy" value = "minor" class="custom-control-input">
		      <label class="custom-control-label" for="radioAddRmvUndergradMinor">Undergraduate Minor</label>
		    </div>
			<br />
			<div class = "toggleAddRmv1">
				<label for="courseDept">Department</label>
			    <select class="form-control t" id="courseDept" name = "crsDept">
				    <?php //this code populates the dropdown from the DB
					    while( $deptRet = mysqli_fetch_assoc($results) ){
					      echo "<option value = '".$deptRet['dept_id']."'>".$deptRet['dept_name']."</option>";
					    }
				    ?>
				</select><br />
			
				<label class="col-form-label" for="toAddName">Program Name</label>
		  		<input type="text" class="form-control" name = "prgmNameToAdd" placeholder="Example: Lunar Studies" id="toAddName">
		  	
				<label class="col-form-label" for="requirements">Program Prerequisites (**IMPROVE IF TIME ALLOWS**)</label>
		  		<input type="text" class="form-control" name = "requirements" placeholder="Example: AD1234, ED3456, MA987"  id="requirements">
		  	</div>

			<div class = 'toggleAddRmv2'>
				<label class="col-form-label" for="toRemoveID">Program ID To Remove</label>
		  		<input type="text" class="form-control" name = "prgmIdToRemove" placeholder="Example: AD1234" id="toRemoveID">
		  	</div>
		</div>

		
	
	
	<button class="btn btn-primary" id = "changeBtn" name = "submitAddRmvProgram" value = "submitAddRmvProgram">
		<span>Add This Program</span>
	</button><br/>

</form>



