<?php
define('DB_SERVER','localhost');
define('DB_USER','ducthinh');
define('DB_PASS' ,'ducthinh12320@E');
define('DB_NAME','newsportal');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// kiem tra ket noi
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>