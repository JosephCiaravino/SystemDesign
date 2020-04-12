<?php


if( !empty($_POST['submitNewCourse']) && !empty($_POST['course_title']) 
	&& !empty($_POST['course_code']) && !empty($_POST['course_desc']) ){

	$capturedCourseId = $_POST['course_code'];
	$prerequisitesNew = "";

	echo "<div class='col-12 alert alert-dismissible alert-success'>NEW COURSE CREATED</div>";
	$queryAddCourse = "INSERT INTO epiz_25399161_testdb.courses VALUES('";
	$queryAddCourse .=$_POST['course_code']."', '".$_POST['crsDept'];
	$queryAddCourse .= "','".$_POST['course_title']."', '";
	$queryAddCourse .= htmlspecialchars($_POST['course_desc'])."', '".$_POST['crsCreds']."');";
	mysqli_query($connection, $queryAddCourse);

	$prerequisitesNew = explode(", ", $_POST['newCoursePrereq']);
	
	foreach ($prerequisitesNew as $value) {
		$queryInsertPrereqs = "INSERT INTO epiz_25399161_testdb.prereq VALUES('";
		$queryInsertPrereqs.= $_POST['course_code']."', '".$value."');";
		mysqli_query($connection, $queryInsertPrereqs);
		
	}

	
}


//header("location: ".$_SERVER[PHP_SELF]);

?>