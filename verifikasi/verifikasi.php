<?php
include '../koneksi/augie.php';

session_start();
$Id = $_SESSION['Id'];

if(!isset($Id)){
   header('location: ../index.php');
}

$select = mysqli_query($db, "SELECT * FROM DataSiswa WHERE Id = '$Id'") or die('query failed');
if(mysqli_num_rows($select) > 0){
    $fetch = mysqli_fetch_assoc($select);
    mysqli_close($db);
}

?>

<!--start html-->
<!DOCTYPE html>
<html lang="en">
<!--start head-->

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Hasil Verifikasi</title>
  <!--Bootstrap link-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
  <!--Google Font: Times New Roman-->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&display=swap" />
  <!--Theme style-->
  <link rel="stylesheet" href="../build/css/adminlte.min.css" />
  <!--Font Awesome-->
  <link rel="stylesheet" href="../fontawesome-free/css/all.min.css" />
  <!--main css-->
  <link rel="stylesheet" href="/build/css/verifikasi.main.css">
</head>
<!--end head-->
<!--start body-->

<body>
  <!--content Header-->
  <div class="content-header">
    <div class="container">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">Verifikasi</h1>
        </div>
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
  </div>
  <!--end content header-->

  <!--main content-->
  <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="alert alert-success" role="alert">
            <h1 class="alert-heading">Selamat Anda <b>LULUS</b>!</h1>
            <hr />
            <p class="mb-0">
              Sistem Informasi Kelulusan Siswa SMK Pijar Alam & SMK Global
              Surya Pratama
            </p>
          </div>
          <div class="card border">
            <div class="card-body">
              <p class="col-md-8 fs-4 mt-5">
                NISN :
                <?php echo $fetch['NISN']; ?>
              </p>
              <p class="col-md-8 fs-4">
                Nama :
                <?php echo $fetch['Nama']; ?>
              </p>
              <p class="col-md-8 fs-4">
                Sekolah :
                <?php echo $fetch['Sekolah']; ?>
              </p>
              <p class="col-md-8 fs-4">
                Kelas :
                <?php echo $fetch['Kelas']; ?>
              </p>
              <br>
              <div class="alert alert-warning" role="alert">
                <p>
                  *Tunjukan Halaman Ini Sebagai Syarat Pengambilan Surat Keterangan
                  Kelulusan di Tata Usaha.
                </p>
              </div>
            </div>
          </div>
        </div>
        <!-- /.col-md-12 -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
  </div>
  <!--end main content-->

  <!--start script-->
  <!--bootstrap js-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
  </script>
  <!--adminlte app js-->
  <script src="../build/js/adminlte.min.js"></script>
  <!--end script-->
</body>
<!--end body-->

</html>