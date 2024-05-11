<?php
include '../koneksi/augie.php';

session_start();

if (isset($_SESSION["is_Login"])) {
    header("location: home.php");
}

if (isset($_POST['login'])) {

    $username = mysqli_real_escape_string($db, $_POST['username']);
    $password = mysqli_real_escape_string($db, ($_POST['password']));

    $select = mysqli_query($db, "SELECT * FROM Admin WHERE Username = '$username' AND Password = '$password'") or die('query failed');

    if (mysqli_num_rows($select) > 0) {
        $row = mysqli_fetch_assoc($select);
        $_SESSION['Username'] = $row['Username'];
        $_SESSION['is_Login'] = true;
        header("location: home.php");
    } else {
        header("location: index.php?notif=gagal");
    }
    mysqli_close($db);
}

?>

<!--start html-->

<!DOCTYPE html>
<html lang="en">

<!--start head-->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login-Page</title>
    <!--Bootstrap link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!--Google Font: Times New Roman-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&display=swap" />
    <!--Theme style-->
    <link rel="stylesheet" href="dist/css/adminlte.min.css" />
    <!--Font Awesome-->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css" />

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
                <h3 class="fw-bold">Admin Area</h3>
            </div>
            <!--end card header-->
            <!--card body-->
            <div class="card-body">
                <p class="login-box-msg">Login Sebagai Admin</p>
                <!--form-->
                <form action="index.php" method="post" onsubmit="return checkForm(this)">
                    <div class="input-group mb-3">
                        <input type="text" maxlength="50" id="username" name="username" class="form-control" placeholder="Username" onkeyup="return checkInput(this)" required />
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-user"></span>
                            </div>
                        </div>
                    </div>
                    <input type="password" maxlength="255" id="password" name="password" class="form-control" placeholder="Password" onkeyup="return checkInput(this)" required /> <br>
                    <div class="row">
                        <!-- /.col -->
                        <div class="col-4">
                            <button type="submit" class="btn btn-primary btn-block btn-sm" name="login" id="login">
                                Login!
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
                                <strong>Maaf! </strong> Username Atau Password Salah, Silahkan Coba Kembali
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>

    <!--adminlte app js-->
    <script src="build/js/adminlte.min.js">
    </script>
    <!--end script-->

</body>
<!--end body-->

</html>
<!--end html-->