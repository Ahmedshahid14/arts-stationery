<?php
include 'header.php';
if (isset($_POST['add_user'])) {

    $username = $_POST['username'];
    $password = $_POST['password'];
    $Role = $_POST['Role'];
  
    $query = "SELECT * FRom `login` Where `username`='$username'";
    $queryres = mysqli_query($conn, $query);
      
  if(mysqli_num_rows($queryres)>0){
    $error= "user already exist";
  }
  else{
  $insert="INSERT INTO `login` ( `username`, `password`, `Role`) VALUES ( ' $username', ' $password', '  $Role')";
  $result = mysqli_query($conn, $insert);
}
}
?>




<main class="page-content">
        <!--breadcrumb-->
       
				<!--end breadcrumb-->
         <form method="post" enctype="multipart/form-data">
         <div class="row">
          
                <div class="card">
                   <div class="card-body">
                
                   <h4 class="mb-4 h5 mt-5">Add Employees</h4>
                                    
                                        
                                        <div class="mb-3 col-12">
                                            <label class="form-label">Employee Name</label>
                                            <input type="email" class="form-control" placeholder="enter user email"name="username"
                                                required>
                                        </div>
                                        <div class="mb-3 col-12">
                                            <label class="form-label">Password</label>
                                            <input type="password" class="form-control" placeholder="enter user password"name="password"
                                                required>
                                        </div>
                                       
                                        <div class="mb-3 col-12">
                                            <label class="form-label">Role</label>
                                            <input type="text" class="form-control" placeholder=""name="Role"
                                                required>
                                        </div>
                                        <div class="col-4">
                            <div class="d-grid mt-5"> 
                              <button type="submit" name="add_user" class="btn btn-primary">Add User</button>
                            </div>
                          </div>
                            
                             
           </div><!--end row-->
           </form>
     </main>

            

  </div>


  <!-- Libs JS -->
<script src="../assets/libs/jquery/dist/jquery.min.js"></script>
<script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>

<!-- Theme JS -->
<script src="../assets/js/theme.min.js"></script>
  <script src="../assets/libs/quill/dist/quill.min.js"></script>
  <script src="../assets/js/vendors/editor.js"></script>
  <script src="../assets/libs/dropzone/dist/min/dropzone.min.js"></script>

</body>


<!-- Mirrored from freshcart.codescandy.com/dashboard/add-product.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 31 Mar 2023 10:11:27 GMT -->
</html>