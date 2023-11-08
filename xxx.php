<?PHP
session_start();

/* Easy PHP Send mail by mean (http://oldirh.com)
# Create : 22/06/2009
*/




     $headers  = "MIME-Version: 1.0\r\n";
     $headers .= "Content-type: text/html; charset=tis-620\r\n";
     $headers .= "From: Apirak \r\n";

     $msgs .= " จากคุณ <br>";
     $msgs .= " โทร <br>";
     $msgs .= "ข้อความ<br>";


     $mailto = "apirak.ba@domain.com"; # อีเมล์ผู้รับ
     if(mail($mailto, $_POST['subj'], $msgs, $headers)){
     echo "ส่งสำเร็จ";
     }else{
     echo "ผิดพลาด";
     }
     exit();
 
?>

