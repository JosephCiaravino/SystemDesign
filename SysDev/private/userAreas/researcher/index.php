
<div style = "background-color: lightgreen; border: 2px solid green;">
  <p>Testing Purposes Delete For Deployment</p>
<?php
echo "CurrentURL: ". $currentURL;
//echo '<div><a href = "../../_includes">TestLink</a></div>'
?>
<!-- ************************************************************************ -->
</div>

<?php
require_once "../../_includes/functions.php";

require_once "../../_includes/private_docHead.php";

require_once "../../_includes/private_masthead.php";

require_once "../../_includes/private_navBar.php";

?>

<main class = "container">
    <h2>Your Tools</h2>
    <p></p>

    <ul class="nav nav-tabs">
        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#institution">
          <i class="far fas fa-university fa-3x "></i><br>Institution</a>
        </li>

        <li class="nav-item text-center">

          <a class="nav-link" data-toggle="tab" href="#gradStats">
          <i class="fas fa-graduation-cap fa-3x "></i><br>Graduation Stats</a>
        </li>

        <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#disciplinary">
          <i class="fas fa-balance-scale fa-3x"></i><br>Disciplinary </a>
        </li>

         <li class="nav-item text-center">
          <a class="nav-link" data-toggle="tab" href="#demographics">
          <i class="fas fa-chart-pie fa-3x"></i></i><br>Demographics</a>
        </li>

     </ul>    
    <!--
      TABLES IN THIS SECTION ARE CURRENTLY HARD-CODED TO SERVE A PLACE HOLDERS.  
      WE ARE FREE TO RE-DRAW as we pease using PHP
    -->
    <div id="myTabContent" class="tab-content container">

      <div class="tab-pane fade active show" id="institution"><hr>
        <div class = "row">
        <h2>Institution-Wide Stats</h2>
          
        </div><!--END .row-->
      </div><!--END .tab-pane-->

      <div class="tab-pane fade" id="gradStats"><hr>
        <div class = "row">
        <h2>View Graduation Stats</h2>
    
        </div>
      </div>

      <div class = "tab-pane fade" id = "disciplinary"><hr>
        <div class = "row">
        <h2>View Disciplinary Stats</h2>

        </div>
      </div>
    

      <div class = "tab-pane fade" id = "demographics"><hr>
        <div class = "row">
        <h2>View Demographics</h2>

        </div>
      </div>

      
    </div><!--Close My Tab Content-->
</main>

<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
    
?>
