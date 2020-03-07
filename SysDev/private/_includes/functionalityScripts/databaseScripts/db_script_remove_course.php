<?php
echo "<div class='col-12 alert alert-dismissible alert-success'>COURSE DELETED</div>";
    //DELETE FROM table_name WHERE condition;
      $queryRmvCourse = "DELETE FROM testdb.courses WHERE course_id = '". $_POST['courseIdRmv']."';";

      echo $queryRmvCourse;

      mysqli_query($connection, $queryRmvCourse);

      unset($_POST['courseIdRmv']);

      header('Location: '.$_SERVER['PHP_SELF']);

?>