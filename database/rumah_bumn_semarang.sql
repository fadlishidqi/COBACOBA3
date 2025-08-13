-- phpMyAdmin SQL Dump (FIXED for DigitalOcean Managed MySQL)
-- version 5.2.1
-- Generated: 2025-08-13
-- Notes:
--  * DO mewajibkan PRIMARY KEY saat CREATE TABLE (sql_require_primary_key=ON)
--  * PK & AUTO_INCREMENT didefinisikan langsung di CREATE, bukan via ALTER

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
 /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

 /*!40101 SET NAMES utf8mb4 */;

-- ======================================================================
-- Buat DB & gunakan
-- ======================================================================
CREATE DATABASE IF NOT EXISTS `rumah_bumn_semarang`
  DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;
USE `rumah_bumn_semarang`;

-- ======================================================================
-- Tabel: admin
-- ======================================================================
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'rbsmg25');

-- ======================================================================
-- Tabel: berita
-- ======================================================================
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `berita` (`id`, `judul`, `tanggal`, `isi`, `gambar`, `created_at`) VALUES
(1, 'Judul berita yang diperbarui', '2025-07-12', '<h3 data-start=\"280\" data-end=\"299\"><strong data-start=\"284\" data-end=\"299\">Pendahuluan</strong></h3><p data-start=\"301\" data-end=\"828\">Setiap manusia pasti pernah merasakan semangat yang membara untuk mencapai suatu tujuan. Namun, tak jarang pula semangat itu meredup di tengah jalan. Dalam kehidupan yang penuh dengan dinamika, jatuh bangun adalah hal yang lumrah. Dalam kondisi seperti ini, motivasi menjadi bahan bakar yang mendorong seseorang untuk terus bergerak maju meskipun menghadapi banyak rintangan. Motivasi bukan hanya sekadar dorongan sesaat, melainkan kekuatan batin yang mampu menuntun seseorang menuju impian dan kesuksesan yang ingin diraihnya.</p>\r<br><br><p data-start=\"830\" data-end=\"1337\">Motivasi menjadi aspek penting dalam kehidupan manusia karena tanpanya, seseorang akan mudah menyerah, kehilangan arah, bahkan merasa hidupnya tak berarti. Lalu, apa sebenarnya motivasi itu? Bagaimana cara membangkitkan dan menjaganya agar tetap menyala di dalam diri? Mengapa motivasi begitu krusial dalam berbagai aspek kehidupan, baik dalam pendidikan, karier, maupun hubungan sosial? Esai ini akan mengulas secara mendalam tentang makna, jenis, sumber, serta pentingnya motivasi dalam kehidupan manusia.</p><br>', '1752545185076-foto1.jpg', '2025-07-13 07:20:31'),
(3, 'Sosialisasi Daur Ulang: Pentingnya Pengelolaan Sampah Berkelanjutan', '2025-06-30', 'Halo, Sobat Desa!\r<br>\r<br>Selamat datang di ruang baca kami. Hari ini, kami akan membahas tentang membangun kesadaran komunitas dalam meningkatkan pengelolaan sampah di desa melalui program daur ulang. Apakah Sobat Desa sudah paham tentang topik ini? Mari kita bahas lebih dalam seiring kita mengeksplorasi berbagai aspek penting dalam upaya penting ini.\r<br>\r<br>Pendahuluan\r<br>Sampah menumpuk seperti gunung di desa-desa kita. Pembuangan liar dan pengelolaan yang buruk merusak kesehatan masyarakat dan lingkungan. Saatnya kita mengambil tindakan nyata untuk membangun kesadaran masyarakat dan meningkatkan pengelolaan sampah di desa melalui program daur ulang. Membangun Kesadaran Komunitas: Peningkatan Pengelolaan Sampah di Desa Melalui Program Daur Ulang hadir sebagai solusi holistik untuk mengatasi krisis sampah di pedesaan kita.\r<br>\r<br>Dampak Buruk Pembuangan Sampah Liar\r<br>Sampah yang dibuang sembarangan mencemari sumber air kita, menciptakan tempat berkembang biak bagi hama, dan mencemari udara yang kita hirup. Penyakit seperti diare, tifus, dan malaria mengintai di setiap sudut desa, mengancam kesehatan dan kesejahteraan masyarakat. Selain itu, penumpukan sampah mengurangi estetika dan menurunkan kualitas hidup penduduk desa.', 'berita3.jpg', '2025-07-13 07:20:31'),
(5, 'judul', '2025-07-11', '<p>Isi lengkap berita...</p> Halo, Sobat Desa!\n\nSelamat datang di ruang baca kami. Hari ini, kami akan membahas tentang membangun kesadaran komunitas dalam meningkatkan pengelolaan sampah di desa melalui program daur ulang. Apakah Sobat Desa sudah paham tentang topik ini? Mari kita bahas lebih dalam seiring kita mengeksplorasi berbagai aspek penting dalam upaya penting ini.\n\nPendahuluan\nSampah menumpuk seperti gunung di desa-desa kita. Pembuangan liar dan pengelolaan yang buruk merusak kesehatan masyarakat dan lingkungan. Saatnya kita mengambil tindakan nyata untuk membangun kesadaran masyarakat dan meningkatkan pengelolaan sampah di desa melalui program daur ulang. Membangun Kesadaran Komunitas: Peningkatan Pengelolaan Sampah di Desa Melalui Program Daur Ulang hadir sebagai solusi holistik untuk mengatasi krisis sampah di pedesaan kita.\n\nDampak Buruk Pembuangan Sampah Liar\nSampah yang dibuang sembarangan mencemari sumber air kita, menciptakan tempat berkembang biak bagi hama, dan mencemari udara yang kita hirup. Penyakit seperti diare, tifus, dan malaria mengintai di setiap sudut desa, mengancam kesehatan dan kesejahteraan masyarakat. Selain itu, penumpukan sampah mengurangi estetika dan menurunkan kualitas hidup penduduk desa.\n\nPentingnya Daur Ulang\nDaur ulang adalah kunci untuk mengelola sampah secara berkelanjutan. Dengan memisahkan sampah organik, anorganik, dan berbahaya, kita dapat mengurangi volume sampah yang dikirim ke tempat pembuangan akhir. Selain itu, daur ulang menghemat sumber daya alam, mengurangi polusi, dan menciptakan lapangan kerja hijau. Program daur ulang di desa memberdayakan masyarakat untuk menjadi bagian dari solusi dan berkontribusi pada lingkungan yang lebih bersih dan sehat.\n\nMembangun Kesadaran Masyarakat\nMembangun kesadaran masyarakat adalah landasan dalam meningkatkan pengelolaan sampah. Kampanye edukasi melalui penyuluhan, lokakarya, dan media massa dapat meningkatkan kesadaran tentang bahaya pembuangan sampah yang tidak dikelola dan manfaat daur ulang. Penting untuk melibatkan masyarakat secara aktif dalam pengambilan keputusan dan perencanaan program daur ulang, memastikan kepemilikan dan keberlanjutan dalam jangka panjang.', '1752392726904-icon-email.jpg', '2025-07-13 07:45:26'),
(6, 'umkm go global', '2025-07-12', '<div><span style=\"font-size: 1rem;\"><b>Transformasi digital UMKM menjadi salah satu pilar utama mendorong transformasi UMKM untuk Go Digital dan Go Export secara end-to-end dan membentuk ekosistem usaha yang inklusif dan berkelanjutan. </b></span></div><div><span style=\"font-size: 1rem;\"><b><br></b></span></div><div><span style=\"font-family: inherit; font-size: 0.95rem;\">Langkah ini membuka peluang baru bagi pelaku usaha UMKM menembus pasar global dan berinovasi dalam meningkatkan kualitas produknya. Untuk mendorong UMKM go digital diperlukan kesadaran dalam membangun dan mengelola eksistensi UMKM di media sosial, mengoptimalkan pemanfaatan platform e-commerce berorientasi global, dan menggunakan kanal pembayaran digital. Terobosan ini jika diiringi upaya  UMKM dalam memahami preferensi konsumen dan kondisi pasar global, melakukan perencanaan produksi dan manajemen rantai pasokan untuk memenuhi permintaan pasar dengan berkelanjutan akan mendorong UMKM masuk ke pasar global (go export). Guna memperkuat aspek pemasaran, UMKM harus membangun brand yang kuat dengan menonjolkan kualitas, keunikan, dan nilai tambah produk untuk menciptakan positioning di kancah global. Demikian mengemuka pada Talk Over Coffee yang mengangkat tema SMEs Go Digital: Bring Indonesia SMEs to The World di Jakarta (3/8) yang juga menjadi rangkaian kegiatan FEKDI x KKI 2024.  </span></div><div><span style=\"font-family: inherit; font-size: 0.95rem;\"><br></span></div><div>Deputi Gubernur Bank Indonesia Juda Agung menyampaikan BI secara konsisten melakukan langkah – langkah untuk mendorong UMKM Go Digital dan Go Export, dengan 4 (empat) hal yang terus diupayakan. Pertama, penguatan kurasi yang sejalan dengan permintaan dan persyaratan pasar global yang didasarkan pada market intelligence. Kedua, akses promosi ke pasar global melalui berbagai kegiatan promosi perdagangan domestik dan internasional termasuk penyelenggaraan Karya Kreatif Indonesia, perluasan trading house seperti Indonesia House of Beans di Tokyo, Malaysia, Singapura, serta pembentukan Indonesia SME (Small Medium Enterprises) Hub yang memiliki sejumlah fitur unggulan seperti penyediaan informasi ekspor dan market intelligence serta memungkinkan UMKM untuk dapat berkomunikasi langsung dengan pembeli dari pasar luar negeri. Ketiga, literasi digital yang merupakan kunci bagi UMKM untuk memanfaatkan teknologi dengan efektif, sekaligus meningkatkan kewaspadaan terhadap risiko fraud. Keempat, edukasi untuk mendorong UMKM menuju pasar ekspor diantaranya melalui sejumlah modul UMKM Go Export yang berisi potensi usaha, trend pasar, strategi, peluang, prosedur, persyaratan, serta tips dan trik lainnya. Langkah-langkah tersebut tidak terlepas dari dukungan kolaborasi dan sinergi antara Bank Indonesia bersama Pemerintah, otoritas terkait, industri, pelaku usaha UMKM, masyarakat dalam mewujudkan UMKM Go Digital dan Go Export.</div>', '1752541684450-foto1.jpg', '2025-07-15 01:08:04'),
(8, 'APA YA', '2025-07-18', '<h3 data-start=\"280\" data-end=\"299\"><strong data-start=\"284\" data-end=\"299\">Pendahuluan</strong></h3><p data-start=\"301\" data-end=\"828\">Setiap manusia pasti pernah merasakan semangat yang membara untuk mencapai suatu tujuan. Namun, tak jarang pula semangat itu meredup di tengah jalan. Dalam kehidupan yang penuh dengan dinamika, jatuh bangun adalah hal yang lumrah. Dalam kondisi seperti ini, motivasi menjadi bahan bakar yang mendorong seseorang untuk terus bergerak maju meskipun menghadapi banyak rintangan. Motivasi bukan hanya sekadar dorongan sesaat, melainkan kekuatan batin yang mampu menuntun seseorang menuju impian dan kesuksesan yang ingin diraihnya.<br><br></p><p data-start=\"830\" data-end=\"1337\">Motivasi menjadi aspek penting dalam kehidupan manusia karena tanpanya, seseorang akan mudah menyerah, kehilangan arah, bahkan merasa hidupnya tak berarti. Lalu, apa sebenarnya motivasi itu? Bagaimana cara membangkitkan dan menjaganya agar tetap menyala di dalam diri? Mengapa motivasi begitu krusial dalam berbagai aspek kehidupan, baik dalam pendidikan, karier, maupun hubungan sosial? Esai ini akan mengulas secara mendalam tentang makna, jenis, sumber, serta pentingnya motivasi dalam kehidupan manusia.</p>', '1753023491466-berita_2.jpg', '2025-07-20 14:58:11'),
(9, 'INI BERITA', '2025-07-12', '<h3 data-start=\"280\" data-end=\"299\" style=\"color: rgb(28, 28, 28);\"><strong data-start=\"284\" data-end=\"299\">Pendahuluan</strong></h3><p data-start=\"301\" data-end=\"828\" style=\"color: rgb(28, 28, 28);\">Setiap manusia pasti pernah merasakan semangat yang membara untuk mencapai suatu tujuan. Namun, tak jarang pula semangat itu meredup di tengah jalan. Dalam kehidupan yang penuh dengan dinamika, jatuh bangun adalah hal yang lumrah. Dalam kondisi seperti ini, motivasi menjadi bahan bakar yang mendorong seseorang untuk terus bergerak maju meskipun menghadapi banyak rintangan. Motivasi bukan hanya sekadar dorongan sesaat, melainkan kekuatan batin yang mampu menuntun seseorang menuju impian dan kesuksesan yang ingin diraihnya.</p><br style=\"color: rgb(28, 28, 28);\"><br style=\"color: rgb(28, 28, 28);\"><p data-start=\"830\" data-end=\"1337\" style=\"color: rgb(28, 28, 28);\">Motivasi menjadi aspek penting dalam kehidupan manusia karena tanpanya, seseorang akan mudah menyerah, kehilangan arah, bahkan merasa hidupnya tak berarti. Lalu, apa sebenarnya motivasi itu? Bagaimana cara membangkitkan dan menjaganya agar tetap menyala di dalam diri? Mengapa motivasi begitu krusial dalam berbagai aspek kehidupan, baik dalam pendidikan, karier, maupun hubungan sosial? Esai ini akan mengulas secara mendalam tentang makna, jenis, sumber, serta pentingnya motivasi dalam kehidupan manusia.</p>', '1753023552119-usus_crispy.jpg', '2025-07-20 14:59:12'),
(10, 'BERITAA JUGA', '2025-07-18', '<h3 data-start=\"280\" data-end=\"299\"><strong data-start=\"284\" data-end=\"299\">Pendahuluan</strong></h3><p data-start=\"301\" data-end=\"828\">Setiap manusia pasti pernah merasakan semangat yang membara untuk mencapai suatu tujuan. Namun, tak jarang pula semangat itu meredup di tengah jalan. Dalam kehidupan yang penuh dengan dinamika, jatuh bangun adalah hal yang lumrah. Dalam kondisi seperti ini, motivasi menjadi bahan bakar yang mendorong seseorang untuk terus bergerak maju meskipun menghadapi banyak rintangan. Motivasi bukan hanya sekadar dorongan sesaat, melainkan kekuatan batin yang mampu menuntun seseorang menuju impian dan kesuksesan yang ingin diraihnya.<br><br></p><p data-start=\"830\" data-end=\"1337\">Motivasi menjadi aspek penting dalam kehidupan manusia karena tanpanya, seseorang akan mudah menyerah, kehilangan arah, bahkan merasa hidupnya tak berarti. Lalu, apa sebenarnya motivasi itu? Bagaimana cara membangkitkan dan menjaganya agar tetap menyala di dalam diri? Mengapa motivasi begitu krusial dalam berbagai aspek kehidupan, baik dalam pendidikan, karier, maupun hubungan sosial? Esai ini akan mengulas secara mendalam tentang makna, jenis, sumber, serta pentingnya motivasi dalam kehidupan manusia.</p>', '1753023568489-MacBook_Air_-_12.png', '2025-07-20 14:59:28'),
(11, 'BERITA HOT', '2025-07-19', '<h3 data-start=\"280\" data-end=\"299\" style=\"color: rgb(28, 28, 28);\"><strong data-start=\"284\" data-end=\"299\">Pendahuluan</strong></h3><p data-start=\"301\" data-end=\"828\" style=\"color: rgb(28, 28, 28);\">Setiap manusia pasti pernah merasakan semangat yang membara untuk mencapai suatu tujuan. Namun, tak jarang pula semangat itu meredup di tengah jalan. Dalam kehidupan yang penuh dengan dinamika, jatuh bangun adalah hal yang lumrah. Dalam kondisi seperti ini, motivasi menjadi bahan bakar yang mendorong seseorang untuk terus bergerak maju meskipun menghadapi banyak rintangan. Motivasi bukan hanya sekadar dorongan sesaat, melainkan kekuatan batin yang mampu menuntun seseorang menuju impian dan kesuksesan yang ingin diraihnya.</p><br style=\"color: rgb(28, 28, 28);\"><br style=\"color: rgb(28, 28, 28);\"><p data-start=\"830\" data-end=\"1337\" style=\"color: rgb(28, 28, 28);\">Motivasi menjadi aspek penting dalam kehidupan manusia karena tanpanya, seseorang akan mudah menyerah, kehilangan arah, bahkan merasa hidupnya tak berarti. Lalu, apa sebenarnya motivasi itu? Bagaimana cara membangkitkan dan menjaganya agar tetap menyala di dalam diri? Mengapa motivasi begitu krusial dalam berbagai aspek kehidupan, baik dalam pendidikan, karier, maupun hubungan sosial? Esai ini akan mengulas secara mendalam tentang makna, jenis, sumber, serta pentingnya motivasi dalam kehidupan manusia.</p>', '1753023593816-berita1.jpg', '2025-07-20 14:59:53'),
(14, 'aaaaaaa', '2025-07-19', 'aoaaa', '1753093921265-img_kupon_makanansehat_556880.png', '2025-07-21 10:31:31'),
(17, 'KUNJUNGAN KEMENTRIAN BUMN', '2025-07-28', 'Penegasan ini disampaikan Agus di hadapan 8.500 mahasiswa yang mengikuti kegiatan Pengenalan Kehidupan Kampus bagi Mahasiswa Baru (PKKMB) Tahun 2025 di auditorium Universitas Sultan Ageng Tirtayasa (Untirta), Serang, Banten, Selasa (12/8).<br><br><div><div>Agus mengatakan bahwa Prabowo ingin rakyat Indonesia kuat dan makmur. Oleh karena itu, Presiden berupaya mewujudkannya lewat berbagai program, seperti Makan Bergizi Gratis, Cek Kesehatan Gratis hingga Koperasi Desa Merah Putih. Seluruh program ini terintegrasi di Sekolah Rakyat.<br><br></div><div>\"Sekarang ini kita sedang bergerak, Pak Presiden sedang memimpin satu perubahan besar. Perubahan untuk membangun Indonesia yang berdaulat secara politik, mandiri secara ekonomi, dan memiliki kepribadian secara budaya,\" tegas Agus.<br><br></div><div>Baca artikel detiknews, \"Wamensos: Presiden Berupaya Putus Rantai Kemiskinan Lewat Sekolah Rakyat\"<br><br></div><div><b>selengkapnya :</b><br></div><div>https://news.detik.com/berita/d-8058298/wamensos-presiden-berupaya-putus-rantai-kemiskinan-lewat-sekolah-rakyat.<br><br></div><div>Download Apps Detikcom Sekarang https://apps.detik.com/detik/</div></div>', '1755049097990-ChatGPT_Image_29_Jul_2025,_14.16.15.png', '2025-08-13 01:38:18');

