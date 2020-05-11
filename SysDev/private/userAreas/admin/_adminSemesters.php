<?php

if(!empty($_POST['newSem']) && $_POST['newSem'] != ""){
	$season = "";
	$fullDate = date($_POST['semStart']);

	$month = (int)substr($fullDate, 5,2);
	$year = (int)substr($fullDate, 0,4);
	if($month ==1){
		$season = 'Spring';
	}else if($month == 8 || $month == 9){
		$season = 'Fall';
	}

	$querySemesterAdd = "INSERT INTO epiz_25399161_testdb.semester(`semester_year`, `semester_term`, `semester_start`, `semester_finish`, `semester_midterm`, `semester_final`) ";
	$querySemesterAdd.= "VALUES('".$year."', '".$season."', '".$_POST['semStart']."', '".$_POST['semEnd']."', '".$_POST['midtermDate'];
	$querySemesterAdd.= "', '".$_POST['finalDate']."');";

	echo "<div class ='bg-success col-12'> New semester created.</div>";
	mysqli_query($connection, $querySemesterAdd);
	
}

?>
<form method= "POST" action = "<?php echo $_SERVER['PHP_SELF'] ?>" >
  <fieldset>
    <legend>Create New Semester</legend>
    <div class="form-group col-7 row">
		<label for="semStart">Semester Start:</label><br>
        <input type="date" id="semStart" name="semStart" required><br />

        <label for="semEnd">Semester End:</label><br>
        <input type="date" id="semEnd" name="semEnd" required><br />

        <label for="midtermDate">Midterm:</label><br>
        <input type="date" id="midtermDate" name="midtermDate" required><br />

        <label for="finalDate">Final:</label><br>
        <input type="date" id="finalDate" name="finalDate" required><br />
        <br/>
     </div>
    	<button class="btn btn-primary" name = "newSem" value = "newSem">Create New Semester</button>
    </fieldset>


 </form>