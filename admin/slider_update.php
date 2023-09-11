<?php
include 'header.php';
$sid = $_GET['id'];

$query = "SELECT * FROM `slider` WHERE `sid` ='{$sid}'";
$result = mysqli_query($conn, $query);

if(isset($_POST['update'])){
	$hiddenId = $_POST['hidden'];
    $Slider_image = $_FILES['Slider_image'];
    $Slider_img = $Slider_image['name'];
  
    $Title = $_POST['Title'];
    $Description = $_POST['Description'];
    $Shop = $_POST['Shop'];
	$update_slider="UPDATE `slider` SET `Slider_image`='{$Slider_img}' ,`Title`='{$Title}',`Description`='{$Description}',`Shop`='{$Shop}' WHERE `sid` = '{$hiddenId}' ";
	$update_sliderResult = mysqli_query($conn, $update_slider);

    if($update_slideResult){
        
   echo"
   <script>
  window.location.href='slider.php'
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
            <a href="slider.php" class="btn btn-primary">Back to Slider</a>
          </div>
				<!--end breadcrumb-->
         
         <div class="row mt-5">
            <div class="col-12 col-lg-8">
                <div class="card">
                  <form method="post" enctype="multipart/form-data">
                   <div class="card-body">
                     <div class="mt-5">
                        <h5 class="mb-3">Update Form</h5>
						<?php 
    while($row = mysqli_fetch_array($result)){

    
    ?>
	       <input type="hidden" class="form-control" name="hidden" value='<?php echo $row['sid'];?>'>
           <div class="row">
           <div class="col-lg-12 mt-3">
                    
                    <input id="fancy-file-upload" type="file" name="Slider_image" accept=".jpg, .png, image/jpeg, image/png" src="../assets/images/slider/.." value="<?php echo $row['Slider_image'] ?>" >
                  
                 
                  </div>
                  
                  <div class="col-lg-12 mt-3">
                  <input type="text" class="form-control" placeholder="Title for your slider"name="Title" value="<?php echo $row['Title'] ?>" >
                  </div>
                  <div class="col-lg-12 mt-3">
                  <input type="text" class="form-control" placeholder="Enter any Description"name="Description" value="<?php echo $row['Description'] ?>" >
                  </div>
                  
                  <div class="col-lg-12 mt-3">
           <input type="text" class="form-control "  name="Shop" value="<?php echo $row['Shop'] ?>" >
                  </div>
           
           
          
           
                     </div>
                     
					<div class="row mt-5">
                  <label class="col-sm-3 col-form-label"></label>
                  <div class="col-sm-9">
                    <div class="d-md-flex d-grid align-items-center gap-3">
                      <button name='update' type="submit" class="btn btn-primary px-4">Update</button>
                  
                    </div>
                  </div>
                </div>
             
        <?php }?>
                    </form>
                </div>                
            
           </div><!--end row-->
		 
     </main>