<?php

  //THIS LINE imports all lines in HTML <head> element.
  require_once '_includes/documentHead.php';

  
  //These lines import masthead and navigation sections
  require_once "_includes/masthead.php";
  require_once "_includes/mainNavigation.php";

  
?>


  <div id = "mainPage" class = "container">
    

    <div class = "row">
      <aside class = "col-2">
          <?php include "_includes/quickLinksAside.php";?>
      </aside>

      <main class ="col-9">
        <h2>Main Content</h2>
        
        <p><span style = "color: blue">We can use PHP or AJAX to read all this from a database. </span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>

         <form action="<?php $_SERVER['PHP_SELF'] ?>" method = "GET">
          <div class = 'form-group'>  
          <label for="publicDeptSelector">View Courses By Department</label>
            <select class="form-control" id="publicDeptSelector" name = "facultyDept_Id">
              
              <?php //this code populates the dropdown from the DB

                $publicDeptQuery = "SELECT * FROM epiz_25399161_testdb.department ORDER BY dept_name;";
                $publicDeptResult = mysqli_query($connection, $publicDeptQuery);
                  
                  while( $publicDeptQueryResults = mysqli_fetch_assoc($publicDeptResult) ){
                    
                    echo "<option value = '".$publicDeptQueryResults['dept_id']."'>".$publicDeptQueryResults['dept_name']."</option>";
                  }
              ?>

            </select>
        </div>
        <button class="btn btn-primary" name = "submitCoursesByDept" value = "submitCoursesByDept">Show Courses</button>
      </form>

      <br>
      <p style = "font-size: 1.5em;">Download the <a href = '#'>course catalog</a> in PDF format</p>

      <div>
        

        <?php 


          if( !empty($_GET['submitCoursesByDept']) && !empty($_GET['facultyDept_Id']) ){
            $deptIdSelectedPublic = $_GET['facultyDept_Id'];
            $QueryPublicViewCourses = "SELECT * FROM epiz_25399161_testdb.courses WHERE dept_id =".$deptIdSelectedPublic.";";
            $publicDeptQueryTableRes = mysqli_query($connection, $QueryPublicViewCourses);
         
            

            echo "<table class = 'table table-hover'>"; 
            echo "<tr class = 'table-primary'><th>Code</th><th>Course Title</th><th>Prerequisites</th><th>Description</th></tr>"; 
              
              $prereqString = "";
            while( $publicDeptQueryRow = mysqli_fetch_assoc($publicDeptQueryTableRes) ){
              echo "<tr >";
              echo "<td>".$publicDeptQueryRow['course_id']."</td>";
              echo "<td>".$publicDeptQueryRow['course_title']."</td>";
              
              $prereQuery = "SELECT prereq_course_id FROM epiz_25399161_testdb.prereq WHERE course_id = '".$publicDeptQueryRow['course_id']."';";
              //echo $prereQuery;
              $prereqs = mysqli_query($connection,$prereQuery);
              while($prereqsRow = mysqli_fetch_assoc($prereqs)){

                  $prereqString.=$prereqsRow['prereq_course_id'].'<br>';
                
              }

              
              

              echo "<td>".$prereqString."</td>";
                $prereqString = '';
              echo "<td>".$publicDeptQueryRow['course_desc']."</td>";
              echo "</tr>";
            }
            echo "</table>";

           } 
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
