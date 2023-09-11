<?php 
include 'header.php';
if(isset($_POST['add_slider'])){

   
    $Title = $_POST['Title'];
   
    $Description = $_POST['Description'];
    $Shop = $_POST['Shop'];
    $Slider_image = $_FILES['Slider_image'];
    $Slider_img = $Slider_image['name'];
   
  
    $slider = "INSERT INTO `slider` ( `Slider_image`, `Title`, `Description`, `Shop`) VALUES ( ' $Slider_img ', '$Title', '$Description', ' $Shop')";
    $sliderresult = mysqli_query($conn, $slider);
  
  
  
  
  }
?>

 <!--start main content-->
 <main class="page-content">
        <!--breadcrumb-->
        <div class="row mb-8">
                        <div class="col-md-12">
                            <div class="d-md-flex justify-content-between align-items-center">
                               
                                <div>
                                    <h2>Add New Category</h2>
                                      
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb mb-0">
                                            <li class="breadcrumb-item"><a href="#" class="text-inherit">Dashboard</a></li>
                                            <li class="breadcrumb-item"><a href="#" class="text-inherit">Categories</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Add New Category</li>
                                        </ol>
                                    </nav>
                                </div>
                                <div>
                                    <a href="categories.php" class="btn btn-light">Back to Categories</a>
                                </div>
                            </div>
                        </div>
                    </div>
				<!--end breadcrumb-->
         <form method="post" enctype="multipart/form-data">
         <div class="row">
          
                <div class="card">
                   <div class="card-body">
                   <h4 class="mb-4 h5 mt-5">Slider</h4>
                                    <div class="mb-3 col-12">
                                            <label class="form-label">Slider Image</label>
                                            <input  type="file" name="Slider_image" accept=".jpg, .png, image/jpeg, image/png" src="../assets/images/slider/.." >
                                        </div>
                                        
                                        
                                        <div class="mb-3 col-12">
                                            <label class="form-label">Title</label>
                                            <input type="text" class="form-control" placeholder="Title for your slider"name="Title"
                                                >
                                        </div>
                                        <div class="mb-3 col-12">
                                            <label class="form-label">Description</label>
                                            <input type="text" class="form-control" placeholder="Enter any Description"name="Description"
                                                >
                                        </div>
                                        <div class="mb-3 col-12">
                                            <label class="form-label">Shop</label>
                                            <input type="text" class="form-control "  name="Shop">
                                        </div>
                                     
                    <div class="col-4">
                            <div class="d-grid mt-5"> 
                              <button type="submit" name="add_slider" class="btn btn-primary">Add Slider</button>
                            </div>
                          </div>
                   </div>
                </div>
             
            
           </div><!--end row-->
           </form>
     </main>

            
  
    <script src="../assets/libs/flatpickr/dist/flatpickr.min.js"></script>
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


<!-- Mirrored from freshcart.codescandy.com/dashboard/add-category.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 31 Mar 2023 10:11:28 GMT -->
</html>