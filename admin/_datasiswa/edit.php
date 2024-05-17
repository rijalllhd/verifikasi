<?php
// Include config file

include '../../koneksi/augie.php';

session_start();


// ambildata siswa
$Id = $_GET["Id"];

$siswa = mysqli_query($db, "SELECT * FROM DataSiswa WHERE Id='$_GET[Id]'");
$datasiswa = mysqli_fetch_array($siswa);

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["Id"])) {

    function editsiswa($datasiswa){
        global $db;
    
        $Id = $datasiswa["Id"];
        $Nama = $datasiswa["Nama"];
        $Kelas = $datasiswa["Kelas"];
        $Sekolah = $datasiswa["Sekolah"];
        $NOInduk = $datasiswa["NOInduk"];
        $NISN = $datasiswa["NISN"];
        $UjianXIITP2324 = $datasiswa["UjianXIITP2324"];
        $SPP2324 = $datasiswa["SPP2324"];
        $SPP2223 = $datasiswa["SPP2223"];
        $SPP2122 = $datasiswa["SPP2122"];
        $PPDB2122 = $datasiswa["PPDB2122"];
        $Tour = $datasiswa["Tour"];
        $Total = $datasiswa["Total"];
    
    
        $sql = "UPDATE DataSiswa SET 
            Nama = '$Nama',
            Kelas = '$Kelas', 
            Sekolah = '$Sekolah', 
            NOInduk = '$NOInduk',
            NISN = '$NISN',
            UjianXIITP2324 = '$UjianXIITP2324',
            SPP2324 = 'SPP2324',
            SPP2223 = '$SPP2223',
            SPP2122 = '$SPP2122',
            PPDB2122 = '$PPDB2122',
            Tour = '$Tour',
            Total = '$Total'
    
            WHERE Id = $Id";
    
        mysqli_query($db, $sql);
        return mysqli_affected_rows($db);
    }

    if (editsiswa($_POST) > 0){
        echo "
        <script>
            alert('Data berhasil diubah!');
            document.location.href = 'datasiswa.php';
        </script>";
    }else {
        echo "
        <script>
            alert('Data gagal diubah!');
            document.location.href = 'datasiswa.php';
        </script>";
    }
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Record</title>
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
                        <h2>Edit Record <?php echo htmlspecialchars($datasiswa["Nama"]); ?></h2>
                    </div>
                    <p>Silahkan isi form di bawah ini kemudian submit untuk menambahkan data siswa ke dalam database. </p>
                    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
                    <input type="hidden" name="Id" value="<?php echo trim($_GET["Id"]); ?>"/>
                        <div class="form-group <?php echo (!empty($nama_err)) ? 'has-error' : ''; ?>">
                            <label>Nama</label>
                            <input type="text" name="Nama" class="form-control" value="<?php echo htmlspecialchars($datasiswa["Nama"]); ?>">
                            <span class="help-block"><?php echo $nama_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($kelas_err)) ? 'has-error' : ''; ?>">
                            <label>Kelas</label>
                            <input type="text" name="Kelas" class="form-control" value="<?php echo htmlspecialchars($datasiswa["Kelas"]); ?>"></input>
                            <span class="help-block"><?php echo $kelas_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($sekolah_err)) ? 'has-error' : ''; ?>">
                            <label>Sekolah</label>
                            <select name="sekolah" id="sekolah" class=" form-control">
                                <option value="" >-Nama Sekolah-</option>
                                <option value="SMK GLOBAL SURYA PRATAMA" <?php if ($sekolah == "SMK GLOBAL SURYA PRATAMA") echo "selected" ?> >SMK Global Surya Pratama</option>
                                <option value="SMK PIJAR ALAM 1" <?php if ($sekolah == "SMK PIJAR ALAM 1") echo "selected" ?> >SMK PIJAR ALAM 1</option>
                                <option value="SMK PIJAR ALAM 2" <?php if ($sekolah == "SMK PIJAR ALAM 2") echo "selected" ?> >SMK PIJAR ALAM 2</option>
                            </select>
                            <span class="help-block"><?php echo $sekolah_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($induk_err)) ? 'has-error' : ''; ?>">
                            <label>Nomor Induk</label>
                            <input type="text" name="NOInduk" class="form-control" value="<?php echo htmlspecialchars($datasiswa["NOInduk"]); ?>">
                            <span class="help-block"><?php echo $induk_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($nisn_err)) ? 'has-error' : ''; ?>">
                            <label>NISN</label>
                            <input type="text" name="NISN" class="form-control" value="<?php echo htmlspecialchars($datasiswa["NISN"]); ?>">
                            <span class="help-block"><?php echo $nisn_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($UjianXIITP2324_err)) ? 'has-error' : ''; ?>">
                            <label>UjianXIITP2324</label>
                            <input type="text" name="UjianXIITP2324" class="form-control" value="<?php echo htmlspecialchars($datasiswa["UjianXIITP2324"]); ?>">
                            <span class="help-block"><?php echo $UjianXIITP2324_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($SPP2324_err)) ? 'has-error' : ''; ?>">
                            <label>SPP2324</label>
                            <input type="text" name="SPP2324" class="form-control" value="<?php echo htmlspecialchars($datasiswa["SPP2324"]); ?>">
                            <span class="help-block"><?php echo $SPP2324_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($SPP2223_err)) ? 'has-error' : ''; ?>">
                            <label>SPP2223</label>
                            <input type="text" name="SPP2223" class="form-control" value="<?php echo htmlspecialchars($datasiswa["SPP2223"]); ?>">
                            <span class="help-block"><?php echo $SPP2223_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($SPP2122_err)) ? 'has-error' : ''; ?>">
                            <label>SPP2122</label>
                            <input type="text" name="SPP2122" class="form-control" value="<?php echo htmlspecialchars($datasiswa["SPP2122"]); ?>">
                            <span class="help-block"><?php echo $SPP2122_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($PPDB2122_err)) ? 'has-error' : ''; ?>">
                            <label>PPDB2122</label>
                            <input type="text" name="PPDB2122" class="form-control" value="<?php echo htmlspecialchars($datasiswa["PPDB2122"]); ?>">
                            <span class="help-block"><?php echo $PPDB2122_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($Tour_err)) ? 'has-error' : ''; ?>">
                            <label>Touris</label>
                            <input type="text" name="Tour" class="form-control" value="<?php echo htmlspecialchars($datasiswa["Tour"]); ?>">
                            <span class="help-block"><?php echo $Tour_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($Total_err)) ? 'has-error' : ''; ?>">
                            <label>Total</label>
                            <input type="text" name="Total" class="form-control" value="<?php echo htmlspecialchars($datasiswa["Total"]); ?>">
                            <span class="help-block"><?php echo $Total_err;?></span>
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