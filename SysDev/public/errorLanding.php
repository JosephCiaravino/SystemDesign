<?php
  //**SECURITY RISK** THis LINE FOR PRODUCTION ONLY.  DISABLE FOR DEPLOYMENT **SECURITY RISK**
  require_once '../private/_includes/showErrors.php';

  //THIS LINE imports all lines in HTML <head> element.
  require_once '_includes/documentHead.php';

  //DISABLE FOR Deployment
  echo "php working.";
  echo "<a href = errorLanding.php>ERROR</a>";
  
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
       <h2>Something Went Wrong</h2>
       <p>We apologize for the error</p>

       <img title = "https://unsplash.com/@benwhitephotography" alt = "Error Message Photo of Gasping Boy" src = _images/boyErrorPageImage.jpeg class = img-fluid style = "border-radius: 50%; max-width: 80%;">


      </main> 

      

    </div>
  </div>

  <?php
    require_once '_includes/footer.php';
    require_once '_includes/requiredScripts.php'
  ?>

</html>
