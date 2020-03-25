<?php

  //THIS LINE imports all lines in HTML <head> element.
  require_once '_includes/documentHead.php';

  
  //These lines import masthead and navigation sections
  require_once "_includes/masthead.php";
  require_once "_includes/mainNavigation.php";

  require_once "../private/_includes/functionalityScripts/databaseScripts/db_script_public_view_courses.php"; 
  

?>


  <div id = "mainPage" class = "container">
    

    <div class = "row">
      <aside class = "col-3">
          <?php include "_includes/quickLinksAside.php";?>
      </aside>

      <main class ="col-9">
        <h2>Main Content</h2>
        
        <p><span style = "color: blue">We can use PHP or AJAX to read all this from a database. </span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>

         <form action='' method = "post">
          <div class = 'form-group'>  
          <label for="publicDeptSelector">View Courses By Department</label>
            <select class="form-control" id="publicDeptSelector" name = "facultyDept_Id">
              <?php //this code populates the dropdown from the DB
                
                $publicDeptQuery = "SELECT `dept_name`, `dept_id` FROM testdb.department ORDER BY dept_name;";
                $publicDeptResult = mysqli_query($connection, $publicDeptQuery);
                  
                  while( $publicDeptQueryResults = mysqli_fetch_assoc($publicDeptResult) ){
                    
                    echo "<option value = '".$publicDeptQueryResults['dept_id']."'>".$publicDeptQueryResults['dept_name']."</option>";
                  }
              ?>
            </select>
        </div>
        <button class="btn btn-primary" name = "submitCoursesByDept" value = "submitCoursesByDept">Show Courses</button>
      </form>


      <div>
        <p> Bootstrap has pagination we can use here.</p>
        <?php 

          echo "<table class = 'table table-hover'>"; 
          echo "<tr><th>Code</th><th>Course Title</th><th>Description</th></tr>"; 
          while( $publicDeptQueryResults = mysqli_fetch_assoc($publicDeptQueryResult) ){
            echo "<tr>";
            echo "<td>".$publicDeptQueryResults['course_id']."</td>";
            echo "<td>".$publicDeptQueryResults['course_title']."</td>";
            echo "<td>".$publicDeptQueryResults['course_desc']."</td>";
            echo "</tr>";
          }
          echo "</table>"
        ?>

      </div>

      </main> 
    </div>
  </div>

  <?php
    
    require_once '_includes/requiredScripts.php';
    echo "<br>";
    require_once '_includes/footer.php';
  ?>

</html>
