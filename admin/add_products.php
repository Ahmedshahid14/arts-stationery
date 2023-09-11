<?php
include 'header.php';

if (isset($_POST['add_Product'])) {
    $Product_Name = $_POST['Product_Name'];
    $Product_Description = $_POST['Product_Description'];
    $Categoryname = $_POST['Categoryname'];
    $Old_Price = $_POST['Old_Price'];
    $New_Price = $_POST['New_Price'];
    $Sale = $_POST['Sale'];
    $New_Arrival = $_POST['New_Arrival'];
    $Vendor = $_POST['Vendor'];
    $Product_Code = $_POST['Product_Code'];
    $Availibility = $_POST['Availibility'];
    $For = $_POST['For'];

    // Handle image uploads
    $Image1 = uploadImage('Product_Image1');
    $Image2 = uploadImage('Product_Image2');
    $Image3 = uploadImage('Product_Image3');
    $Image4 = uploadImage('Product_Image4');

    $insert_product = "INSERT INTO `products` (`Product_Image1`, `Product_Image2`, `Product_Image3`, `Product_Image4`, `Product_Name`, `Product_Description`, `Categoryname`, `Old_Price`, `New_Price`, `Sale`, `New_Arrival`, `Vendor`, `Product_Code`, `Availibility`, `For`) VALUES ('$Image1', '$Image2', '$Image3', '$Image4', '$Product_Name', '$Product_Description', '$Categoryname', '$Old_Price', '$New_Price', '$Sale', '$New_Arrival', '$Vendor', '$Product_Code', '$Availibility', '$For')";
    $productresult = mysqli_query($conn, $insert_product);
}

function uploadImage($inputName) {
    $targetDir = '../assets/images/products/';
    $targetFile = $targetDir . basename($_FILES[$inputName]['name']);
    move_uploaded_file($_FILES[$inputName]['tmp_name'], $targetFile);
    return basename($_FILES[$inputName]['name']);
}
?>

<!-- Your HTML and form elements here -->

<main class="page-content">
    <!-- ... (Your HTML content) ... -->
    <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data">
        <div class="row">
            <div class="card">
                <div class="card-body">
                    <h4 class="mb-4 h5 mt-5">Product Information</h4>
                    <!-- ... (Other input fields) ... -->
                    <div class="mb-3 col-12">
                        <label class="form-label">Product Image 1</label>
                        <input id="fancy-file-upload" type="file" name="Product_Image1" accept=".jpg, .png, image/jpeg, image/png">
                    </div>
                    <div class="mb-3 col-12">
                        <label class="form-label">Product Image 2</label>
                        <input id="fancy-file-upload" type="file" name="Product_Image2" accept=".jpg, .png, image/jpeg, image/png">
                    </div>
                    <div class="mb-3 col-12">
                        <label class="form-label">Product Image 3</label>
                        <input id="fancy-file-upload" type="file" name="Product_Image3" accept=".jpg, .png, image/jpeg, image/png">
                    </div>
                    <div class="mb-3 col-12">
                        <label class="form-label">Product Image 4</label>
                        <input id="fancy-file-upload" type="file" name="Product_Image4" accept=".jpg, .png, image/jpeg, image/png">
                    </div>
                    <div class="mb-3 col-12">
                                            <label class="form-label">Product Name</label>
                                            <input type="text" class="form-control" placeholder="Product Name"name="Product_Name"
                                                required>
                                        </div>
                                        <div class="mb-3 col-12">
                                            <label class="form-label">Product Description</label>
                                            <input type="text" class="form-control" placeholder="Product Description"name="Product_Description"
                                                required>
                                        </div>
                                      
                                       
                                        <div class="col-12">
                              <label for="AddCategory" class="form-label fw-bold"> Category Name</label>
                              <select class="form-select" id="AddCategory"  name='Categoryname'>
                                <option disabled selected>Select Category</option>
                                <?php 
                                $category= "SELECT * FROM category";
                                
                                $categoryResult = mysqli_query($conn,$category);

                                while($crow = mysqli_fetch_array($categoryResult)){

                               
                                ?>
                                <option value="<?php echo $crow['cid']?>"><?php echo $crow['Category_Name']?></option>
                               <?php  }?>
                              </select>
                            </div>
                           
                          
                            <div class="mb-3 col-12">
                                            <label class="form-label"> New Price</label>
                                            <input type="number" class="form-control flatpickr" placeholder="Enter Price of Product" name="New_Price">
                                        </div>
                                        <div class="mb-3 col-12">
                                            <label class="form-label"> Old Price</label>
                                            <input type="text" class="form-control flatpickr" placeholder="Enter Price of Product" name="Old_Price">
                                        </div>
                                        <div class="mb-3 col-12">
                                            <label class="form-label"> Sale </label>
                                            <input type="text" class="form-control flatpickr" placeholder="" name="Sale">
                                        </div>
                                        <div class="mb-3 col-12">
                                            <label class="form-label"> New Arrival </label>
                                            <input type="text" class="form-control flatpickr" placeholder="" name="New_Arrival">
                                        </div>
                                        <div class="mb-3 col-12">
                                            <label class="form-label"> Vendor </label>
                                            <input type="text" class="form-control flatpickr" placeholder="" name="Vendor">
                                        </div>
                                        <div class="mb-3 col-12">
                                            <label class="form-label"> Product Code </label>
                                            <input type="text" class="form-control flatpickr" placeholder="" name="Product_Code">
                                        </div>
                                        <div class="mb-3 col-12">
                                            <label class="form-label"> Availibility </label>
                                            <input type="text" class="form-control flatpickr" placeholder="" name="Availibility">
                                        </div>
                                        
                                        <div class="form-check form-check-success">
                        <input class="form-check-input" type="radio" value="Child" name="For" id="flexRadioSuccess">
                        <label class="form-check-label" for="flexRadioSuccess">
                      Child
                        </label>
                    </div>
                    <div class="form-check form-check-success">
                        <input class="form-check-input" type="radio" value="Male"  name="For" id="flexRadioSuccess">
                        <label class="form-check-label" for="flexRadioSuccess">
                         Male
                        </label>
                    </div>
                    <div class="form-check form-check-success">
                        <input class="form-check-input" type="radio" value="Female" name="For" id="flexRadioSuccess">
                        <label class="form-check-label" for="flexRadioSuccess">
                        Female
                        </label>
                    </div>
                    <div class="form-check form-check-success">
                        <input class="form-check-input" type="radio" value="All" name="For" id="flexRadioSuccess">
                        <label class="form-check-label" for="flexRadioSuccess">
                       For All
                        </label>
                    </div>
                    <div class="col-4">
                        <div class="d-grid mt-5">
                            <button type="submit" name="add_Product" class="btn btn-primary">Add Product</button>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--end row-->
    </form>
</main>

<!-- ... (Rest of your HTML and scripts) ... -->
