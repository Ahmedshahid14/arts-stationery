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
      <div class="col-lg-12">
        <!-- page header -->
        <div class="d-md-flex justify-content-between align-items-center">
          <div>
            <h2>Customer's Feedback </h2>
              <!-- breacrumb -->
              <nav aria-label="breadcrumb">
              <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="#" class="text-inherit">Dashboard</a></li>
               
              </ol>
            </nav>
          </div>
        
        </div>
      </div>
    </div>
    <!-- row -->
    <div class="row ">
      <div class="col-lg-12 mb-5">
        <!-- card -->
        <div class="card h-100">
          
          <!-- card body -->
          <div class="card-body text-center  mx-auto">
            <!-- table -->
            <div class="table-responsive">
              <table class="table  table-hover text-nowrap table-borderles ">
                <thead class="bg-light">
                  <tr>
                   
                    <th>Customer Id</th>
                   
                    <th>Customer Name</th>
                    <th>Customer Email</th>
                    <th>Customer Message</th>
                    <th>Customer Rating</th>
                    
                 
                  </tr>
                </thead>
                <tbody>
                    
              <?php
              $fetch = "SELECT * FROM  `customer's_feedbak` LIMIT $start,$num_records";
              $result = mysqli_query($conn, $fetch);

              while ($custfeedback = mysqli_fetch_array($result)) {


              ?>
                  <tr>
                  <td><?php echo $custfeedback['customer_id']?></td>
                  <td><?php echo $custfeedback['customer_name']?></td>
                  <td><?php echo $custfeedback['customer_email']?></td>
                  <td><?php echo $custfeedback['customer_message']?></td>
                  <td><?php echo $custfeedback['customer_rating']?></td>
                 
                   
                    
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
            <a class="page-link" href="customers_feedback.php?page=<?php echo $page-1 ?>">Previous</a>
        </li>

        <?php 
        }
        $fetch = "SELECT * FROM `customer's_feedbak`";
        $fetchRes = mysqli_query($conn,$fetch);

        $total_records = mysqli_num_rows($fetchRes);

        

        $total_page = ceil($total_records/$num_records);


        for ($i=1; $i<=$total_page  ; $i++) { 
       
        ?>
        <li class="page-item"><a class="page-link" href="customers_feedback.php?page=<?php echo $i ?>"><?php echo $i ?></a></li>
       
        <?php  
        }
        
        
        if($i-1 > $page){

    
        ?>
        <li class="page-item">
            <a class="page-link" href="customers_feedback.php?page=<?php echo $page+1 ?>">Next</a>
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



</html>