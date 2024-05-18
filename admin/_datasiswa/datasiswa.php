<?php
include '../../koneksi/augie.php';

session_start();

$username = $_SESSION['Username'];

if (!isset($username)) {
  header('location: ../index.php');
}

$select = mysqli_query($db, "SELECT * FROM Admin WHERE Username = '$username'") or die('query failed');
if (mysqli_num_rows($select) > 0) {
  $fetch = mysqli_fetch_assoc($select);
  //mysqli_close($db);
}

if (isset($_POST['logout'])) {
  session_unset();
  session_destroy();
  header('location: ../index.php');
}

?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin Area - Siswa</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="../plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="../plugins/summernote/summernote-bs4.min.css">

</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item d-none d-sm-inline-block">
          <a href="../home.php" class="nav-link">Home</a>
      </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->
      <a href="#" class="brand-link">
        <img src="../img/logo_pijaralam.png" alt="pilam_logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">YPAI</span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <div class="info">
            <a href="#" class="d-block"> <?php echo $username; ?></a>
          </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
            <li class="nav-item">
              <a href="../_dashboard/dashboard.php" class="nav-link">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p>Dashboard</p>
              </a>
            </li>
            <li class="nav-item menu-open active">
              <a href="#" class="nav-link">
                <i class="nav-icon fas ion-pie-graph"></i>
                <p>Data Siswa</p>
              </a>
            </li>
            <li class=" nav-item">
              <form action="datasiswa.php" method="POST">
                <button class="btn btn-danger" type="submit" name="logout">Logout</button>
              </form>
          </ul>
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0">Data Siswa</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item">
                  <a href="/admin/home.html">Home</a>
                </li>
                <li class="breadcrumb-item active">
                  <a href="#">Data Siswa</a>
                </li>
                </li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class=" card-header clearfix">
                <a href="create.php" class="btn btn-success">Tambah Baru</a>
              </div>
              <div class="card-body">
                <?php
                // Include config file
                require_once "../../koneksi/augie.php";

                // Attempt select query execution
                $sql = "SELECT * FROM DataSiswa";
                if ($result = mysqli_query($db, $sql)) {
                  if (mysqli_num_rows($result) > 0) {
                    echo "<table class='table table-bordered table-striped'>";
                    echo "<thead>";
                    echo "<tr>";
                    echo "<th>#</th>";
                    echo "<th>Nama</th>";
                    echo "<th>Kelas</th>";
                    echo "<th>Sekolah</th>";
                    echo "<th>Nomor Induk</th>";
                    echo "<th>NISN</th>";
                    echo "<th>Kegiatan Ujian XII TP 2023/2024</th>";
                    echo "<th>SPP 2023/2024</th>";
                    echo "<th>SPP 2022/2023</th>";
                    echo "<th>SPP 2021/2022</th>";
                    echo "<th>Tunggakan PPDB 2021/2022</th>";
                    echo "<th>Tour</th>";
                    echo "<th>Total</th>";
                    echo "<th>Pengaturan</th>";
                    echo "</tr>";
                    echo "</thead>";
                    echo "<tbody>";
                    while ($row = mysqli_fetch_array($result)) {
                      echo "<tr>";
                      echo "<td>" . $row['Id'] . "</td>";
                      echo "<td>" . $row['Nama'] . "</td>";
                      echo "<td>" . $row['Kelas'] . "</td>";
                      echo "<td>" . $row['Sekolah'] . "</td>";
                      echo "<td>" . $row['NOInduk'] . "</td>";
                      echo "<td>" . $row['NISN'] . "</td>";
                      echo "<td>" . $row['UjianXIITP2324'] . "</td>";
                      echo "<td>" . $row['SPP2324'] . "</td>";
                      echo "<td>" . $row['SPP2223'] . "</td>";
                      echo "<td>" . $row['SPP2122'] . "</td>";
                      echo "<td>" . $row['PPDB2122'] . "</td>";
                      echo "<td>" . $row['Tour'] . "</td>";
                      echo "<td>" . $row['LKS'] . "</td>";
                      echo "<td>" . $row['Total'] . "</td>";
                      echo "<td>";
                      echo "<a href='read.php?Id=" . $row['Id'] . "' title='View Record' data-toggle='tooltip'><span class='fa fa-eye'></span></a>";
                      echo "<a href='edit.php?Id=" . $row['Id'] . "' title='Update Record' data-toggle='tooltip'><span class='fa fa-pen'></span></a>";
                      echo "<a href='delete.php?Id=" . $row['Id'] . "' title='Delete Record' data-toggle='tooltip'><span class='fa fa-trash'></span></a>";
                      echo "</td>";
                      echo "</tr>";
                    }
                    echo "</tbody>";
                    echo "</table>";
                    // Free result set
                    mysqli_free_result($result);
                  } else {
                    echo "<p class='lead'><em>No records were found.</em></p>";
                  }
                } else {
                  echo "ERROR: Could not able to execute $sql. " . mysqli_error($db);
                }

                // Close connection
                //mysqli_close($db);
                ?>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
  </div>
  <!-- ./wrapper -->

  <!-- jQuery -->
  <script src="../../plugins/jquery/jquery.min.js"></script>
  <!-- jQuery UI 1.11.4 -->
  <script src="../../plugins/jquery-ui/jquery-ui.min.js"></script>
  <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
  <script>
    $.widget.bridge('uibutton', $.ui.button)
  </script>
  <!-- Bootstrap 4 -->
  <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Tempusdominus Bootstrap 4 -->
  <script src="../../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
  <!-- overlayScrollbars -->
  <script src="../../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
  <!-- AdminLTE App -->
  <script src="../../dist/js/adminlte.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('[data-toggle="tooltip"]').tooltip();
    });
  </script>
</body>

</html>