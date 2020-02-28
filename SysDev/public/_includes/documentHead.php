
<!doctype html>

<?php
 require_once "../private/_includes/functionalityScripts/initialize.php";
 require_once "../private/_includes/functionalityScripts/functions.php";
  
?>

<html class="no-js" lang="">

<head>

  <meta charset="utf-8">

  <title>Witherspoon Eastern University</title>

  <meta name="description" content="Witherspoon University - place where the journey counts as much as the destination.">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">


  <!--Google Font CDN link-->
  <link href="https://fonts.googleapis.com/css?family=Oleo+Script&display=swap" rel="stylesheet">
  
  <!-- Place favicon.ico in the root directory -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

  <link rel="stylesheet" type = "text/css" href = "_css/bootstrapPulseTheme.css">

  <!--Custom Stylesheet link-->
  <link rel="stylesheet" type = "text/css" href = "_css/witherspoonCustom.css">  
</head>

<body style = "background-image: url(_images/campusImage.jpeg); background-attachment: fixed;" title = "https://unsplash.com/@rcjphoto">
  <!--[if IE]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
  <![endif]-->


<!--  FOR TESTING ONLY; DELETE FOR DEPLOYMENT -->
<?php 

  if($testing == true){ 
    
    echo '<div style = "background-color: lightgreen; min-height: 100px;"><p>CODE TESTING - DEVELOPMENT ONLY</p>';
     
     is_func_working();
    echo "<br>";
      is_init_working();
    echo '</div>';
  } 
?>













