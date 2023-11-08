

    <!-- Start Configrate  -->
    <?php
    include("connection/connection.php");
    ?>
    <!-- End Configrate  -->

    <!-- sweetalert -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">


    <?php
    if (isset($_POST['submit'])) { /* ถ้า POST มีการกด Submit ให้ทำส่วนล่าง */

        $work_type  = $_POST['work_type']; /* ประกาศตัวแปลเก็บค่า  POST ที่รับมาจาก INPUT  */
        $work_type = $_POST['work_type'];
        $service = $_POST['service_name'];
        $category = $_POST['category_name'];
        $items = $_POST['items_name'];
        $subject = $_POST['subject'];
        $status = $_POST['status'];
        $detail = $_POST['detail'];
        $requester = $_POST['requester'];
        $staff_crt = $_POST['staff_crt'];
        $project_name = $_POST['project_name'];



        $target_dir = "../pms/example/";
        $target_file = $target_dir . basename($_FILES["file_upfile"]["name"]);
        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

        $target_dir1 = "../pms/test/";
        $target_file1 = $target_dir1 . basename($_FILES["file_test"]["name"]);
        $imageFileType1 = strtolower(pathinfo($target_file1, PATHINFO_EXTENSION));
        $file_test = $_FILES["file_test"]["name"] ;




        //printf($target_file1);

        // Check if $uploadOk is set to 0 by an error
        if ($imageFileType == " " ) {

            //echo "Sorry, your file was not uploaded.";
            echo '<script>
                    setTimeout(function(){
                        swal({
                            title: "Sorry, your file was not uploaded.",
                            text: "Please check the file name.",
                            type:"warning"
                        }, function(){
                            window.location = "doc_add.php";
                        })
                    },1000);
                </script>';
            // echo "<script>alert('ยินดีตอนรับ Admin เข้าสู่ระบบ'); window.location='../index.php'</script>
        //}

        // Check if file already exists
        // if (file_exists($target_file)) {

        //     //echo "Sorry, file already exists.";
        //     // <!-- sweetalert -->
        //     echo '<script>
        //             setTimeout(function(){
        //                 swal({
        //                     title: "Sorry, file already exists.",
        //                     text: "Please check the file name.",
        //                     type:"warning"
        //                 }, function(){
        //                     window.location = "add.php";
        //                 })
        //             },1000);
        //         </script>';
            // echo "<script>alert('ยินดีตอนรับ Admin เข้าสู่ระบบ'); window.location='../index.php'</script>";
        } else {

            $file_upfile = $_FILES['file_upfile']['name'];
            $file_tmp = $_FILES['file_upfile']['tmp_name'];
            move_uploaded_file($file_tmp, "../pms/example/$file_upfile");

            $file_upfile1 = $_FILES['file_test']['name'];
            $file_tmp1 = $_FILES['file_test']['tmp_name'];
            move_uploaded_file($file_tmp1, "../pms/test/$file_upfile1");



            $sql = "INSERT INTO `work` (`work_id`, `work_type`,`service`, `category`,
            `items`, `file_upfile`,  `subject`, `status`,`detail`,`requester`,`staff_crt`,
            `file_test`,`project_name`)
            VALUES (NULL, '$work_type', '$service', '$category', '$items', '$file_upfile',
             '$subject', '$status', '$detail', '$requester', '$staff_crt','$file_test','$project_name')";



            $result = $conn->query($sql);

            //print_r($sql);

            if ($result) {
                // <!-- sweetalert -->
                echo '<script>
                        setTimeout(function(){
                            swal({
                                title: "Save data successfully",
                                text: "Thank You . ",
                                type:"success"
                            }, function(){
                                window.location = "index.php";
                            })
                        },1000);
                   </script>';
                   
                //    $sToken = "8CyHEXNouMVT3mgLFBb8sw74DbEwkZ5lN6oabOQ0vk9";

                //     $sMessage = "".$staff_crt." **Open Ticket** \n\n";
                //     $sMessage .= "Category: ".$category." \n";
                //     $sMessage .= "Type: ".$work_type." \n";
                //     $sMessage .= "Items: ".$items." \n\n";
                //     $sMessage .= "-------------------------- \n";
                //     $sMessage .= "Status : ".$status."\n";
                //     $sMessage .= "-------------------------- \n";
                //     $sMessage .= "Owner: ".$requester." \n";
                //     $sMessage .= "Subject : ".$subject."\n\n";
       
                //    $sMessage .= "ติดตามงานได้ที่ Link Web: http://58.137.58.163/pms/index.php \n"; 
       
       
                //    $sMessage .= "@All";
                
       
       
                //    $chOne = curl_init(); 
                //    curl_setopt( $chOne, CURLOPT_URL, "https://notify-api.line.me/api/notify"); 
                //    curl_setopt( $chOne, CURLOPT_SSL_VERIFYHOST, 0); 
                //    curl_setopt( $chOne, CURLOPT_SSL_VERIFYPEER, 0); 
                //    curl_setopt( $chOne, CURLOPT_POST, 1); 
                //    curl_setopt( $chOne, CURLOPT_POSTFIELDS, "message=".$sMessage); 
                //    $headers = array( 'Content-type: application/x-www-form-urlencoded', 'Authorization: Bearer '.$sToken.'', );
                //    curl_setopt($chOne, CURLOPT_HTTPHEADER, $headers); 
                //    curl_setopt( $chOne, CURLOPT_RETURNTRANSFER, 1); 
                //    $resultt1 = curl_exec( $chOne ); 

                // echo "<script>alert('ยินดีตอนรับ Admin เข้าสู่ระบบ'); window.location='../index.php'</script>";
            } else {
                // <!-- sweetalert -->
                echo '<script>
                                            setTimeout(function(){
                                                swal({
                                                    title: "Can Not Save Successfully!",
                                                    text: "Checking Your Data",
                                                    type:"warning"
                                                }, function(){
                                                    window.location = "add.php";
                                                })
                                            },1000);
                                        </script>';
                // echo "<script>alert('ยินดีตอนรับ Admin เข้าสู่ระบบ'); window.location='../index.php'</script>";
            }
        }
    }
    // echo '<pre>';
    // print_r($_POST);
    // print_r($_FILES);
    // echo '</pre>';
    ?>


<!-- sweetalert -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.min.js"></script>