-- ======================================================================
-- Tabel: galeri
-- ======================================================================
DROP TABLE IF EXISTS `galeri`;
CREATE TABLE `galeri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `galeri` (`id`, `judul`, `deskripsi`, `gambar`, `created_at`) VALUES
(1, 'Pelatihan UMKM Diperbarui', 'Deskripsi baru dari PUT', 'foto1.jpg', '2025-07-10 02:51:47'),
(2, ' Diperbarui', 'Deskripsi baru dari PUT', 'foto2.jpg', '2025-07-10 02:51:47'),
(4, 'Foto 4', 'Pelatihan Pengelolaan Inventory untuk Mendukung Pertumbuhan UMKM', 'foto4.webp', '2025-07-10 02:51:47'),
(5, 'Foto 5', 'Pendampingan Digital Marketing bersama Binaan Dinas Kehutanan Provinsi Jawa Tengah', 'foto5.webp', '2025-07-10 02:51:47'),
(6, 'Foto 6', 'Pembuatan foto produk dan desain bawang goreng bu nur owner @sambalaku_smg', 'foto6.jpg', '2025-07-10 02:51:47'),
(7, 'Foto 7', 'Program Immersion Pitch Deck Wirausaha Merdeka bersama @promotein.yuk dan @unissula_semarang @udinusofficial', 'foto7.webp', '2025-07-10 02:51:47'),
(8, 'Foto 8', 'Program Immersion Pitch deck Wirausaha Merdeka bersama @promotein.yuk dan @universitasaki @udinusofficial', 'foto8.webp', '2025-07-10 02:51:47'),
(13, 'Pelatihan', 'Pitch deck Wirausaha Merdeka bersama @promotein.yuk dan @universitasaki @udinusofficial', '1752129050578-foto1.jpeg', '2025-07-10 06:30:50'),
(15, 'Test Judul lagii ya', 'deskripsiin aja dulu', '1753021027923-usus_crispy.jpg', '2025-07-20 13:09:09'),
(16, 'apa ya judulnya', 'jadi ini tu galeri ya ges', '1753021058975-berita3.jpg', '2025-07-20 14:17:38'),
(17, 'galeri zzzz', 'aaaaa', '1753247497946-rumah-bumn.png', '2025-07-23 05:11:37'),
(19, 'Kunjungan Kemnetrian', 'Kemnentrian Perdagangan melakukan kunjungan ke rumah bumn semarang pada 15 Septeber 2025 Laporan kunjungan kerja Menteri Pertanian merupakan media untik menyampaikan hasil kegiatan Menteri Pertanian setiap empat bulan.', '1755047582729-usus_crispy.jpg', '2025-08-13 01:13:02');

-- ======================================================================
-- Tabel: umkm
-- ======================================================================
DROP TABLE IF EXISTS `umkm`;
CREATE TABLE `umkm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `varian` text DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `harga` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `umkm` (`id`, `nama`, `deskripsi`, `varian`, `kategori`, `harga`, `instagram`, `image_path`) VALUES
(1, 'Batik Amel', 'Setiap manusia pasti pernah merasakan semangat yang membara untuk mencapai suatu tujuan. Namun, tak jarang pula semangat itu meredup di tengah jalan. Dalam kehidupan yang penuh dengan dinamika, jatuh bangun adalah hal yang lumrah. ', 'batik parang, batik jawa', 'Fashion/Busana', 'Rp 10.000 - Rp 100.000', 'batikamel', 'umkm/rumah-bumn.png'),
(3, 'Rumah Batik ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Coklat = Rp 20.000, Vanilla = Rp 20.000, Matcha = Rp 25.000', 'Perdagangan', 'Rizqi Amaliya', 'rumah_batik_amel', 'umkm/batik-amel.jpg'),
(5, 'Hijab Chic', 'Hijab modern dan stylish untuk remaja.', 'Pashmina, Voal', 'Fashion/Busana', 'Nadia H.', '@hijabchicid', 'umkm/rumah-bumn.png'),
(6, 'Ethnic Wear', 'Baju etnik Nusantara modern.', 'Outer, Blus Batik', 'Fashion/Busana', 'Ratih W.', '@ethnicwearid', 'umkm/rumah-bumn.png'),
(8, 'TrendHijab', 'Hijab trendy kekinian.', 'Segi Empat, Instan', 'Fashion/Busana', 'Fitri A.', '@trendhijab', 'umkm/rumah-bumn.png'),
(9, 'Rajutku', 'UMKM rajutan tangan berkualitas.', 'Sweater, Tas Rajut', 'Fashion/Busana', 'Rika M.', '@rajutku', 'umkm/rumah-bumn.png'),
(10, 'Casual Stuff', 'UMKM pakaian casual lokal.', 'Kaos, Jaket', 'Fashion/Busana', 'Anwar S.', '@casualstuff', 'umkm/rumah-bumn.png'),
(11, 'Cantika Natural', 'Produk skincare alami dan herbal.', 'Facial Wash, Toner', 'Kecantikan', 'Rina A.', '@cantikanatural', 'umkm/rumah-bumn.png'),
(12, 'Glow Up', 'Makeup dan skincare lokal premium.', 'Lip Tint, Serum', 'Kecantikan', 'Sarah K.', '@glowup.id', 'umkm/rumah-bumn.png'),
(13, 'Organic Glow', 'Perawatan wajah organik.', 'Masker, Toner', 'Kecantikan', 'Yuniar', '@organicglow', 'umkm/rumah-bumn.png'),
(14, 'HerbaGlow', 'Produk herbal untuk kecantikan.', 'Scrub, Sabun', 'Kecantikan', 'Mega R.', '@herbaglow', 'umkm/rumah-bumn.png'),
(15, 'Skinhouse', 'Produk perawatan kulit UMKM.', 'Night Cream, Cleanser', 'Kecantikan', 'Desi R.', '@skinhouse', 'umkm/rumah-bumn.png'),
(16, 'Kriya Kayu', 'Produk kerajinan dari limbah kayu.', 'Pigura, Hiasan', 'Craft/Kerajinan Tangan', 'Yuda Pratama', '@kriyakayu', 'umkm/rumah-bumn.png'),
(17, 'Anyaman Jaya', 'Produk dari anyaman bambu.', 'Keranjang, Tempat Tisu', 'Craft/Kerajinan Tangan', 'Purnomo', '@anyamanjaya', 'umkm/rumah-bumn.png'),
(18, 'Dekor Kita', 'Dekorasi rumah handmade estetik.', 'Wall Art', 'Craft/Kerajinan Tangan', 'Melati P.', '@dekorkita', 'umkm/rumah-bumn.png'),
(19, 'Kayuku', 'Souvenir kayu ukir custom.', 'Miniatur, Gantungan Kunci', 'Craft/Kerajinan Tangan', 'Dian S.', '@kayuku', 'umkm/rumah-bumn.png'),
(20, 'Lilin Aroma', 'Lilin aroma terapi handmade.', 'Lilin Bunga', 'Craft/Kerajinan Tangan', 'Astri W.', '@lilinaroma', 'umkm/rumah-bumn.png'),
(21, 'Batik Craft', 'Aksesoris dari kain batik.', 'Gelang, Bros', 'Craft/Kerajinan Tangan', 'Lina M.', '@batikcraft', 'umkm/rumah-bumn.png'),
(22, 'Rasa Nikmat', 'UMKM makanan khas tradisional Jawa.', 'Rengginang, Kue Kering', 'Makanan & Minuman', 'Siti Nur', '@rasanikmat', 'umkm/rumah-bumn.png'),
(23, 'Dapoer Mbok Darmi', 'Makanan rumahan khas Jawa Tengah.', 'Gudeg, Soto', 'Makanan & Minuman', 'Darmi', '@dapoer_mbokdarmi', 'umkm/rumah-bumn.png'),
(24, 'SnackinAja', 'Cemilan sehat dan kekinian.', 'Granola, Keripik', 'Makanan & Minuman', 'Lisa H.', '@snackinaja', 'umkm/rumah-bumn.png'),
(25, 'Kopi Ndeso', 'UMKM kopi robusta lokal.', 'Kopi Bubuk, Drip Bag', 'Makanan & Minuman', 'Joko', '@kopindeso', 'umkm/rumah-bumn.png'),
(26, 'Roti Kita', 'Toko roti rumahan.', 'Roti Sobek, Roti Manis', 'Makanan & Minuman', 'Sari D.', '@rotikita', 'umkm/rumah-bumn.png'),
(27, 'Tahu Crispy', 'Tahu goreng crispy isi.', 'Tahu Keju, Tahu Daging', 'Makanan & Minuman', 'Dewi L.', '@tahucrispy', 'umkm/rumah-bumn.png'),
(28, 'Najmia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'lipstik = 20.000, bedak = 30.000', 'Kecantikan', 'Mia', 'rumahbumn.semarang', 'umkm/1752027000966-RB Reels (1).png'),
(29, 'Grosir Jaya', 'UMKM perdagangan kebutuhan pokok.', 'Beras, Minyak', 'Perdagangan', 'H. Subandi', '@grosirjaya', 'umkm/rumah-bumn.png'),
(30, 'Toko Laris', 'Menjual kebutuhan sembako harian.', 'Sembako', 'Perdagangan', 'Ayu S.', '@tokolaris', 'umkm/rumah-bumn.png'),
(31, 'Warung Barokah', 'Warung kelontong kebutuhan harian.', 'Bumbu, Mie', 'Perdagangan', 'Pak Budi', '@warungbarokah', 'umkm/rumah-bumn.png'),
(32, 'Sembako Murah', 'Grosir sembako harga bersaing.', 'Telur, Gula', 'Perdagangan', 'Wahyudi', '@sembakomurah', 'umkm/rumah-bumn.png'),
(33, 'Toko Kita', 'UMKM toko kelontong kecil.', 'Air Minum, Kecap', 'Perdagangan', 'Pak Hartono', '@tokokita', 'umkm/rumah-bumn.png'),
(34, 'Kemejaq', 'Kemeja adalah salah pakaian atas yang menutupi bagian lengan, dada, bahu, berkerah dan menutupi tubuh sampai bagian perut. Kemeja biasanya dibuat menurut selera orang yang mengenakannya, kadang kemeja bisa dibuat berlengan panjang maupun berlengan pendek. Nama lainnya adalah blus. Beberapa orang juga menyebutnya hem.  Salah satu pemakaian utamanya ialah sebagai seragam atau dinas.', 'Kemeja Putih, Kemeja Hitam', 'Fashion/Busana', 'Hasan Fadhilah', 'rumahbumnkotamalang', 'umkm/1752628698328-usus crispy.jpg'),
(47, 'aaaa', 'aaa', 'aaa', 'Perdagangan', 'aaaa', 'aaaa', 'umkm/1752946498802-208693758.png'),
(51, 'baru', 'aaa', 'vanila, coklat, pandan', 'Perdagangan', '222', 'aaa', 'umkm/1754919433599-692145733.png'),
(52, 'coba lagi', 'aaokede', 'ayam, bumbu', 'Craft/Kerajinan Tangan', '20000', 'aaaaakuu', 'umkm/1754921641677-957302188.png'),
(53, 'aa', 'aa', 'aaaa', '', 'aa', '', 'umkm/1754922366724-113595009.png'),
(57, 'aaaa', '', '', '', '', '', 'images/umkm/1754966072676-161479611.png'),
(58, 'kopi seduh asli', 'Deskripsi contoh UMKM', 'coklat', 'Perdagangan', 'oooo', 'umkmtest_', 'umkm/1754969448760-222329895.jpg'),
(59, 'kopi seduh asli', 'Deskripsi contoh UMKM', 'coklat', 'Perdagangan', NULL, 'umkmtest_', 'images/umkm/1754970157812-746474347.jpg'),
(60, 'kopi seduh asli', 'Deskripsi contoh UMKM', 'coklat', 'Perdagangan', NULL, 'umkmtest_', 'images/umkm/1754970299134-902811334.jpg'),
(62, 'seboa', 'seboa memiliki aneka rasa untuk berbagai pilihan menu cemilan', 'ampyang, sambal pecel, rengginang, sagu', 'Makanan & Minuman', '30.000-50.000', 'seboaaa', 'umkm/1755047419638-387650000.jpg');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
 /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
