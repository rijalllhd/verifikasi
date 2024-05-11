<?php
$servername = "localhost";
$database = "ypai";
$username = "root";
$password = "";

// Create connection

$db = mysqli_connect($servername, $username, $password, $database);

// Check connection
if ($db->connect_error){
    echo "error connection!!";
    die("Koneksi Gagal : " . $db->connect_error);
}
//else {
//    echo "koneksi berhasil";
//}
?>
