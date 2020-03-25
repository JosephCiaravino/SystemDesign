<?php


if( !empty($_POST['submitNewCourse']) && !empty($_POST['course_title']) 
	&& !empty($_POST['course_code']) && !empty($_POST['course_desc']) ){

	echo "<div class='col-12 alert alert-dismissible alert-success'>NEW COURSE CREATED</div>";
	$queryAddCourse = "INSERT INTO testdb.courses VALUES('";
	$queryAddCourse .=$_POST['course_code']."', '".$_POST['crsDept'];
	$queryAddCourse .= "','".$_POST['course_title']."', '";
	$queryAddCourse .= htmlspecialchars($_POST['course_desc'])."', '".$_POST['crsCreds']."');";
	mysqli_query($connection, $queryAddCourse);

	echo $queryAddCourse;
}


//header("location: ".$_SERVER[PHP_SELF]);

?>