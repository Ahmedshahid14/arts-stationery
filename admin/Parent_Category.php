<?php
include 'header.php';
if(isset($_GET['page'])){
  $page = $_GET['page'];
}else{
  $page = 1;
}

$num_records = 5 ;
$start = ($page -1) *$num_records;
?> 
<!-- main -->
<main class="main-content-wrapper">
  <div class="container ">
    <div class="row mb-8">
      <div class="col-md-12">
        <!-- page header -->
        <div class="d-md-flex justify-content-between align-items-center">
          <div>
            <h2>Parent Categories</h2>
              <!-- breacrumb -->
              <nav aria-label="breadcrumb">
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="#" class="text-inherit">Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page">Category</li>
              </ol>
            </nav>
          </div>
          <!-- button -->
          <div class="mt-5">
            <a href="add_parent-category.php" class="btn btn-primary">Add Parent Category</a>
          </div>
        </div>
      </div>
    </div>
    <!-- row -->
    <div class="row ">
      <div class="col-lg-6 mb-5">
        <!-- card -->
        <div class="card h-100">
          <!-- <div class="px-6 py-6 ">
            <div class="row justify-content-between">
              
              <div class="col-lg-4 col-md-6 col-12 mb-2 mb-lg-0">
                <form class="d-flex" role="search">
                  <input class="form-control" type="search" placeholder="Search Products" aria-label="Search">
                </form>
              </div>
             
              <div class="col-lg-2 col-md-4 col-12">
                <select class="form-select">
                  <option selected>Status</option>
                  <option value="1">Active</option>
                  <option value="2">Deactive</option>
                  <option value="3">Draft</option>
                </select>
              </div>
            </div>
          </div> -->
          <!-- card body -->
          <div class="card-body text-center  mx-auto ">
            <!-- table -->
            <div class="table-responsive">
              <table class="table  table-hover text-nowrap table-borderles table-with-checkbox">
                <thead class="bg-light">
                  <tr>
                    <!-- <th>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="checkAll">
                        <label class="form-check-label" for="checkAll">

                        </label>
                      </div>
                    </th> -->
                    <th>ID</th>
                   
                    <th>Category Name</th>
                    
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                    
              <?php
              $fetch = "SELECT * FROM `Parent_Category` LIMIT $start,$num_records";
              $result = mysqli_query($conn, $fetch);

              while ($pc = mysqli_fetch_array($result)) {


              ?>
                  <tr>
                  <td><?php echo $pc['Parent_id']?></td>
                 
                   
                    <td><a href="#" class="text-reset"><?php echo $pc['Parent_Name']?></a></td>
                    

                    
                    <td>
                        <div>
                        <a href="update_parent_category.php?id=<?php echo $pc['Parent_id'];?>" class="btn btn-primary text-white">Edit</a>
                        </div>
                        <div>
                        <a href="delete-parent-category.php?id=<?php echo $pc['Parent_id'];?>" class="btn btn-primary text-white">Delete</a>
                        </div>
                       
                       </td>
                  </tr>
                
                 
                  <?php  } ?>
                   
                    
                 

                   
                   




                </tbody>
              </table>

              <nav aria-label="...">
    <ul class="pagination">
        <?php 
        if($page >1 ){

        
        ?>
    <li class="page-item">
            <a class="page-link" href="parent_category.php?page=<?php echo $page-1 ?>">Previous</a>
        </li>

        <?php 
        }
        $fetch = "SELECT * FROM `Parent_Category`";
        $fetchRes = mysqli_query($conn,$fetch);

        $total_records = mysqli_num_rows($fetchRes);

        

        $total_page = ceil($total_records/$num_records);


        for ($i=1; $i<=$total_page  ; $i++) { 
       
        ?>
        <li class="page-item"><a class="page-link" href="parent_category.php?page=<?php echo $i ?>"><?php echo $i ?></a></li>
       
        <?php  
        }
        
        
        if($i-1 > $page){

    
        ?>
        <li class="page-item">
            <a class="page-link" href="parent_category.php?page=<?php echo $page+1 ?>">Next</a>
        </li>
        <?php 
        }
        ?>
    </ul>
</nav>
            </div>
          </div>
         
        </div>

      </div>

    </div>
  </div>
</main>

</div>


<!-- Libs JS -->
<script src="../assets/libs/jquery/dist/jquery.min.js"></script>
<script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>

<!-- Theme JS -->
<script src="../assets/js/theme.min.js"></script>

</body>


<!-- Mirrored from freshcart.codescandy.com/dashboard/products.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 31 Mar 2023 10:11:08 GMT -->
</html>