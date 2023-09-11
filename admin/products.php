<?php 
include 'header.php';
if(isset($_GET['page'])){
  $page = $_GET['page'];
}else{
  $page = 1;
}

$num_records = 9;
$start = ($page -1) *$num_records;
?>
<style>
  .prodDesc{
    max-width: 250px;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  }
</style>

    <!--start main content-->
     <main class="page-content">
       <!--breadcrumb-->
		<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
			<div class="breadcrumb-title pe-3"></div>
			<div class="ps-3">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb mb-0 p-0">
						<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
						</li>
						<li class="breadcrumb-item active" aria-current="page">Products</li>
					</ol>
				</nav>
			</div>
		
		</div>
		<!--end breadcrumb-->


        

         
          </div>
          <div class="col-auto">
            <div class="d-flex align-items-center gap-2 justify-content-lg-end">
            
               <a href="add_products.php" class="btn btn-primary px-4"><i class="bi bi-plus-lg me-2"></i>Add Product</a>
            </div>
          </div>
        </div><!--end row-->

        <div class="card mt-4">
          <div class="card-body">
            <div class="product-table">
              <div class="table-responsive white-space-nowrap">
                 <table class="table align-middle">
                  <thead class="table-light">
                    <tr>
                    
                      <th>Image1</th>
                      <th>Image2</th>
                      <th>Image3</th>
                      <th>Image4</th>
                      <th>Product Name</th>
                      <th>Product Description</th>
                      <th>Category</th>
                      <th> New Price</th>
                      <th> Old Price</th>
                      <th> Sale</th>
                      <th> New Arrival</th>
                      <th> Vendor</th>
                      <th> Product Code</th>
                      <th> Availibility</th>
                      <th>For</th>
                    
                  
                      
                      <th>Action</th>
                    </tr>
                   </thead>
                   <tbody>
                    <?php 
                    $fetch = "SELECT * FROM `products` AS p JOIN `category` AS c ON p.categoryname = c.cid LIMIT $start,$num_records" ;
                    $result = mysqli_query($conn,$fetch);

                    while($row = mysqli_fetch_array($result)){

                   
                    ?>
                     <tr>
                       
                       <td>
					    <div class="d-flex align-items-center gap-3">
						   <div class="product-box">
                            <img src="../assets/images/products/<?php echo $row['Product_Image1']?>" alt="">
                            </div>
						  
						   
						 </div></td>
             <td>
					    <div class="d-flex align-items-center gap-3">
						   <div class="product-box">
                            <img src="../assets/images/products/<?php echo $row['Product_Image2']?>" alt="">
                            </div>
						 </div></td>
             <td>
					    <div class="d-flex align-items-center gap-3">
						   <div class="product-box">
                            <img src="../assets/images/products/<?php echo $row['Product_Image3']?>" alt="">
                            </div>
						 </div></td>
             <td>
					    <div class="d-flex align-items-center gap-3">
						   <div class="product-box">
                            <img src="../assets/images/products/<?php echo $row['Product_Image4']?>" alt="">
                            </div>
						 </div></td>
                     
                       <td><?php echo $row['Product_Name']?></td>
                       <td class="prodDesc"><?php echo $row['Product_Description']?></td>
                     
                     
                       <td>
                       <?php echo $row['Category_Name']?>
                       </td>
                       <td>
                       <?php echo $row['New_Price']?>
                       </td>
                       <td>
                       <?php echo $row['Old_Price']?>
                       </td>
                       <td>
                       <?php echo $row['Sale']?>
                       </td>
                       <td>
                       <?php echo $row['New_Arrival']?>
                       </td>
                       <td>
                       <?php echo $row['Vendor']?>
                       </td>
                       <td>
                       <?php echo $row['Product_Code']?>
                       </td>
                       <td>
                       <?php echo $row['Availibility']?>
                       </td>
                       <td>
                       <?php echo $row['For']?>
                       </td>
                       
                       <td>
                       <div>
                        <a href="update_products.php?id= " class="btn btn-success text-white">Edit</a>
                     
                        </div>
                        
                       </td>
                       <td>
                       <div>
                       <a href="delete_products.php?id= " class="btn btn-danger text-white">Delete</a>
                     
                        </div>
                        
                       </td>
                     </tr>
                   <?php  }?>
                   </tbody>
                 </table>
              </div>
            </div>
          </div>

          <nav aria-label="...">
    <ul class="pagination">
        <?php 
        if($page >1 ){

        
        ?>
    <li class="page-item">
            <a class="page-link" href="products.php?page=<?php echo $page-1 ?>">Previous</a>
        </li>

        <?php 
        }
        $fetch = "SELECT * FROM `products`";
        $fetchRes = mysqli_query($conn,$fetch);

        $total_records = mysqli_num_rows($fetchRes);

        

        $total_page = ceil($total_records/$num_records);


        for ($i=1; $i<=$total_page  ; $i++) { 
       
        ?>
        <li class="page-item"><a class="page-link" href="products.php?page=<?php echo $i ?>"><?php echo $i ?></a></li>
       
        <?php  
        }
        
        
        if($i-1 > $page){

    
        ?>
        <li class="page-item">
            <a class="page-link" href="products.php?page=<?php echo $page+1 ?>">Next</a>
        </li>
        <?php 
        }
        ?>
    </ul>
