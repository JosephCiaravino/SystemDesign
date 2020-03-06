<?php
echo "<div class='col-12 alert alert-dismissible alert-success'>CONDITIONS MET FOR SUBMITTING NEW DEPARTMENT</div>";
      $queryAddDept = "INSERT INTO ";
      $queryAddDept .="testdb.department ( `dept_name`, `dept_desc`, `faculty_chair_id`)";
      $queryAddDept .="VALUES (";
      $queryAddDept .="'".$_POST['newdeptname']."', '".$_POST['newdeptdesc']."', '".$_POST['newdeptchair']."');";

     
      //echo $queryAddDept;

      mysqli_query($connection, $queryAddDept);

      unset($_POST['newdeptname']);
      unset($_POST['newdeptdesc']);
      unset($_POST['newdeptchair']);

      echo var_dump($_POST);

      header("Location: ".$_SERVER['PHP_SELF']);

  ?>