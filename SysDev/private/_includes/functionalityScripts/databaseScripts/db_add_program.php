<?php


	if( !empty($_POST['submitAddRmvProgram']) && $_POST['submitAddRmvProgram'] == "submitAddRmvProgram" && $_POST['addOrRemove']=="add" ){
		//INSERT INTO table_name VALUES (value1, value2, value3, ...);
		//INSERT INTO table_name (column1, column2, column3, ...)VALUES (value1, value2, value3, ...);

		if($_POST['radioAddRmvStudy'] == "grad_program"){
			$queryAddNewPrgrm = "INSERT INTO epiz_25399161_testdb.grad_program (`dept_id`, `grad_program_title`) VALUES('";
			$queryAddNewPrgrm.= $_POST['crsDept']."', '".$_POST['prgmNameToAdd']."');";
			
			//run queries here
			mysqli_query($connection, $queryAddNewPrgrm);
			//SELECT MAX(Price) AS LargestPriceFROM Products;
			$queryGetRecent = "SELECT MAX(grad_program_id) FROM epiz_25399161_testdb.grad_program";
			$addedPgrmId = mysqli_fetch_assoc(mysqli_query($connection, $queryGetRecent))['MAX(grad_program_id)'];
			
		}else if($_POST['radioAddRmvStudy'] == "major"){
			$queryAddNewPrgrm = "INSERT INTO epiz_25399161_testdb.major (`dept_id`, `major_title`) VALUES('";
			$queryAddNewPrgrm.= $_POST['crsDept']."', '".$_POST['prgmNameToAdd']."');";
				echo "<br />".$queryAddNewPrgrm;
			//run queries here
			mysqli_query($connection, $queryAddNewPrgrm);
			//SELECT MAX(Price) AS LargestPriceFROM Products;
			$queryGetRecent = "SELECT MAX(major_id) FROM epiz_25399161_testdb.major";
			$addedPgrmId = mysqli_fetch_assoc(mysqli_query($connection, $queryGetRecent))['MAX(major_id)'];
		


		}else if($_POST['radioAddRmvStudy'] == "minor"){
			$queryAddNewPrgrm = "INSERT INTO epiz_25399161_testdb.minor (`dept_id`, `minor_title`) VALUES('";
			$queryAddNewPrgrm.= $_POST['crsDept']."', '".$_POST['prgmNameToAdd']."');";
			
			//run queries here
			mysqli_query($connection, $queryAddNewPrgrm);
			//SELECT MAX(Price) AS LargestPriceFROM Products;
			$queryGetRecent = "SELECT MAX(minor_id) FROM epiz_25399161_testdb.minor";
			$addedPgrmId = mysqli_fetch_assoc(mysqli_query($connection, $queryGetRecent))['MAX(minor_id)'];
			
		}

		//breaks the string a comma to make array
		$requirements = explode(", " , $_POST['requirements'] );

		//dig for program ID after insertion
		foreach($requirements as $item) {

		  $insertRequirements = "INSERT INTO epiz_25399161_testdb.".$_POST['radioAddRmvStudy']."_requirements ";
		  $insertRequirements.= "VALUES(".$addedPgrmId.", '".$item."');" ;
		  
		  mysqli_query($connection, $insertRequirements);
		 

		}
		

	}else if(!empty($_POST['submitAddRmvProgram']) && $_POST['addOrRemove']=="remove"){
		//DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
		$queryRemoveProgram = "DELETE FROM epiz_25399161_testdb.".$_POST['radioAddRmvStudy']." ";
		$queryRemoveProgram .= "WHERE ".$_POST['radioAddRmvStudy']."_id = ".$_POST['prgmIdToRemove'].";";

		mysqli_query($connection, $queryRemoveProgram);
		echo $queryRemoveProgram."<br />";	

		$queryRemoveProgram = "DELETE FROM epiz_25399161_testdb.".$_POST['radioAddRmvStudy']."_requirements ";
		$queryRemoveProgram .= "WHERE ".$_POST['radioAddRmvStudy']."_id = ".$_POST['prgmIdToRemove'].";";
		mysqli_query($connection, $queryRemoveProgram);

		//echo $queryRemoveProgram."<br />";
	}


?>