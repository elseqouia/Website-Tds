-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 06:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kerjapraktek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL,
  `admin_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`, `admin_name`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '6285752265418', 'fentrisundari.tds@gmail.com', 'JL. Perintis, Komplek Residence Borneo Khatulistiwa 3, No. 3A, Pontianak, Indonesia.', 'Fentri Sundari');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(5, 'Jasa'),
(6, 'Kendaraan'),
(7, 'Bahan Bangunan'),
(8, 'Jam Tangan'),
(9, 'Furniture'),
(10, 'Handphone'),
(11, 'Perhiasan & Logam Mulia'),
(12, 'Elektronik'),
(13, 'Tas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(2, 13, 'Tas Michael Kors', 34000000, 'Ini tas bagus', 'produk1733215140.jpg', 1, '2024-12-03 08:39:00'),
(3, 13, 'Tas Michael Kors Mewah', 7000000, 'Cantik Tasnya', 'produk1733215231.jpeg', 1, '2024-12-03 08:40:31'),
(4, 7, 'Batako', 15000, 'Batako berkualitas terbaik dijamin membuat rumah anda menjadi kokoh dan waterproof', 'produk1733215348.jpg', 1, '2024-12-03 08:42:28'),
(5, 8, 'Jam SunLifex', 300000, 'Jam cantik yang membuat tampilan anda menjadi terkesan mewah dan seperti orang kaya', 'produk1733215442.jpg', 1, '2024-12-03 08:44:02'),
(6, 8, 'Jam Alexandre Christie', 999000, 'Jam yang memiliki tampilan mewah dan sudah dilengkapi dengan bahan yang tahan air, aman untuk  digunakan pada saat hujan', 'produk1733215585.jpg', 1, '2024-12-03 08:46:25'),
(7, 5, 'Sumur Bor', 0, 'Anda jenuh dengan kualitas air PDAM yang burik? Atau air anda tidak mengalir dengan lancar? Kami siap melayani anda dengan jasa sumur bor. Cocok digunakan pada area perumahan dengan lahan yang kecil dan sempit karena tidak memakan banyak tempat. Keunggulan dari jasa kami adalah dapat menyedot air hingga ke inti bumi. Tunggu apa lagi, mari hubungi kami segera pada link dibawah ini untuk segera mendapatkan sumur yang berkualitas. ', 'produk1733215906.jpeg', 1, '2024-12-03 08:51:46'),
(8, 11, 'Logam Antam', 6345000, 'Cocok untuk hANTAM kepala bapak kau', 'produk1733216004.jpg', 1, '2024-12-03 08:53:24'),
(9, 11, 'Set Emas Cantik', 2000000, 'Set emas cantik yang dapat membuat tampilan kamu menjadi lebih classy dan mewah', 'produk1733216237.jpg', 1, '2024-12-03 08:57:17'),
(10, 12, 'Kulkas Polytron Side by Side', 5000000, 'Kulkas dengan 2 pintu, cocok untuk menyimpan berbagai bahan makanan dengan jumlah yang besar. Kulkas ini dirancang khusus untuk menampung segala jenis makanan atau barang dengan bobot maksimal 100kg, apabila berat anda dibawah 100kg, mungkin kulkas ini cocok menjadi tempat refreshing anda ditengah gempuran panas ponti yang tak ngotak ini.', 'produk1733216482.jpg', 1, '2024-12-03 09:01:22'),
(11, 12, 'Kulkas Polytron Inverter', 2300000, 'Kulkas dengan kapasitas yang cukup besar, dan dapat menampung berbagai jenis daging yang anda miliki', 'produk1733216567.jpg', 1, '2024-12-03 09:02:47'),
(12, 10, 'Samsung A51 5G', 6700000, 'Samsung Galaxy A55 5G, hp dengan processor Exynos 1480 yang cocok digunakan untuk pekerjaan ringan (jangan harap kau main ml lancar pakai benda ini). Untuk spesifikasi lengkapnya, silahkan cek google, sy cape ktik, thx.', 'produk1733216872.jpg', 1, '2024-12-03 09:07:52'),
(13, 7, 'Semen Tiga roda', 100000, 'Semen dengan logo tiga roda ini memiliki kualitas rekat yang sangat kuat, dan anti retak. Apabila menggunakan semen ini, rumah anda dijamin akan tahan banting.', 'produk1733217029.png', 1, '2024-12-03 09:10:29'),
(14, 7, 'Semen Gresik', 110000, 'Karena namanya semen Gresik, maka saya simpulkan penemu semen ini adalah orang Gresik', 'produk1733217167.png', 1, '2024-12-03 09:12:47'),
(15, 11, 'Perhiasan Emas set pernikahan Perhiasan Emas set pernikahan', 8600000, 'Perhiasan emas yang cocok dipakai untuk memanas manasi tetanggamu yang suka nyinyir itu', 'produk1733217265.jpeg', 1, '2024-12-03 09:14:25'),
(16, 11, 'Perhiasan Set Emas', 4670000, 'ini emas.', 'produk1733217366.jpg', 1, '2024-12-03 09:16:06'),
(17, 12, 'Kulkas Sharp', 1500000, 'Kulkas minimalis, cocok untuk pengantin baru yang mau punya kulkas berkualitas namun dengan budget pas pasan', 'produk1733217466.jpg', 1, '2024-12-03 09:17:47'),
(18, 12, 'TV Coocaa', 2000000, 'Gatau saya tv apa ni tak pernah dengar, maaf ya cri sendiri spesifikasinya', 'produk1733217538.jpg', 1, '2024-12-03 09:18:58'),
(19, 12, 'Smart TV Polytron 32INCH', 4000000, 'Tv yang cocok digunakan untuk menonton serial drama maupun tayangan olahraga favorit anda. Memiliki layar berukuran 32inch dijamin membuat pengalaman menonton anda menjadi lebih berkesan. (Kami tidak menyediakan garansi apabila Tv rusak dikarenakan anda yang terlalu baper saat menonton)', 'produk1733217782.jpg', 1, '2024-12-03 09:23:02'),
(20, 9, 'Sofa Minimalis Letter u', 6830000, 'Sofa minimalis yang cocok digunakan untuk berbagai aktivitas anda dirumah', 'produk1733217855.jpeg', 1, '2024-12-03 09:24:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
