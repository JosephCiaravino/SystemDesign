<?php
echo "<div class='col-12 alert alert-dismissible alert-success'>USER DELETED</div>";

//remove from student-faculty-researcher-admin
//remove from user
//remove from holds
//remove from grad-undergrad-part-full
//remove major and minor

if(!empty($_POST['userToRemove'])){
	// remove from USER
	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.user WHERE User_Id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	//Remove from all user types
	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.student WHERE student_id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.faculty WHERE Faculty_Id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.researcher WHERE Researcher_Id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.admin WHERE Admin_Id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	//remove from all UG student tables
	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.undergrad_full WHERE student_id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.undergrad_part WHERE student_id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.undergrad_student WHERE student_id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	//remove from all Grad stables
	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.grad_full WHERE student_id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.grad_part WHERE student_id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.grad_student WHERE student_id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	//remove from holds
	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.student_holds WHERE student_id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	//remove from major
	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.student_major WHERE student_id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	//remove from holds
	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.student_minor WHERE student_id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

	//remove from holds
	$queryDeleteUsr = "DELETE FROM epiz_25399161_testdb.grad_program WHERE student_id = ".$_POST['userToRemove'].";";
	echo $queryDeleteUsr."<br>";
	mysqli_query($connection, $queryDeleteUsr);

}




//header("location: ".$_SERVER['PHP_SELF']);















?>