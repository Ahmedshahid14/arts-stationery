<?php 
include 'header.php';


?>

    <!--start main content-->
     <main class="page-content">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-xl-4 row-cols-xxl-4">
       
         <div class="col">
          <div class="card radius-10 border-0 border-start border-success border-4">
            <div class="card-body">
              <div class="d-flex align-items-center">
                <div class="">
                  <p class="mb-1">Total Categories</p>
                  <?php 
                    $fetch2 = "SELECT * FROM `category` ";
                    $result2 = mysqli_query($conn,$fetch2);
                    ?>
                                            <h1 class=" mb-2 fw-bold fs-2"><?php echo mysqli_num_rows($result2)?></h1>
                                           <span>Categories Availabe</span>
              

                </div>
                <div class="ms-auto widget-icon bg-success text-white">
                  <i class="bi bi-currency-dollar"></i>
                </div>
              </div>
              <div class="progress mt-3" style="height: 4.5px;">
                <div class="progress-bar bg-success" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>
          </div>
         </div>
         <div class="col">
          <div class="card radius-10 border-0 border-start border-danger border-4">
            <div class="card-body">
              <div class="d-flex align-items-center">
                <div class="">
                  <p class="mb-1">Total Products</p>
                  <?php 
                    $fetch3 = "SELECT * FROM `products` ";
                    $result3 = mysqli_query($conn,$fetch3);
                    ?>
                                            <h1 class=" mb-2 fw-bold fs-2"><?php echo mysqli_num_rows($result3)?></h1>
                                           <span>Products Availabe</span>
                </div>
                <div class="ms-auto widget-icon bg-danger text-white">
                  <i class="bi bi-graph-down-arrow"></i>
                </div>
              </div>
              <div class="progress mt-3" style="height: 4.5px;">
                <div class="progress-bar bg-danger" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>
          </div>
         </div>
         <div class="col">
          <div class="card radius-10 border-0 border-start border-danger border-4">
            <div class="card-body">
              <div class="d-flex align-items-center">
                <div class="">
                  <p class="mb-1">Total  Feedback</p>
                  <?php 
                    $fetch4 = "SELECT * FROM  `customer's_feedbak` ";
                    $result4 = mysqli_query($conn,$fetch4);
                    ?>
                                            <h1 class=" mb-2 fw-bold fs-2"><?php echo mysqli_num_rows($result4)?></h1>
                                           <span> User's Feedback </span>
                </div>
                <div class="ms-auto widget-icon bg-danger text-white">
                  <i class="bi bi-graph-down-arrow"></i>
                </div>
              </div>
              <div class="progress mt-3" style="height: 4.5px;">
                <div class="progress-bar bg-danger" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>
          </div>
         </div>
         <div class="col">
          <div class="card radius-10 border-0 border-start border-danger border-4">
            <div class="card-body">
              <div class="d-flex align-items-center">
                <div class="">
                  <p class="mb-1"> Total Register</p>
                  <?php 
                    $fetch5 = "SELECT * FROM  `register` ";
                    $result5 = mysqli_query($conn,$fetch5);
                    ?>
                                            <h1 class=" mb-2 fw-bold fs-2"><?php echo mysqli_num_rows($result5)?></h1>
                                           <span> Registered User's </span>
                </div>
                <div class="ms-auto widget-icon bg-danger text-white">
                  <i class="bi bi-graph-down-arrow"></i>
                </div>
              </div>
              <div class="progress mt-3" style="height: 4.5px;">
                <div class="progress-bar bg-danger" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>
          </div>
         </div>


      </div><!--end row-->

      


      
           


       <h4>Registered Users</h4>

       <div class="card">
        <div class="card-body">
          <div class="customer-table">
            <div class="table-responsive white-space-nowrap">
          
               <table class="table align-middle">
                <thead class="table-light">
                  <tr>
                    
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Address</th>
                    <th> Email</th>
                    <th>Phone number</th>
                    <th> Post Code</th>
                    <th>Country</th>
                  </tr>
                 </thead>
                 <tbody>
                   
                 <?php 
                    $fetch = "SELECT * FROM `register`" ;
                    $result = mysqli_query($conn,$fetch);

                    while($row = mysqli_fetch_array($result)){

                   
                    ?>
                 
                  <tr>
                  <td><?php echo $row['First name']?></td>
                  <td><?php echo $row['Last name']?></td>
                  <td><?php echo $row['Address']?></td>
                  <td><?php echo $row['Email']?></td>
                  <td><?php echo $row['Phone_number']?></td>
                  <td><?php echo $row['Post_Code']?></td>
                  <td><?php echo $row['Country']?></td>
                  </tr> 
                  <?php }?>
                 </tbody>
               </table>
            </div>
          </div>
        </div>
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
    <script>
window.onload = function() {
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title:{
		text: "Revenue Chart of Acme Corporation"
	},
	axisY: {
		title: "Revenue (in USD)",
		includeZero: true,
		prefix: "$",
		suffix:  "k"
	},
	data: [{
		type: "bar",
		yValueFormatString: "$#,##0K",
		indexLabel: "{y}",
		indexLabelPlacement: "inside",
		indexLabelFontWeight: "bolder",
		indexLabelFontColor: "white",
		dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
	}]
});
chart.render();
 
}
</script>
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

    <script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>
   <!--plugins-->
   <script src="../assets/js/jquery.min.js"></script>
   <script src="../assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
   <script src="../assets/plugins/metismenu/js/metisMenu.min.js"></script>
   <script src="../assets/plugins/simplebar/js/simplebar.min.js"></script>
   <script src="../assets/plugins/apex/apexcharts.min.js"></script>
   <script src="../assets/js/index.js"></script>
    <!--BS Scripts-->
    <script src="../assets/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/js/main.js"></script>
  </body>
</html>