<!DOCTYPE html>
<html lang="en">
<?php $menu = "index"; ?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Uplevel | Add Task</title>


    <!----------------------------- start header ------------------------------->
    <?php include("../up/templated/head.php"); ?>
    <!----------------------------- end header --------------------------------->

    <!----------------------------- start menu ------------------------------->
    <?php include("../up/templated/menu.php"); ?>
    <!----------------------------- end menu --------------------------------->

    <!----------------------------- start Time ------------------------------->
    <?php
    date_default_timezone_set('asia/bangkok');
    $date = date('d/m/Y');
    $time = date("H:i:s", "1359780799");
    ?>
    <!----------------------------- start Time ------------------------------->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Add Task</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                            <li class="breadcrumb-item active">Add Task</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">

                        <!-- เพิ่มข้อมูล -->
                        <div class="row">
                            <!-- /.col (left) -->
                            <div class="col-md-8 mx-auto">
                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Task descriptions</h3>
                                    </div>

                                    <form action="add1.php" method="POST" enctype="multipart/form-data">

                                        <div class="card-body">

                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Project Name</label>
                                                <input type="text" name="project_name" class="form-control" value="Up Level (Phase 1)"
                                                    id="exampleInputEmail1" placeholder="โครกการ" >
                                            </div>
                                            <!-- /.form-group -->

                                            <div class="form-group">
                                                <label>Type<span class="text-danger">*</span></label>
                                                <select class="form-control select2" name="work_type"
                                                    style="width: 100%;">
                                                    <option selected="selected"></option>
                                                    <option>Incident</option>
                                                    <option>Service</option>
                                                </select>
                                            </div>
                                            <!-- /.form-group -->



                                            <!-- ดึงข้อมูล Folder มาจาก folder_doc -->
                                            <?php
                                            $service_name = "";
                                            $_sql_service = "SELECT DISTINCT * FROM service";
                                            $query_service = mysqli_query($conn, $_sql_service);
                                            ?>

                                            <div class="row">
                                                <div class="col col-3">
                                                    <div class="form-group">
                                                        <label>Service <span class="text-danger">*</span></label>
                                                        <select class="custom-select select2 " width=""
                                                            name="service_name">
                                                            <option selected="selected">Production</option>
                                                            <?php while ($r = mysqli_fetch_array($query_service)) { ?>
                                                            <option value="<?php echo $r["service_name"]; ?>"
                                                                <?php if ($r['service_name'] == $service_name) : ?>
                                                                selected="selected" <?php endif; ?>>
                                                                <?php echo $r["service_name"]; ?>
                                                            </option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                    <!-- Dropdown List Folder -->
                                                </div>
                                                <div class="col col">
                                                    <div class="form-group">
                                                        <label>Add <i class="nav-icon fas fa-plus style=" color:
                                                                #1f5d09;></i></label><br>
                                                        <a href="#" class="btn btn-info btn-sm " data-toggle="modal"
                                                            data-target="#editbtn"> <i
                                                                class="fas fa-pencil-alt"></i></a>
                                                    </div>
                                                    <!-- Add Folder -->
                                                </div>



                                                <!-- ดึงข้อมูล Folder มาจาก folder_doc -->
                                                <?php
                                                    $category_name = "";
                                                    $_sql_category = "SELECT DISTINCT * FROM category ";
                                                    $query_category = mysqli_query($conn, $_sql_category);
                                                    ?>


                                                <div class="col col-3">
                                                    <div class="form-group">
                                                        <label>Category <span class="text-danger">*</span></label>
                                                        <select class="custom-select select2 " width=""
                                                            name="category_name">
                                                            <option selected="selected"></option>
                                                            <?php while ($r = mysqli_fetch_array($query_category)) { ?>
                                                            <option value="<?php echo $r["category_name"]; ?>"
                                                                <?php if ($r['category_name'] == $category_name) : ?>
                                                                selected="selected" <?php endif; ?>>
                                                                <?php echo $r["category_name"]; ?>
                                                            </option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                    <!-- Dropdown List Folder -->
                                                </div>
                                                <div class="col col">
                                                    <div class="form-group">
                                                        <label>Add <i class="nav-icon fas fa-plus style=" color:
                                                                #1f5d09;></i></label><br>
                                                        <a href="#" class="btn btn-info btn-sm " data-toggle="modal"
                                                            data-target="#editbtn1"> <i
                                                                class="fas fa-pencil-alt"></i></a>
                                                    </div>
                                                    <!-- Add Folder -->
                                                </div>



                                                <!-- ดึงข้อมูล Folder มาจาก folder_doc -->
                                                <?php
                                                    $items_name = "";
                                                    $_sql_items = "SELECT DISTINCT * FROM items";
                                                    $query_items = mysqli_query($conn, $_sql_items);
                                                ?>


                                                <div class="col col-3">
                                                    <div class="form-group">
                                                        <label>Items <span class="text-danger">*</span></label>
                                                        <select class="custom-select select2 " width=""
                                                            name="items_name">
                                                            <option selected="selected"></option>
                                                            <?php while ($r = mysqli_fetch_array($query_items)) { ?>
                                                            <option value="<?php echo $r["items_name"]; ?>"
                                                                <?php if ($r['items_name'] == $items_name) : ?>
                                                                selected="selected" <?php endif; ?>>
                                                                <?php echo $r["items_name"]; ?>
                                                            </option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                    <!-- Dropdown List Folder -->
                                                </div>
                                                <div class="col col">
                                                    <div class="form-group">
                                                        <label>Add <i class="nav-icon fas fa-plus style=" color:
                                                                #1f5d09;></i></label><br>
                                                        <a href="#" class="btn btn-info btn-sm " data-toggle="modal"
                                                            data-target="#editbtn2"> <i
                                                                class="fas fa-pencil-alt"></i></a>
                                                    </div>
                                                    <!-- Add Folder -->
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label>Status<span class="text-danger">*</span></label>
                                                <select class="form-control select2" name="status" style="width: 100%;">
                                                    <option selected="selected"></option>
                                                    <option>On Process</option>
                                                    <option>Done</option>
                                                </select>
                                            </div>
                                            <!-- /.form-group -->


                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Subject<span
                                                        class="text-danger">*</span></label>
                                                <input type="text" name="subject" class="form-control"
                                                    id="exampleInputEmail1" placeholder="แจ้งปัญหา .... ,ขอบริการ แก้ไข.... ,ขอบริการ ลบ.... ,ขอบริการ เพิ่มเติม...." required>
                                            </div>
                                            <!-- /.form-group -->


                                            <div class="form-group">
                                                <label for="file_upfile">Image Example <span class="text-danger"> (Only
                                                        picture
                                                        and upload-max-filesize 20M*)</span></label>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="file_upfile"
                                                        name="file_upfile">
                                                    <label class="custom-file-label" for="file_upfile">Choose
                                                        file</label>
                                                </div>
                                            </div>
                                            <!-- /.form-group -->

                                            <div class="form-group">
                                                <label for="file_test">Image Test <span class="text-danger"> (Only
                                                        picture
                                                        and upload-max-filesize 20M*)</span></label>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="file_test"
                                                        name="file_test">
                                                    <label class="custom-file-label" for="file_test">Choose
                                                        file</label>
                                                </div>
                                            </div>
                                            <!-- /.form-group -->


                                            <!-- textarea -->
                                            <div class="form-group">
                                                <label>Descriptions</label>
                                                <textarea class="form-control" name="detail" id="detail" rows="6"
                                                    placeholder="รายละเอียด"></textarea>
                                            </div>


                                            <!-- ดึงข้อมูล Folder มาจาก folder_doc -->
                                            <?php
                                            $contact_name = "";
                                            $_sql_service = "SELECT DISTINCT * FROM contact";
                                            $query_service = mysqli_query($conn, $_sql_service);
                                            ?>

                                            <div class="row">
                                                <div class="col col-5">
                                                    <div class="form-group">
                                                        <label>Requester <span class="text-danger">*</span></label>
                                                        <select class="custom-select select2 " width=""
                                                            name="requester">
                                                            <option selected="selected">คุณอาทิตย์ (พี่เหน่ง)</option>
                                                            <?php while ($r = mysqli_fetch_array($query_service)) { ?>
                                                            <option value="<?php echo $r["contact_name"]; ?>"
                                                                <?php if ($r['contact_name'] == $contact_name) : ?>
                                                                selected="selected" <?php endif; ?>>
                                                                <?php echo $r["contact_name"]; ?>
                                                            </option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                    <!-- Dropdown List Folder -->
                                                </div>
                                                <div class="col col">
                                                    <div class="form-group">
                                                        <label>Add <i class="nav-icon fas fa-plus style=" color:
                                                                #1f5d09;></i></label><br>
                                                        <a href="#" class="btn btn-info btn-sm " data-toggle="modal"
                                                            data-target="#editbtn3"> <i
                                                                class="fas fa-pencil-alt"></i></a>
                                                    </div>
                                                    <!-- Add Folder -->
                                                </div>


                                                 <!-- ดึงข้อมูล Folder มาจาก folder_doc -->
                                            <?php
                                            $contact_name = "";
                                            $_sql_service = "SELECT DISTINCT * FROM contact";
                                            $query_service = mysqli_query($conn, $_sql_service);
                                            ?>
                                                <div class="col col-5">
                                                    <div class="form-group">
                                                        <label>Operation Staff <span class="text-danger">*</span></label>
                                                        <select class="custom-select select2 " width=""
                                                            name="staff_crt">
                                                            <option selected="selected"></option>
                                                            <?php while ($r = mysqli_fetch_array($query_service)) { ?>
                                                            <option value="<?php echo $r["contact_name"]; ?>"
                                                                <?php if ($r['contact_name'] == $contact_name) : ?>
                                                                selected="selected" <?php endif; ?>>
                                                                <?php echo $r["contact_name"]; ?>
                                                            </option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                    <!-- Dropdown List Folder -->
                                                </div>
                                                <div class="col col">
                                                    <div class="form-group">
                                                        <label>Add <i class="nav-icon fas fa-plus style=" color:
                                                                #1f5d09;></i></label><br>
                                                        <a href="#" class="btn btn-info btn-sm " data-toggle="modal"
                                                            data-target="#editbtn4"> <i
                                                                class="fas fa-pencil-alt"></i></a>
                                                    </div>
                                                    <!-- Add Folder -->
                                                </div>
                                            </div>

                                            <!-- Date range -->
                                            <div class="form-group mt-5">
                                                <button type="submit" name="submit" value="submit"
                                                    class="btn btn-success"> Save </button>
                                            </div>
                                            <!-- /.form group -->



                                        </div>

                                    </form>

                                    <div class="card-footer">
                                        Visit <a href="https://getdatepicker.com/5-4/">tempusdominus </a> for more
                                        examples and information about
                                        the plugin.
                                    </div>
                                    <!-- /.card-body -->
                                </div>
                                <!-- /.card -->
                                <!-- /.card -->
                            </div>
                            <!-- /.col (right) -->
                        </div>
                        <!-- /.col (right) -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
        </section>
        <!-- /.content -->


    </div>
    <!-- /.content-wrapper -->


    <!----------------------------- start menu ------------------------------->
    <?php include("../up/templated/footer.php"); ?>
    <!----------------------------- end menu --------------------------------->

    <!-- highlight -->
    <script src="code/dist/js/highlight.js"></script>

    <script>
    $("#myTable tr").highlight();
    </script>
    <!-- highlight -->

    <!----------------------------- start Modal Add user ------------------------------->

    <?php
     if (isset($_POST['submit'])) { /* ถ้า POST มีการกด Submit ให้ทำส่วนล่าง */

        $service_name = "";
        $category_name = "";
        $items_name = "";
        $contact_name = "";

        if ($service_name = $_POST['service_name']){
            $sql =  "INSERT INTO `service` ( `service_name`)  VALUES ('$service_name')";
            $result = $conn->query($sql);
            if ($result) {
                echo '<script>
                    setTimeout(function() {
                    swal({
                            title: " Saved successfully.",
                            text: "",
                            type: "success"
                        }, function() {
                            window.location = "add.php"; //หน้าที่ต้องการให้กระโดดไป
                            });
                            }, 1000);
                        </script>';
            } else {
                echo '<script>
                    setTimeout(function() {
                    swal({
                            title: "Please check the input.",
                            type: "error"
                    }, function() {
                            window.location = "add.php"; //หน้าที่ต้องการให้กระโดดไป
                            });
                            }, 1000);
                        </script>';
            }
        }if($category_name = $_POST['category_name']){
            $sql =  "INSERT INTO `category` ( `category_name`)  VALUES ('$category_name')";
            $result = $conn->query($sql);
            if ($result) {
                echo '<script>
                    setTimeout(function() {
                    swal({
                            title: " Saved successfully.",
                            text: "",
                            type: "success"
                        }, function() {
                            window.location = "add.php"; //หน้าที่ต้องการให้กระโดดไป
                            });
                            }, 1000);
                        </script>';
            } else {
                echo '<script>
                    setTimeout(function() {
                    swal({
                            title: "Please check the input.",
                            type: "error"
                    }, function() {
                            window.location = "add.php"; //หน้าที่ต้องการให้กระโดดไป
                            });
                            }, 1000);
                        </script>';
            }
        }if($items_name = $_POST['items_name']){
            $sql =  "INSERT INTO `items` (`items_name`)  VALUES ('$items_name')";
            $result = $conn->query($sql);
            if ($result) {
                echo '<script>
                    setTimeout(function() {
                    swal({
                            title: " Saved successfully.",
                            text: "",
                            type: "success"
                        }, function() {
                            window.location = "add.php"; //หน้าที่ต้องการให้กระโดดไป
                            });
                            }, 1000);
                        </script>';
            } else {
                echo '<script>
                    setTimeout(function() {
                    swal({
                            title: "Please check the input.",
                            type: "error"
                    }, function() {
                            window.location = "add.php"; //หน้าที่ต้องการให้กระโดดไป
                            });
                            }, 1000);
                        </script>';
            }
        }if($contact_name = $_POST['contact_name']){
            $sql =  "INSERT INTO `contact` (`contact_name`)  VALUES ('$contact_name')";
            $result = $conn->query($sql);
            if ($result) {
                echo '<script>
                    setTimeout(function() {
                    swal({
                            title: " Saved successfully.",
                            text: "",
                            type: "success"
                        }, function() {
                            window.location = "add.php"; //หน้าที่ต้องการให้กระโดดไป
                            });
                            }, 1000);
                        </script>';
            } else {
                echo '<script>
                    setTimeout(function() {
                    swal({
                            title: "Please check the input.",
                            type: "error"
                    }, function() {
                            window.location = "add.php"; //หน้าที่ต้องการให้กระโดดไป
                            });
                            }, 1000);
                        </script>';
            }
        }if($contact_name = $_POST['contact_namee']){
            $sql =  "INSERT INTO `contact` (`contact_name`)  VALUES ('$contact_name')";
            $result = $conn->query($sql);
            if ($result) {
                echo '<script>
                    setTimeout(function() {
                    swal({
                            title: " Saved successfully.",
                            text: "",
                            type: "success"
                        }, function() {
                            window.location = "add.php"; //หน้าที่ต้องการให้กระโดดไป
                            });
                            }, 1000);
                        </script>';
            } else {
                echo '<script>
                    setTimeout(function() {
                    swal({
                            title: "Please check the input.",
                            type: "error"
                    }, function() {
                            window.location = "add.php"; //หน้าที่ต้องการให้กระโดดไป
                            });
                            }, 1000);
                        </script>';
            }
        }else {
            echo '<script>
                    function() {
                            window.location = "ERRRRR"; //หน้าที่ต้องการให้กระโดดไป
                            });
                            }, 1000);
                  </script>';
        }
    }
        
    ?>

    <div class="modal fade" id="editbtn">
        <div class="modal-dialog editbtn">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add Service</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" method="POST" enctype="multipart/form-data">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Service</label>
                                <input type="text" name="service_name" class="form-control" id="service_name"
                                    placeholder="" required>
                            </div>
                            <!-- /.form-group -->
                        </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" name="submit" value="submit" class="btn btn-success">Save</button>
                </div>
                </form>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <!----------------------------- end Modal Add user --------------------------------->
    <div class="modal fade" id="editbtn1">
        <div class="modal-dialog editbtn1">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add Category</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" method="POST" enctype="multipart/form-data">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Category</label>
                                <input type="text" name="category_name" class="form-control" id="category_name"
                                    placeholder="" required>
                            </div>
                            <!-- /.form-group -->
                        </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" name="submit" value="submit" class="btn btn-success">Save</button>
                </div>
                </form>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <!----------------------------- end Modal Add user --------------------------------->
    <div class="modal fade" id="editbtn2">
        <div class="modal-dialog editbtn2">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add Items</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" method="POST" enctype="multipart/form-data">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Items</label>
                                <input type="text" name="items_name" class="form-control" id="items_name" placeholder=""
                                    required>
                            </div>
                            <!-- /.form-group -->
                        </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" name="submit" value="submit" class="btn btn-success">Save</button>
                </div>
                </form>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
     <!----------------------------- end Modal Add user --------------------------------->
     <div class="modal fade" id="editbtn3">
        <div class="modal-dialog editbtn3">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add Requester</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" method="POST" enctype="multipart/form-data">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Name</label>
                                <input type="text" name="contact_name" class="form-control" id="contact_name" placeholder=""
                                    required>
                            </div>
                            <!-- /.form-group -->
                        </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" name="submit" value="submit" class="btn btn-success">Save</button>
                </div>
                </form>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
     <!----------------------------- end Modal Add user --------------------------------->
     <div class="modal fade" id="editbtn4">
        <div class="modal-dialog editbtn4">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add Operation Staff</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" method="POST" enctype="multipart/form-data">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Name</label>
                                <input type="text" name="contact_namee" class="form-control" id="contact_namee" placeholder=""
                                    required>
                            </div>
                            <!-- /.form-group -->
                        </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" name="submit" value="submit" class="btn btn-success">Save</button>
                </div>
                </form>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->