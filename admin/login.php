<?php
include 'config.php';
session_start();
if (isset($_SESSION['username'])) {
  header('location:index.php');
}
if (isset($_POST['login'])) {
  $username = $_POST['username'];
  $password = $_POST['password'];
  $query = "SELECT * FROM `login`  where `username`='{$username}' AND `password`='{$password}'";
  $result = mysqli_query($conn, $query);
  if (mysqli_num_rows($result) == 1) {
    $_SESSION['username'] = $username;
    header('location:index.php');
  } else {
    echo "Invalid username or password";
  }
}

?>
<!DOCTYPE html>
<html>

<head>
  <title>Login Page</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>

<body>
  <section class="h-100 bg-dark body">
    <div class="container py-5 ">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col">
          <form action="" method="post" enctype="multipart/form-data">

            <div class="card card-registration my-4  form">
              <div class="row g-0 justify-content-center">

                <div class="col-xl-6  signup">
                  <div class="card-body p-md-5 text-black">
                    <h3 class="mb-5 text-uppercase">Login</h3>

                    <div class="form-outline mb-4">
                      <label class="form-label" for="form3Example97">Username</label>
                      <input type="text" id="form3Example97" class="form-control form-control-lg" name="username" placeholder="Enter your email address" required />

                    </div>


                    <div class="form-outline mb-4">
                      <label class="form-label" for="form3Example97">Password</label>
                      <input type="password" id="form3Example97" class="form-control form-control-lg" name="password" placeholder="Enter your password" required />

                    </div>



                    <div class="d-flex justify-content-end pt-3">


                      <input type="submit" value="login" name="login" class='btn btn-success my-3 text-white'>
                    </div>

                  </div>
                </div>
              </div>
          </form>




        </div>
      </div>
    </div>
    </div>
  </section>
</body>

</html>