<?php

  //THIS LINE imports all lines in HTML <head> element.
  require_once '_includes/documentHead.php';
  
  //These lines import masthead and navigation sections
  require_once "_includes/masthead.php";
  require_once "_includes/mainNavigation.php";
?>


  <div id = "mainPage" class = "container">
    

    <div class = "row">
      <aside class = "col-3">
          <br>
          <h4>Main Phone</h4>
          <p><a href="tel:249-555-3456">249-555-3456</a></p>
          <h4>Main Email</h4>
          <p><a href = "mailto:anyone@weuniversity.edu">anyone@weuniversity.edu</a></p>
          <h4>Main Postal Address</h4>
          <addres>
            Witherspoon Eastern University<br>1234 Somewhere St<br> Witherspoon, NY 12345<br>U.S.A.
          </address>
          <hr>

          <?php
            include "_includes/quickLinksAside.php";
          ?>

      </aside>

      <main class ="col-9">
        <h2>We'd Love to Hear From You!</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>

        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

        <h3>Visit Us</h3> <!--In line style ok here-->
        <div id="mapGoogleEmbeded">
          <iframe class = "justify-content-lg-center" src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d10026.756032330122!2d-73.57839792492584!3d40.794343796063174!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x89c286b9d1a30b3b%3A0x57c0cda29c90ff7c!2sold%20westbury%20college!3m2!1d40.799302499999996!2d-73.5739715!5e0!3m2!1sen!2sus!4v1580490629325!5m2!1sen!2sus" width="600" height="450" frameborder="0" s allowfullscreen="" ></iframe>
        </div>

        <h3>Campus Map</h3>
        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </main> 

      

    </div>
  </div>

  <?php
    require '_includes/footer.php';
    require_once '_includes/requiredScripts.php'
  ?>

</html>
