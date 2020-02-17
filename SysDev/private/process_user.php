<?php

if( !isset( $_POST['loginIdentity'] ) ){
	header("Location: login.php");
}else if( !isset( $_POST['password'] )){
	header("Location: login.php");
}else if(false){

}else{

}

var_dump($_POST);

?>