<div class="card text-white bg-secondary mb-12 col-12">
    <div class="card-header"><h3>Your Personal Information<h3></div>
    <div class="card-body">
      <h4 class="card-title">Last Name:</h4>
      <p class="card-text"><?php echo $_SESSION['lName']; ?></p>

      <h4 class="card-title">First Name:</h4>
      <p class="card-text"><?php echo $_SESSION['fName']; ?></p>

      <h4 class="card-title">Faculty ID:</h4>
      <p class="card-text"><?php echo transform_userID($_SESSION['id']);?></p>

      <h4 class="card-title">Address:</h4>
      <p class="card-text">
        <address><?php echo$_SESSION['street'];?>
        <br><?php echo $_SESSION['city'].", ".$_SESSION['state']." ".$_SESSION['zip'];?>
      </address></p>

      <h4 class="card-title">Email:</h4>
      <p class ="card-text"><?php echo $_SESSION['email'];?></p>

      
    </div> 
  </div>
 

 