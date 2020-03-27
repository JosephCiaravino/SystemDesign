<?php
if( !empty($_POST['submitCoursesByDept']) && !empty($_POST['facultyDept_Id']) ){
	$deptIdSelectedPublic = $_POST['facultyDept_Id'];

	$QueryPublicViewCourses = "SELECT * FROM epiz_25399161_testdb.courses WHERE dept_id =".$deptIdSelectedPublic.";";

	$publicDeptQueryTableRes = mysqli_query($connection, $QueryPublicViewCourses);
     
  
        
       



}
/*


<table style="width:100%">
  <tr>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Age</th>
  </tr>
  <tr>
    <td>Jill</td>
    <td>Smith</td>
    <td>50</td>
  </tr>
  <tr>
    <td>Eve</td>
    <td>Jackson</td>
    <td>94</td>
  </tr>
</table>


[course_id] => BU3502 
[dept_id] => 16 
[course_title] => Principles of Accounting I 
[course_desc] => Introduction to financial accounting with focus on how financial statements are structured and used by propri-etorships and corporations. Topics: double entry, accrual accounting, service vs. merchandise companies, cash, accounts receivable and payable, inventories, fixed assets and depreciation methods, and net earnings. 
[credits] => 3 ) 
*/
?>

