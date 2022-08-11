<?php
    include_once("config.php");

    $kode_mobil = $_GET['kode_mobil'];
    $result = mysqli_query($mysqli, "DELETE FROM datamobil WHERE kode_mobil='".$kode_mobil."'");

    header("Location: data_mobil.php")
?>

