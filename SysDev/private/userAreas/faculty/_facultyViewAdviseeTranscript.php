<?php
session_regenerate_id(TRUE);
echo print_r($_SESSION);
$pageType = "faculty";
require_once "../../_includes/private_docHead.php";

/***********************************************************************************/
include_once "../../_includes/private_testing_div.php";
/***********************************************************************************/

require_once "../../_includes/private_masthead.php";
require_once "../../_includes/private_navBar.php";

//this code prevents visitor from directly accessing private areas
require_once "../../_includes/functionalityScripts/pageRestrictionScript.php";
?>

<?php
$facultyId=$_SESSION['id'];
$studentId=$_GET['stuid'];

$studentInformationQuery = "SELECT First_Name, Last_Name FROM user WHERE user.User_Id='".$studentId."';";
$studentInformationReturn = mysqli_fetch_assoc(mysqli_query($connection, $studentInformationQuery));
$studentFirstName = $studentInformationReturn['First_Name'];
$studentLastName = $studentInformationReturn['Last_Name'];
echo "<div class = 'container'>";
echo "<h2>".$studentFirstName." ".$studentLastName."'s Transcript</h2>";

?>

  <h4>Semester 1</h4>
  <table class="table-striped col-12 table-bordered">
    <thead>
      <tr>
        <th>Course Title</th>
        <th>Course Code</th>
        <th>Meeting Days</th>
        <th>Meeting Time</th>
        <th>Room</th>
        <th>Credits</th>
        <th>Term</th>
      </tr>
    </thead>
    <tbody>

      </tbody>
</table>
</div>
<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
   session_regenerate_id(TRUE); 
?>