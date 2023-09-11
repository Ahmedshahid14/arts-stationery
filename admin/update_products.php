<?php
include 'header.php';
$pid = $_GET['id'];

$query = "SELECT * FROM `products` WHERE `Product_id` ='{$pid}'";
$result = mysqli_query($conn, $query);

if(isset($_POST['update'])){
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

   
    $Image1 = uploadImage('Product_Image1');
    $Image2 = uploadImage('Product_Image2');
    $Image3 = uploadImage('Product_Image3');
    $Image4 = uploadImage('Product_Image4');

	$update_product="UPDATE `products` SET `Product_Image1`='{$Image1}', `Product_Image2`='{$Image2}', `Product_Image3`='{$Image3}', `Product_Image4`='{$Image4}',`Product_Name`='{$Product_Name}', `Product_Description`='{$Product_Description}' , `Categoryname`='{$Categoryname}', `Old_Price`='{$Old_Price}', `New_Price`='{$New_Price}', `Sale`='{$Sale}' ,  `New_Arrival`='{$New_Arrival}', `Vendor`='{$Vendor}', `Product_Code`='{$Product_Code}', `Availibility`='{$Availibility}' , `For`='{$For}'WHERE `Product_id` = '$hidden' ";
  $update_productResult = mysqli_query($conn, $update_product);
    if($update_productResult){
      
   echo"
   <script>
  window.location.href='products.php'
</script>";
    }
}
?>


<main class="page-content mt-5">
        <!--breadcrumb-->
				<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
					<div class="breadcrumb-title pe-3">eCommerce</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">Add Category</li>
							</ol>
						</nav>
					</div>
					<div class="ms-auto">
						<div class="btn-group">
							<a href="categories.php" class="btn btn-primary">Show Category</a>
							<button type="button" class="btn btn-primary split-bg-primary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown">	<span class="visually-hidden">Toggle Dropdown</span>
							</button>
							<div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-end">
              	<a class="dropdown-item" href="javascript:;">Action</a>
								<a class="dropdown-item" href="javascript:;">Another action</a>
								<a class="dropdown-item" href="javascript:;">Something else here</a>
								<div class="dropdown-divider"></div>	<a class="dropdown-item" href="javascript:;">Separated link</a>
							</div>
						</div>
					</div>
				</div>
                <div>
            <a href="products.php" class="btn btn-primary">Back to Products</a>
          </div>
				<!--end breadcrumb-->
         
         <div class="row mt-5">
         <?php 
    while($row = mysqli_fetch_array($result)){

    
    ?>
            <div class="col-12 ">
                <div class="card"> 
                  <form method="post" enctype="multipart/form-data" >
                   <div class="card-body">
                     <div class="mb-4">
                        <h5 class="mb-3">Update Form</h5>
			
	       <input type="hidden" class="form-control" name="hidden" value='<?php echo $row['Product_id'];?>'>
           <div class="mb-3 col-12">
           <input id="fancy-file-upload" type="file" name="Product_Image1" accept=".jpg, .png, image/jpeg, image/png" src="./assets/images/products/."value="<?php echo $row['Product_Image1'] ?>" >
            </div>
           <div class="mb-3 col-12">
           <input id="fancy-file-upload" type="file" name="Product_Image2" accept=".jpg, .png, image/jpeg, image/png" src="./assets/images/products/."value="<?php echo $row['Product_Image2'] ?>" >
            </div>
           <div class="mb-3 col-12">
           <input id="fancy-file-upload" type="file" name="Product_Image3" accept=".jpg, .png, image/jpeg, image/png" src="./assets/images/products/."value="<?php echo $row['Product_Image3'] ?>" >
            </div>
           <div class="mb-3 col-12">
           <input id="fancy-file-upload" type="file" name="Product_Image4" accept=".jpg, .png, image/jpeg, image/png" src="./assets/images/products/."value="<?php echo $row['Product_Image4'] ?>" >
            </div>
             <div class="mb-3 col-12">
          
          
          
           
           <div class="mb-3 col-12">
           <input type="text" class="form-control" placeholder="Product Name"name="Product_Name" value="<?php echo $row['Product_Name'] ?>"  required></div>
           <input type="text" class="form-control" placeholder="Product Description"name="Product_Name" value="<?php echo $row['Product_Description'] ?>"  ></div>
           
           <div class="mb-3 col-12">
           <select class="form-select" id="AddCategory" name="Categoryname">
    <option disabled>Select Category</option>
    <?php
    $parent_category = "SELECT * FROM `category`";
    $parent_categoryResult = mysqli_query($conn, $parent_category);

    while ($crow = mysqli_fetch_array($parent_categoryResult)) {
        $select = ($row['Category_Name'] == $crow['cid']) ? 'selected' : '';
    ?>
        <option value="<?php echo $crow['cid']; ?>" <?php echo $select; ?>><?php echo $crow['Category_Name']; ?></option>
    <?php } ?>
</select>
           </div>
         
           <div class="mb-3 col-12">
           <input type="number" class="form-control flatpickr" placeholder="Enter Price of Product" name="New_Price" value="<?php echo $row['New_Price'] ?>" ></div>
           <div class="mb-3 col-12">
           <input type="text" class="form-control flatpickr" placeholder="Enter Price of Product" name="Old_Price" value="<?php echo $row['Old_Price'] ?>" ></div>
           <div class="mb-3 col-12">
           <input type="text" class="form-control flatpickr" placeholder="" name="Sale" value="<?php echo $row['Sale'] ?>" ></div>
          
           <div class="mb-3 col-12">
           <input type="text" class="form-control flatpickr" placeholder="Popular product" name="New_Arrival" value="<?php echo $row['New_Arrival'] ?>" ></div>
           <div class="mb-3 col-12">
           <input type="text" class="form-control flatpickr" placeholder="Best sells" name="Vendor" value="<?php echo $row['Vendor'] ?>" ></div>
           <div class="mb-3 col-12">
           <input type="text" class="form-control flatpickr" placeholder="Best sells" name="Product_Code" value="<?php echo $row['Product_Code'] ?>" ></div>
           <div class="mb-3 col-12">
           <input type="text" class="form-control flatpickr" placeholder="Best sells" name="Availibility" value="<?php echo $row['Availibility'] ?>" ></div>
           <div class="mb-3 col-12">
           <input type="text" class="form-control flatpickr" placeholder="Best sells" name="For" value="<?php echo $row['For'] ?>" ></div>

                     </div>
                    
					<div class="row">
                  <label class="col-sm-3 col-form-label"></label>
                  <div class="col-sm-9">
                    <div class="d-md-flex d-grid align-items-center gap-3">
                      <button name='update' type="submit" class="btn btn-primary px-4">Update</button>
                  
                    </div>
                  </div>
                </div>
                     </div>
                   </div>
                </form> 
                </div> 
                </div>              
        <?php }?>
                  
         </div>  
            
          <!--end row-->
		 
     </main>