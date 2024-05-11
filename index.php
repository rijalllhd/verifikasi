<?php
include '../verifikasi/koneksi/augie.php';

session_start();
if(isset($_POST['submit'])){

    $NISN = mysqli_real_escape_string($db, $_POST['NISN']);
    $select = mysqli_query($db, "SELECT * FROM DataSiswa WHERE NISN = '$NISN' AND Total = '0'") or die('query failed');
 
    if(mysqli_num_rows($select) > 0){
       $row = mysqli_fetch_assoc($select);
       $_SESSION['Id'] = $row['Id'];
       header("location: /verifikasi/verifikasi/verifikasi.php");
    }
    else{
        header("location:index.php?notif=gagal");  
    }
 
}
?>

<!--start html-->

<!DOCTYPE html>
<html lang="en">

<!--start head-->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verifikasi</title>
    <link rel="icon" type="image/x-icon" href="/build/img/icon.png">

    <!--Bootstrap link-->
    <link 
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!--Google Font: Times New Roman-->
    <link
        rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&display=swap"/>
    <!--Theme style-->
    <link 
        rel="stylesheet" 
        href="/dist/css/adminlte.min.css"/>
    <!--Font Awesome-->
    <link 
        rel="stylesheet" 
        href="/fontawesome-free/css/all.min.css"
        />

</head>
<!--end head-->
<!--start body-->
<body class="hold-transition login-page">
    <!--login box-->
    <div class="login-box">
        <!--card-->
        <div class="card card-outline card-primary">
            <!--card-header-->
            <div class="card-header text-center">
                <h3 class="fw-bold">INFORMASI KELULUSAN SISWA</h3>
                <img src="/build/img/pijar/logo_pijaralam.png" 
                alt="Pijar Alam Logo" width="100">
                <img src="/build/img/gsp/gsp.png" 
                alt="gsp Logo" width="100">
                <br>
                <br>
                <a href="index.html" class="h5 font-weight-bold">SMK PIJAR ALAM <br>&<br>SMK GLOBAL SURYA PRATAMA</a>

            </div>
            <!--end card header-->
            <!--card body-->
            <div class="card-body">
                <p class="login-box-msg">Masukan Nomer Induk Siswa Nasional</p>
                <!--form-->
                <form action="" method="post" onsubmit="return checkForm(this)">
                    <div class="input-group mb-3">
                        <input 
                            type="text" 
                            maxlength="20"
                            id="NISN" 
                            name="NISN" 
                            class="form-control" 
                            placeholder="Nomor Induk Siswa Nasional" 
                            onkeyup="return checkInput(this)"
                            required
                        />
                    <div class="input-group-append">
                        <div class="input-group-text">
                          <span class="fas fa-user"></span>
                        </div>
                    </div>
                    </div>
                    <div class="row">
                        <!-- /.col -->
                        <div class="col-4">
                          <button type="submit" class="btn btn-primary btn-block btn-sm" name="submit" id="submit">
                            CEK
                          </button>
                        </div>
                        <!-- /.col -->
                      </div>
                </form>
                <!--end form-->

                <?php
                    if (isset($_GET['notif'])) {
                        if ($_GET['notif'] == "gagal");
                            echo '<div class="position-absolute top-50 start-50 translate-middle alert alert-danger alert-dismissible fade show" role="alert">
                                <strong>Maaf! </strong> Silahkan Hubungi Tata Usaha Untuk Memperoleh akses Informasi
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>';
                    }
                ?>
            </div>
            <!--end card body-->
        </div>
        <!--end card-->
    </div>
    <!--end login box-->

    <!--start Script-->
    <!--bootstrap js-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous">
    </script>

    <!--adminlte app js-->
    <script 
        src="/build/js/adminlte.min.js">
    </script>
    <!--end script-->
    
</body>
<!--end body-->
</html>
<!--end html-->