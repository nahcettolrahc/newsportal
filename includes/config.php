<?php
define('DB_SERVER','localhost');
define('DB_USER','letoan');
define('DB_PASS' ,'letoan12320@E');
define('DB_NAME','newsportal');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// ktra ket noi 
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>