</nav>

        </div>

     </main>
     <!--end main content-->
 

    <!--start overlay-->
      <div class="overlay btn-toggle-menu"></div>
    <!--end overlay-->

    <!-- Search Modal -->
    <div class="modal" id="exampleModal" tabindex="-1">
      <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
          <div class="modal-header gap-2">
            <div class="position-relative popup-search w-100">
              <input class="form-control form-control-lg ps-5 border border-3 border-primary" type="search" placeholder="Search">
              <span class="material-symbols-outlined position-absolute ms-3 translate-middle-y start-0 top-50">search</span>
            </div>
            <button type="button" class="btn-close d-xl-none" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
              <div class="search-list">
                 <p class="mb-1">Html Templates</p>
                 <div class="list-group">
                    <a href="javascript:;" class="list-group-item list-group-item-action active align-items-center d-flex gap-2"><i class="bi bi-filetype-html fs-5"></i>Best Html Templates</a>
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-award fs-5"></i>Html5 Templates</a>
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-box2-heart fs-5"></i>Responsive Html5 Templates</a>
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-camera-video fs-5"></i>eCommerce Html Templates</a>
                 </div>
                 <p class="mb-1 mt-3">Web Designe Company</p>
                 <div class="list-group">
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-chat-right-text fs-5"></i>Best Html Templates</a>
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-cloud-arrow-down fs-5"></i>Html5 Templates</a>
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-columns-gap fs-5"></i>Responsive Html5 Templates</a>
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-collection-play fs-5"></i>eCommerce Html Templates</a>
                 </div>
                 <p class="mb-1 mt-3">Software Development</p>
                 <div class="list-group">
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-cup-hot fs-5"></i>Best Html Templates</a>
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-droplet fs-5"></i>Html5 Templates</a>
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-exclamation-triangle fs-5"></i>Responsive Html5 Templates</a>
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-eye fs-5"></i>eCommerce Html Templates</a>
                 </div>
                 <p class="mb-1 mt-3">Online Shoping Portals</p>
                 <div class="list-group">
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-facebook fs-5"></i>Best Html Templates</a>
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-flower2 fs-5"></i>Html5 Templates</a>
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-geo-alt fs-5"></i>Responsive Html5 Templates</a>
                    <a href="javascript:;" class="list-group-item list-group-item-action align-items-center d-flex gap-2"><i class="bi bi-github fs-5"></i>eCommerce Html Templates</a>
                 </div>
              </div>
          </div>
        </div>
      </div>
    </div>



    <!--start theme customization-->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="ThemeCustomizer" aria-labelledby="ThemeCustomizerLable">
      <div class="offcanvas-header border-bottom">
        <h5 class="offcanvas-title" id="ThemeCustomizerLable">Theme Customizer</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <h6 class="mb-0">Theme Variation</h6>
        <hr>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="inlineRadioOptions" id="LightTheme" value="option1">
          <label class="form-check-label" for="LightTheme">Light</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="inlineRadioOptions" id="DarkTheme" value="option2" checked="">
          <label class="form-check-label" for="DarkTheme">Dark</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="inlineRadioOptions" id="SemiDarkTheme" value="option3">
          <label class="form-check-label" for="SemiDarkTheme">Semi Dark</label>
        </div>
        <hr>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="inlineRadioOptions" id="MinimalTheme" value="option3">
          <label class="form-check-label" for="MinimalTheme">Minimal Theme</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="inlineRadioOptions" id="ShadowTheme" value="option4">
          <label class="form-check-label" for="ShadowTheme">Shadow Theme</label>
        </div>
       
      </div>
    </div>
    <!--end theme customization-->
   <!--plugins-->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
   <script src="assets/plugins/metismenu/js/metisMenu.min.js"></script>
   <script src="assets/plugins/simplebar/js/simplebar.min.js"></script>

    <!--BS Scripts-->
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/main.js"></script>
  </body>
</html>