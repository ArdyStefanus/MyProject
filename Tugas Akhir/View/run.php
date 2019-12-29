<?php

function getData($sql) 
	{
		$con = mysqli_connect("localhost", "root", "", "arduino"); // untuk koneksi database arduino di localhost
		$data = mysqli_query($con, $sql); 

		return $data;	
	}

$query = "SELECT suhu, kelembaban, waktu FROM `suhu` order by no DESC limit 50 "; // query untuk mengambil data berdasarkan 50 data terakhir di database

$hasil = getData($query); // menampung 50 data terakhir

echo "<table border='1'>";
echo "<tr><th>No</th><th>Suhu</th><th>kelembaban</th><th>waktu</th></tr>";

$a = 0;
while ($data = mysqli_fetch_row($hasil))
{
	$a++;
	$b = $data[0]; 
	$c = $data[1]; 
	$d = $data[2];
	echo "<tr><td>".$a."</td><td>".$b."</td><td>".$c."</td><td>".$d."</td></tr>";
}	
echo "</table>";
?>