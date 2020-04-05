<?php
//UPDATE table_name
//SET column1 = value1, column2 = value2, ...
//WHERE condition;

if( !empty($_POST['submitUpdatePwd']) && $_POST['userIdPwdEdit']!="" ){
	$updatePwdQuery = "UPDATE epiz_25399161_testdb.user SET `Password` = '".$_POST['newPass']."' ";
	$updatePwdQuery.= "WHERE `User_Id`='".$_POST['userIdPwdEdit']."';";
	echo $updatePwdQuery;
	mysqli_query($connection, $updatePwdQuery);
}



?>

<h2>Reset User Password</h2>

<form class = 'col-6' action ="<?php echo $_SERVER['PHP_SELF'] ?>" method = "POST">
	<div class = 'form-group'>	
		
		  <label class="col-form-label" for="userIdPwdEdit">Enter ID of User To Edit Password</label>
		  <input type="text" class="form-control" name = "userIdPwdEdit" id="userPwdEdit">


		<label class="col-form-label" for="newPass">Enter New Password</label>
		  <input type="text" class="form-control" name = "newPass" id="newPass">
		
		<br /><!--End Student SPecific-->

		<button class="btn btn-primary" name = "submitUpdatePwd" value = "submitUpdatePwd">Update User Password</button>
	</div>

</form>