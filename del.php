
    <!----------------------------- start header ------------------------------->
    <?php include("../pms/templated/head.php"); ?>
    <!----------------------------- end header --------------------------------->

    <!----------------------------- start menu ------------------------------->
    <?php include("../pms/templated/menu.php"); ?>
    <!----------------------------- end menu --------------------------------->
<!-- Start Configrate  -->
<?php
        include("connection/connection.php"); 
    ?>
<!-- End Configrate  -->
    <?php
        /* การลบข้อมูล */
        if (isset($_GET['id'])) {

            print_r($_GET['id']);

            $result = $conn->query("DELETE FROM work WHERE work_id=" . $_GET['id']);
            print_r($result);

            if ($result) {
                // <!-- sweetalert -->
                echo '<script>
                        setTimeout(function(){
                            swal({
                                title: "Successfully!",
                                text: "Delect Infomation Complatrd.",
                                type:"success"
                            }, function(){
                                window.location = "index.php";
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
                                window.location = "index.php";
                            })
                        },1000);
                    </script>';
            //     echo "<script>alert('ยินดีตอนรับ Admin เข้าสู่ระบบ'); window.location='../index.php'</script>";
            }
        }
        /* การลบข้อมูล */
    ?>

      <!----------------------------- start menu ------------------------------->
      <?php include("../pms/templated/footer.php"); ?>
    <!----------------------------- end menu --------------------------------->