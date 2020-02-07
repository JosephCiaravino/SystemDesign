


<?php
$currentURL = $_SERVER['REQUEST_URI']; 

?>

<!--
  The if-else statements can be less verbose, but this is much clearer to see what the php is doing.  If you find a way to condense it, please do, but this is working for now.

  <a class = 'nav-link' href = 'index.php'>Home</a>
-->

  <nav class = " container navbar bg-light">
      <ul class = "nav nav-pills">

          <li class = "nav-item" >
            <?php
              if( strpos($currentURL,"index")>0 ){
                echo "<a class = 'nav-link active' href = 'index.php'>Home</a>";
              }else{
                echo "<a class = 'nav-link' href = 'index.php'>Home</a>";
              }
            ?>
          </li>

          <li class = "nav-item">
            <?php
              if(strpos($currentURL,"academics")>0){
                echo "<a class = 'nav-link active' href = 'academics.php'>Academics</a>";
              }else{
                echo "<a class = 'nav-link' href = 'academics.php'>Academics</a>";
              }
            ?>
          </li>

          <li class = "nav-item">
            <?php
              if(strpos($currentURL,"campusLife")>0){
                echo "<a class = 'nav-link active' href = 'campusLife.php'>CampusLife</a>";
              }else{
                echo "<a class = 'nav-link' href = 'campusLife.php'>CampusLife</a>";
              }
            ?>
          </li>

          <li class = "nav-item">
            <?php
              if(strpos($currentURL,"admissions")>0){
                echo "<a class = 'nav-link active' href = 'admissions.php'>Admissions</a>";
              }else{
                echo "<a class = 'nav-link' href = 'admissions.php'>Admissions</a>";
              }
            ?>
          </li>
          
          <li class = "nav-item">
            <?php
              if(strpos($currentURL,"administration")>0){
                echo "<a class = 'nav-link active' href = 'administration.php'>Administration</a>";
              }else{
                echo "<a class = 'nav-link' href = 'administration.php'>Administration</a>";
              }
            ?>
          </li>

          <li class = "nav-item">
            <?php
              if(strpos($currentURL,"history")>0){
                echo "<a class = 'nav-link active' href = 'history.php'>History</a>";
              }else{
                echo "<a class = 'nav-link' href = 'history.php'>History</a>";
              }
            ?>
          </li>


          <li class = "nav-item">
            <?php
              if(strpos($currentURL,"contact")>0){
                echo "<a class = 'nav-link active' href = 'contact.php'>Contact Us</a>";
              }else{
                echo "<a class = 'nav-link' href = 'contact.php'>Contact Us</a>";
              }
            ?>
          </li>

<!--Here the nav "login/out" button changes depending on url.  The log out href can be changed to another page.-->
          <li class = "nav-item">
            <?php
              if(strpos($currentURL,"login")>0){
                echo "<a class = 'nav-link active' href = 'login.php'>Login</a>";
              }else if(strpos($currentURL,"userAreas")>0){
                echo "<a class = 'nav-link' target = '_blank' href = '/SysDev/public/loggedOut.php'> Logout</a>";
              }else{
                echo "<a class = 'nav-link' href = 'login.php'>Login</a>";
              }
            ?>
          </li>

      </ul>
  </nav>





        