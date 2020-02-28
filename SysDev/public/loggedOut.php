<?php
  unset($_SESSION);
  //THIS LINE imports all lines in HTML <head> element.
  require_once '_includes/documentHead.php';
  
  //These lines import masthead and navigation sections
  require_once "_includes/masthead.php";
  require_once "_includes/mainNavigation.php";
?>


  <div id = "mainPage" class = "container">
    

    <div class = "row">
      <aside class = "col-3">
          <?php include "_includes/quickLinksAside.php";?>
      </aside>

      <main class ="col-9">
        <h2>Logged Out</h2>
        <p>You are logged out.  Thank you.</p>
      </main> 

    </div>
  </div>

  <?php
    require '_includes/footer.php';
    require_once '_includes/requiredScripts.php'
  ?>

</html>
