<?php 
	include 'db.php';
	$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1");
	$a = mysqli_fetch_object($kontak);
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image" href="img/tds2.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <!-- bootstrap links -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- bootstrap links -->
    <!-- fonts links -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
    <!-- fonts links -->

	<title>TDS | Visi & Misi</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<!-- header -->
	<header>
		<div class="container">
			<!-- navbar -->
			<nav class="navbar navbar-expand-lg" id="navbar">
            <div class="container-fluid">
              <a class="navbar-brand" href="#"><img src="img/tds2.png" alt="" width="120px" ></a>
		
			<h1>PT TEDATUSSALAM MAKMUR JAYA</h1>
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="produk.php">Produk</a></li>
				<li><a href="visi-misi.php">Visi & Misi</a></li>
				<li><a href="about.php">Tentang Kami</a></li>
			</ul>
		</div>
	</header>

	<!-- search -->
	<div class="search">
		<div class="search-btn">
			<form action="produk.php">
				<input type="text" name="search" placeholder="Cari Produk">
				<input type="submit" name="cari" value="Cari Produk">
			</form>
		</div>
	</div>

    <!-- about -->
    <div class="container" id="about">
    <h1>VISI & MISI</h1>
    <div class="row" style="margin-top: 50px;">
	<div class="col-md-6 py-3 py-md-0">
            <div class="card">
                <img src="img/tds.jpg" alt="">
            </div>
        </div>
        <div class="col-md-6 py-3 py-md-0">
            <p>Visi:</p>
<p>Menjadikan PT Tedatussalam Makmur Jaya sebagai Holding Company yang mencakup berbagai bidang usaha dan mampu bersaing di tingkat nasional maupun internasional.</p>
			</p>
			<p>Misi:</p>
			<p>Memperluas pangsa pasar dengan menciptakan berbagai lini usaha baru yang terintegrasi, seperti ritel, perbankan, elektronik, perhiasan, layanan, dan manufaktur. PT Tedatussalam Makmur Jaya juga berkomitmen untuk mencapai posisi teratas di sektor perbankan nasional serta mengembangkan perdagangan dalam dan luar negeri, menjadi perusahaan yang mendukung pertumbuhan ekonomi dan membawa manfaat besar bagi masyarakat.</p>
        </div>
    </div>
</div>
<!-- about -->


	<!-- footer -->
	<div class="footer">
		<div class="container">
			<h4>Alamat</h4>
			<p><?php echo $a->admin_address ?></p>

			<h4>Email</h4>
			<p><?php echo $a->admin_email ?></p>

			<h4>No. Hp</h4>
			<p><?php echo $a->admin_telp ?></p>
			<small>Copyright &copy; 2024 - PT. TEDATUSSALAM MAKMUR JAYA.</small>
		</div>
	</div>
</body>
</html>