<?php

include '../../koneksi/augie.php';

session_start();

// Check existence of id parameter before processing further
// if(isset($_GET["Id"]) && !empty(trim($_GET["Id"]))){
//     // Include config file
//     include "../../koneksi/augie.php";
    
//     // Prepare a select statement
//     $sql = "SELECT * FROM DataSiswa WHERE Id = '$_GET[Id]'";
    
//     if($stmt = mysqli_prepare($db, $sql)){
//         // Bind variables to the prepared statement as parameters
//         mysqli_stmt_bind_param($stmt, "i", $param_id);
        
//         // Set parameters
//         $param_id = trim($_GET["Id"]);
        
//         // Attempt to execute the prepared statement
//         if(mysqli_stmt_execute($stmt)){
//             $result = mysqli_stmt_get_result($stmt);
    
//             if(mysqli_num_rows($result) == 1){
//                 /* Fetch result row as an associative array. Since the result set
//                 contains only one row, we don't need to use while loop */
//                 $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                
//                 // Retrieve individual field value
//                 $Name = $row["Nama"];
//                 $kelas = $row['Kelas'];
//                 $sekolah = $row["Sekolah"];
//                 $induk = $row["NOInduk"];
//                 $NISN = $row["NISN"];
//                 $UjianXIITP2324 = $row["UjianXIITP2324"];
//                 $SPP2324 = $row["SPP2324"];
//                 $SPP2223 = $row["SPP2223"];
//                 $SPP2122 = $row["SPP2122"];
//                 $PPDB2122 = $row["PPDB2122"];
//                 $Tour = $row["Tour"];
//                 $Total = $row["Total"];

//             } else{
//                 // Redirect to error page if id parameter is invalid
//                 header("location: error.php");
//                 exit();
//             }
            
//         } else{
//             echo "Oops! Something went wrong. Please try again later.";
//         }
//     }
     
//     // Close statement
//     mysqli_stmt_close($stmt);
    
//     // Close connection
//     mysqli_close($db);
// } else{
//     // Redirect to error page if id parameter is missing
//     header("location: error.php");
//     exit();
// }


$Id = $_GET["Id"];

$siswa = mysqli_query($db, "SELECT * FROM DataSiswa WHERE Id = '$_GET[Id]'");
$datasiswa = mysqli_fetch_array($siswa);


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Record</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        .wrapper{
            width: 500px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h1>View Record</h1>
                    </div>
                    <div class="form-group">
                        <label>Nama</label>
                        <p class="form-control-static"><?php echo htmlspecialchars($datasiswa["Nama"]); ?></p>
                    </div>
                    <div class="form-group">
                        <label>Kelas</label>
                        <p class="form-control-static"><?php echo htmlspecialchars($datasiswa["Kelas"]); ?></p>
                    </div>
                    <div class="form-group">
                        <label>Sekolah</label>
                        <p class="form-control-static"><?php echo htmlspecialchars($datasiswa["Sekolah"]); ?></p>
                    </div>
                    <div class="form-group">
                        <label>Nomor Induk</label>
                        <p class="form-control-static"><?php echo htmlspecialchars($datasiswa["NOInduk"]); ?></p>
                    </div>
                    <div class="form-group">
                        <label>NISN</label>
                        <p class="form-control-static"><?php echo htmlspecialchars($datasiswa["NISN"]); ?></p>
                    </div>
                    <div class="form-group">
                        <label>UjianXIITP2324</label>
                        <p class="form-control-static"><?php echo htmlspecialchars($datasiswa["UjianXIITP2324"]); ?></p>
                    </div>
                    <div class="form-group">
                        <label>SPP2324</label>
                        <p class="form-control-static"><?php echo htmlspecialchars($datasiswa["SPP2324"]); ?></p>
                    </div>
                    <div class="form-group">
                        <label>SPP2223</label>
                        <p class="form-control-static"><?php echo htmlspecialchars($datasiswa["SPP2223"]); ?></p>
                    </div>
                    <div class="form-group">
                        <label>SPP2122</label>
                        <p class="form-control-static"><?php echo htmlspecialchars($datasiswa["SPP2122"]); ?></p>
                    </div>
                    <div class="form-group">
                        <label>PPDB2122</label>
                        <p class="form-control-static"><?php echo htmlspecialchars($datasiswa["PPDB2122"]); ?></p>
                    </div>
                    <div class="form-group">
                        <label>Tour</label>
                        <p class="form-control-static"><?php echo htmlspecialchars($datasiswa["Tour"]); ?></p>
                    </div>
                    <div class="form-group">
                        <label>Total</label>
                        <p class="form-control-static"><?php echo htmlspecialchars($datasiswa["Total"]); ?></p>
                    </div>
                    <p><a href="datasiswa.php" class="btn btn-primary">Back</a></p>
                </div>
            </div>        
        </div>
    </div>
</body>
</html>
