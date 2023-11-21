    <?php session_start(); ?>

    <!-- Start Configrate  -->
    <?php
          include("../connection/connection.php"); 
    ?>
      
    <?php    
        //print_r($_POST); //ตรวจสอบมี input อะไรบ้าง และส่งอะไรมาบ้าง 
        //ถ้ามีค่าส่งมาจากฟอร์ม
        if(isset($_POST['username']) && isset($_POST['password']) ){
        // sweet alert 
        echo '
        <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">';



              
    //ประกาศตัวแปรรับค่าจากฟอร์ม
        $username = $_POST['username'];
        // $password = sha1($_POST['password']); //เก็บรหัสผ่านในรูปแบบ sha1 
        $password = $_POST['password']; 

    //check username  & password
        $sql="SELECT * FROM contact WHERE username='".$username."' AND password='".$password."' ";
        $result = mysqli_query($conn,$sql);

        //กรอก username & password ถูกต้อง
        if(mysqli_num_rows($result)==1){

        //fetch เพื่อเรียกคอลัมภ์ที่ต้องการไปสร้างตัวแปร session
        $row = mysqli_fetch_array($result);

        //สร้างตัวแปร session
        $_SESSION['contact_id'] = $row['contact_id'];
        $_SESSION['username'] = $row['username'];
        $_SESSION['contact_name'] = $row['contact_name'];
        $_SESSION['role'] = $row['role'];
        $_SESSION['position'] = $row['position'];


        //เช็คว่ามีตัวแปร session อะไรบ้าง
        //print_r($result);
        //print_r($_SESSION['contact_id']);

        // exit();
        echo '<script>
                    setTimeout(function() {
                        swal({
                            title: "Login success.",
                            text: "Welcome to login Sale Service. ",
                            type: "success"
                        }, function() {
                            window.location = "../index.php"; //หน้าที่ต้องการให้กระโดดไป
                    });
                    }, 1000);
        </script>';
        $conn = null; //close connect db


        }else{ //ถ้า username or password ไม่ถูกต้อง

        echo '<script>
                        setTimeout(function() {
                        swal({
                            title: "Oop.....!",
                            text: "Invalid username or password, please try again.",
                            type: "warning"
                        }, function() {
                            window.location = "../login.php"; //หน้าที่ต้องการให้กระโดดไป
                        });
                        }, 1000);
                    </script>';
                $conn = null; //close connect db
            } //else
        } //isset 
        //devbanban.com
    ?>

    <!--Login Wrapper-->
