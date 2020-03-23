<?php

// so far this doesn't check for duplicates in current table
// so far this doesn't check to see if the student ID entered is actually in the system at all

echo "<div class='col-12 alert alert-dismissible alert-success'>NEW HOLD PLACED</div>";

if(!empty($_POST['submitPlaceHold']) && !empty($_POST['userToHold'])){

	$queryAddHolds = "INSERT INTO testdb.student_holds ";
	$queryAddHolds .="VALUES (".$_POST['userToHold'].", ";
	if(!empty($_POST['disciplinary'])){
		$queryAddHolds .="'".$_POST['disciplinary']."');";
		mysqli_query($connection, $queryAddHolds); 
		echo $queryAddHolds."<br />";
	}
	

	$queryAddHolds = "INSERT INTO testdb.student_holds ";
	$queryAddHolds .="VALUES (".$_POST['userToHold'].", ";
	if(!empty($_POST['medical'])){
		$queryAddHolds .="'".$_POST['medical']."');";
		mysqli_query($connection, $queryAddHolds);
		echo $queryAddHolds."<br />";
	}

	$queryAddHolds = "INSERT INTO testdb.student_holds ";
	$queryAddHolds .="VALUES (".$_POST['userToHold'].", ";
	if(!empty($_POST['academic'])){
		$queryAddHolds .="'".$_POST['academic']."');";
		mysqli_query($connection, $queryAddHolds);
		echo $queryAddHolds."<br />";
	}

	$queryAddHolds = "INSERT INTO testdb.student_holds ";
	$queryAddHolds .="VALUES (".$_POST['userToHold'].", ";
	if(!empty($_POST['financial'])){
		$queryAddHolds .="'".$_POST['financial']."');";
		mysqli_query($connection, $queryAddHolds);
		echo $queryAddHolds."<br />";
	}
}else if(!empty($_POST['submitRmvHold'])){
	echo "REMOVE HOLDS SELECTED";

	$queryAddHolds = "DELETE FROM testdb.student_holds WHERE `student_id`='".$_POST['userToUnhold']."'";
	$queryAddHolds .=" AND `hold_type` = '".$_POST['disciplinary']."'";
	mysqli_query($connection, $queryAddHolds);
	echo "<br />".$queryAddHolds;

	$queryAddHolds = "DELETE FROM testdb.student_holds WHERE `student_id`='".$_POST['userToUnhold']."'";
	$queryAddHolds .=" AND `hold_type` = '".$_POST['medical']."'";
	mysqli_query($connection, $queryAddHolds);
	echo "<br />".$queryAddHolds;

	$queryAddHolds = "DELETE FROM testdb.student_holds WHERE `student_id`='".$_POST['userToUnhold']."'";
	$queryAddHolds .=" AND `hold_type` = '".$_POST['academic']."'";
	mysqli_query($connection, $queryAddHolds);
	echo "<br />".$queryAddHolds;

	$queryAddHolds = "DELETE FROM testdb.student_holds WHERE `student_id`='".$_POST['userToUnhold']."'";
	$queryAddHolds .=" AND `hold_type` = '".$_POST['financial']."'";
	mysqli_query($connection, $queryAddHolds);
	echo "<br />".$queryAddHolds;

}

$queryAddHolds = "";
unset($_POST);
//reactivate this line below for deployment
header("location: ".$_SERVER['PHP_SELF']);











?>