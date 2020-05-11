<?php
session_regenerate_id(TRUE);

$pageType = "faculty";
require_once "../../_includes/private_docHead.php";

/***********************************************************************************/
include_once "../../_includes/private_testing_div.php";
/***********************************************************************************/

require_once "../../_includes/private_masthead.php";
require_once "../../_includes/private_navBar.php";

//this code prevents visitor from directly accessing private areas
require_once "../../_includes/functionalityScripts/pageRestrictionScript.php";



$queryFacultyHistory = "SELECT * FROM epiz_25399161_testdb.faculty_history WHERE faculty_Id = ";
$queryFacultyHistory.= $_GET['id_']." ORDER BY semester_id;";



$facultyHistoryResource = mysqli_query($connection, $queryFacultyHistory);




?>
<div class = 'container'><br/>
    <table class = 'col-12'>
        <thead>
            <tr class = bg-light>
                <th>Course ID</th>
                <th>Course Taught</th>
                <th>Semester Taught</th>
            </tr>

        </thead>

        <tbody>

                <?php
                while($histResRow = mysqli_fetch_assoc($facultyHistoryResource)){
                    echo "<tr>";
                    echo "<td>".$histResRow['course_id']."</td>";
                    echo "<td>".$globalCourseIDLookup[$histResRow['course_id']]."</td>";
                    echo "<td>".$globalSemesterIDLookup[$histResRow['semester_id']]."</td>";
                    echo "</tr>";
                }

                ?>


        </tbody>


    </table>

</div>












<?php
require_once '../../_includes/private_footer.php';
require_once '../../_includes/private_requiredScripts.php';
   session_regenerate_id(TRUE); 
?>
