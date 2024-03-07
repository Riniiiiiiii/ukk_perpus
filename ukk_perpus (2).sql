-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Mar 2024 pada 01.03
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `judul` varchar(225) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `penerbit` varchar(225) DEFAULT NULL,
  `tahun_terbit` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `deskripsi`) VALUES
(2, 13, 'Jalan Lurus Islam Nusantara', ' Prof. Dr. Komaruddin Hidayat', 'Pustaka Pelajar', 2006, 'Buku ini membahas tentang konsep Islam Nusantara dan perannya dalam mempromosikan pesan perdamaian dan toleransi di Indonesia.'),
(3, 13, 'Kun Bil Qur`ani Najman', 'Saihul Basyir', 'Alex Media Komputindo', 2001, 'Buku Kun Bil Qur`ani Najman ini ditulis dengan menggunakan kosakata yang ringan sehingga para pembaca dapat dengan mudah memahami isi dari buku ini.'),
(4, 13, 'Maaf Tuhan Aku Hampir Menyerah', 'Alfialghazi', 'Alfialghazi', 2020, ' buku ini merupakan buku motivasi yang erat dengan pengajaran Islami tentang kepasrahan diri kepada Tuhan.'),
(5, 14, 'Laskar Pelangi', 'Andrea Hirata', 'Yogyakarta : Back Bay Books', 2008, 'Menceritakan Sebelas orang anak Melayu Belitong yang luar biasa tak menyerah walau keadaan tak bersimpati pada mereka.'),
(10, 14, 'Renjana', 'Elalicia', 'Huta Publisher', 2021, ' Seorang Raja yang dianugerahi umur panjang oleh Sang Hyang Widhi, bahkan lebih panjang dari umur Indonesia sendiri.'),
(11, 14, 'Romeo & Juliet', 'Samuel Jhonson', 'Narasi', 2018, 'Drama ini berasal dari berbagai bentuk puisi, dan karakter, yang kadang-kadang mengubah jalur pengembangan karakter.'),
(12, 15, 'Atomic Habits', ' James Clear', 'Gramedia Pustaka Utama', 2019, 'Penulis buku ini yaitu James Clear yang merupakan penulis dan pembicara yang berfokus dengan topik kebiasaan, pengambilan keputusan dan juga perbaikan berkelanjutan.'),
(13, 15, 'Duduk Dulu, Jangan Lupa Jadi Manusia', 'Syahid Muhammad', 'Syahid Muhammad', 2021, 'Buku yang berjudul \"Duduk Dulu, Jangan Lupa Jadi Manusia\" yang merupakan karya dari Syahid Muhammad bercerita kalau kita perlu duduk sejenak, bernafas, dan mengingat kalau kita hanya manusia biasa yang memiliki kekurangan serta berbagai macam emosi yang terbentuk dari pengalaman. Ia mengatakan berkali-kali kalau kita perlu menerima dan mengakui emosi lain, tidak hanya emosi bahagia.'),
(14, 15, 'Nanti Kita Cerita Tentang Hari Ini', 'Marchella FP', 'Kepustakaan Populer Gramedia', 2019, 'Kisah Nanti Kita Cerita Tentang Hari Ini mengisahkan tentang sebuah keluarga yang mempunyai konflik di masa lalu. Konflik tersebut menjadi konflik yang terpendam, karena belum pernah dibicarakan dan diselesaikan sebelumnya. Sebab, konflik ini bersifat destruktif dan dapat merusak keharmonisan yang ada dalam keluarga ini.'),
(15, 16, 'A Brief History of Time: From the Big Bang to Black Holes', 'Stephen Hawking', 'Bantam Books', 1988, 'Dalam buku ini, Hawking membahas berbagai konsep fundamental dalam fisika, mulai dari asal-usul alam semesta dan teori Big Bang hingga lubang hitam dan teori relativitas. Ia menjelaskan konsep-konsep ini dengan cara yang sederhana dan menarik, menggunakan analogi dan ilustrasi untuk membantu pembaca memahami ide-ide yang kompleks.'),
(16, 16, 'Cosmos', 'Carl Sagan', 'Random House', 1980, 'Dalam \"Cosmos,\" Sagan membawa pembaca dalam perjalanan ilmiah yang memukau melintasi ruang dan waktu, dari asal-usul alam semesta hingga peradaban manusia modern. Ia menjelaskan konsep-konsep kompleks tentang alam semesta dengan cara yang akrab dan menarik, menggunakan analogi dan cerita untuk menyampaikan ide-ide yang kompleks.'),
(17, 16, 'The Selfish Gene', 'Richard Dawkins', 'Oxford University Press', 1976, 'Dalam buku ini, Dawkins menjelaskan konsepnya dengan jelas dan memukau, menggunakan analogi dan ilustrasi untuk membantu pembaca memahami gagasannya. Dia juga membahas berbagai konsep terkait seperti altruisme, seleksi seksual, dan teori permainan, sambil mengeksplorasi implikasinya terhadap evolusi perilaku manusia dan hewan.'),
(18, 17, 'Interaction of Color', 'Josef Albers', 'Yale University Press', 1963, 'Dalam \"Interaction of Color,\" Albers menyelidiki berbagai aspek tentang interaksi warna, termasuk ilusi optik, perubahan persepsi warna, dan penggunaan warna dalam seni dan desain. Albers membahas konsep-konsep ini melalui serangkaian eksperimen visual, demonstrasi, dan latihan praktis yang dirancang untuk membantu pembaca memahami kompleksitas warna.'),
(19, 17, 'Ways of Seeing', ' John Berger', 'Penguin Books', 1972, 'Buku ini tidak hanya memeriksa seni sebagai objek estetis, tetapi juga sebagai produk dari kekuasaan, ideologi, dan pandangan dunia tertentu. Berger mengajak pembaca untuk mempertanyakan dan merenungkan apa yang sebenarnya terjadi di balik karya seni, serta bagaimana karya seni mempengaruhi pemahaman kita tentang diri kita sendiri dan masyarakat.'),
(20, 17, 'The Design of Everyday Things', 'Don Norman', 'Basic Books', 1988, 'Dalam buku ini, Norman membahas konsep desain yang dapat dimengerti dan digunakan dengan baik, serta menganjurkan pendekatan manusia-terpusat dalam merancang produk. Ia mengidentifikasi prinsip-prinsip dasar desain yang membantu pengguna berinteraksi dengan objek sehari-hari secara efektif dan intuitif.'),
(21, 18, 'Dasar-Dasar Pemrograman Komputer Penulis: Budi Raharjo', 'Budi Raharjo', 'Andi Publisher', 2019, 'Memperkenalkan pembaca pada beberapa bahasa pemrograman yang umum digunakan, seperti Python, Java, atau C++, dan memberikan pemahaman dasar tentang sintaks dan struktur dasar dari bahasa-bahasa tersebut.'),
(22, 18, 'Keamanan Sistem Informasi', ' William Stallings dan Lawrie Brown', ' Prentice Hall', 2021, 'Buku ini merupakan sumber penting bagi mereka yang tertarik memahami dan mengimplementasikan praktik terbaik dalam mengamankan sistem informasi. '),
(23, 18, ' Desain dan Analisis Algoritma', 'Anany Levitin', 'Pearson Education', 2019, 'Buku ini merupakan panduan yang komprehensif untuk memahami dan menerapkan konsep-konsep dalam desain dan analisis algoritma. '),
(24, 19, 'Negeri 5 Menara', 'Ahmad Fuadi', 'Gramedia Pustaka Utama', 2009, 'Buku ini mengisahkan perjalanan hidup seorang pemuda Minangkabau bernama Alif yang bercita-cita tinggi.'),
(25, 19, 'Si Unyil dan Teman-Teman', ' Kang Bakri (Bapak Bakri Siregar)', ' Tiga Serangkai Pustaka Mandiri', 2010, 'Cerita ini mengisahkan petualangan Unyil, si karakter utama, bersama dengan teman-temannya di desa.'),
(26, 19, 'Si Gembul', 'Tere Liye', 'Republika', 2020, 'Buku ini menceritakan kisah petualangan seorang anak kecil yang bernama Komo, yang memiliki karakter berani, cerdas, dan penuh semangat.'),
(27, 20, ' Pendidikan Multikultural', 'James A. Banks', 'Wiley', 2018, 'Buku ini merupakan panduan komprehensif yang membahas konsep-konsep penting dalam pendidikan multikultural, mulai dari teori hingga praktiknya. '),
(28, 20, 'Pendidikan Inklusif', 'Julie Causton-Theoharis dan George Theoharis', 'Paul H. Brookes Publishing Co.', 2020, 'Buku ini menyajikan panduan komprehensif tentang konsep, metode, dan isu-isu terkini dalam pendidikan inklusif.'),
(29, 20, 'Pendidikan Karakter', 'Thomas Lickona', 'Bantam Books', 2018, ' Lickona menguraikan berbagai strategi dan metode yang dapat digunakan oleh pendidik, orang tua, dan masyarakat untuk memperkuat karakter anak-anak dan remaja.'),
(30, 21, 'Garis Keturunan', 'Dee Lestari', 'Bentang Pustaka', 2014, 'Komik ini mengikuti perjalanan seorang wanita muda bernama Karina yang menemukan bahwa ia memiliki kemampuan luar biasa untuk membaca masa lalu dan masa depan melalui benda-benda peninggalan keluarganya. '),
(31, 21, 'Wiro Sableng', 'Bastian Tito', 'Gramedia Pustaka Utama', 1992, 'Serial ini mengikuti petualangan tokoh utama, Wiro Sableng, seorang pendekar pedang dengan kode etik yang kuat, di sebuah dunia fantasi yang dipenuhi dengan misteri, pertempuran, dan kelicikan. '),
(32, 21, 'Ganesha', 'Abdi J. Putra', 'Koloni', 2020, 'Ganesha digambarkan sebagai tokoh utama yang menjalani berbagai misi dan menyelesaikan tantangan yang dihadapinya dengan keberanian, kebijaksanaan, dan kecerdikan.'),
(33, 22, 'Kamus Besar Bahasa Indonesia', 'Pusat Bahasa (Badan Bahasa)', 'Balai Pustaka', 2020, 'Edisi terbaru dari kamus ini mencakup berbagai pembaruan dan penambahan entri kata yang memperkaya dan memperbarui kosakata bahasa Indonesia sesuai dengan perkembangan bahasa dan kebutuhan pengguna.'),
(34, 22, 'Encyclopedia Britannica', 'Encyclopædia Britannica, Inc.', 'Encyclopædia Britannica, Inc.', 1768, 'Edisi-edisi Britannica terbaru mencakup berbagai topik dalam ilmu pengetahuan, sejarah, seni, budaya, dan masih banyak lagi, ditulis oleh para pakar terkemuka dalam bidang mereka masing-masing.'),
(35, 22, 'Publication Manual of the American Psychological Association (APA)', 'American Psychological Association (APA)', 'American Psychological Association', 2020, 'Publication Manual of the American Psychological Association (APA) adalah panduan standar yang diterbitkan oleh American Psychological Association (APA) yang digunakan oleh penulis, editor, mahasiswa, dan profesional dalam bidang ilmu sosial dan perilaku untuk menulis dan memformat makalah, tesis, laporan penelitian, dan artikel jurnal.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(13, 'Agama'),
(14, 'Buku Fiksi'),
(15, 'Buku Nonfiksi'),
(16, 'Ilmu Pengetahuan'),
(17, 'Seni dan Desain'),
(18, 'Teknologi dan Komputer'),
(19, 'Buku Anak-anak'),
(20, 'Pendidikan'),
(21, 'Komik'),
(22, 'Referensi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoribuku_relasi`
--

CREATE TABLE `kategoribuku_relasi` (
  `id_kategoribuku` int(11) NOT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `koleksi_pribadi`
--

CREATE TABLE `koleksi_pribadi` (
  `id_koleksi` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `tanggal_peminjaman` date DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `status_peminjaman` enum('dipinjam','dikembalikan') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulasan`
--

CREATE TABLE `ulasan` (
  `id_ulasan` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `ulasan` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ulasan`
--

INSERT INTO `ulasan` (`id_ulasan`, `id_user`, `id_buku`, `ulasan`, `rating`) VALUES
(4, 3, 3, 'jelek banget', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `nama_lengkap` varchar(225) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_telpon` varchar(225) DEFAULT NULL,
  `level` enum('admin','petugas','peminjam') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `nama_lengkap`, `alamat`, `no_telpon`, `level`) VALUES
(1, 'admin', '12', 'admin@gmail.com', 'Administrator', 'jln kelapa', '082193546575', 'admin'),
(2, 'petugas', '13', 'petugas@gmail.com', 'Petugas ', 'jln kancil', '082199887766', 'petugas'),
(3, 'Peminjam', '11\r\n', 'peminjam@gmail.com', 'Arini Hapsari', 'hombis', '082276854576', 'peminjam'),
(4, 'Peminjam', '15', 'peminjam2@gmail.com', 'Melani Putri', 'Baruga,Kendari', '', 'peminjam');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD PRIMARY KEY (`id_kategoribuku`),
  ADD KEY `buku_id` (`id_buku`),
  ADD KEY `kategori_id` (`id_kategori`);

--
-- Indeks untuk tabel `koleksi_pribadi`
--
ALTER TABLE `koleksi_pribadi`
  ADD PRIMARY KEY (`id_koleksi`),
  ADD KEY `buku_id` (`id_buku`),
  ADD KEY `user_id` (`id_user`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `user_id` (`id_user`),
  ADD KEY `buku_id` (`id_buku`);

--
-- Indeks untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id_ulasan`),
  ADD KEY `buku_id` (`id_buku`),
  ADD KEY `user_id` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  MODIFY `id_kategoribuku` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `koleksi_pribadi`
--
ALTER TABLE `koleksi_pribadi`
  MODIFY `id_koleksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id_ulasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Ketidakleluasaan untuk tabel `koleksi_pribadi`
--
ALTER TABLE `koleksi_pribadi`
  ADD CONSTRAINT `koleksi_pribadi_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `koleksi_pribadi_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);

--
-- Ketidakleluasaan untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `ulasan_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `ulasan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
