<?php
// Include config file
require_once "../../koneksi/augie.php";

// Define variables and initialize with empty values
$nama = $kelas = $sekolah = $induk = $nisn = "";
$nama_err = $kelas_err = $sekolah_err = $induk_err = $nisn_err = "";

// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
    // Validate nama
    $input_nama = trim($_POST["nama"]);
    if(empty($input_nama)){
        $nama_err = "Tolong Masukan Nama.";
    } elseif(!filter_var($input_nama, FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-zA-Z\s]+$/")))){
        $nama_err = "Tolong Masukan Nama Yang Valid.";
    } else{
        $nama = $input_nama;
    }

    // Validate kelas
    $input_kelas = trim($_POST["kelas"]);
    if(empty($input_kelas)){
        $kelas_err = "Tolong Masukan Kelas.";
    } else{
        $kelas = $input_kelas;
    }

    // Validate salary
    $input_sekolah = trim($_POST["sekolah"]);
    if(empty($input_sekolah)){
        $sekolah_err = "Tolong Masukan Nama Sekolah.";
    } else{
        $sekolah = $input_sekolah;
    }

    // Validate nomer induk
    $input_induk = trim($_POST["induk"]);
    if(empty($input_induk)){
        $sekolah_err = "Tolong Masukan Nomer Induk Yang Valid.";
    } else{
        $induk = $input_induk;
    }

    // Validate NISN
    $input_nisn = trim($_POST["nisn"]);
    if(empty($input_nisn)){
        $nisn_err = "Tolong Masukan Nomor NISN Yang Valid.";
    } else{
        $nisn = $input_nisn;
    }

    // Check input errors before inserting in database
    if(empty($nama_err) && empty($kelas_err) && empty($sekolah_err) && empty($induk_err) && empty($nisn_err)){
        // Prepare an insert statement
        $sql = "INSERT INTO DataSiswa (`Id`, `Nama`, `Kelas`, `Sekolah`, `NOInduk`, `NISN`, `UjianXIITP2324`, `SPP2324`, `SPP2223`, `SPP2122`, `PPDB2122`, `Tour`, `LKS`, `Total`) VALUES (NULL, ?, ?, ?, ?, ?, '', '', '', '', '', '', '', '')";

        if($stmt = mysqli_prepare($db, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "sssss", $param_nama, $param_kelas, $param_sekolah, $param_induk, $param_nisn);
        

            // Set parameters
            $param_nama = $nama;
            $param_kelas = $kelas;
            $param_sekolah = $sekolah;
            $param_induk = $induk;
            $param_nisn = $nisn;

            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Records created successfully. Redirect to landing page
                echo "<script>
                        alert('Data berhasil ditambah!');
                        document.location.href = 'datasiswa.php';
                    </script>";
                exit();
            } else{
                echo "Something went wrong. Please try again later.";
            }
        }

        // Close statement
        mysqli_stmt_close($stmt);
    }

    // Close connection
    mysqli_close($db);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Record</title>
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
                        <h2>Tambah Record</h2>
                    </div>
                    <p>Silahkan isi form di bawah ini kemudian submit untuk menambahkan data siswa ke dalam database.</p>
                    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
                        <div class="form-group <?php echo (!empty($nama_err)) ? 'has-error' : ''; ?>">
                            <label>Nama</label>
                            <input type="text" name="nama" class="form-control" value="<?php echo $nama; ?>">
                            <span class="help-block"><?php echo $nama_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($kelas_err)) ? 'has-error' : ''; ?>">
                            <label>Kelas</label>
                            <input type="text" name="kelas" class="form-control"><?php echo $kelas; ?></input>
                            <span class="help-block"><?php echo $kelas_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($sekolah_err)) ? 'has-error' : ''; ?>">
                            <label>Sekolah</label>
                            <select name="sekolah" id="sekolah" class=" form-control">
                                <option value="" disabled>-Nama Sekolah-</option>
                                <option value="SMK GLOBAL SURYA PRATAMA" <?php if ($sekolah == "SMK GLOBAL SURYA PRATAMA") echo "selected" ?> >SMK Global Surya Pratama</option>
                                <option value="SMK PIJAR ALAM 1" <?php if ($sekolah == "SMK PIJAR ALAM 1") echo "selected" ?> >SMK PIJAR ALAM 1</option>
                                <option value="SMK PIJAR ALAM 2" <?php if ($sekolah == "SMK PIJAR ALAM 2") echo "selected" ?> >SMK PIJAR ALAM 2</option>
                            </select>
                            <span class="help-block"><?php echo $sekolah_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($induk_err)) ? 'has-error' : ''; ?>">
                            <label>Nomor Induk</label>
                            <input type="text" name="induk" class="form-control" value="<?php echo $induk; ?>">
                            <span class="help-block"><?php echo $induk_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($nisn_err)) ? 'has-error' : ''; ?>">
                            <label>NISN</label>
                            <input type="text" name="nisn" class="form-control" value="<?php echo $nisn; ?>">
                            <span class="help-block"><?php echo $nisn_err;?></span>
                        </div>
                        <input type="submit" name='submit' class="btn btn-success" value="Submit">
                        <a href="datasiswa.php" class="btn btn-default">Cancel</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>