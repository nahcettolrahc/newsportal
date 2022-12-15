<?php 
require_once("includes/config.php");
// code   username availablity
if(!empty($_POST["username"])) {
	$uname= $_POST["username"];
$query=mysqli_query($con,"select AdminuserName from tbladmin where AdminuserName='$uname'");		
$row=mysqli_num_rows($query);
if($row>0){
echo "<span style='color:red'> Tên tài khoản đã có vui lòng chọn tên tài khoản khác</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
echo "<span style='color:green'> Tài khoản có sẵn để đăng kí .</span>";
echo "<script>$('#submit').prop('disabled',false);</script>";
}
}
?>
