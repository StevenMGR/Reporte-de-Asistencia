<?php 
// Hostname
$host = "localhost:3307";
// Username
$uname = "root";
// Password
$pw = "";
// Database Name
$dbname = "simple_attendance_db";

try{
    $conn = new MySQLi($host, $uname, $pw, $dbname);
}catch(Exception $e){
    echo "Database Connection Failed: <br>";
    print_r($e->getMessage());
    exit;
}
?>