<?php 




	function db_connect(){
		$connection = mysqli_connect('localhost','webUser','secretPass','testdb');
		return $connection;
	}



	function db_disconnect($connection){
		if(isset($connection))
		mysqli_colse($connection);
	}





 ?>