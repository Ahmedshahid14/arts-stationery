<?php
include 'header.php';
if(isset($_POST['add_category'])){
    $Parent_Name= $_POST['Parent_Name'];

  
  
    $insert = "INSERT INTO `Parent_Category` (`Parent_Name`) VALUES ( '$Parent_Name') ";
    $result = mysqli_query($conn, $insert);
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
					
				</div>
                <div>
            <a href="Parent_Category.php" class="btn btn-primary">Back to Parent Category</a>
          </div>
				<!--end breadcrumb-->
         
         <div class="row mt-5">
            <div class="col-12 col-lg-8">
                <div class="card">
                  <form method="post" >
                   <div class="card-body">
                     <div class="mb-4">
					
                      <label for="">Category Title</label>

                        <input type="text" class="form-control" name="Parent_Name" placeholder="Write Parent Category Name">
                     </div>
                    
                   

                    <input type="submit" value="Add Category" name="add_category" class='btn btn-success my-3'>
                    
            
                    </form>
                </div>                
            
           </div><!--end row-->
		 
     </main>