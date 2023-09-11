<?php 
 include 'config.php';
 $sid = $_GET['id'];


 $query = "DELETE FROM slider WHERE s_id = '{$sid}'";
 $result = mysqli_query($conn, $query);
 if($result){
    header("Location: slider.php");
 }

?>