<html>
	<head>
		<script type="text/javascript">
		
			function ajaxrunning()
			{
				if (window.XMLHttpRequest) // pengecekan untuk browser update an terbaru Non-Microsoft(Chrome, FireFox, dll)
				{
					xmlhttp=new XMLHttpRequest(); 
				}

				else
				{
					xmlhttp =new ActiveXObject("Microsoft.XMLHTTP"); //Microsoft browser untuk browser IE 5 dan 6
				}
	
				xmlhttp.onreadystatechange=function() //men-trigger function
				{
					if (xmlhttp.readyState==4 && xmlhttp.status==200) // pengecekan apakah respon server sudah siap untuk di proses
					{
						document.getElementById("inbox").innerHTML = xmlhttp.responseText; // menampilkan response dari server dengan mengganti properti innertHTML dari element HTML dengan properti responseText dari object XMLHttpRequest.
					}
				}
	
				xmlhttp.open("GET","run.php"); // membuka file run.php
				xmlhttp.send(); // mengirim request ke server
				setTimeout("ajaxrunning()", 1000); // durasi waktu 1 detik
			}
		</script>

		<style type="text/css"> 
		
		h1 {
			font-family: Verdana;
		}
		
		body {
			font-family: Verdana;
			font-size: 12px;
		}	
		
		td, th {
			font-size: 12px;
		}
		
		</style>

	</head>

	<body onload="ajaxrunning()"> 
	
		<center><h2>DATA SENSOR</h2></center>
	
		<center><p>Menampilkan 50 data terakhir dari sensor yang ada dalam database.</p></center>
	
		<center><div id="inbox"></div></center>
	
	</body>

</html>