<?php
include 'header.php';
$cid = $_GET['id'];

$query = "SELECT * FROM `category` WHERE `cid` ='{$cid}'";
$result = mysqli_query($conn, $query);

if (isset($_POST['update'])) {
    $hiddenId = $_POST['hidden'];
    $Category_Name = $_POST['Category_Name'];
    $ParentCategory = $_POST['ParentCategory'];
    $Demand = $_POST['Demand'];

    
    $Category_Img = $_FILES['Category_Image']['name'];
    $uploadPath = '../assets/images/category/' . $Category_Img;
    move_uploaded_file($_FILES['Category_Image']['tmp_name'], $uploadPath);

    $update_category = "UPDATE `category` SET `Category_Image`='$Category_Img', `ParentCategory`='$ParentCategory', `Demand`='$Demand' WHERE `cid`='$hiddenId'";
    $update_categoryResult = mysqli_query($conn, $update_category);

    if ($update_categoryResult) {
        echo "
        <script>
            window.location.href='categories.php';
        </script>";
    }
}
?>

<!-- Your HTML and form elements here -->

<main class="page-content mt-5">
    <!--breadcrumb-->
    <!-- ... (Your breadcrumb code) ... -->
    <div>
        <a href="categories.php" class="btn btn-primary">Back to Category</a>
    </div>
    <!--end breadcrumb-->

    <div class="row mt-5">
        <div class="col-12 ">
            <div class="card">
                <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data">
                    <div class="card-body">
                        <div class="mb-4">
                            <h5 class="mb-3">Update Form</h5>
                            <?php
                            while ($row = mysqli_fetch_array($result)) {
                            ?>
                            <input type="hidden" class="form-control" name="hidden" value='<?php echo $row['cid']; ?>'>
                            <div class="mb-3 col-12">
                                <input id="fancy-file-upload" type="file" name="Category_Image" accept=".jpg, .png, image/jpeg, image/png">
                            </div>
                            <div class="mb-3 col-12">
                                <input type="text" class="form-control" placeholder="Category Name" name="Category_Name" value="<?php echo $row['Category_Name']; ?>" required>
                            </div>
                            <div class="mb-3 col-12">
                                <input type="text" class="form-control" placeholder="Demanding or not" name="Demand" value="<?php echo $row['Demand']; ?>">
                            </div>
                            <div class="mb-3 col-12">
                            <select class="form-select" id="AddCategory" name="ParentCategory">
    <option disabled>Select Category</option>
    <?php
    $parent_category = "SELECT * FROM Parent_Category";
    $parent_categoryResult = mysqli_query($conn, $parent_category);

    while ($crow = mysqli_fetch_array($parent_categoryResult)) {
        $select = ($row['ParentCategory'] == $crow['Parent_id']) ? 'selected' : '';
    ?>
        <option value="<?php echo $crow['Parent_id']; ?>" <?php echo $select; ?>><?php echo $crow['Parent_Name']; ?></option>
    <?php } ?>
</select>







                            </div>

                        </div>

                        <div class="row">
                            <label class="col-sm-3 col-form-label"></label>
                            <div class="col-sm-9">
                                <div class="d-md-flex d-grid align-items-center gap-3">
                                    <button name='update' type="submit" class="btn btn-primary px-4">Update</button>
                                </div>
                            </div>
                        </div>

                        <?php } ?>
                    </div>
                </form>
            </div>
        </div>
    </div><!--end row-->
</main>
