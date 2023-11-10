<!DOCTYPE html>
<html lang="en">
<?php $menu = "index"; ?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Innovation | Log description</title>


    <!----------------------------- start header ------------------------------->
    <?php include("../pms/templated/head.php"); ?>
    <!----------------------------- end header --------------------------------->

    <!----------------------------- start menu ------------------------------->
    <?php include("../pms/templated/menu.php"); ?>
    <!----------------------------- end menu --------------------------------->


    <?php
    if (isset($_POST['submit1'])) { /* ถ้า POST มีการกด Submit1 ให้ทำส่วนล่าง */
        /* ประกาศตัวแปลเก็บค่า  POST ที่รับมาจาก INPUT  */
        $pip_id  = $_POST['pip_id'];
        $pip_ps  = $_POST['pip_ps'];
        $pip_month = $_POST['pip_month'];
        $pip_pst = $_POST['pip_pst'];
        $pip_psw = $_POST['pip_psw'];
        

        //print_r($_POST);
        //check duplicat
        $sql =  "INSERT INTO `pip_period` (`p_id`, `pip_id`,`pip_ps`, `pip_month`, `pip_pst`, `pip_psw`) 
                                    VALUES (NULL, '$pip_id', '$pip_ps', '$pip_month', '$pip_pst', '$pip_psw')";

        // print_r($result); 
        // print_r($num);
        //ถ้า username ซ้ำ ให้เด้งกลับไปหน้าสมัครสมาชิก ปล.ข้อความใน sweetalert ปรับแต่งได้ตามความเหมาะสม
        $result = $conn->query($sql);

    } //isset 
    //devbanban.com
    ?>

    <!----------------------------- start Project description ------------------------------->
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Log description</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Log description</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="callout callout-info">
                            <h5><i class="fas fa-info"></i> Note:</h5>
                            This page is a project details page and a project sales budget page for evaluating the
                            status of a job.
                        </div>

                        <!-- /.Get ID From -->
                        <?php
                        if (isset($_GET['id'])) {
                            $_sql = "SELECT DISTINCT * FROM work  WHERE work_id=" . $_GET['id'];
                            $query_search = mysqli_query($conn, $_sql);
                            // print_r($_sql);
                            // print_r($query_search);
                            while ($res_search = mysqli_fetch_array($query_search)) {

                        ?>
                        <!-- Main content -->
                        <div class="invoice p-3 mb-3">
                            <!-- title row -->
                            <div class="row">
                                <div class="col-12">
                                    <h4>
                                        <i class="image">
                                            <img src="../pms/img/pit.png" width=“60px” height='50' alt="User Image">
                                            <!-- class="img-circle elevation-2" -->
                                        </i> Point IT
                                        <small><span class='badge badge-secondary float-right'>Create Date :
                                                <?php echo $res_search["date_crt"]; ?></span></small>
                                    </h4>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- info row -->
                            <b>Project :</b> <span class='badge  float-right'><a href="edit.php?id=<?php echo $_GET['id']; ?>" class="btn btn-info btn-sm swalDefaultSuccess"><i class="fas fa-pencil-alt"></i></a></span><br>
                            <?php echo $res_search["project_name"]; ?>  

                            <div class="row ">
                                <div class="col-sm-8 invoice-col">
                                <b>Detail :</b><br>
                                    <address>
                                                <?php $lam = explode(PHP_EOL, $res_search["detail"]);
                                                        for ($i = 0; $i < count($lam); $i++) { ?>
                                                        <?php echo $lam[$i]; ?></br>
                                                    <?php } ?>
                                        
                                    </address>
                                </div>
                                <!-- /.col -->

                                <div class="col-sm-4 invoice-col">
                                    <div class="row">
                                        <div class="col-sm">
                                            <b>Owner :</b> <?php echo $res_search["requester"]; ?><br>
                                            <b>Staff :</b> <?php echo $res_search["staff_crt"]; ?><br>
                                            <b>Status:</b>
                                                <?php
                                                                if($res_search["status"] =='On Process'){
                                                                    echo "<span class='badge badge-warning'>{$res_search["status"]}</span>";
                                                                }elseif($res_search["status"] =='On-Hold'){
                                                                    echo "<span class='badge badge-info'>{$res_search["status"]}</span>";
                                                                }elseif($res_search["status"] =='Done'){
                                                                    echo "<span class='badge badge-success'>{$res_search["status"]}</span>";
                                                                }
                                                            ?>
                                                <br>
                                        
                                                <?php if ($res_search["status"] =='On Process') { ?>
                                                    <div class="col col-12 mb-5">
                                                        <a href="view_add.php?id=<?php echo $_GET['id']; ?>" class="btn btn-primary bg-gradient-primary btn-sm float-right" data-toggle="modal" data-target="#editbtn"><i class="fa fa-plus"></i> Add Productivity </a>
                                                    </div>
                                                <?php } ?>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm mt-3">
                                            <td  scope="col" class="text-nowrap text-center" height="" width="100">
                                                <a href="../pms/example/<?php echo $res_search["file_upfile"]; ?>" data-lightbox="image-1" data-title="../pms/example/<?php echo $res_search["file_upfile"]; ?>  (<?php echo $res_search["file_upfile"]; ?>)" class="img-fluid "   >
                                                    <?php
                                                        if($res_search["file_upfile"] ==''){
                                                            echo "<span class='badge badge-warning'>No Image</span>";
                                                        }elseif($res_search["file_upfile"]){
                                                            echo '<img class="imgx"  width="120" height="120" src="../pms/example/'.$res_search["file_upfile"].'"';
                                                        }
                                                    ?>
                                                </a>
                                                
                                            </td> 
                                        <td  scope="col" class="text-nowrap text-center" height="" width="120">
                                            <a href="../pms/test/<?php echo $res_search["file_test"]; ?>" data-lightbox="image-1" data-title="../pms/test/<?php echo $res_search["file_test"]; ?>  (<?php echo $res_search["file_test"]; ?>)" class="img-fluid "   >
                                                <?php
                                                    if($res_search["file_test"] ==''){
                                                        echo "<span class='badge badge-warning'>No Image</span>";
                                                    }elseif($res_search["file_test"]){
                                                        echo '<img class="imgx"  width="120" height="100" src="../pms/test/'.$res_search["file_test"].'"';
                                                        }
                                                ?>
                                            </a>
                                        </td>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.invoice -->
                        <?php } ?>
                        <?php } ?>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->

        <!----------------------------- End Project description ------------------------------->


        <!----------------------------- Document ------------------------------->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <!-- Start ค้นหาและ ดึงข้อมูล -->
                        <!-- ดึงไอดี Pip_id docker_add.php เพื่อส่งค่าไปยังหน้า -->
                        <?php
                            if (isset($_GET['id'])) {
                                $_sql = "SELECT * FROM tb_log WHERE work_id=" . $_GET['id'];
                                $query_search = mysqli_query($conn, $_sql);
                                // print_r($_sql);
                                // print_r($query_search);
                                 while ($res_search = mysqli_fetch_array($query_search)) {
                         ?>

                        <?php } ?>
                        <?php } ?>

                        <div class="card">
                            <div class="card-header">
                                <div class="container-fluid">
                                    <h3 class="card-title">Task Management</h3>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">

                                    <thead>
                                        <tr>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">#</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Status</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Update/Commect</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Owner</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Operator</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Date/Time</th>
                                            
                                        </tr>
                                    </thead>

                                    <tbody id="myTable">
                                        <?php
                                            $i = 1;
                                            $_sql = "SELECT * FROM work INNER JOIN tb_log On (work.work_id = tb_log.work_id) WHERE work.work_id=" . $_GET['id'];
                                            $query_search = mysqli_query($conn, $_sql);
                                            // print_r($_sql);
                                            // print_r($query_search);
                                            while ($res_search = mysqli_fetch_array($query_search)) {
                                            ?>
                                        <tr>
                                            <td scope="col" class="text-nowrap text-center " height="" width=""><?php echo $i++ ?></td>
                                            <td scope="col" class="text-nowrap text-center " height="" width="">
                                            <?php
                                                    if($res_search["v_status"] =='Approve'){
                                                        echo "<span class='badge badge-primary'>{$res_search["v_status"]}</span>";
                                                    }elseif($res_search["v_status"] =='On Process'){
                                                        echo "<span class='badge badge-warning'>{$res_search["v_status"]}</span>";
                                                    }elseif($res_search["v_status"] =='Pending'){
                                                        echo "<span class='badge badge-info'>{$res_search["v_status"]}</span>";
                                                    }elseif($res_search["v_status"] =='Done'){
                                                        echo "<span class='badge badge-success'>{$res_search["v_status"]}</span>";
                                                    }elseif($res_search["v_status"] =='Cancel'){
                                                        echo "<span class='badge badge-danger'>{$res_search["v_status"]}</span>";
                                                    }
                                                ?>
       
                                        </td>
                                            <td scope="col" class="  " height="" width="">
                                                <?php echo $res_search["add_task"]; ?> 
                                            </td>
                                            <td scope="col" class="text-nowrap text-center " height="" width=""><?php echo $res_search["staff_crt"]; ?></td>
                                            <td scope="col" class="text-nowrap text-center " height="" width=""><?php echo $res_search["staff_edit"]; ?></td>
                                            <td scope="col" class="text-nowrap text-center " height="" width=""><?php echo $res_search["date_edit"]; ?></td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>

                                    <tfoot>
                                        <tr>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">#</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Status</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Update/Commect</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Owner</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Operator</th>
                                            <th scope="col" class="text-nowrap text-center " height="" width="">Date/Time</th>
                                           
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!----------------------------- End Document ------------------------------->



    <!----------------------------- start menu ------------------------------->
    <?php include("../pms/templated/footer.php"); ?>
    <!----------------------------- end menu --------------------------------->

    <!-- Ekko Lightbox -->
    <script src="../pms/code/plugins/ekko-lightbox/ekko-lightbox.min.js"></script>
    <script src="../pms/code/plugins/filterizr/jquery.filterizr.min.js"></script>

    <script>
    $(function() {
        $(document).on('click', '[data-toggle="lightbox"]', function(event) {
            event.preventDefault();
            $(this).ekkoLightbox({
                alwaysShowClose: true
            });
        });

        $('.filter-container').filterizr({
            gutterPixels: 3
        });
        $('.btn[data-filter]').on('click', function() {
            $('.btn[data-filter]').removeClass('active');
            $(this).addClass('active');
        });
    })
    </script>

    <script src="../pms/code/dist/js/lightbox.min.js"></script>


    <!-- highlight -->
    <script src="code/dist/js/highlight.js"></script>

    <script>
    $("#myTable tr").highlight();
    </script>
    <!-- highlight -->

    <!----------------------------- start Modal Add user ------------------------------->

    <?php
     if (isset($_POST['submit'])) { /* ถ้า POST มีการกด Submit ให้ทำส่วนล่าง */

        $v_status = $_POST['v_status'];
        $add_task = $_POST['add_task'];
        $work_id = $_POST['work_id'];
        $staff_edit = $_POST['staff_edit'];

    
            $sql =  "INSERT INTO `tb_log` (`v_status`,`add_task`,`work_id`,`staff_edit` )  VALUES ('$v_status','$add_task','$work_id','$staff_edit')";
            $result = $conn->query($sql);

            //print_r($sql);

            if ($result) {
                // <!-- sweetalert -->
                echo '<script>
                        setTimeout(function(){
                            swal({
                                title: "Successfully!",
                                text: " Infomation Complatrd.",
                                type:"success"
                            }, function(){
                                window.location = "view.php?id='.$_GET['id'].'";
                            })
                        },1000);
                    </script>';
                // echo "<script>alert('ยินดีตอนรับ Admin เข้าสู่ระบบ'); window.location='../index.php'</script>";
            } else {
                // <!-- sweetalert -->
                echo '<script>
                        setTimeout(function(){
                            swal({
                                title: "Can Not Successfully!",
                                text: "Type again",
                                type:"warning"
                            }, function(){
                                window.location = "view.php?id='.$_GET['id'].'";
                            })
                        },1000);
                    </script>';
            //     echo "<script>alert('ยินดีตอนรับ Admin เข้าสู่ระบบ'); window.location='../index.php'</script>";
            }
    }
        
    ?>

    <div class="modal fade" id="editbtn">
        <div class="modal-dialog editbtn">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add Productivity</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" method="POST" enctype="multipart/form-data">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Productivity</h3>
                            </div>
                            <div class="card-body">
                                <div class="row">

                                <?php
                                            /* แสดงข้อมูล */
                                    $rl = $conn->query("SELECT * FROM work WHERE work_id=" . $_GET['id']);
                                    $rr = $rl->fetch_object()
                                  ?>

                                    <div class="col col-12 mb-4">
                                                <label>Status <span class="text-danger"><small>(กรณีแก้ไขแล้วให้เปลี่ยนสถานะ เป็น Complated)</small></span></label>
                                                <select class="form-control select2" name="v_status"
                                                    style="width: 100%;">
                                                    <option selected="selected"><?= $rr->status; ?></option>
                                                        <option>Approve</option>
                                                        <option>On Process</option>
                                                        <option>Done</option>
                                                        <option>Pending</option>
                                                        <option>Cancel</option>
                                                </select>
                                    </div>
                                            <!-- /.form-group -->
                                            
                                </div>
                                <div class="row">
                                    <div class="col col-12 ">
                                        <!-- textarea -->
                                        <div class="form-group">
                                                <label>Update/Commect (Add Task)<span class="text-danger"> <small>(อัพเดท หรือเขียนโน็ตสำหรับแท็กงานให้เจ้าหน้าที่ท่านอื่นได้ทราบ)*</small></span></label>
                                                <textarea class="form-control" name="add_task" id="add_task" rows="6" required placeholder="รายละเอียด"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col col-12">
                                        <div class="form-group">

                                            <!-- ดึงข้อมูล Folder มาจาก folder_doc -->
                                            <?php
                                            $contact_name = "";
                                            $_sql_service = "SELECT DISTINCT * FROM contact";
                                            $query_service = mysqli_query($conn, $_sql_service);
                                            ?>

                                            <label>Operation Staff <span class="text-danger"> <small>(บังคับเลือก*ชื่อผู้บันทึก*)</small></span></label>
                                                <select class="custom-select select2 " required width="" name="staff_edit">
                                                    <option selected="selected"></option>
                                                        <?php while ($r = mysqli_fetch_array($query_service)) { ?>
                                                    <option value="<?php echo $r["contact_name"]; ?>"
                                                        <?php if ($r['contact_name'] == $contact_name) : ?> selected="selected" <?php endif; ?>>
                                                            <?php echo $r["contact_name"]; ?>
                                                    </option>
                                                <?php } ?>
                                                </select>
                                        </div>
                                        <!-- /.form-group -->
                                    </div>
                                </div>

                                <!-- textarea -->
                                <div class="form-group">

                                </div>
                            </div>
                            <div class="card-footer">
                                Visit <a href="https://getdatepicker.com/5-4/">tempusdominus </a> for more
                                examples and information about
                                the plugin.
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->

                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="submit" name="submit" value="submit" class="btn btn-success">Save</button>
                        </div>


                    </form>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <!----------------------------- end Modal Add user --------------------------------->
