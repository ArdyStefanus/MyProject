<?php
	$con = mysqli_connect("localhost", "root", "" ,"arduino" ); //untuk koneksi ke database arduino localhost

	$suhu = $_GET["suhu"]; // mengambil data sensor suhu arduino 
	$humid = $_GET["kelembaban"]; // mengambil data sensor kelembaban arduino

	$sql = "INSERT INTO suhu(Suhu, Kelembaban) values ('$suhu', '$humid')"; // menginputkan data sensor arduino ke dalam database
	$data = mysqli_query($con, $sql); // untuk input ke mysql server

?>