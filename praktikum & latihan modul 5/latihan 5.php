<?php
$data = array(
    "cat1" => "Kehadiran >= 70%",
    "cat2" => "Interaktif dikelas",
    "cat3" => "Tidak terlambat mengumpulkan tugas"
);

?>
<html>
<title>Latihan 5</title>

<head>
   
</head>

<body>
    <br>
    <br>
    <br>
    <form action="" method="post" name="input">

        <table align="center">
            <tr>
                <td>NIM</td>
                <td><input type="text"  name="nim" value="<?php if (!empty($_POST["nim"])) {
                                                                                                    echo $_POST["nim"];
                                                                                                }; ?>" required></td>
            </tr>
            <tr>
                <td>Program Studi</td>
                <td><select name="progdi" class="form-control" required>
                        <option value="A11 - Teknik Informatika S1">Teknik Informatika S1 </option>
                        <option value="A12 - Sistem Informasi S1 ">Sistem Informasi S1</option>
                        <option value="A22 - Teknik Informatika D3">Teknik Informatika D3</option>

                    </select></td>
            </tr>
            <tr>
                <td>Nilai Tugas</td>
                <td><input type="text"  name="nt" value="<?php if (!empty($_POST["nt"])) {
                                                                                                    echo $_POST["nt"];
                                                                                                }; ?>" required></td>
            </tr>
            <tr>
                <td>Nilai UTS</td>
                <td><input type="text"  name="uts" value="<?php if (!empty($_POST["uts"])) {
                                                                                                    echo $_POST["uts"];
                                                                                                }; ?>" required></td>
            </tr>
            <tr>
                <td>Nilai UAS</td>
                <td><input type="text"  name="uas" value="<?php if (!empty($_POST["uas"])) {
                                                                                                    echo $_POST["uas"];
                                                                                                }; ?>" required></td>
            </tr>
            <tr>
                <td>Catatan Khusus</td>
                <td>
                    <br><input type="checkbox" name="cat1" value="<?php echo $data["cat1"]; ?>">Kehadiran >= 70%</br>
                    <br><input type="checkbox" name="cat2" value="<?php echo $data["cat2"]; ?>">interaktif dikelas</br>
                    <br><input type="checkbox" name="cat3" value="<?php echo $data["cat3"]; ?>">Tidak terlambat mengumpulkan tugas</br>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit"name="input" value="simpan"></td>
            </tr>

        </table>
    </form>
</body>

</html>

<?php


if (isset($_POST['input'])) {

    if (isset($_POST['progdi'])) {
        $progdi = $_POST['progdi'];
    }
    if (isset($_POST['nim'])) {
        $nim = $_POST['nim'];
    }
    if (isset($_POST['nt'])) {
        $nt = $_POST['nt'];
    }
    if (isset($_POST['uts'])) {
        $uts = $_POST['uts'];
    }
    if (isset($_POST['uas'])) {
        $uas = $_POST['uas'];
    }

$na = ($nt * 0.4) + ($uts * 0.3) + ($uas * 0.3);

?>
    <table border="1" cellpadding="10" align="center">
        <tr>
            <td>Program Studi</td>
            <td>NIM</td>
            <td>Nilai Akhir</td>
            <td>STATUS</td>
            <td>Catatan Khusus</td>

        </tr>
        <tr>
            <td><?= $progdi ?></td>
            <td><?= $nim ?></td>
            <td><?= $na ?></td>
            <td><?php
                if ($na >= 60) {
                    echo "LULUS";
                } else {
                    echo "TIDAK LULUS";
                } ?></td>
            <td><?php
                if (isset($_POST['catatan1'])) {
                    echo "+ " . $_POST['catatan1'] . "<br>";
                }
                if (isset($_POST['catatan2'])) {
                    echo "+ " . $_POST['catatan2'] . "<br>";
                }
                if (isset($_POST['catatan3'])) {
                    echo "+ " . $_POST['catatan3'] . "<br>";
                } ?></td>
        </tr>
    </table>

<?php } ?>