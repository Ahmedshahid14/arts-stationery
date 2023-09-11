<?php 
 include 'config.php';
 $Product_id = $_GET['id'];


 $query = "DELETE FROM `products` WHERE `Product_id` = '{$Product_id}'";
 $result = mysqli_query($conn, $query);
 if($result){
    header("Location: products.php");
 }

?>