-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 16 Feb 2021 pada 13.00
-- Versi server: 10.3.27-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengajuan_ta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_ujian`
--

CREATE TABLE `detail_ujian` (
  `id_detail` int(11) NOT NULL,
  `id_penguji` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `tgl_ujian` date NOT NULL,
  `ruang` varchar(10) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `halaman`
--

CREATE TABLE `halaman` (
  `id_halaman` int(11) NOT NULL,
  `judul_halaman` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `halaman`
--

INSERT INTO `halaman` (`id_halaman`, `judul_halaman`, `isi_halaman`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Apa Itu Skripsi', '<p><strong>Definisi</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Skripsi</strong> adalah istilah yang digunakan di Indonesia untuk mengilustrasikan suatu <a href=\"https://id.wikipedia.org/wiki/Karya_ilmiah\" title=\"Karya ilmiah\">karya tulis ilmiah</a> berupa paparan tulisan hasil penelitian sarjana S1 yang membahas suatu permasalahan/fenomena dalam bidang ilmu tertentu dengan menggunakan kaidah-kaidah yang berlaku.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Skripsi bertujuan agar mahasiswa mampu menyusun dan menulis suatu karya ilmiah, sesuai dengan bidang ilmunya. Mahasiswa yang mampu menulis skripsi dianggap mampu memadukan pengetahuan dan keterampilannya dalam memahami, menganalisis, menggambarkan, dan menjelaskan masalah yang berhubungan dengan bidang keilmuan yang diambilnya. Skripsi merupakan persyaratan untuk mendapatkan status sarjana (S1) di setiap Perguruan Tinggi Negeri (PTN) maupun Perguruan Tinggi Swasta (PTS) yang ada di Indonesia. Istilah skripsi sebagai tugas akhir <a href=\"https://id.wikipedia.org/wiki/Sarjana\" title=\"Sarjana\">sarjana</a> hanya digunakan di Indonesia. Negara lain, seperti Australia menggunakan istilah <em>thesis</em> untuk penyebutan tugas akhir dengan <a href=\"https://id.wikipedia.org/wiki/Riset\" title=\"Riset\">riset</a> untuk jenjang <em>undergraduate</em> (S1), <em>postgraduate</em> (S2), Ph.D. dengan <a href=\"https://id.wikipedia.org/wiki/Riset\" title=\"Riset\">riset</a> (S3) dan <em>disertation</em> untuk tugas <a href=\"https://id.wikipedia.org/wiki/Riset\" title=\"Riset\">riset</a> dengan ukuran yang kecil baik <em>undergraduate</em> (S1) ataupun <em>postgraduate</em> (pascasarjana). Sedangkan di Indonesia skripsi untuk jenjang S1, tesis untuk jenjang S2, dan disertasi untuk jenjang S3.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dalam penulisan skripsi, mahasiswa dibimbing oleh satu atau dua orang pembimbing yang berstatus <a href=\"https://id.wikipedia.org/wiki/Dosen\" title=\"Dosen\">dosen</a> pada perguruan tinggi tempat <a href=\"https://id.wikipedia.org/wiki/Mahasiswa\" title=\"Mahasiswa\">mahasiswa</a> kuliah. Untuk penulisan skripsi yang dibimbing oleh dua orang, dikenal istilah Pembimbing I dan Pembimbing II. Biasanya, Pembimbing I memiliki peranan yang lebih dominan bila dibanding dengan Pembimbing II.</p>\r\n\r\n<p>Proses penyusunan skripsi berbeda-beda antara satu kampus dengan yang lain. Namun umumnya, proses penyusunan skripsi adalah sebagai berikut:</p>\r\n\r\n<p>1. Pengajuan judul skripsi</p>\r\n\r\n<p>2. Pengajuan proposal skripsi</p>\r\n\r\n<p>3. Seminar proposal skripsi</p>\r\n\r\n<p>4. Penelitan</p>\r\n\r\n<p>5. Setelah penulisan dianggap siap dan selesai, mahasiswa mempresentasikan hasil karya ilmiahnya tersebut pada Dosen Penguji (sidang tugas akhir).</p>\r\n\r\n<p>6. Mahasiswa yang hasil ujian skripsinya diterima dengan revisi, melakukan proses revisi sesuai dengan masukan Dosen Penguji.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Terdapat juga proses penyusunan skripsi yang cukup ringkas sebagai berikut:</p>\r\n\r\n<p>1. Pengajuan judul skripsi/meminta topik skripsi dari dosen</p>\r\n\r\n<p>2. Penelitian dan bimbingan skripsi</p>\r\n\r\n<p>3. Seminar</p>\r\n\r\n<p>4. Sidang</p>\r\n\r\n<p>5. Revisi</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Karakteristik Skripsi</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. Merupakan karya ilmiah sehingga harus dihasilkan melalui metode ilmiah.</p>\r\n\r\n<p>2. Merupakan laporan tertulis dari hasil penelitian pada salah satu aspek kehidupan masyarakat atau organisasi (untuk ilmu sosial). Hasil penelitian ini dikaji dengan merujuk pada suatu fenomena, teori, atau hasil-hasil penelitian yang relevan yang pernah dilaksanakan sebelumnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Penulisan Skripsi</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pada akhir studi Program Sarjana, mahasiswa diwajibkan melakukan penyusunan dan penulisan Skripsi, dengan ketentuan (lihat Pedoman Penyusunan dan Penulisan Laporan Skripsi di fakultas masing-masing).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Persyaratan:</strong></p>\r\n\r\n<p>Mahasiswa boleh secara resmi mulai menempuh mata kuliah Skripsi (menyusun skripsi) apabila sekurang-kurangnya telah menyelesaikan 80% beban studi kumulatif yang dipersyaratkan;</p>\r\n\r\n<p>1. Telah&nbsp; menyelesaikan semua mata kuliah prasyarat Skripsi;</p>\r\n\r\n<p>2. Memiliki kartu mahasiswa yang berlaku untuk&nbsp; semester bersangkutan;</p>\r\n\r\n<p>3. Memiliki KRS yang mencantumkan skripsi sebagai salah satu mata kuliah.</p>\r\n\r\n<p>4. Pembimbing Skripsi:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; = Pembimbing skripsi dapat lebih dari 1 orang yang penunjukannya dilakukan oleh Jurusan/Program Studi/Bagian dan ditetapkan dengan SK Dekan;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; = Jika pembimbing lebih dari 1 orang, maka Pembimbing Utama maupun Pembimbing Pendamping pada dasarnya adalah tenaga akademik tetap fakultas/jurusan yang&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; serendah-rendahnya memiliki jabatan Asisten Ahli berpendidikan S2/SpI<strong>.&nbsp;&nbsp;</strong></p>\r\n\r\n<p>5.&nbsp; Apabila untuk Skripsi itu diperlukan penelitian lapangan, maka fakultas/jurusan dapat menetapkan seorang Pembimbing Lapangan, yaitu tenaga dari instansi/lembaga tempat mahasiswa melakukan kegiatan penelitian.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ketentuan Lain:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. Apabila Skripsi tidak dapat diselesaikan dalam satu semester, maka :</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; a. Mahasiswa masih diperkenankan menyelesaikannya pada semester berikutnya dengan mencantumkan kembali pada KRS (topik skripsi dan pembimbing tetap sama);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; b. Pada akhir semester bersangkutan skripsi tersebut diberi huruf&nbsp; K, sehingga tidak digunakan untuk penghitungan IP dan IPK.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. Apabila skripsi tidak dapat diselesaikan dalam dua semester berturut-turut, maka :</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; a. Skripsi tersebut diberi huruf mutu E, kecuali pada kasus tertentu yang dapat dipertanggungjawabkan secara akademik;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; b. Mahasiswa diharuskan menempuh kembali skripsi tersebut dengan judul yang berbeda (Pembimbing bisa berbeda atau tetap sama);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; c. Selanjutnya berlaku ketentuan seperti butir (1) di atas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3. Huruf mutu skripsi sekurang-kurangnya adalah C;</p>\r\n\r\n<p style=\"margin-left:18.0pt\">&nbsp;</p>\r\n\r\n<p>4. Skripsi yang ternyata ditulis dan diselesaikan di luar ketentuan di atas (pada saat mahasiswa menghentikan studi untuk sementara atas izin Rektor maupun tanpa izin Rektor), sekalipun dibimbing oleh Pembimbing Pendamping sesuai ketentuan di atas, penulisan skripsi tersebut tidak dibenarkan dan hasil bimbingannya dianggap gugur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5. Dalam keadaan seperti butir (4) di atas, mahasiswa diharuskan mengganti topiknya dan mengulangi penyusunan dan penulisan skripsinya dan proses bimbingannya;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6. Ujian skripsi diselenggarakan pada akhir studi, yaitu pada Sidang Ujian Sarjana.</p>\r\n', 1, '2016-05-04 20:48:14', 1, '2017-01-16 21:33:26'),
(5, 'Hati-Hati Plagiarisme !', '<p><strong>HATI-HATI PLAGIARISME</strong></p>\r\n\r\n<p>Sumber: Panduan Anti Plagiarisme, Perpustakaan UGM, 2016.</p>\r\n\r\n<p>Saat ini mulai muncul beberapa kasus plagiarisme yang menjadi keprihatinan kita semua. Hal ini tentu saja perlu menjadi perhatian kita. Oleh karena itu, perlu pemahaman bersama mahasiswa dan dosen terkait plagiarisme, untuk menghindarkan diri dari praktik?praktik plagiat. Menghormati, mengakui dan memberikan penghargaan atas karya orang lain menjadi satu keharusan dalam memproduksi karya tulis.</p>\r\n\r\n<p>Kita ketahui bersama bahwa ilmu pengetahuan dikembangkan berdasarkan pada ilmu pengetahuan yang sudah ada sebelumnya. Sehingga tidak perlu ragu?ragu bagi siapapun (masyarakat akademis) ketika menyusun karya ilmiah/karya tulis, menyebutkan sumber rujukan. Hal ini harus dipahami sebagai kejujuran intelektual yang tidak akan menurunkan bobot karya tulis kita. Sebutkanlah dengan jujur, sumber rujukan yang kita gunakan, atau melakukan kutipan, sehingga akan terlihat jelas, bagian mana dari karya kita yang merupakan ide atau gagasan orang lain, dan yang mana yang merupakan ide atau gagasan kita sendiri.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Definisi Plagiarisme</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tidaklah mudah untuk mengatakan apakah suatu karya &ldquo;ya&rdquo; atau &ldquo;tidak&rdquo; mengandung unsur plagiat. Sehingga menjadi penting bagi kita untuk memahami definisi plagiarisme dari berbagai sumber. Berikut ini definisi tindakan plagiat dari beberapa sumber yang dapat kita rujuk.</p>\r\n\r\n<p>Menurut Peraturan Menteri Pendidikan Nasional Republik Indonesia Nomor 17 Tahun 2010 dikatakan:</p>\r\n\r\n<p style=\"margin-left:36.0pt\">&ldquo;Plagiat adalah perbuatan <strong>sengaja </strong>atau <strong>tidak sengaja </strong>dalam memperoleh atau mencoba memperoleh kredit atau nilai untuk suatu karya ilmiah, dengan mengutip sebagian atau seluruh karya dan atau karya ilmiah pihak lain yang diakui sebagai karya ilmiahnya, tanpa menyatakan sumber secara tepat dan memadai&rdquo;</p>\r\n\r\n<p>Dalam <em>Kamus Besar Bahasa Indonesia </em>(2008) disebutkan:</p>\r\n\r\n<p style=\"margin-left:36.0pt\">&ldquo;Plagiat adalah pengambilan karangan (pendapat dan sebagainya) orang lain dan menjadikannya seolah?olah karangan (pendapat) sendiri&rdquo;.</p>\r\n\r\n<p>Menurut <em>Oxford American Dictionary </em>dalam Clabaugh (2001) plagiarisme adalah:</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><em>&ldquo;to take and use another person&rsquo;s ideas or writing or inventions as one&rsquo;s own&rdquo;.</em></p>\r\n\r\n<p>Menurut Reitz dalam <em>Online Dictionary for Library and Information Science </em>(http://www.abc?clio.com/ODLIS/odlis_p.aspx) plagiarisme adalah :</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><em>&ldquo;Copying or closely imitating the work of another writer, composer etc. without permission and with the intention of passing the result of as original work&rdquo;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Definisi di atas dapat kita cermati, sehingga kita paham apa yang dimaksud dengan plagiarisme. Dengan demikian, pemahaman ini sebagai pegangan bagi kita untuk tidak melakukan tindakan plagiat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ruang Lingkup Plagiarisme</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berdasarkan beberapa definisi plagiarisme di atas, berikut ini diuraikan ruang lingkup plagiarisme:</p>\r\n\r\n<p>1. Mengutip kata?kata atau kalimat orang lain tanpa menggunakan tanda kutip dan tanpa menyebutkan identitas sumbernya.</p>\r\n\r\n<p>2. Menggunakan gagasan, pandangan atau teori orang lain tanpa menyebutkan identitas sumbernya.</p>\r\n\r\n<p>3. Menggunakan fakta (data, informasi) milik orang lain tanpa menyebutkan identitas sumbernya.</p>\r\n\r\n<p>4. Mengakui tulisan orang lain sebagai tulisan sendiri.</p>\r\n\r\n<p>5. Melakukan parafrase (mengubah kalimat orang lain ke dalam susunan kalimat sendiri tanpa mengubah idenya) tanpa menyebutkan identitas sumbernya.</p>\r\n\r\n<p>6. Menyerahkan suatu karya ilmiah yang dihasilkan dan/atau telah dipublikasikan oleh pihak lain seolah?olah sebagai karya sendiri.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tipe Plagiarisme</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Menurut Soelistyo (2011) ada beberapa tipe plagiarisme:</p>\r\n\r\n<p>a. Plagiarisme Kata demi Kata (<em>Word for word Plagiarism</em>). Penulis menggunakan kata?kata penulis lain (persis) tanpa menyebutkan sumbernya.</p>\r\n\r\n<p>b. Plagiarisme atas sumber (<em>Plagiarism of Source</em>).&nbsp;Penulis menggunakan gagasan orang lain tanpa memberikan pengakuan yang cukup (tanpa menyebutkan sumbernya&nbsp; secara jelas).</p>\r\n\r\n<p>c. Plagiarisme Kepengarangan (<em>Plagiarism of Authorship</em>). Penulis mengakui sebagai pengarang karya tulis karya orang lain.</p>\r\n\r\n<p><em>d. Self Plagiarism. </em>Termasuk dalam tipe ini adalah penulis mempublikasikan satu artikel pada lebih dari satu redaksi publikasi dan mendaur ulang karya tulis/ karya ilmiah.&nbsp;&nbsp;&nbsp;&nbsp; Yang penting dalam <em>self plagiarism </em>adalah bahwa ketika mengambil karya sendiri, maka ciptaan karya baru yang dihasilkan harus memiliki perubahan yang berarti. Artinya karya lama merupakan bagian kecil dari karya baru yang dihasilkan. Sehingga pembaca akan memperoleh hal baru, yang benar?benar penulis tuangkan pada karya tulis yang menggunakan karya lama.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Mengapa Plagiarisme Terjadi</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Beberapa tindakan plagiat terjadi di sekitar kita. Tentu saja hal ini cukup menjadi perhatian kita semua, sehingga menjadi sangat penting bagi kita untuk mengantisipasi tindakan ini. Tindakan plagiat akan mencoreng dan memburamkan dunia akademis kita dan tidak berlebihan jika plagiarisme dikatakan sebagai kejahatan intelektual. Ada beberapa alasan pemicu atau faktor pendorong terjadinya tindakan plagiat yaitu:</p>\r\n\r\n<p>1. Terbatasnya waktu untuk menyelesaikan sebuah karya ilmiah yang menjadi beban tanggungjawab seseorang, sehingga terdorong untuk <em>copy</em><em>?</em><em>paste </em>atas karya orang lain.</p>\r\n\r\n<p>2. Rendahnya minat baca dan minat melakukan analisis terhadap sumber referensi yang dimiliki.</p>\r\n\r\n<p>3. Kurangnya pemahaman tentang kapan dan bagaimana harus melakukan kutipan.</p>\r\n\r\n<p>4. Kurangnya perhatian dari guru, dosen dan pembimbing akademik terhadap persoalan plagiarisme.</p>\r\n\r\n<p>Apapun alasan seseorang melakukan tindakan plagiat, bukanlah satu pembenaran atas tindakan tersebut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sanksi Plagiarisme</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Undang</em><em>?</em><em>Undang No. 20 Tahun 2003 tentang Sistem Pendidikan Nasional pasal 25 ayat 2 dan pasal 70 </em>mengatur sanksi bagi masyarakat yang melakukan plagiat, khususnya yang terjadi di lingkungan akademik. Sanksi tersebut adalah sebagai berikut :</p>\r\n\r\n<p>(Pasal 25) ayat 2:</p>\r\n\r\n<p><strong><em>Lulusan perguruan tinggi yang karya ilmiahnya digunakan untuk memperoleh gelar akademik, profesi, atau vokasi terbukti merupakan jiplakan dicabut gelarnya.</em></strong></p>\r\n\r\n<p>(Pasal 70):</p>\r\n\r\n<p><strong><em>Lulusan yang karya ilmiah yang digunakannya untuk mendapatkan gelar akademik, profesi, atau vokasi sebagaimana dimaksud dalam Pasal 25 Ayat (2) terbukti merupakan jiplakan dipidana dengan pidana penjara paling lama dua tahun dan/atau pidana denda paling banyak Rp 200.000.000,00 (dua ratus juta rupiah).</em></strong></p>\r\n\r\n<p><em>Peraturan Menteri Nomor 17 Tahun 2010 </em>telah mengatur sanksi bagi mahasiswa yang melakukan tindakan plagiat. Jika terbukti melakukan plagiasi maka seorang mahasiswa akan memperoleh sanksi sebagai berikut:</p>\r\n\r\n<p>1. Teguran</p>\r\n\r\n<p>2. Peringatan tertulis</p>\r\n\r\n<p>3. Penundaan pemberian sebagian hak mahasiswa</p>\r\n\r\n<p>4. Pembatalan nilai</p>\r\n\r\n<p>5. Pemberhentian dengan hormat dari status sebagai mahasiswa</p>\r\n\r\n<p>6. Pemberhentian tidak dengan hormat dari status sebagai mahasiswa</p>\r\n\r\n<p>7. Pembatalan ijazah apabila telah lulus dari proses pendidikan.</p>\r\n', 1, '2016-08-03 12:47:17', 1, '2017-01-16 21:05:49'),
(6, 'UPAYA MENGHINDARI PLAGIARISME', '<p>Sumber: Panduan Anti Plagiarisme, Perpustakaan UGM, 2016.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Menghindari Tindakan Plagiarisme</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Beberapa upaya telah dilakukan institusi perguruan tinggi untuk menghindarikan masyarakat akademisnya, dari tindakan plagiarisme, sengaja maupun tidak sengaja.</p>\r\n\r\n<p>Berikut ini, pencegahan dan berbagai bentuk pengawasan yang dilakukan antara lain (<em>Peraturan Menteri Pendidikan Nasional Nomor 17 Tahun 2010 Pasal 7</em>):</p>\r\n\r\n<p>1. Karya mahasiswa (skripsi, tesis dan disertasi) dilampiri dengan surat pernyataan bermeterai, yang menyatakan bahwa karya ilmiah tersebut tidak mengandung unsur plagiat.</p>\r\n\r\n<p>2. Pimpinan Perguruan Tinggi berkewajiban mengunggah semua karya ilmiah yang dihasilkan di lingkungan perguruan tingginya, seperti portal Garuda atau portal lain yang ditetapkan oleh Direktorat Pendidikan Tinggi.</p>\r\n\r\n<p>3. Sosialisasi terkait dengan <em>UU No. 19 Tahun 2002 tentang Hak Cipta </em>dan <em>Peraturan Menteri Pendidikan Nasional Nomor 17 Tahun 2010 </em>kepada seluruh masyarakat akademis.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Selain bentuk pencegahan yang telah disebutkan di atas, sebagaimana ditulis dalam http://writing.mit.edu/wcc/avoidingplagiarism, ada langkah yang harus diperhatikan untuk mencegah atau menghindarkan kita dari plagiarisme, yaitu melakukan pengutipan dan/atau melakukan <em>paraphrase</em>.</p>\r\n\r\n<p><strong>Pengutipan</strong></p>\r\n\r\n<p>Menggunakan dua tanda kutip, jika mengambil langsung satu kalimat, dengan menyebutkan sumbernya.</p>\r\n\r\n<p>Menuliskan daftar pustaka, atas karya yang dirujuk, dengan baik dan benar. Yang dimaksud adalah sesuai panduan yang ditetapkan masing?masing institusi dalam penulisan daftar pustaka.</p>\r\n\r\n<p><strong><em>Paraphrase</em></strong></p>\r\n\r\n<p style=\"margin-left:18.0pt\">Melakukan parafrasa dengan tetap menyebutkan sumbernya. Parafrasa adalah mengungkapkan ide/gagasan orang lain dengan menggunakan kata?kata sendiri, tanpa merubah maksud atau makna ide/gagasan dengan tetap menyebutkan sumbernya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Beberapa Contoh <em>Paraphrase</em></strong></p>\r\n\r\n<p>Kalimat Asli 1:</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><em>&ldquo;There is now strong evidence that smoking cigarettes is linked to baldness in young women&rdquo;</em></p>\r\n\r\n<p>Hasil <em>Paraphrase:</em></p>\r\n\r\n<p style=\"margin-left:36.0pt\"><em>Smoking has been linked to baldness in young women (Smith, 2004)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kalimat Asli 2:</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><em>&ldquo;The low self</em><em>?</em><em>monitoring person is generally more attentive to his/her internal attitudes and dispositions than to externally based information such as others&rsquo; reactions and expectations (Baxter, 1983, p. 29).&rdquo;</em></p>\r\n\r\n<p>Hasil <em>Paraphrase</em>:</p>\r\n\r\n<p style=\"margin-left:36.0pt\"><em>&ldquo;According to Baxter (1983), if a person has a low self</em><em>?</em><em>monitor, then he/she tends to pay more attention to his/her attitudes, rather than to the ways others might expect him/ her to behave.&rdquo;</em></p>\r\n\r\n<p style=\"margin-left:36.0pt\">&nbsp;</p>\r\n\r\n<p><strong>Tips Menulis, Agar Terhindar Dari Plagiarisme</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. Tentukan buku yang hendak anda baca</p>\r\n\r\n<p>2. Sediakan beberapa kertas kecil (seukuran saku) dan satukan dengan penjepit.</p>\r\n\r\n<p>3. Tulis judul buku, pengarang, penerbit, tahun terbit, tempat terbit, jumlah halaman pada kertas kecil paling depan</p>\r\n\r\n<p>4. Sembari membaca buku, salin ide utama yang anda dapatkan pada kertas?kertas kecil tersebut.</p>\r\n\r\n<p>5. Setelah selesai membaca buku, anda fokus pada catatan anda</p>\r\n\r\n<p>6. Ketika menulis artikel, maka jika ingin menyitir dari buku yang telah anda baca, fokuslah pada kertas catatan.</p>\r\n\r\n<p>7. Kembangkan kalimat anda sendiri dari catatan yang anda buat.</p>\r\n\r\n<p>8. Tuliskan sumber kutipan.</p>\r\n\r\n<p>9. Untuk lebih meyakinkan bahwa tulisan kita jauh dari unsur plagiarisme, anda dapat menggunakan aplikasi/<em>software </em>untuk mengecek tingkat plagiarisme tulisan yang sudah kita hasilkan. Beberapa aplikasi pendukung antiplagiarisme berbayar maupun gratis, misalnya <em>Turnitin</em>, <em>Wcopyfind</em>, <em>vyper, plagiarism</em><em>?</em><em>detect, AiMOS, </em>dan sebagainya. Selain itu untuk pengelolaan sitasi dan daftar pustaka anda bisa menggunakan aplikasi <em>Zotero</em>, <em>Mendeley</em>, <em>Endnote </em>dan lain?lain</p>\r\n', 1, '2017-01-16 21:13:46', 1, '2017-01-16 21:13:46'),
(7, '10 Cara Cerdas Mendapatkan Topik Skripsi !', '<p>Sumber:</p>\r\n\r\n<p><a href=\"http://www.hipwee.com/tips/10-cara-cerdas-mendapatkan-topik-skripsi-yang-bisa-bikin-kamu-lulus-sarjana-sebentar-lagi/\">http://www.hipwee.com/tips/10-cara-cerdas-mendapatkan-topik-skripsi-yang-bisa-bikin-kamu-lulus-sarjana-sebentar-lagi/</a></p>\r\n\r\n<p> </p>\r\n\r\n<p><em>Kamu sedang galau karena skripsi?</em></p>\r\n\r\n<p>Skripsi adalah mata kuliah yang berbeda sendiri dari kelas-kelas lainnya yang kamu ambil selama S-1. Kamu tak hanya harus menandatangani daftar presensidan duduk mendengarkan ceramah dosen, tapi juga diminta menulis 10,000-15,000 kata tentang suatu fenomena atau topik tertentu.</p>\r\n\r\n<p>Karena sifatnya yang lebih menantang, wajar saja jika mata kuliah satu ini ampuh membuat mahasiswa jadi galau dan mendadak hilang arah. Usut punya usut, kegalauan skripsi seringkali bermula dari tidak adanya ide di kepala. Judul ditolak, sementara si mahasiswa tidak ada ide yang lain untuk diajukan. Padahal jika kamu mau sedikit berstrategi, judul skripsi bisa lebih mudah dibuat lho. Tak perlu berpikir tinggi-tinggi, kadang ide yang brilianjustru bisa kamutemukan di sekitarmu kok.</p>\r\n\r\n<p>Nah, mau tahu bagaimana mendapatkan ide skripsi yang menarik? Berikut ini caranya!</p>\r\n\r\n<p> </p>\r\n\r\n<p><em>1. Mulailah pengembaraanmu mencari judul skripsi dengan bertanya pada diri sendiri: Apa minatmu saat ini?</em></p>\r\n\r\n<p style=\"margin-left:18.0pt\">Mengerjakan skripsi tentu butuh niat yang besar dan semangat yang tak boleh padam. Ide yang benar-benar menarik minatmu berpengaruh besar dalam membantumu   mempertahankan niat dan semangat. Nah, saat kamu sedang buntu mencari ide, cobalah duduk, siapkan pulpen dan kertas, lalu bertanyalah pada dirimu:</p>\r\n\r\n<p>      b. Sebenarnya apa sih minat akademikku?</p>\r\n\r\n<p>      c. Dari semua kelas yang pernah kuambil, yang mana yang membuatku merasa tercerahkan atau bahkan berandai-andai ingin mengulangnya?</p>\r\n\r\n<p>Misalnya, jika kamu mahasiswa Hukum dengan konsentrasi Hukum Internasional, mungkin kamu merasa tercerahkan ketika pertama kali belajar hukum perang dan ICRC. Atau justru bidang hukum maritim lebih menarik minatmu. Tentukanlah dengan segera dalam hati.Saat kamu bisa menemukan minatmu sendiri, gak jarang kamu bisa lebih menikmati proses pengerjaan skripsimu nanti.</p>\r\n\r\n<p> </p>\r\n\r\n<p><em>2. Langkahkan kakimu ke perpustakaan. Titik terang bisa kamu dapatkan dari membacaskripsi seniorangkatan.</em></p>\r\n\r\n<p style=\"margin-left:18.0pt\">Gak sedikit mahasiswa yang lulusnya harus tertunda karena terhambat skripsi. Salah satu alasanya adalah tema atau topik skripsi yang tak ada. Tak perlu khawatir, sekarang kamu bisa coba melangkahkan kaki ke perpustakaan jurusan. Lalu bacalah naskah skripsi senior tahun-tahun sebelumnya. Tak perlu membaca skripsi ini sampai habis. Cukup buat dirimu familiar dengan rumusan masalah serta garis besar penelitianpara senior angkatan.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">Ini adalah cara mendapatkan inspirasi yang mudah untuk ideskripsi. Tapi ingat, daripada dianggap plagiat, pastikan kamu tak melakukan <em>copy paste </em>dari hasil karya kakak angkatan ya. Cukup ambil inspirasi, lalu modifikasi atau subtitusikan variabel penelitian dengan fenomenayang belum pernah diteliti sebelumnya.</p>\r\n\r\n<p style=\"margin-left:18.0pt\"> </p>\r\n\r\n<p><em>3. Mendapatkan ide dari hasil mengorek-ngorek jurnal lama juga boleh saja.Ini bukan plagiat: kamu malah bisa mengembangkanpenelitianyang sudah ada.</em></p>\r\n\r\n<p style=\"margin-left:18.0pt\">Selain mencari ide skripsi dari membaca naskah skripsiyang sudah ada, kamu juga bisa mendapatkannya dari membaca jurnal ilmiah. Kamu bisa memperoleh jurnal di situs internet atau perpus takaan kampus. Tak hanya dibaca saja, kamu bisakorek dalam-dalam informasi di dalamnya. Gak jarang suatu jurnal pasti adan “kekurangan” data atau bahkan masih butuhinformasi tambahan.Nah, kamu memanfaatkan celah itu sebagai tema skripsimu.Atau mungkin kamu subtitusi dengan bahan yang berbeda.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">Mengembangkan ide dengan cara seperti ini bukan berarti kamu plagiat, tapi kadang kamu justru bisa berperan dalam menyempurnakan ilmu pengetahuan yang sudah ada.</p>\r\n\r\n<p> </p>\r\n\r\n<p><em>4. Ide skripsibisa kamu dapatkan dari mana saja, salah satunya situsberita yang terpercayaatau media cetak ilmiah.</em></p>\r\n\r\n<p style=\"margin-left:18.0pt\">Tak hanya jurnal akademik dan naskah skripsi angkatan yang bisa kamu jadikan cikal bakal ide skripsi, sekarangkamu juga bisa memanfaatkan situs berita terpercaya dan majalah-majalah ilmiah. Dari sana kamu akan mendapatkan informasi terbaru yang bikin otakmu makin terangsang untuk melahirkan ide-ide penelitian.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">Fenomena-fenomena yang terjadi sekarang ini bisa menjadi rumusan masalah untuk skripsi. Mungkin kamu mahasiswa geografi, gak ada salahnya kamu bikin penelitian tentangkenapa di suatu daerah sering terjadi bencana. Mungkin kamu mahasiswa politik, kamu bisa mengambil tema tentang perbedaan tingkah politik sekarang dan beberapa dekake sebelumnya. Nah, semakin banyak berita yang kamu serap, gak jarang otakmu bisa semakin semangat untuk menciptakan ide-ide cemerlang untuk tugas akhir.</p>\r\n\r\n<p> </p>\r\n\r\n<p><em>5. Bertukar pikiran dengan kakak senior bukan hanya bikin kalian makin akrab. </em></p>\r\n\r\n<p><em>Ini juga sumber ide skripsi yang bisa diandalkan.</em> Kamu sedang PDKT dengan kakak senior?  Atau kamu punya teman akrab kakak angkatan? Atau justru punya pacar     yang sebidang jurusan kuliahnya? Gak ada salahnya manfaatkan dia untuk bertukar pikiran tentang hal-hal ilmiah seperti tema penelitian skripsi.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">Kamu bisa minta dia <em>sharing </em>sedikit tentang skripsinya, atau mungkin jika kamu sudah punya ide tapi ragu untuk menjadikannya tema skripsi, cobalah minta pendapat dan masukannya. Berdiskusilah secara interaktif. Gak jarang kamu bisa menemukan pencerahan atau titik terang untuk skripsian. Dengan begitu, kalian bisa makin akrab, kuliah mu juga cepat kelar.</p>\r\n\r\n<p> </p>\r\n\r\n<p><em>6. Saking lamanya menghilang dari kampus, wajar kalau kamu tak punya ide penelitian. Jadi, jangan ragu sit in di kelas yang berhubungan dengan minatmu.</em></p>\r\n\r\n<p style=\"margin-left:18.0pt\">Meski semua teori sudah kelar, ide skripsi yang tak pernah datang seringkali bikin kamu lulus lama. Mahasiswa semester tua yang tak pernah ngampus tapi belum lulus pun harus rela kamu sandang. Gak jarang, saking lamanya menghilang dari kampus justru bikin idemu makin surut.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">Untuk mengatasi itu semua, kamu bisa coba <em>sit</em> in di kelas yang berhubungan dengan minat skripsimu. Dengarkan dosen ceramah dan semua diskusi yang terjadi, maka kamu mengingat kembalimateri yang dulu pernah kamu dapat. Sekali dua kali menjadi mahasiswa penyelundup bisa memicu otakmu untuk melahirkan ide baru lho.</p>\r\n\r\n<p> </p>\r\n\r\n<p><em>7. Lulus cepat bukan lagi mimpi. Asalkan kamu mau mengubur mimpi yang satunya lagi: jadi mahasiswa yang sempurna dengan skripsi spektakuler dan IPK brilian.</em></p>\r\n\r\n<p style=\"margin-left:18.0pt\">Banyak mahasiswa yang lulus lama karena terlalu perfeksionis untuk membuat skripsi yang bertema berat dan berskala internasional. Alih-alih bisa lulus cepat, kadang kamu justru membutuhkan waktu yang lama dan ilmu yang dalam untuk menyelesaikannya. Nah, jika kamu sudah dipenghujung batas waktu kuliah, cobalah sedikit realistis dengan membuat skripsi yang ringan-ringan saja.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">Kamu bisa buat tema yang bisa dilakukan dengan metode yang mudah, memungkinkan untuk diselesaikan cepat, dan gak terlalu kompleks. Karena skripsi adalah ajang untuk latihan penelitian, gak dosa kok kalau kamu pilih tema yang mudah. Gak mau ‘kan kamu terancam DO hanya karena skripsi?</p>\r\n\r\n<p> </p>\r\n\r\n<p><em>8. Kamu berancana lanjut S2? Buatlah tema skripsi yang bisa dijadikan tesisimu kelak.</em></p>\r\n\r\n<p style=\"margin-left:18.0pt\">Mungkin kamu sudah punya rencana panjang untuk masa depan. Lulus kuliah, daftar beasiswa, kuliah S-2, lalu fokus kerja di bidang yang kamu suka. Nah, hal ini bisa menjadi patokan untuk tema skripsimu sekarang.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">Biasanya, para penyandang dana beasiswa mensyaratkan pengalaman penelitian dalam suatu bidang tertentu. Kamu jadikan syarat atau rencana tesisimu kelak sebagai tema besar skripsianmu sekarang. Sembari menyelesaikan sarjana, kemungkinanmendapatkan beasiswa akan jauh lebih besar jika kamu mengambil tema yang disyaratkan. Jauh lebih menguntungkan ‘kan?</p>\r\n\r\n<p> </p>\r\n\r\n<p><em>9. Sudah punya ide, tapi masih tak yakin soalkualitasnya? Jangan buang ide itu sebelum memintapendapat dosen pembimbingmu.</em></p>\r\n\r\n<p style=\"margin-left:18.0pt\">Selain perfeksionis, rasa ragu dan rendah diri seringmenjadi hambatan untuk bisa lulus cepat. Mungkin kamu sudah melakukan tips di atas, tapi kamu masih kurang merasa percaya diri dengan idemu sendiri. Kamu masih merasa kurang. Kamu masih merasa idemu terlalu remah-remah. Kamu merasa tema yang kamu pikirkan terlalu sulit untuk dikerjakan. Sadarlah, kamu punya dosen pembimbing yang siap menjadi teman diskusi.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">Buang jauh rasa mindermu, cobalah ajukan list judul skripsi pada dosenmu. Mintalah pendapatanya dan masukan apakah temamu memang memungkinkan. Terkadang kamu akan mendapatkan masukan yang jauh dari perkiraan. Tema yangselama ini kamu anggap remah-remah, bagi beliau temamu itu malah dinilai bagus dan bisa dikembangkan jadi lebih bagus lagi.</p>\r\n\r\n<p> </p>\r\n\r\n<p><em>10. Selain bisamenghemat uang, gabung dalamproyek dosen juga bikin kamu tak perlu lagi pusing-pusing cari temaskripsi.</em></p>\r\n\r\n<p style=\"margin-left:18.0pt\">Selain membuat skripsi secara mandiri, sekarang kamu juga bisa nebeng dosen. Caranya adalah dengan ikut proyek.Mungkin salah satu dosen di kampusmusedang melakukan penelitian yang mendapatkan hibah dari pemerintah. Gak jarang beliau akan membuka kesempatan bagi mahasiswa untuk ikut serta mengerjakannya. Nah,kamu tak boleh ketinggalan untuk mendaftar jadi salah satu bagian darinya.</p>\r\n\r\n<p style=\"margin-left:18.0pt\">Sembari membantu beliau, proyek ini jugabisa kamu jadikan sebagai judul skripsi. Selain jadi lebih hemat dana, kamu juga tak perlu lagi pusing-pusing mencari tema. Menguntungkan ‘kan?</p>\r\n\r\n<p style=\"margin-left:18.0pt\">Nah, sudah sedikit mendapatkan pencerahan untuk tema skripsi? Lulus kuliah cepat bukan hal yang mustahil, asal kamu bisa menyelesaikan skripsi sesegera mungkin. Tanpa hanya menunggu wangsit tentang ide skripsi fenomenal datang, hal-hal ini bisa kamu lakukan agar kuliahmu cepat kelar.</p>\r\n\r\n<p> </p>\r\n\r\n<p style=\"margin-left:18.0pt\">Semoga cepat sidang proposal ya.</p>\r\n', 1, '2017-01-16 21:47:52', 1, '2021-02-14 01:48:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `judul_final`
--

CREATE TABLE `judul_final` (
  `id_judul` int(11) NOT NULL,
  `id_ajuan` int(11) NOT NULL,
  `npm` varchar(10) NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `konsentrasi` varchar(50) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tahun_ajuan` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `arsip` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `judul`, `isi`, `arsip`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(14, 'Pendaftaran Judul Skripsi TA 2020-2021', 'Pendaftaran Judul Skripsi Dimulai dari tanggal  14 Februari sampai dengan 16 Februari 2021 <br>\r\nSetiap mahasiswa diwajibkan mengajukan 3 judul skripsi <br>\r\nAdapun cara pengajuannya dengan melalui web : http://skripsi.feugj.id , pada account login masing-masing siswa <br>\r\nBerkas kelengkapan pengajuan judul bisa diserahkan secara langsung ke bagian akademik melalui koordinator kelas masing-masing (KM) <br><br><br>\r\n\r\n\r\nTerimakasih', 0, 1, '2021-02-16 12:21:37', 1, '2021-02-16 12:22:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `konsentrasi` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `prodi`, `konsentrasi`, `kelas`) VALUES
(1, 'Manajemen', 'Man-SDM', 'H'),
(2, 'Akuntansi', 'Akuntansi-Perbankan', 'N'),
(3, 'Manajemen', 'Man-Pemasaran', 'D'),
(5, 'Manajemen', 'Man-Keuangan', 'C'),
(6, 'Manajemen', 'Man-Keuangan', 'A'),
(7, 'Manajemen', 'Man-Keuangan', 'B'),
(8, 'Manajemen', 'Man-Pemasaran', 'E'),
(9, 'Manajemen', 'Man-Pemasaran', 'F'),
(10, 'Manajemen', 'Man-Pemasaran', 'G'),
(11, 'Manajemen', 'Man-SDM', 'I'),
(12, 'Manajemen', 'Man-SDM', 'L'),
(13, 'Manajemen', 'Man-SDM', 'J'),
(14, 'Manajemen', 'Man-SDM', 'K'),
(16, 'Manajemen', 'Man-SDM', 'M'),
(17, 'Manajemen', 'Man-SDM', 'R');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ta_ajuan`
--

CREATE TABLE `ta_ajuan` (
  `id_ajuan` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `judul_ajuan` varchar(255) NOT NULL,
  `tgl_ajuan` datetime NOT NULL,
  `submit` int(11) NOT NULL,
  `hasil_verifikasi` enum('belum diverifikasi','diterima','ditolak') NOT NULL,
  `hasil_ujian` enum('belum diuji','diterima','ditolak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ta_ajuan`
--

INSERT INTO `ta_ajuan` (`id_ajuan`, `id_mahasiswa`, `judul_ajuan`, `tgl_ajuan`, `submit`, `hasil_verifikasi`, `hasil_ujian`) VALUES
(83, 786, 'Pengaruh Kualitas Pelayanan dan Kelengkapan Produk Terhadap Kepuasan Konsumen Di Fajar Toserba Talaga Majalengka', '2021-02-14 18:28:23', 1, 'diterima', 'belum diuji'),
(84, 786, 'Pengaruh Store Atmosphere dan Lokasi Terhadap Minat Berbelanja Di Fajar Toserba Talaga Majalengka', '2021-02-14 18:26:48', 1, 'diterima', 'belum diuji'),
(85, 786, 'Pengaruh Kualitas Produk dan Harga Terhadap Kepuasan Konsumen Di Fajar Toserba Talaga Majalengka', '2021-02-14 18:30:45', 1, 'diterima', 'belum diuji'),
(89, 958, 'Pengaruh Pelatihan dan knowledge Sharing terhadap Kinerja karyawan pada Klinik Niumiu Child Development Center', '2021-02-14 22:35:08', 1, 'diterima', 'belum diuji'),
(90, 958, 'Pengaruh In-House Training dan Pengembangan karir terhadap kinerja karyawan pada Klinik Niumiu Child Development Center', '2021-02-14 22:36:31', 1, 'diterima', 'belum diuji'),
(91, 958, 'Pengaruh kepemimpinan transaksional dan Remunerasi terhadap motivasi kerja karyawan pada Klinik Niumiu Child Development Center ', '2021-02-14 22:37:54', 1, 'diterima', 'belum diuji'),
(92, 634, 'Pengaruh Gaya Kepemimpinan dan Motivasi terhadap Kinerja Karyawan Perum Perhutani', '2021-02-14 23:08:27', 1, 'diterima', 'belum diuji'),
(93, 634, 'Pengaruh Kepuasan Kerja dan Disiplin Kerja terhadap Motivasi Kerja Perum Perhutani', '2021-02-14 23:10:59', 1, 'diterima', 'belum diuji'),
(94, 634, 'Pengaruh Motivasi dan Kepuasan Kerja terhadap Kinerja Karyawan Perum Perhutani', '2021-02-14 23:11:23', 1, 'diterima', 'belum diuji'),
(95, 656, 'PENGARUH PERTUMBUHAN PENJUALAN (SALES GROWTH) DAN STRUKTUKTUR MODAL (LTDtER)TERHADAP NILAI PERUSAHAAN (PBV) PERUSAHAAN SEKTOR OTOMOTIF TAHUN 2014 – 2019\r\n', '2021-02-14 23:16:18', 1, 'belum diverifikasi', 'belum diuji'),
(96, 656, 'PENGARUH STRUKTUR MODAL (LTDEtR) DAN KEBIJAKAN DIVIDEN (DPR) TERHADAP NILAI PERUSAHAAN (PBV) PADA PERUSAHAAN PROPERTY DAN REAL ESTATE TAHUN 2011 - 2019', '2021-02-14 23:18:30', 1, 'belum diverifikasi', 'belum diuji'),
(97, 656, 'PENGARUH NILAI PERUSAHAAN DAN PERTUMBUHAN PENJUALAN (SALES GROWTH) TERHADAP KEBIJAKAN DIVIDEN PERUSAHAAN SEKTOR OTOMOTIF TAHUN 2014 – 2019\r\n', '2021-02-14 23:19:26', 1, 'belum diverifikasi', 'belum diuji'),
(98, 813, 'Pengaruh leverage dan ukuran perusahaan terhadap profitabilitas pada sektor hotel restoran dan pariwisata tahun 2015-2019', '2021-02-15 01:25:17', 1, 'belum diverifikasi', 'belum diuji'),
(99, 813, 'Perbandingan model zscore dan zmijewski dalam memprediksi kebangkrutan pada sektor aneka industri dan perkebunan', '2021-02-15 01:28:47', 1, 'belum diverifikasi', 'belum diuji'),
(100, 813, 'Pengaruh eva dan profitabilitas terhadap harga saham pada sektor konstruksi bangunan periode 2015-2019', '2021-02-15 01:30:24', 1, 'belum diverifikasi', 'belum diuji'),
(101, 910, 'Pengaruh Perputaran Modal Kerja dan Struktur Modal terhadap Profitabilitas pada Bank BUMN Tahun 2011-2019', '2021-02-15 01:33:57', 0, 'belum diverifikasi', 'belum diuji'),
(102, 957, 'PENGARUH PELATIHAN DAN MOTIVASI TERHADAP KINERJA PEGAWAI TERHADAP PT GRACIA KREASI ROTAN DI KABUPATEN CIREBON', '2021-02-15 09:49:42', 1, 'belum diverifikasi', 'belum diuji'),
(103, 957, 'PENGARUH REKRUTMEN DAN PELATIHAN TERHADAP KINERJA PEGAWAI TERHADAP PT GRACIA ROTAN KABUPATEN CIREBON DI KABUPATEN CIREBON', '2021-02-15 09:51:42', 1, 'belum diverifikasi', 'belum diuji'),
(104, 957, 'PENGARUH PELATIHAN DAN PENEMPATAN TERHADAP KINERJA PEGAWAI TERHADAP PT GRACIA KREASI ROTAN DI KABUPATEN CIREBON', '2021-02-15 09:52:21', 1, 'belum diverifikasi', 'belum diuji'),
(105, 960, 'PENGARUH PELATIHAN DAN MOTIVASI KERJA TERHADAP KINERJA KARYAWAN DI PT FEDERAL INTERNATIONAL FINANCE (FIF GROUP) CABANG CIREBON', '2021-02-15 09:56:25', 1, 'belum diverifikasi', 'belum diuji'),
(106, 960, 'PENGARUH MOTIVASI DAN DISIPLIN KERJA TERHADAP KINERJA KARYAWAN DI PT FEDERAL INTERNATIONAL FINANCE (FIF GROUP) CABANG CIREBON', '2021-02-15 09:56:44', 1, 'belum diverifikasi', 'belum diuji'),
(107, 960, 'PENGARUH PELATIHAN DAN KOMPENSASI TERHADAP KINERJA KARYAWAN DI PT FEDERAL INTERNATIONAL FINANCE (FIF GROUP) CABANG CIREBON', '2021-02-15 09:56:57', 1, 'belum diverifikasi', 'belum diuji'),
(108, 952, 'PENGARUH PELATIHAN DAN KOMPENSASI TERHADAP KINERJA KARYAWAN PADA PT. SAMUDERA INDONESIA TBK CABANG CIREBON', '2021-02-15 10:02:46', 1, 'belum diverifikasi', 'belum diuji'),
(109, 952, 'PENGARUH KOMPENSASI DAN KOMPETENSI TERHADAP KINERJA KARYAWAN PADA PT. SAMUDERA INDONESIA TBK CABANG CIREBON', '2021-02-15 10:03:33', 1, 'belum diverifikasi', 'belum diuji'),
(110, 952, 'PENGARUH REKRUTMEN DAN PENEMPATAN KERJA TERHADAP KINERJA KARYAWAN PADA PT. SAMUDERA INDONESIA TBK CABANG CIREBON', '2021-02-15 10:04:10', 1, 'belum diverifikasi', 'belum diuji'),
(115, 945, '1. Pengaruh Motivasi Kerja dan Kompensasi terhadap Kepuasan Kerja pada PT. XXX\r\n', '2021-02-15 10:42:52', 1, 'diterima', 'belum diuji'),
(116, 945, '2. Pengaruh Kompensasi dan Efektifitas Kerja terhadap Disiplin Kerja pada PT. XXX', '2021-02-15 10:43:12', 1, 'diterima', 'belum diuji'),
(117, 945, '3. Pengaruh Disiplin Kerja dan Budaya Organisasi terhadap Kinerja Karyawan pada PT. XXX', '2021-02-15 10:43:28', 1, 'diterima', 'belum diuji'),
(118, 625, 'PENGARUH LINGKUNGAN KERJA DAN DISIPLIN KERJA TERHADAP KINERJA KARYAWAN DI PT. LAHAN REZEKI', '2021-02-15 11:16:49', 1, 'diterima', 'belum diuji'),
(119, 625, 'PENGARUH KEPEMIMPINAN DAN DISIPLIN KERJA TERHADAP KINERJA KARYAWAN DI PT.LAHAN REZEKI', '2021-02-15 11:18:39', 1, 'diterima', 'belum diuji'),
(120, 625, 'PENGARUH LINGKUNGAN KERJA DAN KEPUASAN KERJA TERHADAP KINERJA KARYAWAN DI PT. LAHAN REZEKI', '2021-02-15 11:19:51', 1, 'diterima', 'belum diuji'),
(121, 807, 'Pengaruh Non Performing Loan dan Capital Adequacy Ratio terhadap Return on Asset pada Perusahaan Sektor Perbankan Umum Konvensional yang Terdaftar Di Bursa Efek Indonesia Periode Tahun 2015 - 2019', '2021-02-15 11:25:54', 1, 'belum diverifikasi', 'belum diuji'),
(122, 807, 'Pengaruh Total Asset Turnover dan Debt to Equity Ratio Terhadap Return on Equity .\r\n(Studi Pada Perusahaan sub Sektor Property dan Real Estate Yang Terdaftar Di BEI Periode Tahun 2015 - 2019)', '2021-02-15 11:28:46', 1, 'belum diverifikasi', 'belum diuji'),
(123, 811, 'Pengaruh kedisiplinan dan etos kerja terhadap k3 di PT.Pertamina ', '2021-02-15 11:33:42', 1, 'belum diverifikasi', 'belum diuji'),
(124, 811, '1.Pengaruh gaya kepemimpinan dan Budaya Organisasi terhadap OCB pada Guru Honorer SD se Kec.Majalengka', '2021-02-15 11:34:23', 1, 'belum diverifikasi', 'belum diuji'),
(125, 811, '3.Pengaruh Motivasi kerja dan Kompensasi terhadap kinerja karyawan pada PT wijaya karya beton majalengka', '2021-02-15 11:38:18', 1, 'belum diverifikasi', 'belum diuji'),
(126, 807, 'Pengaruh Current Ratio dan Debt to Equity Ratio Terhadap Peringkat Obligasi\r\n(Study Empiris Pada Obligasi Korporasi yang Terdaftar di Bursa Efek Indonesia  Tahun 2015 - 2019)', '2021-02-15 11:38:56', 1, 'belum diverifikasi', 'belum diuji'),
(127, 803, '1. Pengaruh Brand Image Dan Persepsi Kualitas Terhadap Keputusan Pembelian Ulang Pada Air Minum Dalam Kemasan (AMDK) Merk CLEO Di Cirebon ', '2021-02-15 11:55:02', 1, 'belum diverifikasi', 'belum diuji'),
(128, 798, '1. Pengaruh Kualitas Pelayanan dan Kualitas \r\nProduk Terhadap Kepuasan Konsumen di Kedai Pojjok Cirebon', '2021-02-15 11:55:27', 1, 'belum diverifikasi', 'belum diuji'),
(129, 819, '1. Pengaruh iklan dan varian produk terhadap perpindahan merek dari Teh Botol Sosro ke Teh Pucuk Harum ( Studi kasus Teh Botol Sosro)', '2021-02-15 11:55:32', 1, 'belum diverifikasi', 'belum diuji'),
(130, 819, '2. Pengaruh citra merek dan kualitas pelayanan terhadap kepuasan pelanggan terhadap Rumah Makan Boga Rasa indramayu', '2021-02-15 11:57:35', 1, 'belum diverifikasi', 'belum diuji'),
(131, 803, 'Pengaruh Kualitas Produk Dan Citra Merk Terhadap Kepuasan Konsumen Pada Rumah Makan Ayam Geprek Cerbon ', '2021-02-15 11:58:05', 1, 'belum diverifikasi', 'belum diuji'),
(132, 819, '3. Pengaruh promosi dan kualitas pelayanan terhadap kepuasaan pelanggan kedai sahabat indramayu', '2021-02-15 11:58:43', 1, 'belum diverifikasi', 'belum diuji'),
(133, 798, '2. Pengaruh Harga dan Kualitas Produk Terhadap Kepuasan Konsumen di Rumah Makan Saung Jaka Samudra Cirebon', '2021-02-15 12:00:06', 1, 'belum diverifikasi', 'belum diuji'),
(134, 803, 'Pengaruh Kualitas Pelayanan Dan  Harga Terhadap Kepuasan Konsumen Pada Rumah Makan Ayam Geprek Pangeran ', '2021-02-15 12:05:19', 1, 'belum diverifikasi', 'belum diuji'),
(135, 798, '3. Pengaruh Kualitas Pelayanan dan Harga Terhadap Kepuasan Konsumen di Kedai Pojjok Cirebon', '2021-02-15 12:06:29', 1, 'belum diverifikasi', 'belum diuji'),
(136, 982, '1. Pengaruh metode dan prosedur penilaian kinerja karyawan pada BNI Syariah', '2021-02-15 13:54:51', 1, 'belum diverifikasi', 'belum diuji'),
(137, 954, 'Pengaruh disiplin kerja dan motivasi kerja terhadap kinerja karyawan ', '2021-02-15 12:21:14', 1, 'belum diverifikasi', 'belum diuji'),
(138, 954, 'Pengaruh kompensasi kerja dan motivasi kerja terhadap kinerja karyawan', '2021-02-15 12:22:44', 1, 'belum diverifikasi', 'belum diuji'),
(139, 954, 'Pengaruh motivasi kerja dan beban kerja terhadap kinerja karyawan', '2021-02-15 12:24:10', 1, 'belum diverifikasi', 'belum diuji'),
(140, 806, 'Pengaruh Total Asset Turn Over dan Net Profit Margin terhadap Return on Asset Pada Perusahaan Sub Sektor Food and Beverage yang Terdaftar di BEI Indonesia periode 2015-2019.', '2021-02-15 13:10:58', 1, 'belum diverifikasi', 'belum diuji'),
(141, 806, 'Pengaruh Current Ratio dan Debt to Asset Ratio Terhadap  Return on Asset Pada Perusahaan Sub Sektor Food and Beverage yang Terdaftar di BEI Indonesia periode 2015-2019.', '2021-02-15 13:12:31', 1, 'belum diverifikasi', 'belum diuji'),
(142, 806, 'Pengaruh Debt  to Total Asset Ratio dan Debt to Equity Ratio Terhadap  Net Profit Margin Pada Perusahaan Sub Sektor Food and Beverage yang Terdaftar di BEI Indonesia periode 2015-2019.', '2021-02-15 13:13:44', 1, 'belum diverifikasi', 'belum diuji'),
(143, 638, 'Pengaruh Lingkungan Kerja dan Motivasi Kerja Terhadap Kinerja Karyawan (Studi Kasus Karyawan PT. PLN (Persero) ', '2021-02-15 13:20:52', 1, 'belum diverifikasi', 'belum diuji'),
(144, 638, 'Pengaruh Kompetensi dan Motivasi Kerja Terhadap Kinerja Karyawan Pada Bank BJB Cabang Cirebon', '2021-02-15 13:21:40', 1, 'belum diverifikasi', 'belum diuji'),
(145, 638, 'Pengaruh Kepuasan Kerja dan Setres Kerja Terhadap Turnover Intention Pada PT.  Arteria Daya Mulia (ARIDA) Kota Cirebon', '2021-02-15 13:22:38', 1, 'belum diverifikasi', 'belum diuji'),
(149, 671, 'Pengaruh Kualitas Produk dan Pelayanan Terhadap Kepuasan Konsumen Crocus Shop Official di E-commerce Shopee', '2021-02-15 13:46:24', 1, 'belum diverifikasi', 'belum diuji'),
(150, 671, 'Pengaruh Labelisasi-Halal Dan Citra Merek Terhadap Keputusan Pembelian Mie Instan Di Cirebon', '2021-02-15 13:46:52', 1, 'belum diverifikasi', 'belum diuji'),
(151, 671, 'Pengaruh Celebrity Endorser Dan Diskon Harga Terhadap Keputusan Pembelian', '2021-02-15 13:47:26', 1, 'belum diverifikasi', 'belum diuji'),
(152, 982, '2. Pengaruh pelatihan dan seleksi karyawan terhadap produktifitas kerja karyawan pada BNI Syariah', '2021-02-15 13:55:11', 1, 'belum diverifikasi', 'belum diuji'),
(153, 982, '3. Pengaruh budaya organisasi dan disiplin kerja terhadap kinerja karyawan pada', '2021-02-15 13:55:27', 1, 'belum diverifikasi', 'belum diuji'),
(155, 967, 'PENGARUH RETURN ON EQUITY DAN CURRENT RATIO TERHADAP HARGA SAHAM (Studi Pada Perusahaan Sub Sektor Hotel, Restoran dan Pariwisata yang terdaftar di BEI periode 2015-2019)', '2021-02-15 15:27:39', 1, 'belum diverifikasi', 'belum diuji'),
(156, 967, 'PENGARUH NET PROFIT MARGIN DAN EARNING PERSHARE TERHADAP HARGA SAHAM (Studi Pada Perusahaan Sub Sektor Property dan Real Estate yang terdaftar di BEI periode 2014-2018)', '2021-02-15 15:28:06', 1, 'belum diverifikasi', 'belum diuji'),
(157, 967, 'PENGARUH DEBT TO EQUITY RATIO (DER) DAN DEBT TO ASSET RATIO (DAR) TERHADAP PROFITABILITAS PERUSAHAAN (ROE) (Studi Pada Perusahaan Sub Sektor Pertambangan Batubara yang terdaftar di BEI Periode 2015-2019)', '2021-02-15 15:28:23', 1, 'belum diverifikasi', 'belum diuji'),
(158, 604, 'PENGARUH RETURN ON EQUITY (ROE) DAN DEBT TO EQUITY RATIO (DER) TERHADAP HARGA SAHAM (Studi Kasus Pada Perusahaan Sub Sektor Otomotif Yang Terdaftar di Bursa Efek Indonesia (BEI) Periode 2015-2019', '2021-02-15 15:33:17', 1, 'belum diverifikasi', 'belum diuji'),
(159, 604, 'PENGARUH DEBT TO EQUITY RATIO (DER), DAN TOTAL ASSET TURNOVER (TATO) TERHADAP RETURN ON ASSET (ROA) (Studi Kasus Pada Perusahaan Sub Sektor Batu Bara Yang Terdaftar di Bursa Efek Indonesia (BEI) Periode 2016-2019)', '2021-02-15 15:36:38', 1, 'belum diverifikasi', 'belum diuji'),
(160, 604, 'PENGARUH CAPITAL ADEQUACY RATIO (CAR), DAN NET INTEREST MARGIN (NIM) TERHADAP PENYALURAN KREDIT (Studi Kasus Pada Bank Umum Swasta Nasional Devisa Yang Terdaftar di Bursa Efek Indonesia (BEI) Periode 2016-2019', '2021-02-15 15:39:36', 1, 'belum diverifikasi', 'belum diuji'),
(161, 895, 'Pengaruh Tingkat Pendidikan dan Kompensasi terhadap kinerja karyawan BPR PK Balongan', '2021-02-15 15:58:57', 1, 'belum diverifikasi', 'belum diuji'),
(162, 669, '1.  PENGARUH STRESS KERJA DAN MOTIVASI TERHADAP LINGKUNGAN KERJA DI PT TELKOM AKSES CIREBON\r\n', '2021-02-15 16:12:11', 0, 'belum diverifikasi', 'belum diuji'),
(163, 895, 'Pengaruh lingkungan kerja dan Disiplin kerja terhadap kinerja karyawan PDAM Tirta Darma ayu kabupaten Indramayu', '2021-02-15 16:00:37', 1, 'belum diverifikasi', 'belum diuji'),
(164, 895, 'Pengaruh Kompensasi dan beban kerja terhadap Loyalitas karyawan BPR PK Balongan', '2021-02-15 16:02:37', 1, 'belum diverifikasi', 'belum diuji'),
(165, 784, 'Pengaruh Brand Image dan Word Of Mouth Terhadap Keputusan Pembelian Kecap Segi Tiga Majalengka', '2021-02-15 16:10:22', 1, 'belum diverifikasi', 'belum diuji'),
(166, 669, '2. PENGARUH BUDAYA ORGANISASI DAN KEPUASAN KERJA TERHADAP SISTEM PENILAIAN KINERJA KARYAWAN PADA PT TELKOM AKSES CIREBON ', '2021-02-15 16:13:44', 0, 'belum diverifikasi', 'belum diuji'),
(167, 669, '3. PENGARUH DISIPLIN KERJA DAN KOMPENSASI  TERHADAP KINERJA KARYAWAN DI PT TELKOM AKSES CIREBON', '2021-02-15 16:11:49', 0, 'belum diverifikasi', 'belum diuji'),
(168, 784, 'Pengaruh Persepsi Resiko dan Kepercayaan Terhadap Keputusan Pembelian Online pada Aplikasi Shopee di Desa Cibodas ', '2021-02-15 16:13:40', 1, 'belum diverifikasi', 'belum diuji'),
(169, 784, 'Pengaruh Citra Merk, Fitur dan Harga Terhadap Keputusan Pembelian Handphone Iphone ( Studi pada Mahasiswa Fakultas Ekonomi Universitas Swadaya Gunung Jati Cirebon ) ', '2021-02-15 16:15:52', 1, 'belum diverifikasi', 'belum diuji'),
(170, 785, 'Pengaruh Kualitas Pelayanan dan Ketepatan Waktu Pengiriman Terhadap Kepuasan Pelanggan pada PT JNE Cabang Talaga', '2021-02-15 16:20:11', 1, 'belum diverifikasi', 'belum diuji'),
(171, 785, 'Pengaruh Persepsi Risiko dan Kepercayaan Terhadap Keputusan Pembelian Online pada Aplikasi Shopee Di Desa Talaga Kulon', '2021-02-15 16:22:08', 1, 'belum diverifikasi', 'belum diuji'),
(172, 785, 'Pengaruh Kualitas Produk dan Harga Terhadap Kepuasan Pelanggan Honda Sepeda Motor Matic Scoopy di Kecamatan Talaga', '2021-02-15 16:24:22', 1, 'belum diverifikasi', 'belum diuji'),
(173, 795, 'Pengaruh Motivasi dan Kepuasan Kerja Terhadap Kinerja RS Permata Cirebon', '2021-02-15 16:28:55', 1, 'belum diverifikasi', 'belum diuji'),
(174, 795, 'Pengaruh Disiplin dan Motivasi Terhadap Kinerja RS Permata Cirebon', '2021-02-15 16:30:21', 1, 'belum diverifikasi', 'belum diuji'),
(175, 795, 'Pengaruh Disiplin dan Kepuasan Kerja Terhadap Kinerja RS Permata Cirebon', '2021-02-15 16:31:07', 1, 'belum diverifikasi', 'belum diuji'),
(176, 777, 'Pengaruh Stres Kerja dan Kepuasan Kerja Terhadap Kinerja Karyawan PT Telkom Pusat Cirebon', '2021-02-15 17:12:11', 1, 'belum diverifikasi', 'belum diuji'),
(177, 777, 'Pengaruh Kedisiplinan Kerja dan Pengalaman Kerja Terhadap Prestasi Kerja Karyawan PT Telkom Pusat Cirebon', '2021-02-15 17:11:50', 1, 'belum diverifikasi', 'belum diuji'),
(178, 777, 'Pengaruh Kompensasi dan Disiplin Kerja Terhadap Produktivitas Karyawan PT Telkom Pusat Cirebon', '2021-02-15 17:13:03', 1, 'belum diverifikasi', 'belum diuji'),
(179, 692, 'Pengaruh Pemasaran terhadap Keputusan Pembelian Pelanggan (Studi Kasus pada Department Store Matahari di Kota Cirebon).\r\npermasalahan\r\nPengaruh pemasaran disaat pandemi covid-19 terhadap pembelian pelanggan\r\n', '2021-02-15 17:47:26', 1, 'belum diverifikasi', 'belum diuji'),
(180, 692, 'Faktor yang Memengaruhi Kepuasan Penggunaan Kartu Telkomsel, (Studi Kasus Pelanggan Kartu Telkomsel di Daerah Cirebon).\r\npermasalahan\r\nPengaruh pemasaran disaat pandemi covid-19 terhadap pembelian pelanggan\r\n\r\n', '2021-02-15 17:47:57', 1, 'belum diverifikasi', 'belum diuji'),
(181, 692, 'Analisis Berbagai Faktor yang Memengaruhi Efektivitas Iklan pada Kenaikan Jumlah Konsumen di Platfrom Ecommerce Shoppe.\r\npermasalahan\r\nPengaruh pemasaran disaat pandemi covid-19 terhadap pembelian pelanggan\r\n', '2021-02-15 17:48:27', 1, 'belum diverifikasi', 'belum diuji'),
(182, 959, 'PENGARUH GAYA KEPEMIMPINAN TERHADAP SEMANGAT DAN MOTIVASI KERJA KARYAWAN PADA PT. PINTEX PLUMBON', '2021-02-15 19:11:34', 0, 'belum diverifikasi', 'belum diuji'),
(183, 959, 'ANALISIS PENATAAN LINGKUNGAN KERJA UNTUK KEPUASAN,KENYAMANAN, DAN KELANCARAN KERJA KARYAWAN PT PINTEX PLUMBON', '2021-02-15 19:12:25', 0, 'belum diverifikasi', 'belum diuji'),
(184, 959, 'PENINGKATAN DISIPLIN KERJA KARYAWAN UNTUK KESTABILAN PRODUKSI PT PINTEX PLUMBON', '2021-02-15 19:12:56', 0, 'belum diverifikasi', 'belum diuji'),
(185, 773, 'Pengaruh Kenyamanan Klinik dan Kualitas Produk Terhadap Kepuasan Konsumen Klinik Oriskin Cirebon', '2021-02-15 19:41:01', 1, 'belum diverifikasi', 'belum diuji'),
(186, 773, 'Pengaruh Word of Mouth dan Brand Trust Terhadap Keputusan Pengguna Perawatan Kecantikan Klinik Oriskin Cirebon', '2021-02-15 19:44:23', 1, 'belum diverifikasi', 'belum diuji'),
(187, 773, 'Pengaruh Brand Image dan Harga Terhadap Keputusan Pembelian Konsumen Klinik Oriskin Cirebon', '2021-02-15 20:12:14', 1, 'belum diverifikasi', 'belum diuji'),
(188, 792, 'Pengaruh Kompensasi dan disiplin kerja terhadap Motivasi karyawan ', '2021-02-15 20:14:26', 1, 'belum diverifikasi', 'belum diuji'),
(189, 792, 'Pengaruh efektifitas kerja dan kompensasi terhadap kedisiplinan karyawan', '2021-02-15 20:15:57', 1, 'belum diverifikasi', 'belum diuji'),
(190, 792, 'Pengaruh budaya organisasi dan disiplin kerja terhadap kinerja karyawan ', '2021-02-15 20:16:49', 1, 'belum diverifikasi', 'belum diuji'),
(191, 927, 'Pengaruh Motivasi dan Kompensasi Terhadap Kinerja Karyawan CV Nagam Rattan', '2021-02-15 20:28:20', 1, 'belum diverifikasi', 'belum diuji'),
(192, 927, 'Pengaruh Kompensasi dan Pelatihan Terhadap Kinerja Karyawan PT HI-LEX Cirebon', '2021-02-15 20:29:57', 1, 'belum diverifikasi', 'belum diuji'),
(193, 927, 'Pengaruh Komunikasi dan Pelatihan Terhadap Kinerja Karyawan CV Sumber Barokah', '2021-02-15 20:35:59', 1, 'belum diverifikasi', 'belum diuji'),
(194, 948, 'Pengaruh lingkungan kerja dan motivasi kerja terhadap kepuasan kerja karyawan', '2021-02-15 20:38:29', 1, 'belum diverifikasi', 'belum diuji'),
(195, 948, 'Pengaruh kompensasi dan budaya kerja terhadap motivasi kerja karyawan', '2021-02-15 20:39:24', 1, 'belum diverifikasi', 'belum diuji'),
(196, 948, 'Pengaruh fasilitas kerja dan disiplin kerja terhadap kepuasan kerja karyawan', '2021-02-15 20:40:18', 1, 'belum diverifikasi', 'belum diuji'),
(197, 946, 'PENGARUH KETERLAMBATAN JANGKA WAKTU PENGIRIMAN DAN KETIDAKSESUAIAN PEMESANAN BARANG PRODUK PT.WINGS TERHADAP PERILAKU KONSUMEN TOKO RITEL\r\n', '2021-02-15 21:03:51', 1, 'belum diverifikasi', 'belum diuji'),
(198, 946, 'PENGARUH PROMOSI PENJUALAN TERHADAP LOYALITAS PELANGGAN (Studi Pada Produk PT. WINGS )\r\n', '2021-02-15 21:05:18', 1, 'belum diverifikasi', 'belum diuji'),
(199, 946, 'PENGARUH CITRA MERK, SIKAP KONSUMEN DAN ASOSIASI MERK TERHADAP PROSES KEPUTUSAN PEMBELIAN PRODUK  PT. WINGS', '2021-02-15 21:07:27', 1, 'belum diverifikasi', 'belum diuji'),
(200, 949, 'Pengaruh motivasi dan disiplin kerja terhadap kinerja karyawan PT Permodalan Nasional Madani Cabang Cirebon', '2021-02-15 21:15:31', 1, 'belum diverifikasi', 'belum diuji'),
(201, 949, 'Pengaruh pelatihan dan K3 terhadap kinerja karyawan PT Permodalan Nasional Madani Cabang Cirebon', '2021-02-15 21:16:30', 1, 'belum diverifikasi', 'belum diuji'),
(202, 949, 'Pengaruh komunikasi dan disiplin kerja terhadap karyawan PT Permodalan Nasional Madani Cabang Cirebon', '2021-02-15 21:17:18', 1, 'belum diverifikasi', 'belum diuji'),
(203, 788, 'Prediksi Return On Asset Berdasarkan Debt To Asset Ratio Dan Total Asset Turn Over Pada Perusahaan Sub Sektor Property Dan Real Estate Yang Terdaftar Di Bursa Efek Indonesia Tahun 2015-2019', '2021-02-15 21:53:21', 1, 'belum diverifikasi', 'belum diuji'),
(204, 788, 'Analisis Pengaruh Debt To Equity Ratio Dan Total Asset Turn Over Terhadap Profitabilitas Pada Perusahaan Sub Sektor Property Dan Real Estate Di Bursa Efek Indonesia Tahun 2015-2019', '2021-02-15 21:55:08', 1, 'belum diverifikasi', 'belum diuji'),
(205, 788, 'Pengaruh Perputaran Kas Dan Current Ratio Terhadap Return On Asset Pada Perusahaan Sub Sektor Property Dan Real Estate Yang Terdaftar Di Bursa Efek Indonesia Tahun 2015-2019', '2021-02-15 21:56:41', 1, 'belum diverifikasi', 'belum diuji'),
(206, 782, 'Pengaruh Current Ratio dan Debt to Equity Ratio Terhadap Return On Asset pada Perusahaan Sub Sektor Semen yang Terdaftar di Bursa Efek Indonesia Tahun 2012-2019', '2021-02-15 21:57:25', 1, 'belum diverifikasi', 'belum diuji'),
(207, 782, 'Pengaruh Current Ratio dan Debt to Equity Ratio Terhadap Return On Equity pada Perusahaan Sub Sektor Semen yang Terdaftar di Bursa Efek Indonesia Tahun 2012-2019', '2021-02-15 21:59:36', 1, 'belum diverifikasi', 'belum diuji'),
(208, 782, 'Pengaruh Current Ratio dan Total Asset Turnover Terhadap Return On Asset pada Perusahaan Sub Sektor Semen yang Terdaftar di Bursa Eefek Indonesia Tahun 2012-2019', '2021-02-15 22:00:55', 1, 'belum diverifikasi', 'belum diuji'),
(209, 767, 'PENGARUH EARNING PER SHARE (EPS) DAN RETURN ON EQUITY (ROE) TERHADAP HARGA SAHAM PADA SUB SEKTOR FARMASI YANG TERDAFTAR DI BURSA EFEK INDONESIA (BEI) PERIODE 2015-2019', '2021-02-15 22:03:36', 0, 'belum diverifikasi', 'belum diuji'),
(210, 939, 'Pengaruh perkembangan karir dan disiplin kerja terhadap kepuasan kerja karyawan pada PT. Suri Tani Pemuka.', '2021-02-15 22:15:17', 1, 'belum diverifikasi', 'belum diuji'),
(211, 939, 'Pengaruh gaya kepemimpinan dan kompensasi terhadap kinerja karyawan PT. Sukanda Djaya.', '2021-02-15 22:16:12', 1, 'belum diverifikasi', 'belum diuji'),
(212, 939, 'Pengaruh Motivasi Kerja dan Lingkungan Kerja terhadap Kinerja Karyawan di PT. Japfa Comfeed Indonesia Tbk Kota Cirebon.', '2021-02-15 22:16:54', 1, 'belum diverifikasi', 'belum diuji'),
(213, 789, 'Pengaruh Transaksi Online Shopping dan Kualitas Layanan Terhadap Kepuasan Konsumen Melalui Kepercayaan Pada Tokopedia di Kota Cirebon.', '2021-02-15 22:34:56', 1, 'belum diverifikasi', 'belum diuji'),
(214, 875, 'Pengaruh stres kerja dan komitmen organisasi terhadap turnover intention PT. Arteria Daya Mulia', '2021-02-16 01:13:17', 1, 'belum diverifikasi', 'belum diuji'),
(215, 875, 'Pengaruh disiplin kerja dan kepuasan kerja terhadap kinerja karyawan Perusahaan Daerah Air Minum Tirta Giri Kota Cirebon', '2021-02-16 01:12:57', 1, 'belum diverifikasi', 'belum diuji'),
(216, 875, 'Pengaruh kepuasan kerja dan stres kerja terhadap turnover karyawan PT. Arteria Daya Mulia Cirebon', '2021-02-16 01:12:06', 1, 'belum diverifikasi', 'belum diuji'),
(217, 947, 'Pengaruh penilaian kinerja dan pengembangan karier terhadap kepuasan kerja karyawan', '2021-02-16 05:48:18', 0, 'belum diverifikasi', 'belum diuji'),
(218, 947, 'Pengaruh kompetensi dan kompensasi terhadap kinerja karyawan ', '2021-02-16 05:45:35', 0, 'belum diverifikasi', 'belum diuji'),
(219, 947, 'Pengaruh Job stress dan job insecurity terhadap Turnover Intention', '2021-02-16 06:04:28', 0, 'belum diverifikasi', 'belum diuji'),
(220, 823, 'Fasilitas Rumah Sakit dan Kualitas Pelayanan Pengaruhnya Terhadap Kepuasan Pasien Rawat Inap di Rumah Sakit Umum Daerah cideres.\r\n(Study kasus Pasien Rumah Sakit Rawat inap RSUD.Cideres)', '2021-02-16 05:50:26', 1, 'belum diverifikasi', 'belum diuji'),
(221, 823, 'Pengaruh Desain dan Promosi Terhadap Keputusan Pembelian Mobil Daihatsu Ayla.\r\n(Study kasus pada masyarakat sewilayah 3 cirebon)', '2021-02-16 05:53:41', 1, 'belum diverifikasi', 'belum diuji'),
(222, 823, 'Pengaruh Store Athmospere dan Kualitas Pelayanan Terhadap Loyalitas Konsumen Pada Toserba Surya Kadipaten.\r\n(Study kasus konsumen toserba surya kadipaten)', '2021-02-16 06:00:24', 1, 'belum diverifikasi', 'belum diuji'),
(223, 799, 'pengaruh labelisasi halal dan varian produk terhadap minat beli konsumen roket chiken karang ampel', '2021-02-16 06:27:03', 1, 'belum diverifikasi', 'belum diuji'),
(224, 799, 'pengaruh promosi dan kualitas layanan  terhadap kepuasan pembelian kedai kopi premium', '2021-02-16 06:28:31', 1, 'belum diverifikasi', 'belum diuji'),
(225, 799, 'pengaruh kualitas pelayanan dan harga terhadap keputusan ulang konsumen pada kedai kopi arah', '2021-02-16 06:31:32', 1, 'belum diverifikasi', 'belum diuji'),
(226, 781, '“PENGARUH LINGKUNGAN KERJA  KESELAMATAN KERJA DAN KESEHATAN KERJA (K3) TERHADAP PENINGKATAN KINERJA KARYAWAN PADA PT TELKOM PUSAT CIREBON”', '2021-02-16 07:07:12', 1, 'belum diverifikasi', 'belum diuji'),
(227, 781, '“PENGARUH MOTIVASI KERJA DAN IKLIM ORGANISASI TERHADAP KEPUASAN KERJA PEGAWAI PADA PT TELKOM PUSAT CIREBON”', '2021-02-16 07:07:42', 1, 'belum diverifikasi', 'belum diuji'),
(228, 781, '“ BUDAYA KERJA PERUSAHAAN DAN DISIPLIN KERJA TERHADAP KINERJA PEGAWAI PADA PT TELKOM PUSAT CIREBON”', '2021-02-16 07:08:34', 1, 'belum diverifikasi', 'belum diuji'),
(229, 757, 'Pengaruh Budaya Organisasi dan Kepuasan Kerja Terhadap Komitmen Organisasi ', '2021-02-16 07:10:09', 1, 'belum diverifikasi', 'belum diuji'),
(230, 757, 'Pengaruh Kepuasan Kerja dan Komitmen Organisasi Terhadap Organizational Citizenship Behavior ', '2021-02-16 07:11:04', 1, 'belum diverifikasi', 'belum diuji'),
(231, 757, 'Pengaruh Komitmen Organisasi dan Kepuasan Kerja Terhadap Kinerja Karyawan', '2021-02-16 07:11:32', 1, 'belum diverifikasi', 'belum diuji'),
(232, 829, 'Pengaruh Pelatihan dan Disiplin Kerja terhadap Kinerja Karyawan Surya Toserba Cirebon', '2021-02-16 07:33:15', 1, 'belum diverifikasi', 'belum diuji'),
(233, 829, 'Pengaruh Budaya Organisasi dan Disiplin Kerja Terhadap Kinerja Karyawan Surya Toserba Cirebon', '2021-02-16 07:35:38', 1, 'belum diverifikasi', 'belum diuji'),
(234, 748, 'Promosi jabatan dan motivasi terhadap kinerja karyawan\r\n', '2021-02-16 07:42:49', 1, 'belum diverifikasi', 'belum diuji'),
(235, 748, 'Budaya organisasi dan komitmen organisasional terhadap organizational citizenship behavior (ocb) ', '2021-02-16 07:45:49', 1, 'belum diverifikasi', 'belum diuji'),
(236, 748, 'Pengembangan karier dan disiplin kerja terhadap kepuasan kerja', '2021-02-16 07:46:33', 1, 'belum diverifikasi', 'belum diuji'),
(237, 829, 'Pengaruh budaya organisasi dan pelatihan terhadap kinerja karyawan Surya Toserba Cirebon', '2021-02-16 07:51:23', 1, 'belum diverifikasi', 'belum diuji'),
(238, 827, 'PENGARUH SALES PROMOTION DAN STORE LAYOUT TERHADAP IMPULS BUYING YANG DIMEDIASI DENGAN SHOPPING EMOTION', '2021-02-16 07:59:25', 1, 'belum diverifikasi', 'belum diuji'),
(239, 908, 'Pengaruh CR, DER, TATO & NPM Terhadap Pertumbuhan Laba pada Perusahaan Sub-sektor Batubara 2015-2019', '2021-02-16 08:00:48', 0, 'belum diverifikasi', 'belum diuji'),
(240, 827, 'PENGARUH STORE ATMOSPHERE DAN SALES PROMOTION TERHADAP IMPULS BUYING', '2021-02-16 08:00:59', 1, 'belum diverifikasi', 'belum diuji'),
(241, 827, 'PENGARUH DISPLAY PRODUCT, SALES PROMOTION, DAN KEANEKARAGAMAN PRODUK TERHADAP PEMBELIAN IMPULSIF', '2021-02-16 08:01:27', 1, 'belum diverifikasi', 'belum diuji'),
(242, 908, 'Pengaruh ROA dan Tobin\'s Q Terhadap Harga Saham pada Perusahaan Sub-sektor Otomotif dan Komponen Tahun 2014-2018', '2021-02-16 08:01:31', 0, 'belum diverifikasi', 'belum diuji'),
(243, 908, 'Pengaruh NPL, NIM, BOPO & CAR Terhadap Profitabilitas pada Bank Swasta Konvensional 2015-2019', '2021-02-16 08:02:00', 0, 'belum diverifikasi', 'belum diuji'),
(244, 742, 'Pengaruh disiplin kerja dan kompetensi terhadap kinerja karyawan pada CV. Krisindo design Plumbon\r\n', '2021-02-16 08:07:18', 0, 'belum diverifikasi', 'belum diuji'),
(245, 894, 'Pengaruh Kompetensi dan Prestasi Kerja terhadap Promosi Jabatan PDAM Tirta Giri Nata Kota Cirebon', '2021-02-16 08:07:44', 1, 'belum diverifikasi', 'belum diuji'),
(246, 894, 'Pengaruh Pelatihan dan Budaya Organisasi terhadap Kinerja Karyawan PDAM Tirta Giri Nata Kota Cirebon', '2021-02-16 08:08:15', 1, 'belum diverifikasi', 'belum diuji'),
(247, 742, 'Pengaruh Etos kerja , disiplin kerja pengaruhnya terhadap kinerja karyawan pada CV. Krisindo design Plumbon\r\n', '2021-02-16 08:08:16', 0, 'belum diverifikasi', 'belum diuji'),
(248, 894, 'Pengaruh Kompensasi dan Organizational Citizenship Behavior (OCB) terhadap Kinerja Karyawan CV Prima Perkasa Cirebon', '2021-02-16 08:09:38', 1, 'belum diverifikasi', 'belum diuji'),
(249, 742, 'Pengaruh kompetensi dan disiplin kerja terhadap kepuasan karyawan pada CV. Krisindo design Plumbon\r\n', '2021-02-16 08:09:41', 0, 'belum diverifikasi', 'belum diuji'),
(250, 825, 'Pengaruh Inovasi produk dan promosi terhadap Keputusan Pembelian minuman Teh dalam Kemasan siap minum merek Teh gelas pada masyarakat kota cirebon', '2021-02-16 08:23:35', 1, 'belum diverifikasi', 'belum diuji'),
(251, 825, 'Pengaruh persepsi risiko dan kepercayaan terhadap keputusan pembelian di  lazada pada masyarakat kota cirebon', '2021-02-16 08:24:00', 1, 'belum diverifikasi', 'belum diuji'),
(252, 825, 'PENGARUH ELECTRONIC WORD OF MOUTH DAN SALES PROMOTION TERHADAP KEPUTUSAN PEMBELIAN TIKET BIOSKOP MELALUI APLIKASI TIX ID', '2021-02-16 08:24:23', 1, 'belum diverifikasi', 'belum diuji'),
(253, 928, 'Pengaruh Kepemimpinan dan Lingkungan Kerja terhadap Motivasi Kerja Karyawan PT.Chang Jui Fang Indonesia Kabupaten Indramayu', '2021-02-16 08:24:28', 1, 'belum diverifikasi', 'belum diuji'),
(254, 928, 'Pengaruh Kompensasi dan Budaya Organisasi Terhadap Kinerja Karyawan PDAM Tirta Dharma Ayu Kabupaten Indramayu', '2021-02-16 08:27:25', 1, 'belum diverifikasi', 'belum diuji'),
(255, 928, 'Pengaruh Lingkungan Kerja dan Kompensasi Terhadap Kepuasan Kerja Karyawan PT.Chang Jui Fang Indonesia Kabupaten Indramayu', '2021-02-16 08:28:26', 1, 'belum diverifikasi', 'belum diuji'),
(256, 658, 'Analisis Prediksi Kebangkrutan Perusahaan yang Terdampak Covid-19 Menggunakan Metode Grover dan Springate\r\nStudi kasus di Perusahaan Jasa Subsektor Hotel dan Pariwisata yang Terdaftar di BEI Tahun 2016-2020', '2021-02-16 08:37:39', 0, 'belum diverifikasi', 'belum diuji'),
(257, 789, 'Pengaruh Kualitas Layanan  dan Transaksi Online Shopping Terhadap Kepuasan Konsumen Melalui Kepercayaan Pada Tokopedia di Kota Cirebon.', '2021-02-16 08:44:10', 1, 'belum diverifikasi', 'belum diuji'),
(258, 789, 'Pengaruh Transaksi Online Shopping dan Kualitas Layanan Terhadap Kepuasan Konsumen Melalui Kepercayaan Pada Tokopedia.', '2021-02-16 08:44:59', 1, 'belum diverifikasi', 'belum diuji'),
(259, 715, 'ANALISIS PENGARUH CITRA MEREK DAN KEPERCAYAAN MEREK TERHADAP LOYALITAS PELANGGAN MOBIL HONDA MOBILIO PADA HONDA MULYA PUTRA CIREBON', '2021-02-16 08:54:39', 1, 'belum diverifikasi', 'belum diuji'),
(260, 715, 'PENGARUH KUALITAS PRODUK DAN KUALITAS LAYANAN TERHADAP KEPUASAN KONSUMEN PADA GEPREK BENSU DI KOTA CIREBON ', '2021-02-16 08:55:50', 1, 'belum diverifikasi', 'belum diuji'),
(261, 715, 'ANALISIS PENGARUH HARGA DAN PROMOSI TERHADAP MINAT BELI PRODUK EMINA DI TOKO SARIAYU JATIBARANG ', '2021-02-16 08:56:50', 1, 'belum diverifikasi', 'belum diuji'),
(262, 801, 'PENGARUH CUSTOMER EXPERIENCE DAN KUALITAS LAYANAN TERHADAP KEPUASAN KONSUMEN MELALUI KEPERCAYAAN PADA BUKALAPAK DI KOTA CIREBON', '2021-02-16 09:09:06', 1, 'belum diverifikasi', 'belum diuji'),
(263, 801, 'PENGARUH KUALITAS LAYANAN DAN CUSTOMER EXPERIENCE  TERHADAP KEPUASAN KONSUMEN MELALUI KEPERCAYAAN PADA BUKALAPAK DI KOTA CIREBON', '2021-02-16 09:09:50', 1, 'belum diverifikasi', 'belum diuji'),
(264, 801, 'PENGARUH CUSTOMER EXPERIENCE DAN KUALITAS LAYANAN TERHADAP KEPUASAN KONSUMEN ', '2021-02-16 09:10:23', 1, 'belum diverifikasi', 'belum diuji'),
(265, 937, 'Pengaruh lingkungan kerja dan disiplin terhadap kinerja karyawan pada CV. Jiwa Semangat Wirausaha (JSW)', '2021-02-16 09:22:20', 0, 'belum diverifikasi', 'belum diuji'),
(266, 847, 'Pengaruh K3 dan Kompensasi terhadap Kinerja pegawai di PT Japfa Comfeed Cirebon', '2021-02-16 09:22:38', 1, 'belum diverifikasi', 'belum diuji'),
(267, 821, 'Pengaruh Kompensasi dan Lingkungan Kerja terhadap Kinerja Karyawan pada PT. Japfa Comfeed Tbk.Cirebon', '2021-02-16 09:22:38', 1, 'belum diverifikasi', 'belum diuji'),
(268, 937, 'Pengaruh Kemimpinan dan Motivasi kerja terhadap kinerja pegawai pada PT. Arteria Daya Mulia (ARIDA) di Cirebon', '2021-02-16 09:23:29', 0, 'belum diverifikasi', 'belum diuji'),
(269, 937, 'Pengaruh Rekrutmen dan Pelatihan Terhadap kinerja pegawai pada PT. Indonesia power unit pembangkitan semarang sub unit PLTG Sunyaragi Cirebon\r\n', '2021-02-16 09:24:11', 0, 'belum diverifikasi', 'belum diuji'),
(270, 847, 'Pengaruh Motivasi dan Disiplin kerja terhadap Kinerja pegawai di Perusahaan Daerah Air Minum (PDAM) kota Cirebon.', '2021-02-16 09:24:45', 1, 'belum diverifikasi', 'belum diuji'),
(271, 821, 'Pengaruh Motivasi dan Lingkungan Kerja terhadap Kinerja Karyawan pada PT. Japfa Comfeed Tbk.Cirebon', '2021-02-16 09:24:57', 1, 'belum diverifikasi', 'belum diuji'),
(272, 847, 'Pengaruh Pelatihan dan Motivasi terhadap Kinerja pegawai di PT Federal Internasional Finance.', '2021-02-16 09:25:51', 1, 'belum diverifikasi', 'belum diuji'),
(273, 821, 'Pengaruh Pelatihan dan Disiplin Kerja terhadap Kinerja Karyawan pada PT. Telkom Indonesia cabang Cirebon', '2021-02-16 09:25:54', 1, 'belum diverifikasi', 'belum diuji'),
(274, 763, 'Pengaruh Current Ratio dan Debt to Asset Ratio terhadap Return on Assets pada sub sektor makanan dan minuman yang terdaftar di BEI tahun 2015-2019', '2021-02-16 09:34:52', 1, 'belum diverifikasi', 'belum diuji'),
(275, 763, 'Pengaruh Current Ratio dan Debt to Equity Ratio terhadap Return on Equity pada sub sektor perdagangan eceran yang terdaftar di BEI tahun 2015-2019', '2021-02-16 09:27:42', 1, 'belum diverifikasi', 'belum diuji'),
(276, 763, ' Pengaruh Debt to Assets Ratio dan Debt to Equity Ratio terhadap Return on Equity pada sub sektor makanan dan minuman yang terdaftar di BEI tahun 2015-2019', '2021-02-16 09:28:24', 1, 'belum diverifikasi', 'belum diuji'),
(277, 890, 'Pengaruh Brand Image dan Word Of Mouth (WOM) Terhadap Keputusan Pembelian. (Pada Kosmetik Latulipe di Surya Kuningan).', '2021-02-16 09:32:36', 1, 'belum diverifikasi', 'belum diuji'),
(278, 884, 'Pengaruh Current Ratio (CR) Dan Total Asset Turnover (TATO) Terhadap Return On Assets (ROA) Pada Perusahaan Sub Sektor Property Dan Real Estate Yang Terdaftar Di Bursa Efek Indonesia (BEI) Periode 2015-2019', '2021-02-16 09:33:36', 1, 'belum diverifikasi', 'belum diuji'),
(279, 890, 'Pengaruh Gaya Hidup (Life Style) dan Harga Terhadap Keputusan Pembelian . ( Pada Kopi Tandjak Kuningan)', '2021-02-16 09:35:13', 1, 'belum diverifikasi', 'belum diuji'),
(280, 884, 'Pengaruh Debt To Equity Ratio (DER) Dan Total Asset Turnover (TATO) Terhadap Return On Assets (ROA) Pada Perusahaan Sub Sektor Food And Beverage Yang Terdaftar Di Bursa Efek Indonesia (BEI) Periode 2015-2019', '2021-02-16 09:35:31', 1, 'belum diverifikasi', 'belum diuji'),
(281, 890, 'Pengaruh Harga dan Lokasi Terhadap Keputusan Pembelian. ( Pada Kopi veteran Kuningan) ', '2021-02-16 09:37:09', 1, 'belum diverifikasi', 'belum diuji'),
(282, 884, 'Pengaruh Current Ratio (CR) Dan Debt to Equity Ratio (DER) Terhadap Peringkat Obligasi (Studi Empiris Pada Perusahaan Non Lembaga Keuangan Yang Terdaftar Di Bursa Efek Indonesia (BEI) Tahun  2016-2019', '2021-02-16 09:37:14', 1, 'belum diverifikasi', 'belum diuji'),
(283, 933, 'Pengaruh Budaya Organisasi dan Kecerdasan Emosional terhadap Organizational Citizenship Behavior (OCB) pada Dinas Perhubungan Kabupaten Cirebon', '2021-02-16 09:38:11', 1, 'belum diverifikasi', 'belum diuji'),
(284, 933, 'Pengaruh Budaya Organisasi dan Kepemimpinan terhadap Kinerja Karyawan pada Dinas Perhubungan Kabupaten Cirebon', '2021-02-16 09:38:31', 1, 'belum diverifikasi', 'belum diuji'),
(285, 933, 'Pengaruh Kompensasi dan Stress Kerja terhadap Kepuasan Kerja Karyawan Pada PT. Riyana Cipta Pangan Cirebon', '2021-02-16 09:38:57', 1, 'belum diverifikasi', 'belum diuji'),
(286, 658, 'Pengaruh Net Profit Margin dan Return On Asset Terhadap Harga Saham\r\n(Studi kasus di Perusahaan Jasa Sub Sektor Hotel dan Pariwisata yang Terdaftar di BEI Tahun 2016-2020)', '2021-02-16 09:42:11', 0, 'belum diverifikasi', 'belum diuji'),
(287, 658, 'Pengaruh Current Ratio dan Return On Equity Terhadap Harga Saham\r\n(Studi kasus di Perusahaan Jasa Sub Sektor Hotel dan Pariwisata yang Terdaftar di BEI Tahun 2016-2020)', '2021-02-16 09:42:49', 0, 'belum diverifikasi', 'belum diuji'),
(288, 654, 'Pengaruh Disipljn Kerja, Kesehatan Dan Keselamatan Kerja Terhadap Produktivitas Kerja Karyawan Pada PT.PLN Persero Cilimus', '2021-02-16 09:46:28', 1, 'belum diverifikasi', 'belum diuji'),
(289, 889, 'Pengaruh Kualitas Pelayanan dan Harga Terhadap Kepuasan Pelanggan pada We Laundry', '2021-02-16 09:47:26', 1, 'belum diverifikasi', 'belum diuji'),
(290, 654, 'Pengaruh Lingkungan Kerja Dan Stres Kerja Terhadap Kinerja Karyawan Pada PT.Galih Estetika Kuningan', '2021-02-16 09:48:32', 1, 'belum diverifikasi', 'belum diuji'),
(291, 889, 'Pengaruh Service Quality dan Lokasi Terhadap Kepuasan Pelanggan pada Bengkel Jaelani Jaya Motor', '2021-02-16 09:49:57', 1, 'belum diverifikasi', 'belum diuji'),
(292, 654, 'Pengaruh Budaya Organisasi Dan Lingkungan Kerja Terhadap Kepuasan Kerja Karyawan Pada PT.Galih Estetika Kuningan', '2021-02-16 09:50:05', 1, 'belum diverifikasi', 'belum diuji'),
(293, 983, 'Pengaruh E-WOM dan Brand Image terhadap minat beli konsumen Miniso di Kota Cirebon', '2021-02-16 09:55:16', 1, 'belum diverifikasi', 'belum diuji'),
(294, 889, 'Pengaruh Brand Image dan Keanekaragaman Menu Terhadap Keputusan Pembelian Ulang pada Waroeng Spesial Sambel Cabang Tuparev', '2021-02-16 09:52:49', 1, 'belum diverifikasi', 'belum diuji'),
(295, 983, 'Pengaruh Visual Merchandising dan Display Product terhadap Impulse Buying konsumen Miniso di Kota Cirebon', '2021-02-16 09:55:26', 1, 'belum diverifikasi', 'belum diuji'),
(296, 983, 'Pengaruh Diferensiasi product dan  Inovasi Produk terhadap Loyalitas konsumen Miniso di Kota Cirebon', '2021-02-16 09:54:38', 1, 'belum diverifikasi', 'belum diuji'),
(297, 637, 'Judul 1 : Pengaruh Budaya Organisasi Dan Kepuasan Kerja Terhadap Komitmen Organisasi Pada Karyawan PT. Kreasi Garment Ciledug, Kabupaten Cirebon. ', '2021-02-16 10:40:34', 0, 'belum diverifikasi', 'belum diuji'),
(298, 637, 'Judul 2 : Pengaruh Keselamatan dan Kesehatan Kerja (K3), Lingkungan Kerja Terhadap Kinerja Karyawan Pabrik Sohun Intan Jaya. ', '2021-02-16 10:43:03', 0, 'belum diverifikasi', 'belum diuji'),
(299, 930, 'Pengaruh budaya organisasi Dan komitmen organisasi terhadap kinerja karyawan pada dinas perhubungan kabupaten cirebon', '2021-02-16 10:09:23', 0, 'belum diverifikasi', 'belum diuji'),
(300, 930, 'Pengaruh Budaya Organisasi Terhadap Komitmen Organisasi Dimediasi Kepuasan Kerja pada Dinas Perhubungan Kabupaten Cirebon', '2021-02-16 10:11:40', 0, 'belum diverifikasi', 'belum diuji'),
(301, 710, '1. pengaruh kepercayaan konsumen dan kreatifitas iklan terhadap minat beli konsumen pada online shop tokopedia ', '2021-02-16 10:12:21', 0, 'belum diverifikasi', 'belum diuji'),
(302, 688, 'Pengaruh Gaya Kepemimpinan Dan Budaya Organisasi Terhadap Produktivitas Kerja Karyawan Pada PT. Telkom Akses Cirebon', '2021-02-16 10:13:00', 0, 'belum diverifikasi', 'belum diuji'),
(303, 688, 'Pengaruh Pelatihan Dan Motivasi Kerja Terhadap Kinerja Karyawan Pada PT. Telkom Akses Cirebon', '2021-02-16 10:13:25', 0, 'belum diverifikasi', 'belum diuji'),
(304, 688, 'Pengaruh Kompensasi dan Lingkungan Kerja Terhadap Kepuasan Kerja Karyawan Pada PT. Telkom Akses Cirebon', '2021-02-16 10:13:42', 0, 'belum diverifikasi', 'belum diuji'),
(305, 930, 'Pengaruh Disiplin Kerja Dan Kompensasi Terhadap Kinerja Karyawan pada PT.  Kaldu Sari Nabati Majalengka Indonesia ', '2021-02-16 10:13:55', 0, 'belum diverifikasi', 'belum diuji'),
(306, 642, 'Pengaruh Kualitas kehidupan Kerja ( Quality of work life) dan kepuasan kerja terhadap kinerja karyawan pada PT Telekomunikasi Indonesia Tbk, Wilayah Telekomunikasi Cirebon', '2021-02-16 10:14:39', 1, 'belum diverifikasi', 'belum diuji'),
(307, 642, 'Pengaruh Stress Kerja dan Lingkungan Kerja terhadap kinerja karyawan pada PT. Pertamina EP Asset 3 Cirebon', '2021-02-16 10:15:59', 1, 'belum diverifikasi', 'belum diuji'),
(308, 710, 'pengaruh hallyu wave dan brand ambassador terhadap keputusan pembelian pada online shop tokopedia', '2021-02-16 10:17:08', 0, 'belum diverifikasi', 'belum diuji'),
(309, 642, 'Pengaruh Person job fit dan person organization fit terhadap kinerja karyawan Metland Hotel Cirebon', '2021-02-16 10:17:29', 1, 'belum diverifikasi', 'belum diuji'),
(310, 904, 'PENGARUH PROFITABILITAS, LIKUIDITAS, TERHADAP PERINGKAT OBLIGASI PADA PT EXPRESS TRANSINDO UTAMA TBK PERIODE 2015-2019', '2021-02-16 10:18:15', 1, 'belum diverifikasi', 'belum diuji'),
(311, 904, 'PENGARUH CURRENT RATIO, QUICK RATIO, RETURN ON ASSETS TERHADAP STRUKTUR MODAL PADA PT KIMIA FARMA TBK  PERUSAHAAN  TAHUN 2015-2019', '2021-02-16 10:18:35', 1, 'belum diverifikasi', 'belum diuji'),
(312, 904, 'PENGARUH RASIO LIKUIDITAS, RASIO AKTIFITAS DAN RASIO PROFITABILITAS TERHADAP FINANCIAL DISTRESS PADA PERUSAHAAN PT EXPRESS TRANSINDO UTAMA TBK PERIODE 2015-2019', '2021-02-16 10:18:55', 1, 'belum diverifikasi', 'belum diuji'),
(313, 710, 'pengaruh inovasi produk dan kualitas produk terhadap keputusan pembelian produk pop mie panas (pake nasi)', '2021-02-16 10:21:25', 0, 'belum diverifikasi', 'belum diuji'),
(314, 931, '1.PENGARUH KEPUASAAN KERJA DAN DISIPLIN  KERJA TERHADAP KINERJA KARYAWAN PADA DINAS PERHUBUNGAN KABUPATEN CIREBON.\r\n', '2021-02-16 10:23:25', 1, 'belum diverifikasi', 'belum diuji'),
(315, 931, '2.PENGARUH KOMPENSASI DAN LINGKUNGAN KERJA TERHADAP KINERJA KARYAWAN PADA DINAS PERHUBUNGAN KABUPATTEN CIREBON.\r\n', '2021-02-16 10:25:13', 1, 'belum diverifikasi', 'belum diuji'),
(316, 703, 'PENGARUH HARGA DAN KERAGAMAN PRODUK TERHADAP KEPUTUSAN PEMBELIAN PADA KONSUMEN YOGYA KOTA SUMBER', '2021-02-16 10:25:30', 1, 'belum diverifikasi', 'belum diuji'),
(317, 703, 'PENGARUH ATMOSFER TOKO DAN HARGA TERHADAP KEPUTUSAN PEMBELIAN (Studi Pada Kedai Kopi Manis Cirebon) ', '2021-02-16 10:26:57', 1, 'belum diverifikasi', 'belum diuji'),
(318, 900, 'Pengaruh Stres Kerja Dan Disiplin Kerja Terhadap Kepuasan Kerja Karyawan PT. Arta Boga Cemerlang Cirebon', '2021-02-16 10:28:01', 0, 'belum diverifikasi', 'belum diuji'),
(319, 766, 'Pengaruh Talent Management dan Strategi Pengembangan SDM terhadap Kinerja Pegawai BUMD Kota Cirebon', '2021-02-16 10:28:12', 0, 'belum diverifikasi', 'belum diuji'),
(320, 665, 'Pengaruh Perputaran Piutang Dan Perputaran Aktiva Tetap Terhadap Profitabilitas\r\n(Studi Kasus Pada Sub Sektor Semen Yang Terdaftar Di Bursa Efek Indonesia Tahun  2012-2019)', '2021-02-16 10:28:21', 1, 'belum diverifikasi', 'belum diuji'),
(321, 910, 'Pengaruh CAR,NPL,LDR terhadap Penyaluran Kredit pada Bank BUMN Tahun 2011-2019', '2021-02-16 10:28:26', 0, 'belum diverifikasi', 'belum diuji'),
(322, 900, 'Pengaruh Kompensasi Dan Motivasi Terhadap Kinerja Karyawan Surya Toserba Indramayu', '2021-02-16 10:28:39', 0, 'belum diverifikasi', 'belum diuji'),
(323, 909, 'Pengaruh DER dan PBV terhadap harga saham perusahaan sektor konstruksi, properti dan real estate yabg terdaftar di BEI periode 2016-2020', '2021-02-16 10:28:53', 0, 'belum diverifikasi', 'belum diuji'),
(324, 900, 'Pengaruh Disiplin Kerja Dan Kompensasi Terhadap Kinerja Karyawan Pabrik Sri Tanjung', '2021-02-16 10:29:21', 0, 'belum diverifikasi', 'belum diuji'),
(325, 766, 'Pengaruh Strategi Pengembangan SDM dan Talent Management terhadap Kinerja Pegawai BUMD Kota Cirebon', '2021-02-16 10:29:26', 0, 'belum diverifikasi', 'belum diuji'),
(326, 774, 'PENGARUH DISIPLIN KERJA DAN MOTIVASI TERHADAP KINERJA KARYAWAN PADA KANTOR PDAM (Perusahaan Daerah Air Minum) KOTA CIREBON', '2021-02-16 10:29:27', 0, 'belum diverifikasi', 'belum diuji'),
(327, 910, 'Pengaruh ROA  dan DER terhadap Harga Saham pada sektor Aneka Industri Tahun 2015-2019', '2021-02-16 10:30:05', 0, 'belum diverifikasi', 'belum diuji'),
(328, 665, 'Pengaruh Work Capital Turn Over Dan Inventory Turn Over Terhadap Net Profit Margin\r\n(Studi Kasus Perusahaan Sub Sektor Farmasi Yang Terdaftar Di Bursa Efek Indonesia Tahun 2015-2019)', '2021-02-16 10:30:24', 1, 'belum diverifikasi', 'belum diuji'),
(329, 766, 'Pengaruh Talent Management dan Strategi Pengembangan SDM terhadap Kinerja Pegawai ', '2021-02-16 10:30:57', 0, 'belum diverifikasi', 'belum diuji'),
(330, 703, 'PENGARUH PROMOSI DAN KUALITAS PELAYANAN TERHADAP KEPUTUSAN PEMBELIAN (Study Pada Kedai Kopi Manis Cirebon)', '2021-02-16 10:31:08', 1, 'belum diverifikasi', 'belum diuji'),
(331, 931, 'PENGARUH  DISIPLIN KERJA DAN MOTIVASI KERJA TERHADAP  KOMITMEN ORGANISASIONAL PADA PT. CIREBON FURNITURE', '2021-02-16 10:31:54', 1, 'belum diverifikasi', 'belum diuji'),
(332, 888, 'Judul 1: Pengaruh K3 dan Lingkungan Kerja terhadap Kinerja Karyawan PT ToTum Diba', '2021-02-16 10:36:24', 1, 'belum diverifikasi', 'belum diuji'),
(333, 893, 'Pengaruh seleksi dan penempatan ketenaga kerjaan dalam meningkatkan efektivitas di Dinas PUPR Kab. Cirebon ', '2021-02-16 10:32:00', 1, 'belum diverifikasi', 'belum diuji'),
(334, 859, 'PENGARUH KUALITAS PELAYANAN DAN CITRA MEREK TERHADAP KEPUTUSAN PEMBELIAN MOBIL HYUNDAI TRAJET PADA DEALER HYUNDAI CIREBON', '2021-02-16 10:32:18', 0, 'belum diverifikasi', 'belum diuji'),
(335, 665, 'Pengaruh Profitabilitas Dan Likuiditas Terhadap Nilai Perusahaan \r\n(Studi Kasus Pada Sub Sektor Kosmetik dan Barang Keperluan Rumah Tangga Yang Terdaftar di Bursa Efek Indonesia Tahun 2014-2019)', '2021-02-16 10:32:21', 1, 'belum diverifikasi', 'belum diuji'),
(336, 882, 'Judul 1 : Pengaruh Pelatihan Dan Disiplin Kerja Terhadap Kinerja Karyawan Pada PT. Indocement Tunggal Prakarsa Tbk. Palimanan', '2021-02-16 10:32:33', 1, 'belum diverifikasi', 'belum diuji'),
(337, 859, 'PENGARUH KUALITAS PRODUK DAN HARGA TERHADAP KEPUTUSAN PEMBELIAN MOBIL HYUNDAI TRAJET PADA DEALER HYUNDAI CIREBON', '2021-02-16 10:32:53', 0, 'belum diverifikasi', 'belum diuji'),
(338, 859, 'PENGARUH ATRIBUT PRODUK DAN CITRA MERK TERHADAP KEPUTUSAN PEMBELIAN MOBIL HYUNDAI TRAJET PADA DEALER HYUNDAI CIREBON', '2021-02-16 10:33:04', 0, 'belum diverifikasi', 'belum diuji'),
(339, 951, 'Pengaruh kualitas pelayanan terhadap kepuasan pelanggan dalam menggunakan bengkel las sayuti di Cirebon', '2021-02-16 10:33:13', 0, 'belum diverifikasi', 'belum diuji'),
(340, 893, 'Peran pelatihan dalam meningkatkan pengembangan karir terhadap kinerja pegawai Dinas PUPR kab.Cirebon', '2021-02-16 10:33:14', 1, 'belum diverifikasi', 'belum diuji'),
(341, 972, 'Pengaruh lingkungan kerja dan k3 (kesehatan dan keselamatan kerja) terhadap kinerja karyawan PT. Abadi dan Jaya Garmindo Cirebon', '2021-02-16 10:33:26', 0, 'belum diverifikasi', 'belum diuji'),
(342, 888, 'Judul 2: Pengaruh Disiplin Kerja dan Motivasi Kerja terhadap Kinerja Karyawan PT Totum Diba', '2021-02-16 10:33:29', 1, 'belum diverifikasi', 'belum diuji'),
(343, 951, 'Pengaruh kualitas produk dan harga terhadap keputusan pembelian alat-alat listrik merek batiq pada CV. Sinar Kentjana Electrik Cirebon', '2021-02-16 10:33:42', 0, 'belum diverifikasi', 'belum diuji'),
(344, 882, 'Judul 2 : Pengaruh Kompensasi Dan Pelatihan Kerja Terhadap Motivasi Karyawan Pada PT. Telkom Akses Cirebon', '2021-02-16 10:34:07', 1, 'belum diverifikasi', 'belum diuji'),
(345, 951, 'Pengaruh visual merchanding terhadap impulse buying melalui positive emotion pada UD. Putra Ts Majalengka', '2021-02-16 10:34:09', 0, 'belum diverifikasi', 'belum diuji'),
(346, 888, 'Judul 3: Pengaruh Stres Kerja dan Lingkungan Kerja terhadap Turnover Intention Karyawan PT Indowooyang Cirebon', '2021-02-16 10:34:29', 1, 'belum diverifikasi', 'belum diuji'),
(347, 893, 'Pengaruh perilaku dan motivasi kerja terhadap produktivitas pegawai Bank MHI Kab. Cirebon', '2021-02-16 10:34:36', 1, 'belum diverifikasi', 'belum diuji'),
(348, 972, 'Pengaruh disiplin kerja dan motivasi terhadap kinerja karyawan PT. Abadi dan Jaya Garmindo Cirebon', '2021-02-16 10:35:18', 0, 'belum diverifikasi', 'belum diuji'),
(349, 882, 'Judul 3 : Pengaruh Stres Kerja Dan Motivasi Kerja Terhadap Kinerja Karyawan Pada Bank BPR Ciwaringin', '2021-02-16 10:35:31', 1, 'belum diverifikasi', 'belum diuji'),
(350, 793, 'Judul 1 \r\n\"PENGARUH PELATIHAN DAN PENGEMBANGAN KARIER TERHADAP KINERJA KARYAWAN PADA PT.BANK PERKREDITAN RAKYAT MAJALENGKA JAWA BARAT\"', '2021-02-16 10:36:39', 0, 'belum diverifikasi', 'belum diuji'),
(351, 972, 'Pengaruh lingkungan kerja dan disiplin kerja terhadap kinerja karyawan PT. Abadi dan Jaya Garmindo Cirebon', '2021-02-16 10:37:05', 0, 'belum diverifikasi', 'belum diuji'),
(352, 793, 'Judul 2\r\n\"PENGARUH KOMPENSASI DAN MOTIVASI TERHADAP KEPUASAN KERJA KARYAWAN PADA PT.BANK PERKREDITAN RAKYAT MAJALENGKA JAWA BARAT\"', '2021-02-16 10:37:17', 0, 'belum diverifikasi', 'belum diuji'),
(353, 793, 'Judul 3\r\nPENGARUH PELATIHAN DAN MOTIVASI TERHADAP KINERJA KARYAWAN PADA PT.BANK PERKREDITAN RAKYAT MAJALENGKA JAWA BARAT\"', '2021-02-16 10:37:40', 0, 'belum diverifikasi', 'belum diuji'),
(354, 780, 'Pengaruh Disiplin kerja dan kompensasi terhadap kinerja karyawan PT. Bank Perkreditan Rakyat Majalengka-Jawa', '2021-02-16 10:38:07', 0, 'belum diverifikasi', 'belum diuji');
INSERT INTO `ta_ajuan` (`id_ajuan`, `id_mahasiswa`, `judul_ajuan`, `tgl_ajuan`, `submit`, `hasil_verifikasi`, `hasil_ujian`) VALUES
(355, 780, 'Pengaruh Pelatihan dan Disiplin kerja terhadap kinerja karyawan PT. Bank Perkreditan Rakyat Majalengka-Jawa', '2021-02-16 10:38:51', 0, 'belum diverifikasi', 'belum diuji'),
(356, 780, 'Pengaruh Pelatihan dan Lingkungan kerja terhadap kinerja karyawan PT. Bank Perkreditan Rakyat Majalengka-Jawa', '2021-02-16 10:39:51', 0, 'belum diverifikasi', 'belum diuji'),
(357, 760, 'PENGARUH CITRA MEREK DAN GAYA HIDUP TERHADAP KEPUTUSAN PEMBELIAN HANDPHONE XIOMI TAHUN 2019', '2021-02-16 10:41:44', 1, 'belum diverifikasi', 'belum diuji'),
(358, 649, 'PENGARUH HARGA DAN KERAGAMAN PRODUK TERHADAP KEPUTUSAN PEMBELIAN (STUDI KASUS PADA KONSUMEN TOKO BANGUNAN UD ERLANGGA PUTRA BREBES)', '2021-02-16 10:41:45', 1, 'belum diverifikasi', 'belum diuji'),
(359, 759, 'Analisis Financial Distress dengan menggunakan metode altman Z-Core untuk memprediksi  kebangkrutan pada sub sektor Telekomunikasi yang terdaftar di BEI tahun 2015 - 2019', '2021-02-16 10:43:03', 1, 'belum diverifikasi', 'belum diuji'),
(360, 649, 'PENGARUH KESESUAIAN HARGA DAN CITRA MERK TERHADAP KEPUTUSAN PEMBELIAN SEPEDA MOTOR HONDA PADA KONSUMEN DEALER SURYA UTAMA PERKASA KETANGGUNGAN ', '2021-02-16 10:43:17', 1, 'belum diverifikasi', 'belum diuji'),
(361, 759, 'Pengaruh Debt to Asset Ratio (DAR) dan Debt to Equity Ratio (DER) terhadap Return On Asset (ROA) pada sub sektor Farmasi  yang terdaftar di BEI tahun 2015 - 2019.', '2021-02-16 10:43:38', 1, 'belum diverifikasi', 'belum diuji'),
(362, 852, 'PENGARUH TRUST DAN ONLINE SHOPPING EXPERIENCE TERHADAP KEPUTUSAN PEMBELIAN PADA E-COMMERCE SHOPEE DIKOTA MAJALENGKA', '2021-02-16 10:43:39', 0, 'belum diverifikasi', 'belum diuji'),
(363, 869, 'Pengaruh Citra Merek, Harga, dan Atribut Produk Terhadap Keputusan Pembelian Mobil Toyota Yaris Pada Dealer Rejeki Toyota Indramayu', '2021-02-16 10:43:52', 1, 'belum diverifikasi', 'belum diuji'),
(364, 760, 'PENGARUH PROMOSI DAN KEMUDAHAN PENGGUNAAN APLIKASI TERHADAP KEPUTUSAN PEMBELIAN TOKO ONLINE (LAZADA) DI KOTA CIREBON', '2021-02-16 10:44:06', 1, 'belum diverifikasi', 'belum diuji'),
(365, 641, 'Judul 1.\r\n\"Pengaruh Motivasi Dan Kepuasan Kerja Terhadap Kinerja Karyawan Pada PT. PDAM Kota Cirebon\"', '2021-02-16 10:44:13', 1, 'belum diverifikasi', 'belum diuji'),
(366, 759, 'Pengaruh Analisis Rasio Keuangan Terhadap Pertumbuhan Laba Pada Sub Sektor Rokok yang terdaftar di BEI tahun 2015 - 2019', '2021-02-16 10:44:18', 1, 'belum diverifikasi', 'belum diuji'),
(367, 637, 'Judul 3 : Pengaruh Lingkungan Kerja dan Kepuasan Kerja Terhadap Komitmen Organisasi Pada Karyawan CV. Gebang Jaya, Cirebon. ', '2021-02-16 10:44:36', 0, 'belum diverifikasi', 'belum diuji'),
(368, 852, 'PENGARUH ELECTRONIC WORD OF MOUTH DAN TRUST TERHADAP KEPUTUSAN PEMBELIAN PADA APLIKASI SHOPEE DI KOTA MAJALENGKA', '2021-02-16 10:44:38', 0, 'belum diverifikasi', 'belum diuji'),
(369, 887, 'Judul 1 : Pengaruh Kompensasi Dan Motivasi Terhadap Kepuasan Kerja Pada PT. Yamakawa Rattan Industri Cirebon', '2021-02-16 10:44:47', 1, 'belum diverifikasi', 'belum diuji'),
(370, 649, 'PENGARUH CELEBRITY ENDORSER, HARGA, DAN CITRA MERK TERHADAP KEPUTUSAN PEMBELIAN HANDPHONE VIVO DI SUPERMAN PHONE KETANGGUNGAN', '2021-02-16 10:45:01', 1, 'belum diverifikasi', 'belum diuji'),
(371, 610, 'Pengaruh Personal Selling Dan Citra Merek Terhadap Keputusan Pembelian Mobil \r\nToyota Avanza Pada Rejeki Toyota Cabang Widasari.\r\n', '2021-02-16 10:45:26', 1, 'belum diverifikasi', 'belum diuji'),
(372, 641, 'Judul 2\r\n\" Pengaruh Lingkungan Kerja Dan Pelatihan Kerja Terhadap Kinerja Karyawan Pada PT. Arteria Daya Mulia (ARIDA) \"', '2021-02-16 10:45:43', 1, 'belum diverifikasi', 'belum diuji'),
(373, 610, 'Pengaruh store atmosfer dan service quality Terhadap kepuasan konsumen rumah makan Sekar wangi Di Widasari.', '2021-02-16 10:45:46', 1, 'belum diverifikasi', 'belum diuji'),
(374, 852, 'PENGARUH PRICE DISCOUNT DAN IN-STORE DISPLAY TERHADAP KEPUTUSAN PEMBELIAN IMPULSE BUYING ALFAMART WERAGATI NO V054 MAJALENGKA', '2021-02-16 10:45:50', 0, 'belum diverifikasi', 'belum diuji'),
(375, 869, 'Pengaruh Brand Image dan Desain Produk Terhadap Keputusan Pembelian Mobil Toyota Yaris Pada Dealer Rejeki Toyota Indramayu', '2021-02-16 10:45:52', 1, 'belum diverifikasi', 'belum diuji'),
(376, 887, 'Judul 2 : Pengaruh Lingkungan Kerja Dan Disiplin Kerja Terhadap Kinerja Karyawan Pada CV. Java Jati Vision Raya', '2021-02-16 10:45:56', 1, 'belum diverifikasi', 'belum diuji'),
(377, 760, 'PENGARUH STORE ATMOSPHERE DAN STORE LOCATION TERHADAP KEPUASAN KONSUMEN KEDAI KOPI JtD KOTA CIREBON', '2021-02-16 10:46:03', 1, 'belum diverifikasi', 'belum diuji'),
(378, 610, 'Pengaruh kualitas produk,harga dan lokasi terhadap kepuasaan Konsumen rumah makan Sekar wangi Di Widasari.', '2021-02-16 10:46:04', 1, 'belum diverifikasi', 'belum diuji'),
(379, 774, 'PENGARUH DISIPLIN KERJA DAN LINGKUNGAN KERJA TERHADAP KINERJA KARYAWAN PADA KANTOR PDAM (Perusahaan Daerah Air Minum) KOTA CIREBON', '2021-02-16 10:46:51', 0, 'belum diverifikasi', 'belum diuji'),
(380, 641, 'Judul 3\r\n\"Pengaruh Komunikasi Kerja Dan Pelatihan Kerja Terhadap Kinerja Karyawan Pada PT. Arteria Daya Mulia (ARIDA)\"', '2021-02-16 10:47:07', 1, 'belum diverifikasi', 'belum diuji'),
(381, 887, 'Judul 3 : Pengaruh Disiplin Kerja Dan Kemampuan Kerja Terhadap Prestasi Kerja Pada PT. Subra Grup Internasional Plumbon', '2021-02-16 10:47:08', 1, 'belum diverifikasi', 'belum diuji'),
(382, 855, 'PENGARUH JAMINAN RASA AMAN DAN AKSESBILITAS TERHADAP MINAT MENABUNG PADA NASABAH BANK BRI CIREBON', '2021-02-16 10:47:44', 1, 'belum diverifikasi', 'belum diuji'),
(383, 869, 'Pengaruh Kualitas Produk dan Persepsi Harga Terhadap Keputusan Pembelian Di RM Sekar Wangi Widasari Indramayu', '2021-02-16 10:47:58', 1, 'belum diverifikasi', 'belum diuji'),
(384, 988, 'Pengaruh Persepsi Harga dan Kualitas Produk Terhadap Keputusan Pembelian Lelang Kayu Jati Kesatuan Bisnis Mandiri Perhutani Kota Cirebon', '2021-02-16 10:48:45', 1, 'belum diverifikasi', 'belum diuji'),
(385, 855, 'PENGARUH PERSEPSI KEMUDAHAN DAN PERSEPSI MANFAAT TERHADAP MINAT NASABAH DALAM MENGGUNAKAN E-MONEY PADA BANK BRI CIREBON', '2021-02-16 10:49:11', 1, 'belum diverifikasi', 'belum diuji'),
(386, 988, 'Pengaruh Celebrity Endorser dan Brand Image Terhadap Keputusan Pembelian Secara Online di Tokopedia', '2021-02-16 10:49:49', 1, 'belum diverifikasi', 'belum diuji'),
(387, 855, 'PENGARUH PENINGKATAN INOVASI PRODUK DAN PENGGUNAAN SOSIAL MEDIA DALAM PEMASARAB KERAJINAN TANGAN DI DESA PLERED', '2021-02-16 10:50:24', 1, 'belum diverifikasi', 'belum diuji'),
(388, 853, 'Pengaruh Citra Merek dan Promosi Terhadap keputusan Pembelian Mobil Honda Brio Satya pada Dealer Honda Cirebon', '2021-02-16 10:50:32', 1, 'belum diverifikasi', 'belum diuji'),
(389, 988, 'Pengaruh Promosi dan Kepercayaan Terhadap Keputusan Pembelian Secara Online di Tokopedia', '2021-02-16 10:50:41', 1, 'belum diverifikasi', 'belum diuji'),
(390, 853, 'Pengaruh Desain Produk dan Citra Merek Terhadap Keputusan Pembelian Mobil suzuki APV pada Dealer Suzuki Cirebon', '2021-02-16 10:51:29', 1, 'belum diverifikasi', 'belum diuji'),
(391, 950, 'PENGARUH DISIPLIN KERJA DAN LINGKUNGAN KERJA TERHADAP KINERJA KARYAWAN PADA CV MULYA PRATAMA INDAH\r\n', '2021-02-16 10:51:34', 1, 'belum diverifikasi', 'belum diuji'),
(392, 950, 'PENGARUH KOMPENSASI DAN MOTIVASI KERJA TERHADAP KINERJA KARYAWAN PADA CV MULYA PRATAMA INDAH\r\n', '2021-02-16 10:52:27', 1, 'belum diverifikasi', 'belum diuji'),
(393, 853, 'Pengaruh Harga dan Kualitas Produk terhadap Keputusan Pembelian pada Rocket Chicken Cirebon', '2021-02-16 10:53:16', 1, 'belum diverifikasi', 'belum diuji'),
(394, 950, 'PENGARUH PELATIHAN DAN MOTIVASI KERJA TERHADAP PENILAIAN KINERJA KARYAWAN DI PT MULYA PRATAMA INDAH\r\n', '2021-02-16 10:53:42', 1, 'belum diverifikasi', 'belum diuji'),
(395, 778, 'Pengaruh Kepemimpinan dan Disiplin Kerja Terhadap Kinerja Karyawan PT. Pos Indonesia (Persero) Kota Cirebon.', '2021-02-16 10:53:52', 1, 'belum diverifikasi', 'belum diuji'),
(396, 787, 'Pengaruh kepuasan kerja dan loyalitas karyawan terhadap kinerja karyawan pada dinas perhubungan kabupaten cirebon', '2021-02-16 10:54:37', 1, 'belum diverifikasi', 'belum diuji'),
(397, 787, 'Pengaruh motivasi dan lingkungan kerja terhadap kinerja karyawan pada dinas perhubungan kabupaten cirebon', '2021-02-16 10:55:13', 1, 'belum diverifikasi', 'belum diuji'),
(398, 774, 'PENGARUH KEPEMIMPINAN DAN MOTIVASI KERJA TERHADAP KINERJA KARYAWAN PADA KANTOR PDAM (Perusahaan Daerah Air \r\nMinum) KOTA CIREBON', '2021-02-16 10:55:18', 0, 'belum diverifikasi', 'belum diuji'),
(399, 778, 'Pengaruh Disiplin Kerja dan Kompensasi Terhadap Kinerja Karyawan PT. Pos Indonesia (Persero) Kota Cirebon.', '2021-02-16 10:55:29', 1, 'belum diverifikasi', 'belum diuji'),
(400, 787, 'Pengaruh motivasi kerja dan kepuasan kerja terhadap kinerja karyawan pada dinas perhubungan kabupaten cirebon', '2021-02-16 10:56:01', 1, 'belum diverifikasi', 'belum diuji'),
(401, 778, 'Pengaruh Kompetensi dan Motivasi Kerja Terhadap Kinerja Karyawan PT. Pos Indonesia (Persero) Kota Cirebon.', '2021-02-16 10:56:17', 1, 'belum diverifikasi', 'belum diuji'),
(402, 845, 'Pengaruh Kepemimpinan dan Beban Kerja terhadap Kinerja Karyawan pada PT. Bank Perkreditan Rakyat (BPR) Majalengka', '2021-02-16 10:58:57', 1, 'belum diverifikasi', 'belum diuji'),
(403, 857, 'PENGARUH KOMUNIKASI INTERPERSONAL ANTAR KARYAWAN DAN MOTIVASI KERJA KARYAWAN TERHADAP KINERJA KARYAWAN GRAGE CITY MALL CIREBON', '2021-02-16 10:59:58', 1, 'belum diverifikasi', 'belum diuji'),
(404, 845, 'Pengaruh Pengembangan Karir dan Pelatihan terhadap Kinerja Karyawan pada PT. Bank Perkreditan Rakyat (BPR) Majalengka', '2021-02-16 11:00:12', 1, 'belum diverifikasi', 'belum diuji'),
(405, 845, 'Pengaruh Keselamatan dan Kesehatan Kerja (K3) dan Disiplin Kerja terhadap Kinerja Karyawan pada PT. Bank Perkreditan Rakyat (BPR) Majalengka', '2021-02-16 11:01:37', 1, 'belum diverifikasi', 'belum diuji'),
(406, 857, 'Pengaruh Budaya Organisasi dan Pengembangan Karir Terhadap Kinerja Karyawan Pada Bank BNI.', '2021-02-16 11:01:43', 1, 'belum diverifikasi', 'belum diuji'),
(407, 857, 'PENGARUH PELATIHAN DAN DISIPLIN KERJA TERHADAP KINERJA KARYAWAN  PDAM KABUPATEN MAJALENGKA', '2021-02-16 11:02:08', 1, 'belum diverifikasi', 'belum diuji'),
(408, 923, 'Pengaruh Gaya Kepemimpinan dan Disiplin Kerja terhadap Kinerja Karyawan Toserba Fajar Talaga Kabupaten Majalengka', '2021-02-16 11:42:15', 0, 'belum diverifikasi', 'belum diuji'),
(409, 862, 'Pengaruh current ratio dan total asset turn over terhadap return on asset pada perusahaan sub sektor semen yang terdaftar di bursa efek Indonesia tahun 2011-2020', '2021-02-16 11:03:00', 1, 'belum diverifikasi', 'belum diuji'),
(410, 854, 'Pengaruh Kualitas Produk dan Harga terhadap Keputusan Pembelian Sepeda Motor Yamaha Tipe Soul GT Pada Yamaha Arista Jagabaya Kuningan', '2021-02-16 11:04:04', 1, 'belum diverifikasi', 'belum diuji'),
(411, 862, 'Pengaruh current ratio dan debt to equity ratio terhadap return on asset pada perusahaan sub sektor semen yang terdaftar di bursa efek Indonesia tahun 2011-2020', '2021-02-16 11:04:22', 1, 'belum diverifikasi', 'belum diuji'),
(412, 800, 'Pengaruh Kalitas Pelayanan dan Harga terhadap Kepuasan Pelanggan Jasa Aplikasi Gojek di Kota Cirebon', '2021-02-16 11:04:41', 1, 'belum diverifikasi', 'belum diuji'),
(413, 802, 'PENGARUH KUALITAS PELAYANAN  DAN KEPERCAYAAN KONSUMEN TERHADAP KEPUASAN KONSUMEN PADA JOVER LAUNDRY KARANG JALAK CIREBON', '2021-02-16 11:08:38', 1, 'belum diverifikasi', 'belum diuji'),
(414, 805, 'PENGARUH STORE ATMOSPHERE DAN KELENGKAPAN PRODUK TERHADAP KEPUTUSAN PEMBELIAN PADA TOKO ARAFAH CIREBON', '2021-02-16 11:04:54', 1, 'belum diverifikasi', 'belum diuji'),
(415, 643, 'Judul 1 \r\nPengaruh Kepuasan Kerja Dan Komitmen Organisasional Terhadap Turnover Intention Perawat Pegawai Kontrak Rumah Sakit (PKRS) Pada RSUD Arjawinangun Kabupaten Cirebon', '2021-02-16 11:05:15', 1, 'belum diverifikasi', 'belum diuji'),
(416, 854, 'Pengaruh Desain Produk dan Citra Merek Terhadap Keputusan Pembelian Sepeda Motor Suzuki Nex Pada Dealer Suzuki Kuningan', '2021-02-16 11:05:17', 1, 'belum diverifikasi', 'belum diuji'),
(417, 805, 'PENGARUH SUASANA TOKO DAN WORD OF MOUTH TERHADAP KEPUTUSAN PEMBELIAN PADA AYAM BACKPACKER CIREBON', '2021-02-16 11:05:45', 1, 'belum diverifikasi', 'belum diuji'),
(418, 854, 'Pengaruh Citra Merek dan Atribut Produk Terhadap Keputusan Pembelian Sepeda Motor Honda Beat pada Dealer Honda Prima Kuningan', '2021-02-16 11:06:16', 1, 'belum diverifikasi', 'belum diuji'),
(419, 865, 'Pengaruh Customer Relationship Marketing dan Kepercayaan terhadap Loyalitas nasabah Bank BPR Cabang Gegesik.', '2021-02-16 11:06:26', 1, 'belum diverifikasi', 'belum diuji'),
(420, 805, 'PENGARUH BRAND IMAGE DAN MEDIA SOSIAL TERHADAP KEPUTUSAN PEMBELIAN PADA MINUMAN MAO MAO CIREBON', '2021-02-16 11:06:27', 1, 'belum diverifikasi', 'belum diuji'),
(421, 800, 'Pengaruh Store Atmosphere dan Kualitas Pelayanan terhadap Kepuasan Konsumen pada Caffe Kopi Badax Cikedung ', '2021-02-16 11:06:30', 1, 'belum diverifikasi', 'belum diuji'),
(422, 643, 'Judul 2\r\nPengaruh Kepuasan Dan Disiplin Kerja Terhadap Kinerja Pegawai Kontrak Rumah Sakit (PKRS) di RSUD Arjawinangun Kabupaten Cirebon', '2021-02-16 11:06:50', 1, 'belum diverifikasi', 'belum diuji'),
(423, 802, 'PENGARUH KUALITAS PELAYANAN DAN HARGA TERHADAP KEPUTUSAN PEMBELIAN PADA GEPREK MR.BOY PERJUANGAN CIREBON', '2021-02-16 11:06:51', 1, 'belum diverifikasi', 'belum diuji'),
(424, 867, 'PENGARUH CITRA MEREK, PROMOSI dan HARGA, GAYA HIDUP TERHADAP KEPUTUSAN PEMBELIAN PELANGGAN DI WARUNK UPNORMAL.', '2021-02-16 11:06:58', 1, 'belum diverifikasi', 'belum diuji'),
(425, 865, 'Pengaruh Service Quality dan Customer Relationship terhadap kepuasan nasabah Bank BPR Cabang Gegesik.\r\n', '2021-02-16 11:07:03', 1, 'belum diverifikasi', 'belum diuji'),
(426, 862, 'Pengaruh capital adequacy ratio dan non perfoming loan terhadap return on asset pada perusahaan perbankan BUMN yang terdaftar di bursa efek indonesia tahun 2011-2020', '2021-02-16 11:07:14', 1, 'belum diverifikasi', 'belum diuji'),
(427, 849, 'Pengaruh Net Profit Margin (NPM) Dan Total Asset Turnover (TATO) Terhadap Return On Asset (ROA) Pada Perusahaan Manufaktur Sub Sektor Semen Yang Terdaftar Di BEI Periode 2015- 2019', '2021-02-16 11:07:29', 1, 'belum diverifikasi', 'belum diuji'),
(428, 865, 'Pengaruh Desain Produk dan Promosi terhadap Keputusan Pembelian Sepeda Motor Honda Scoopy di Honda Daya Motor Arjawinangun.\r\n', '2021-02-16 11:07:31', 1, 'belum diverifikasi', 'belum diuji'),
(429, 800, 'Pengaruh Kualitas Produk dan Harga terhadap Keputusan Pembelian Sepeda Motor Honda Pada Dealer Nafriya Abadi Motor ', '2021-02-16 11:07:58', 1, 'belum diverifikasi', 'belum diuji'),
(430, 849, 'Pengaruh Debt To Equity Ratio (DER) Dan Inventory Turnover (ITO) Terhadap Return On Asset (ROA) Perusahaan Sub Sektor Perdagangan Eceran (Ritel) Yang Terdaftar Di Bursa Efek Indonesia Periode 2015-2019', '2021-02-16 11:08:06', 1, 'belum diverifikasi', 'belum diuji'),
(431, 802, 'PENGARUH KUALITAS PELAYANAN DAN STORE ATMOSPHERE TERHADAP KEPUTUSAN PEMBELIAN PADA KOPI JANJI JIWA PERJUANGAN CIREBON', '2021-02-16 11:08:17', 1, 'belum diverifikasi', 'belum diuji'),
(432, 867, 'PENGARUH MEDIA SOSIAL, LOKASI DAN MANAJEMEN HUBUNGAN PELANGGAN TERHADAP KEPUTUSAN PEMBELIAN PELANGGAN COFFESHOP\r\n(TERHADAP STUDY KASUS PADA EVERYDAY COFFE CIREBON)\r\n', '2021-02-16 11:08:32', 1, 'belum diverifikasi', 'belum diuji'),
(433, 849, 'Analisis Penilaian Kinerja Keuangan Perusahaan  Dengan Konsep Economic Value Added (Eva) Dan Market Value Added (Mva)  Pada PT Acset Indonusa Tbk Periode 2017-2019', '2021-02-16 12:13:58', 1, 'belum diverifikasi', 'belum diuji'),
(434, 867, 'PENGARUH NAMA MEREK PRODUK, ULASAN DAN FOTO PRODUK DAN PROMO GRATIS ONGKIR TERHADAP KEPUTUSAN PEMBELIAN PELANGGAN TERHADAP MARKETPLACE SHOPEE (STUDY KASUS PADA DESNATSHOPBEAUTY SALAH SATU TOKO DI MARKETPLACE SHOPEE)', '2021-02-16 11:08:59', 1, 'belum diverifikasi', 'belum diuji'),
(435, 922, 'Pengaruh Kompensasi dan  Kepuasan Kerja Terhadap Kinerja Karyawan PT. Plumbon International Textile Cirebon', '2021-02-16 11:09:11', 0, 'belum diverifikasi', 'belum diuji'),
(436, 643, 'Judul 3\r\nPengaruh Disiplin Kerja dan Motivasi Terhadap Kinerja Pegawai Kontrak Rumah Sakit (PKRS) Di RSUD Arjawinangun Kabupaten Cirebon', '2021-02-16 11:09:41', 1, 'belum diverifikasi', 'belum diuji'),
(437, 922, 'Pengaruh Kompensasi dan  Motivasi Kerja Terhadap Kinerja Karyawan PT. Plumbon International Textile  Cirebon', '2021-02-16 11:09:55', 0, 'belum diverifikasi', 'belum diuji'),
(438, 922, 'Pengaruh stres kerja dan kepuasan kerja terhadap turnover intention karyawan PT. Plumbon International Textile Cirebon', '2021-02-16 11:11:08', 0, 'belum diverifikasi', 'belum diuji'),
(439, 764, 'PENGARUH CAR, NPL, LDR TERHADAP ROA PADA SEKTOR BANK SWASTA NASIONAL DEVISA PERIODE TAHUN 2016-2019', '2021-02-16 11:13:09', 0, 'belum diverifikasi', 'belum diuji'),
(440, 896, 'Pengaruh K3 (Keselamatan dan Kesehatan Kerja) dan Lingkungan Kerja Terhadap Kinerja Karyawan PT JAVA (Jati Vision Raya)', '2021-02-16 11:13:51', 1, 'belum diverifikasi', 'belum diuji'),
(441, 764, 'Pengaruh Debt to Asset Ratio (DAR), Debt to Equity Ratio (DER) dan Long Term Debt to Equity Ratio (LDER) terhadap Return on Equity (ROE) pada Perusahaan Sektor Pertanian di Bursa Efek Indonesia Periode 2016-2021\r\n', '2021-02-16 11:14:31', 0, 'belum diverifikasi', 'belum diuji'),
(442, 764, 'Prediksi ROA berdasarkan Inventory Turnover (ITO) dan Total Asset Turnover (TATO) pada Perusahaan Pertambangan yang terdaftar di Bursa Efek Indonesia (BEI) Periode 2016-2021', '2021-02-16 11:14:59', 0, 'belum diverifikasi', 'belum diuji'),
(443, 896, 'Pengaruh Budaya Organisasi dan Komitmen Organisasi Terhadap Kinerja Karyawan PT TOYAMILINDO', '2021-02-16 11:15:44', 1, 'belum diverifikasi', 'belum diuji'),
(444, 896, 'Pengaruh Pengembangan Karir dan Komitmen Organisasi Terhadap Kinerja Karyawan PT JAVA (Jati Vision Raya)', '2021-02-16 11:18:24', 1, 'belum diverifikasi', 'belum diuji'),
(445, 732, 'Pengaruh inovasi produk dan promosi terhadap keputusan pembelian produk di eiger store ', '2021-02-16 11:22:27', 1, 'belum diverifikasi', 'belum diuji'),
(446, 732, 'Pengaruh kualitas pelayanan dan fasilitas perusahaan terhadap kepuasan pelanggan di Yamaha motor', '2021-02-16 11:23:57', 1, 'belum diverifikasi', 'belum diuji'),
(447, 732, 'Pengaruh kepuasan dan kepercayaan konsumen terhadap loyalitas pelanggan ', '2021-02-16 11:24:54', 1, 'belum diverifikasi', 'belum diuji'),
(448, 736, 'Pengaruh Kompensasi dan Motivasi terhadap Kinerja Karyawan\r\n\r\nPengaruh Gaya Kepemimpinan dan Motivasi terhadap Kinerja Karyawan\r\n\r\nPengaruh Pelatihan dan Motivasi terhadap Kinerja karyawan', '2021-02-16 11:33:05', 1, 'belum diverifikasi', 'belum diuji'),
(449, 771, '1. Pengaruh kompensasi dan kepuasan kerja terhadap kinerja karyawan pada kantor PDAM kota Cirebon ', '2021-02-16 11:39:33', 1, 'belum diverifikasi', 'belum diuji'),
(450, 923, 'Pengaruh Disiplin Kerja dan Pelatihan Terhadap Kinerja Karyawan Karyawan Toserba Fajar Talaga Kabupaten Majalengka', '2021-02-16 11:48:02', 0, 'belum diverifikasi', 'belum diuji'),
(451, 736, 'Pengaruh Gaya Kepemimpinan dan Motivasi terhadap Kinerja Karyawan ', '2021-02-16 11:40:12', 1, 'belum diverifikasi', 'belum diuji'),
(452, 771, '2. Pengaruh Kepemimpinan dan Budaya organisasi terhadap kinerja karyawan pada kantor PDAM Kota Cirebon', '2021-02-16 11:40:30', 1, 'belum diverifikasi', 'belum diuji'),
(453, 992, 'Pengaruh Gaya Kepemimpinan Transformasional dan Motivasi Kerja terhadap Kinerja Karyawan', '2021-02-16 11:40:32', 0, 'belum diverifikasi', 'belum diuji'),
(454, 736, 'Pengaruh Pelatihan dan Motivasi terhadap Kinerja karyawan', '2021-02-16 11:40:34', 1, 'belum diverifikasi', 'belum diuji'),
(455, 992, 'Pengaruh Job Insecurity dan Stres Kerja terhadap Turnover Intention', '2021-02-16 11:41:13', 0, 'belum diverifikasi', 'belum diuji'),
(456, 992, 'Pengaruh Kecerdasan Emosional dan Motivasi terhadap Kinerja Karyawan', '2021-02-16 11:41:41', 0, 'belum diverifikasi', 'belum diuji'),
(457, 771, '3. Pengaruh Komunikasi dan Motivasi terhadap kinerja karyawan pada PDAM Kota Cirebon', '2021-02-16 11:41:44', 1, 'belum diverifikasi', 'belum diuji'),
(458, 923, 'Pengaruh Pengembangan Karir dan Budaya Organisasi Terhadap Produktivitas Kerja PDAM Majalengka', '2021-02-16 11:48:33', 0, 'belum diverifikasi', 'belum diuji'),
(459, 885, '1. PENGARUH KOMPENSASI DAN STRESS KERJA TERHADAP KEPUASAN KERJA KARYAWAN RUMAH SAKIT PERMATA CIREBON\r\n\r\n\r\n2. PENGARUH STRESS KERJA  DAN PENEMPATAN KERJA  TERHADAP KINERJA  KERJA KARYAWAN PADA PT. GOODFOOD INDONESIA (CABANG CIREBON)\r\n\r\n3. PENGARUH KOMPENSA', '2021-02-16 12:43:37', 1, 'belum diverifikasi', 'belum diuji'),
(460, 885, ' PENGARUH KOMPENSASI DAN STRESS KERJA TERHADAP KEPUASAN KERJA KARYAWAN RUMAH SAKIT PERMATA CIREBON\r\n\r\n\r\n', '2021-02-16 12:44:08', 1, 'belum diverifikasi', 'belum diuji'),
(461, 885, 'PENGARUH STRESS KERJA  DAN PENEMPATAN KERJA  TERHADAP KINERJA  KERJA KARYAWAN PADA PT. GOODFOOD INDONESIA (CABANG CIREBON)', '2021-02-16 12:44:33', 1, 'belum diverifikasi', 'belum diuji');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ta_ujian`
--

CREATE TABLE `ta_ujian` (
  `id_ujian` int(11) NOT NULL,
  `id_ajuan` int(11) NOT NULL,
  `id_detail` int(11) NOT NULL,
  `pemberi_hasil` int(11) NOT NULL,
  `catatan_penguji` text NOT NULL,
  `submit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ta_verifikasi`
--

CREATE TABLE `ta_verifikasi` (
  `id_ajuan` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `tgl_verifikasi` datetime NOT NULL,
  `catatan_verifikasi` text NOT NULL,
  `submit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('admin','penguji','mahasiswa','manajer') COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `auth_key`, `password_hash`, `role`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'admin', 'FzH1vaQxJrn0ySiHFlH-2124sHdisSbE', '$2y$10$QxJueCmdZ5EWopSuKh6VjezejrHof2UpJegd4MVmIeylrSKnLfqJG', 'admin', 1, '2016-04-10 00:00:00', 1, '2017-01-17 02:51:41'),
(19, '78901', 'dAGam7-n5XiUWdZjhXlv7yOmqW3B0Qx-', '$2y$10$zgjY8JseLwoynsyPq./iYeFxdiNjMSXS.s8bl0k/2z4DFgdqOD/IG', 'mahasiswa', 1, '2016-09-09 17:30:38', 1, '2021-02-14 02:46:54'),
(26, '9876', 'HPodm_lczNoJnhSMWRy-TO2CiQInj6wC', '$2y$13$OqVw1RSsKtgHElkNN6eP0OCSrlz3QjfioVDvnT0MUV3LzshxdHdH.', 'mahasiswa', 1, '2017-01-17 02:36:33', 1, '2017-01-17 02:36:33'),
(613, '117020002', '', '$2y$10$P.wEcL6lRs7HhMEbzd47M.Dwpoyr/oEGVGkWFZRNWPciiCD3djCdS', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(614, '117020003', '', '$2y$10$Xm4u0mMW3VymAi5kk9YkN.TG8LqV3lldq49y.OGuzoDrV0rEE0f5a', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(615, '117020004', '', '$2y$10$mW6ZJ3BH4DWF3cY3OJCylOoiLhe2WEPRtufH4SN5yeR5/r8uOe8ry', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(616, '117020006', '', '$2y$10$kLICt9r1sCOt36OdtcbhJ.7nwIoCNNYdBPpuHUde.B4B0sHvNAMk.', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(617, '117020007', '', '$2y$10$NrFIdFk2pqNPF021utiYI.IZHvXI.xWRzXAjE2XAJpJaXE6Sga93K', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(618, '117020008', '', '$2y$10$gLwtkl1bLQT6sQyj7w.8JOJ1LUIXXtBTPRWEQ/oBacQzkCMnkBjyW', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '2021-02-15 12:37:23'),
(619, '117020009', '', '$2y$10$Aw1xdBpZklzbjZMM/eIrBeKajbP9x/k7S7DoPIhw.oQeOkPFRwYFG', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(620, '117020010', '', '$2y$10$akPwwA5xRwRxqLH8qnh7Ken4IFydP8fr64ZY81fp/BEGrRQUUgyh6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(621, '117020011', '', '$2y$10$8Kv9emMgQWZdQIQ0ggg4AuT1UUkSzXJn5wTnxO4Pj9zEnUFW7AAhG', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(624, '117020014', '', '$2y$10$wEoGm3WU.zusKRO9AeAGvOXRor5qQfCsfg07zld.joUBWzpr6Yb5S', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(628, '117020020', '', '$2y$10$7H0HhANpaZJd1EDdkNxR3eisoO3Q/pBmoUbXvcnlAZ9kzpAAvOYga', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(630, '117020022', '', '$2y$10$f8pudaXEtqE1G18tIgBCcuxO6CLo8x9U8Lx7K5Z4HweIyC0QSVkzO', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(631, '117020023', '', '$2y$10$BATl2VOCDYb.CBPnsmmpaOm.4jHSaB6EmRsHBBsob8bkod3Mt5ezy', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(632, '117020024', '', '$2y$10$JPUoopj336dCogNB/xbrOebC0ab4r4p44h.bFlWkfbZLG/r0.OVzS', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(633, '117020025', '', '$2y$10$9pGrlqic7C9OD.A61K8A7.YFITDfJcg7ILVtzoU689h3XxVPglDA2', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(634, '117020026', '', '$2y$10$Amoxos3vgT445Gd3ZXaw6udKasdU.Mk6lNLn9MCkLNIRLzmkOJzOG', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(635, '117020027', '', '$2y$10$lkSd7S4h12Wyrqib1SWgdOsqi.BuzOXaQgaQ75J.ZciOQ5VXmAiQC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(636, '117020029', '', '$2y$10$kg/QlnhjYcpqzEr9LO61KekwpyLjlQ9vEHP0x.0XcqZ4sQDZFS52S', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(637, '117020031', '', '$2y$10$J.P0WOjskp0KYFQuv9m.i.2ztIVot/qLletjTAUBO8gmc/STahvuK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(638, '117020032', '', '$2y$10$mpSY9qoxYOK0e6JWcSV.UONZByeNjrvPJGcZIJSY5nj5mgqA62VOa', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(639, '117020033', '', '$2y$10$cPFBGT1m5OHmD4a8Pl8C6uTd2lgW9z1gAC5fCek3pY0urqdBUWQUi', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(640, '117020034', '', '$2y$10$aeGRGnU1Br4T6W1PxGsT2ejtTiZ3c8ylr/a4N5Pmlu9.5RhqtnAvm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(641, '117020035', '', '$2y$10$2eLYUS5z0PnQ7hgC9fCcmuoR9/iNoIQToaWigkkB4NoAoYUsRG1TG', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(642, '117020036', '', '$2y$10$WogzUxA4lstso8fVerjm/uDKAifkA/BxfWfv1gb8ZtmbPJxb2urDC', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(643, '117020038', '', '$2y$10$iiJekxB04mt6aE/kxa1OxePo9xunNnnf8l1Lkhuodc0Ql5eogIrry', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(644, '117020039', '', '$2y$10$wyQbP/RfqVH2SDqcQcrKYex20CFFZqGfq3xeukCaFikoyCmacrkQq', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(645, '117020040', '', '$2y$10$L1dXpK6CQKGVGwai1YnBLuB0rrF3atzPs3XVoKp/b0Pdr4pvelgwe', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(646, '117020041', '', '$2y$10$M.jFmANCncHpD8A.yanTj.sOC/11hDhVRREipopiXcT5uSIAFnbvm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(647, '117020042', '', '$2y$10$IwlzR4cx8ScGmiff1UmjjOuKyOgn1BY0TFfB0GG6acp0XQe88nkN.', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(648, '117020043', '', '$2y$10$T0nxnsJFRTETpma6/eMl5.bbI5F6qcn1zlWOP8zgi/xIXEiNSAJ9q', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(649, '117020045', '', '$2y$10$HSlsDXvS9wZoyMQr0A993.3Uy7dztrAuMiddeAOdGHnbROENKPohS', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(650, '117020046', '', '$2y$10$4DuWawmZJkEvCK1fmIANC.c3YiDl76QkZcfRyoBtwa2l6WcdRmGsi', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(651, '117020047', '', '$2y$10$1VlCyPwWVvwsPiSI/ZyWAOqMGoLV3EIxkUrimLF7PcB4t9FpIHHZ.', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(652, '117020048', '', '$2y$10$PVDtEl5dTkvM1vH8z.Hqde/ZqyP3vEevhSgs9ZrP97Iy87IAJCWha', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(653, '117020049', '', '$2y$10$w/5vrs2jsxOAz4N7FTdeiOJFDyNGuzGso87z89dam1798iBYyTdsy', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(654, '117020050', '', '$2y$10$jFYBycVhHI1OZMAe0OlrYeRbW9Mocl8pblbQ22fjKiPQLAU7xfyMa', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(655, '117020051', '', '$2y$10$CMDjtoG3qlODjm3lBmbmh.X6Eria9i7aQvZWsZWEU7y0SDuSMVaMe', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(656, '117020053', '', '$2y$10$V10ktM4EFXQ9A9FHcd91ZOaeNM81IvNRIMHLmzWkiYShLNRpQJ9Ke', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(657, '117020054', '', '$2y$10$OmzTxcbXY.ierMofq/V05.QJTe3YizH8jAGAscjQFzezsY9arp5Ru', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(658, '117020055', '', '$2y$10$vv2M/Nn6EeiOmfxov7uFqOf9slUftjenEXKcjf7tukCwbyJh/J7BK', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(659, '117020056', '', '$2y$10$TUziCN4AWDsauYlOa8NIteKRCpjOa2DCvD3sZQ8hwTSX/7dRad4AK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(660, '117020057', '', '$2y$10$.QhllyAvXCnaXgbGYIQJwu4tQzCY5xtmvyz1WxxhLfyEQ2p1QjGIO', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(661, '117020058', '', '$2y$10$rikBrRqEIgnN4BdREo5PJuaOwWRkprOlsYsBL2/aA.zQKNeY9YqS6', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(662, '117020059', '', '$2y$10$zbQe/vSzyHDcMJdDt0xP8OI3Upjt/eC1ACD71das58ulWREGXoLUO', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(663, '117020060', '', '$2y$10$0EJqsai0tLYWyuHC8H5hc.PZAveeM8IiH4U9SuaC4fII4YzZYSrfq', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(664, '117020061', '', '$2y$10$uyZDqn0HiZEJUzwmzaU5ne.DP8Q08fCkn2/zssX2wLgI5mZaXFDU6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(665, '117020062', '', '$2y$10$cldZ6/7Gf2Mnjuol6HM33uCYI9.dAN7LloPUv3ofcVJ2NEa7pLp7W', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(666, '117020063', '', '$2y$10$Hj.ZfjhLXUHYsGSuWqRknOMkika36xF3iu7cNbYobP03Vs90p2/52', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(667, '117020065', '', '$2y$10$VykzadbI4LyOYC1oExvdvu2fXOXDmLBwvGfCNzhD5I/pB/DLMMkXG', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(668, '117020066', '', '$2y$10$n2jK0AswY1H2NJpHvDZ1SOEGzV1mr3cuVfGYTWswmT8GfvkCx.Jni', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(669, '117020067', '', '$2y$10$BmcEMoYGSEjNkzUXfMqMhO2fKRn7MKs2MepPRzFvClrFSCEkO4wrK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(670, '117020068', '', '$2y$10$SRvmMgst8Sr6HXs9Skq.L.Uw17wSI8p4jv6mmoHh240cL7PF.zqEm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(671, '117020070', '', '$2y$10$dRRm8iZXRfn.WhvH48.j5uMVT2IlAzfPSfmbeKFckCF.5pp2kl5hq', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(672, '117020071', '', '$2y$10$5/Uu6H6m7M8RNn/tuMZW0eVI4rtLG8tEPLXlY9QnJjoFcWVVpJsyq', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(673, '117020072', '', '$2y$10$MrGdHDjyM/isRmAqoRVL6uBx4nxLcrsoUgjUROiPxVpIFgve6pFhe', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(674, '117020073', '', '$2y$10$JunqL8NpQovfjoiQzF6gwe9GY0VVtzhc2pBDxBQwIRSpP.0uJ7pPm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(675, '117020074', '', '$2y$10$aTDqz0ktVhJ5mtoAQgLFJ.ucTCgmdul9wZKKNgq4zXQ6Ts.DL2PcC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(676, '117020075', '', '$2y$10$s68jBdCcY4Lyas7kMHXvi.iyIcACP9fMzF389ti8yNJSmhyF1jEay', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(677, '117020076', '', '$2y$10$FxtD6ytnAGxc6VVbmh1SCegg6BN1.tdLiGBdcObzcZuOHnnrzZwR2', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(678, '117020077', '', '$2y$10$5zE5wbCg.lJAhmEizt4NCeXjhiw3e5vRmioOeMFdv5YICLRXFVm6.', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(679, '117020078', '', '$2y$10$DUn1hcauCaCrzkE/0X0gXelWsrwrdIBRhdohDgJajbb6bK5sF2w3m', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(680, '117020080', '', '$2y$10$akSxLYsr2Ca4zo8UDtdsfeFVWgMJWa6VbnPJO2bi7rNScwxsWmJ12', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(681, '117020081', '', '$2y$10$/N1KP0YhO.1ESd4ZjqRzAenrVanWHpereBvR7sdQmA398..atD3X2', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(682, '117020082', '', '$2y$10$Oju9vYsxPiwYZOdIRxcV7OQNQmuiBgrOMn7nk0vSAytz6pC43a6A.', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(683, '117020083', '', '$2y$10$5iB24eXfKXUFJYgZsd5iCuId.DJP8KKdq7Rt/OcJGdrB8eAV9L.FK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(684, '117020084', '', '$2y$10$dpnLnaQqE55deT5YWc.gBuxwc840u1FTfJUl8g542jHJkxDY3EYC6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(685, '117020085', '', '$2y$10$dOdudlly.t5qGDxwSreW7O1IUK0VqZ6Em901v8xyLN8lEXYFmCFWu', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(686, '117020386', '', '$2y$10$Yqjo3KnITc1ytmhfYlJngOUBKx4rvvW3KoVaKjIv9dpzpczAZSX92', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(688, '117020088', '', '$2y$10$pgi98DdGOLyZFTGZqqpc2OsFZY8Gly6yByF/OBiUyncScv6kAEuF6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(689, '117020089', '', '$2y$10$t0ErknF3RD4HdqecjGuEne1PVG6Sh.5bclCqQQnXpKoLVj9RzTC.K', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(690, '117020091', '', '$2y$10$Vn1aZPNJUQBXtQnXXa9nO.IzZMzNYRWT74F0of1kRPSrajP95twWO', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(691, '117020092', '', '$2y$10$.zd/ADqutOcuRdHJbZ67N.kuFSusCNYeufrlZqJEFNa44YwFibBnG', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(692, '117020093', '', '$2y$10$bReDh8hMd.an88MnDTXHm.YMaf1z6l6LtRpjZIaARiXZa4X4.Vhsu', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(693, '117020094', '', '$2y$10$/.dEH8oYridtoCpCHULf/uh3/wBBDdj5kJaH.lEsWHup1rkmNvJR6', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(694, '117020095', '', '$2y$10$SL/Efj3nQ/aH2YomdIYLGOQzRxLWIyqWJsrwO/4LvDqRraLMa4CiS', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(695, '117020096', '', '$2y$10$P.W4Z9oxCcRHOv/iFWXuTeFGc4DInoSucUc59ix4TfkRRxGROnGRm', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(696, '117020097', '', '$2y$10$M8N5jvxQBGA2o.mtopktDO1NjdiUAdH7N9cfpSvI9tJcKwFwRjLkC', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(697, '117020099', '', '$2y$10$H/W07gny0BWuA71LbTg04emeYzS.B78fnszqk8Llx2Fvw8x0laO4q', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(698, '117020100', '', '$2y$10$4AmJ3ujMphgTbI9DHUgtHuYXOmqB.L7Fsw8CFPgRXJZflTQxvDDBG', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(699, '117020101', '', '$2y$10$wjpEcosx5AwnNWFM05rXLefY2LFRvDfmGxORxlQLhFx9v6Ov53r56', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(700, '117020102', '', '$2y$10$QdXH2tTx3Oc9z6guT.j6x.T0dWdDahHRmf4PhHWGUqbAwnwokn95y', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(702, '117020103', '', '$2y$10$ioisObuKulMTmXojRGLy3OtK6lxn1lOIWASbKkEhR/F4i6hptvEwi', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(709, '117020110', '', '$2y$10$2sZ14pCYbLIyyGpu7lb9DOPJKJ7avs6UIC9rxDcJzgEJo0pgiRd9.', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(712, '117020113', '', '$2y$10$EBHFBa7I3M78fLzTXg12G.FRqg04jB..0i9YwGYyihuwsQ5WXF4k6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(713, '117020115', '', '$2y$10$jc7RpNGNhK5kN582pvhbHedzI37xTeQ9BwQIeZD1ltwKu6GEj1Yhu', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(719, '117020123', '', '$2y$10$6N9UjHYEZvOJfSjr4kMMx.G7L7d1YojF2e8Om52ou0b.//zmm3Wmu', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(720, '117020124', '', '$2y$10$7kgPnz9/cJITQcWkboRsteCjllLOtsER5yQljEdAnUQ8/YqcpDC2K', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(723, '117020128', '', '$2y$10$e/rjXnqQvclhLPnj/PILSO9nyAbTQWmjhjIetkHIH0kRchLGFGmzi', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(725, '117020130', '', '$2y$10$6pqC9B64xcAN/8X.OCkyFuXGauda2Mx8PeYioCrSOiCIL66WZ55SC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(726, '117020132', '', '$2y$10$VIizyE73R3HqgyzJ6XPGAukzYuaNUalWabTd793OdW7QMGZzbIU3a', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(730, '117020137', '', '$2y$10$UD8H1VsqvqgkpTB2AqP6k.LJjqLrDShin9VC22iISSC7A/S.7CdI.', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(731, '117020140', '', '$2y$10$Qo1mSAFlIWhzA4uNvJwHjeMMu4RfBwLzihXcGDuPebCNPhYCUnlgK', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(732, '117020141', '', '$2y$10$QCOOTh6OqG6ttVja5pErau0xL4r/BVLb8NDXB3c4weAe.zL.ZC2r.', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(733, '117020142', '', '$2y$10$UAI0Gax5mX0dLS0DEkJI4eufXwC.8JuqwQBslOPBMDY0xECFwOzTq', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(734, '117020143', '', '$2y$10$a8E9MpIVOAOMrg6NU/IyQuDlFZzHWcYunVrbWQKWgZMs7OSCLtXly', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(735, '117020144', '', '$2y$10$btgpHARQch3U3u8a7DN3z.ySXU0PUlmq3qFM9/USAEZ2knWuaQegi', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(736, '117020145', '', '$2y$10$8Ke9mVxmSgc0TJcaewpKu.Tr.aA/wkrvLIuk2azwnFUs2Eql8HXNG', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(737, '117020147', '', '$2y$10$TulfaF5EieHjIOl71FCIkOYe2Dwy5b14KFHx2Gl8UFGKy6lS9L7US', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(738, '117020150', '', '$2y$10$XJ62p1gJdaTVa4XRJ5lIuuY5dWQ1uIAkmxHShVSHRzStdtOIibVnK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(739, '117020151', '', '$2y$10$MjKmfMV0h506yNOr3Nlz1u8dBXD1VwdYiVSdqXqoCHj48DJJISthm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(740, '117020153', '', '$2y$10$LlLctEhgNE6cNq3l0lWDhO12.MNJgADr8hDk8cBH2gRPVgQiAaRXC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(741, '117020155', '', '$2y$10$gJlArxj1f9slSY8rxYHbseuRVQIx39QbaA6lj7VSxnBZKrjNZybDe', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(742, '117020156', '', '$2y$10$sxbWJ1CyTKPI27CCrwY1zOzd/5AM3aFkchEJ88MCHMC4V6Awu6U1i', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(743, '117020157', '', '$2y$10$1n9.PAE0Qav6Pu8WPN3gbOPTNAEFSZPCTk3FeL.hMLldRTvbrwFee', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(744, '117020158', '', '$2y$10$CSyJ.XdQSoFFeGKMRyVsYeENm7G.S23gprU4CkDlplsq42kceYqHO', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(745, '117020159', '', '$2y$10$tpcrQohuc3TV5OR7b099JesAx2fECj6cEa.SfKtgJarSfANYIBpm6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(746, '117020160', '', '$2y$10$yHutao6S07DH9EKOoReLqOfF2AACN/eq3Sm6/8uYWQxxz2zYiBu.m', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(747, '117020161', '', '$2y$10$QzgRf8Ni2Pf5cTmt28QIk.fsVmGVOFtToA.NiPX6EcGIKEQaXoZCm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(748, '117020163', '', '$2y$10$JicwLpTIxxaxkexvOpv6jufUSVBdVXcOpd6H8zjXSebruwuNTv9xW', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(749, '117020164', '', '$2y$10$UH7xbI9VwY0TKp84/NuiWewtBvuEOi8K1rEzDW/RpIV1qQH0dREFC', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(750, '117020165', '', '$2y$10$x589VhQzNkBTqpBmvfe6GuNo/pKCopzj9dbxzPpqFC7TvymIlzRuC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(751, '117020166', '', '$2y$10$0dkhYiOhCK88P/wMrxU9QuJffXEtMCAbbufMk1oHmH4B6ErDTU.MK', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(752, '117020168', '', '$2y$10$x6DWrW8Vep.XGHG5fs8oqu3Dw5EZlHGnTGCN5T/HZ2GnqgzoNKVhO', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(753, '117020171', '', '$2y$10$goUf8yDv..xVa928Xhw0Kes4HnkaJgsoEy7.Ncp3vzZhucfn8WsZK', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(754, '117020172', '', '$2y$10$JJ2.XvHviCrRzd.EwWpNQ.pnoFioaY8m791BG9pM.RiCZVXS1K5GC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(755, '117020173', '', '$2y$10$qhoIJ0XK58F8KtC6x2d1l..h1Jx3I8UCjSAUlMCvzv/5um0u9h6GO', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(756, '117020174', '', '$2y$10$QiPTCL9py1A7c2JYJrsvGOuzYiA39cZTNffo0DmzFBkfn3Fdc988u', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(757, '117020175', '', '$2y$10$k2e63s0DL72O77.JP0wvcO9eT/WcsUH.bRXVdwPKJQPjNI4iEyAEm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(758, '117020177', '', '$2y$10$E8g5m7ffjHfHWvK2Hr6EcOtd5Q1FM4Zod3Awzzm.CUFepGVx19euK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(759, '117020181', '', '$2y$10$SnSAs/UpfbkyTucs8vHM4O6kIxu168ZtYxm4hCI.e6oOfnEICccjK', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(760, '117020186', '', '$2y$10$MNMoPSwbCPA6nCYUDZMbxemiP.7hyudAf888vxMgSRx3T62Up9GuC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(761, '117020187', '', '$2y$10$tAm.bTsLoPAlyOVsMTvSwucga1HskkCIXTPDcPTAcerECzCVQMlhC', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(762, '117020188', '', '$2y$10$oXCw9S0.KCmLZw9OivHDQe0SH8X3R1gyktygZ8idWcC/6fye.D60G', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(763, '117020190', '', '$2y$10$yeURaXqNBsdvmQ9wlwrP2.R/tMqNKw5BdCfnRjM603hmE7f67Yl9S', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(764, '117020191', '', '$2y$10$dwZArkzlEY2PNBg8IP4yDOclvcTpCBRdrL5LzJVzvdACXXZj.7cyy', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(765, '117020192', '', '$2y$10$3Y8OhzWQRHRhaR.ip643Ru4.ML9w11ub8nyVabE2ceHQEJxJ5.UKa', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(766, '117020193', '', '$2y$10$ntBXPoojD4jVL09Hsnn1A.xuF2M9jRBqfl8hWdfOIq4c0nwkMnsoi', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(767, '117020194', '', '$2y$10$Jvy/Z/wLJN11lL9BYXAFguD6eDVOr2/ukudjfYzkLXdoXpge8LuD6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(768, '117020195', '', '$2y$10$aUl6TlwtPeGFkVLIitkAleoM8Qvf/g/K/qTK1RU0XIPvMEyQ1.Hji', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(769, '117020196', '', '$2y$10$/W97GoZjQoEYivpoKhjjQ.YWukHmBWm.BMD6FWvwHTauxIAy/o/dW', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(770, '117020197', '', '$2y$10$8OR1GxkrUrCwVsBlCjIeFubPBz8jx0oHde9BEAWUjx0ApIGXzZCTK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(771, '117020198', '', '$2y$10$.BFBJUBlbhlymnyhb7.t/OO3UHj5Ap7g9v5RqF0oZWOofhOCPKmPW', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(772, '117020200', '', '$2y$10$LuBmyUWt0rcud4HWZNBKleRNT8nyVWwm0OmwIE9lQdRegBsh4qVze', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(773, '117020201', '', '$2y$10$FTsHCtHzNspiMLXh7wFQte.GG4xIobtnSiAKxC2po2thHcBZBWsMi', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(774, '117020202', '', '$2y$10$Rhe7kPRtDz4/ELK7Stx2hOpzcGa9trHs/OT3g2MWNqNclXit3XazS', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(775, '117020203', '', '$2y$10$zVIsMeOz8gn1cqLzI68kJ.k4kY6wLnl7G9ONtoN/yvjH77O2/7ppC', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(776, '117020204', '', '$2y$10$BDSL0FDdDArVHNRt0qMR/Obu6yxp3wqzv4DXMzitRL9BYqEPezWNC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(777, '117020205', '', '$2y$10$3M4ASM43yFEg6r4lnHyeXuZ.6beR0Af8zr/UNk5ELyCF2bOa6eH3q', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(778, '117020206', '', '$2y$10$AfzVP33ZsTl5vD/V7Nuqnu57es7RzPTdI/m0cvoCvmX1ZAmQ/QkmO', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(779, '117020207', '', '$2y$10$7IOlDnvbJ7Rm8308SeI6huYfsadLkv1vkcN9vR7qPAJ75hBtvX/Je', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(780, '117020208', '', '$2y$10$X1rILebHkCugNQ5zwstZW.53p2fCRDUasc7bNAMqfYkNK1jBaC2Ae', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(781, '117020210', '', '$2y$10$WmYOFvN.iWMduE0hGyU00.M8os7MkRxWQM6Ynimt8xLD/vAicLKzO', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(782, '117020211', '', '$2y$10$G2UxCFhGGMYs9y0KftN28OYD3HsFyR3KZuSTwR4qQo.Jc7FTS6viC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(783, '117020213', '', '$2y$10$InI2/EHF.KZ2ik9DlGenBugBYxDDiipaK11xHEOoKCNn3kHBKHkJm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(784, '117020214', '', '$2y$10$3W6iSRM5FSy2o6gy0SRxt.6.ZYgIGjj8eVlH5wxa9nbVFrxkNC7zy', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(785, '117020215', '', '$2y$10$4/r9yWiOoQ4nwq1jNwrUFOczMjzUIRBkcihrbyzyMwM.u.y9hre0u', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(786, '117020216', '', '$2y$10$L0WJ1/hebIRaMPiLj/Qp.OeE/pL0S8lwkNUSWfYiFwB64zWoQkOaa', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(787, '117020217', '', '$2y$10$tCrJKjeKy9nQL2zcf/Ids.EmZltSUtQhIY.AvWx9px5.uddrNTUzK', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(788, '117020218', '', '$2y$10$MNLgo0cL/sbxgAqyV5WFQ.C5v9QaCNzsEgDZJsrpeUEsiOrjqT.je', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(789, '117020219', '', '$2y$10$9BvlJx2GPo3jeb4m1s1NW.WUYejVH/450n6Qk/9eIwJ3vUFLPcLem', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(790, '117020220', '', '$2y$10$oLLwO62okPDlC5mOB4Sp7O7pyFOk/mq2WFlt.PJof.mm3hEe4cR/S', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(791, '117020221', '', '$2y$10$aRkbLOe/XGsWsHHXcCkJoe4x2W/VtCtXnrbz411fdOho4njTQWwgS', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(792, '117020223', '', '$2y$10$wrd4ArXSw81dQaEwtqTsBO4wyMnrvFKD/52CnpxWhfj.IQW89qbTy', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(793, '117020224', '', '$2y$10$ynrdEsFaaP69ldySOHkT0Oeo.eOVN7Ahsmgn/H0YNZSYiUW78.4eq', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(794, '117020225', '', '$2y$10$KuqUlYO70PZ3ZgQWvlsUwuy10QapL1v1nFyAfpBBKPcKvi3oLoxEa', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(795, '117020226', '', '$2y$10$YmnPMMD8BIEzUxe6774WE.54PidtDqP0vxMeL3/LNNBojz4GOwDnG', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(796, '117020227', '', '$2y$10$aJHzZyiX8fQg9QS7GLaFBeohp7ZKVr.tlBQN728nrph.JHLZypdoS', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(797, '117020228', '', '$2y$10$f5VbyN7AK.5mUOyuaA.Xt.iGn2utWJh8aXS0S/NMzmQJixwjLxFnC', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(798, '117020229', '', '$2y$10$PXE33AnnsgDEFq79g0XSzOXd9OJUBzv7/huHweuR3yr3EIbDjzQqK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(799, '117020230', '', '$2y$10$xpwlC9HBFbHfE7kG3WyfkuoC58BrisBr9n//i6s1fo3UslEy/tkXu', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(800, '117020231', '', '$2y$10$ed9Ry9VlWXDGdHAc2UYCZOOEA1KcIjlDTSPe/u8HfVAP/we873aD6', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(801, '117020234', '', '$2y$10$ZoZu.7jxD/WQROD4r2IrtO5GcM8KkmbgM//DmA9oP1rrN3Z9x1v.6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(802, '117020235', '', '$2y$10$xlPUkVxQZpHoKrpTV0qVz.OGLKhEqxqubqiujnscAiLQNNGlW.pvm', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(803, '117020236', '', '$2y$10$HySWB4kl/VGbwokzLm.SauxokXCeaIf/9FZeUBF11lYlXhTU/QgJm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(804, '117020237', '', '$2y$10$9ZmIuIyVF8pHR.l6qO7.5eyMhyb3y9hkPFLVMbzv1apV8dXdDkyc2', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(805, '117020238', '', '$2y$10$L/0rVlJ2B2zympd/7s1aEuTnAsfoNNRk5qwYBJRYqa3Djd3aMaHTW', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(806, '117020450', '', '$2y$10$iOX4yYyNVJlL5L4XZgUcPO7TELwTQCxhL0s4UrRkXxXaeGC7HSft2', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(807, '117020240', '', '$2y$10$K27FJXQZJlF1F8GNm2zJt.SZAmqj3n6q6MNt6pN7MMuD4ocEsv5dm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(808, '117020241', '', '$2y$10$7WDKwrx.eeSihwMch14hV.kHiK58HX81ZQFrQ5A9iwYdU27XuWgBK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(809, '117020242', '', '$2y$10$8TBwkSLSu/Eyn3erQwx/kuU8XoSzrA/bVkg29F2CpbN1JBxYWfbda', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(810, '117020246', '', '$2y$10$HzXdgtNCHob5b.To6yMVXOwlKDek0qYRaFPEN/.//qcek8p88Jhpy', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(811, '117020247', '', '$2y$10$jU5pTlHYIcxv/sxLo0cvsuBwqIjI.Xmly.tmQBEqmWhF18yLog79a', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(812, '117020248', '', '$2y$10$WKkva/Xpmf.fyZpgrjckbeQZMXiWD/BqtWCuQU82aRhrGJZbax1Tq', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(813, '117020249', '', '$2y$10$z3s0Veb6Z4S9YU/WNVEvgu7KNdbbKJ/.od7OxoJgYJ4EOlI.Pk2X6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(814, '117020250', '', '$2y$10$oZ0BISe2P7RjENbt5OkvSOafkxzuRnzHRno.ZqSnC94XEsvLaGcYG', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(815, '117020251', '', '$2y$10$bC5Jl2p3AtcYdlAweteu6eF1c6XoBtR55yHBDqDzcOlqLywpJIHX6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(816, '117020252', '', '$2y$10$c25VfIz83T/d0INs2bEHHOd23sdFYSj2ARxSdAY0JoyonoWoAwqzq', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(817, '117020253', '', '$2y$10$V7DkO.v7u/EAxVWODXKYl.5E3PyczH1k8W4lHz0q9oloOBz7.ZDmO', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(818, '117020254', '', '$2y$10$bwz20ZQG7T06FYhR5phLbu8chXl8nIDw8ETvtgK.0sr5sXjLzYrNO', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(819, '117020256', '', '$2y$10$X50ne3ehjwRDtvFrHKwJbucYkGbMFv8VZAY.ZTqZTNyzOVyVSNbsS', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(820, '117020258', '', '$2y$10$vnROrVuUa5TPp3LhZNJZ6.jzZZ3evOeYRaRoSy/wE6kPfDWIizBzS', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(821, '117020261', '', '$2y$10$wGebX9aUi8YIsX/2qbz10.03O1gJZPwBKslob04re0MRKA.c.4wHy', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(822, '117020263', '', '$2y$10$K..UpBuQv.cKhs4/htgl8OQ9Xr6AX.W38DJx.on/aj0WGSeINLoyK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(823, '117020264', '', '$2y$10$I4YpsFOjYrUhKU2H0AlU0upQCmfF1CPYRGayiNzZaNJfJXdPSm8bK', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(824, '117020265', '', '$2y$10$PPYV8pthUBPkGI0TSoLBAu9Mrp4gDmVRVnvo6hhS.VBLhFcyCccGS', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(825, '117020266', '', '$2y$10$80Nz1.YZ55euhzKErhWWY.fyNqB2BXitrjuuan74tzysaiZ2ccahy', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(826, '117020267', '', '$2y$10$Klm7fXjoHXRIPwtoHhei4u6tgvlWb7q5TbSIm8J4TA/YONj64syzG', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(827, '117020268', '', '$2y$10$FHroT/Np4UyRHVhsR/pC5uJ6VVwz7zYS/01CDWlHJZAALbh1H/wyK', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(828, '117020269', '', '$2y$10$ZpKMM4apUaCts0XUqKuP6O04uAJbMGvfi8pcv7DgXo8tQ1eYwLx5m', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(829, '117020271', '', '$2y$10$Q27lUKsBVC54tdfnRUT0e.0a5Et/7ljkYeMNkVvL4JvkG9D//eQO6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(830, '117020272', '', '$2y$10$Fk0XUuLdibd5pvp.lNkJxOAo0cH4MJOgRaGv6MytJiJ78tDiM5XCC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(831, '117020273', '', '$2y$10$BKkIABV0zhc2yN.Yim0I8evVC.KG6eMMpdclGyEvpwcj/SKiDbleK', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(832, '117020274', '', '$2y$10$Yd/3nGHbLeWLTn2ccd9sx.PFganDJOS1VQoMuByuLzXffI/nj0zx2', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(833, '117020275', '', '$2y$10$D08Ciecim/qDJSul6LYbUuSyJJDufkURp0VSUhVRgzNK1Kg7rqlJm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(834, '117020276', '', '$2y$10$PaWGv0vl2jgMStnOkHhAK.45fzxB8RS9GJb6ZaXVL5InqPpCvggea', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(836, '117020278', '', '$2y$10$spU4az3d6qSjcxSbilI6kOyVoLcQdHVKCUHV9/0XZumFmXRTny/Hq', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(837, '117020279', '', '$2y$10$FUoCDQkcRVxZL7SoCJvE6uv3Kj72T7t62p0sifO5qQ6HWHl59PO86', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(838, '117020281', '', '$2y$10$HDFxq2iv/zH6lv7duw6nEOvAIYwYjgUDkSyFCEEUjwd7vGxCDRLti', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(839, '117020282', '', '$2y$10$dg54XtTYfNq0mUTGnz3hIenO5TdS9wGkW8kW8W9NCFOS.V6XOYCP6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(840, '117020284', '', '$2y$10$RAxSqtPLgm5kG5VnRFj3nuhMYGzvWEw6MZi383Py/FyXQrwIz13mu', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(841, '117020285', '', '$2y$10$Ln5a9xJeFNmS6XufzkRqpuI0qrhKy9I6mLVUGI9tWPYYdGrZ0PZuG', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(842, '117020286', '', '$2y$10$8/vDHoJkjKN1taV73CA6VO0sBEpyqVvJfEPA5okcX/giPoZBXB9au', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(843, '117020287', '', '$2y$10$yZ1jYz4OuY8aE5614KlXNOq6k12Zk3Cn0y1f6Enchw0/RksbQACV.', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(844, '117020288', '', '$2y$10$Qcy06VzZHjrp6KGEKSBIu.p29lmohv0.K99MgUMaLXcmN4G.LW4T6', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(845, '117020289', '', '$2y$10$MH2EJ54wLVIQP1KuzmOuKuJ1ARN.hd2yUDkuz.zW2qq6FGylCVhPK', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(846, '117020290', '', '$2y$10$JFPO0pgxT/yVvLrI3DRD9OMbY12YuBVYKyLI8G01KvXsomkyq84Dq', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(847, '117020291', '', '$2y$10$SFjMmSRm153I7qDG4ESfwucp.ICV1FMtzPhTd9lFLmGXxjgNNRwGS', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(848, '117020292', '', '$2y$10$/yNc9uN8l2gwEXXsOoi1Wu.Wgfk4FRcT9Zl2n4siKF3V1CfJ7dv3S', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(849, '117020295', '', '$2y$10$N5gIETBju5aEDZMyg7Gsv..FvfV2K0AGFo58YzkaieEnihHKwCAhq', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(850, '117020296', '', '$2y$10$0Rrnj1cEjsc7ST8r7bWIxe9n2MVp7UILrVp3xFIg5KgVG4b/n6Az.', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(851, '117020297', '', '$2y$10$LiIIA2Xan9SHc36YTTGEd.ubDjMQFy8kzHXld0N1q7E3sSmWi4Uh2', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(852, '117020298', '', '$2y$10$OlsdeN.RD8z4te6hgH0gLe8e2mdD8nyM1O9xbCTF0uUAG.AhjVZUK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(854, '117020301', '', '$2y$10$btUm0GjeMhGbz5QqZCJqtuOkdgZjI8uYu5nloedaAmnRZfdI1bZ5.', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(855, '117020302', '', '$2y$10$U/FBIFLRUBuJC7jh8zpeduXeG.o7XK1bEQ39VDwsH4rTBkXqlwVJm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(856, '117020304', '', '$2y$10$zI1QbAU3Rr79i.xN.gIcS.jcv7mir.anDdqZcaMF1NR2JjbsMix3S', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(857, '117020305', '', '$2y$10$jNCfzyWuvvQ59VPQ05t45.Hzf1fmGWpIgPW9/sWcxYoFjGXYyC0vG', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(858, '117020306', '', '$2y$10$mzdfQvFoPwovqzch9/Y4.OK9vm2udYC5m.EZGSi8K8Weq.vDs2v.q', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(859, '117020307', '', '$2y$10$BNfyUtJYarPkgM3J9tSY9eIkgmkedhUYqqeAWr1DrTYXjvuiHG4ey', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(860, '117020308', '', '$2y$10$F7117DMUQOBb745zoQb/u.eIk95ZcKUV7vnYlYY88ARrWCBYla9BG', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(861, '117020309', '', '$2y$10$uMqeyemyU.i4aWpq85qpDubI84dWc1pW3jLpgb8.8ezJc1AFBzdgy', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(862, '117020310', '', '$2y$10$0J.RHS7jRyjx24ZRtad/4.Q4R9ZbsNqN1ya0EELRSTCKrw13F2Ng.', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(863, '117020311', '', '$2y$10$inimfxKXbYP5bAetW3V.pe28aYnqbr8lTUaiOicVUm7xO4fmBt692', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(864, '117020312', '', '$2y$10$o5fBfmLRuug.1OLDGzWzIuX53nc1r23kil.SKtXCyHMvUaejn334K', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(865, '117020313', '', '$2y$10$wK1xyFfNDtO9BzJeOTsN9OC4WkPThA1VvklTHNZDKbAMus2uvUm7i', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(866, '117020314', '', '$2y$10$LXLJxNdDJZJvYpZSTjQqLOCMRzp5j.5mSB4kUzleFFmnPJOkkmidC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(867, '117020315', '', '$2y$10$gyqB4CC3O/M1JaLMrWig8uWcFb4DSwe.Rm5C.QTohSOpwvg/qUH62', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(868, '117020318', '', '$2y$10$lWU4f6UKQcvbV6LiN1T6jeKDGXdID7GotbXQINlBA6e2q99YyukPC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(869, '117020319', '', '$2y$10$UGOcxxe9MCuhVOsjBxl3W.1oau6Tcjf1oUEm8jBPtang0PsSCnbG.', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(870, '117020320', '', '$2y$10$FYuHbfJcxyD7KesCFBGTLOrSJOnzLgiuQ.Sfuibs.amO6dGGPnjXW', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(871, '117020321', '', '$2y$10$kc.rtF/pDLt0elw1dtycee0oNVfPvHy72Q8JjWUpJsTrqftW/b1Za', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(872, '117020322', '', '$2y$10$fVWvMAkfBzILsU0d64kNiOqwuH.rtz0JiNOfM8NqowjEG4NKCA3a.', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(873, '117020324', '', '$2y$10$ZmIRwipDMdKmhNF3XTYTR.Nx4cJutnU6kAtkgaHj8869teYVgLqVu', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(874, '117020325', '', '$2y$10$VJt03RxCruZEdc3E.LTJO.bhuzaaC8bIbhWSiXKRNweA3rPz4UDmS', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(875, '117020328', '', '$2y$10$6ALJJFFirCfUSgRHgIIK.uW6thxdWjIJcQW63hI2Sg.9SowfW7JyK', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(876, '117020329', '', '$2y$10$v3LHebgCGlmjfpdd5LfUP.5l7XsQmAQH8SduSefOvkdQ4c161NJSS', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(877, '117020330', '', '$2y$10$4Vd4o1yCWd7Tt6SqaOzo7eLdzO4DNBPveBcl03p86BplG/DnzfW1O', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(878, '117020332', '', '$2y$10$xum/cJnOnjW.glZ7gNSQQ.o2LbPYjfAGmK4XrpJNRZKpEiU/062Ly', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(879, '117020333', '', '$2y$10$npo0Iakrn.HyphbuAfUjRutPR06XJkV1ZJwYPj2YgBFXk4GZPO.ee', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(880, '117020334', '', '$2y$10$KCnHomS540syOOUvJVFoDOw4f99dZsqzkdPeRh.AA5hee3c0X3ng.', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(881, '117020335', '', '$2y$10$ZCNqsk/WGR0TgABWvSrSUuoV7c5cWhUQXOs97z2SUfyUjz7Tdzd8O', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(882, '117020336', '', '$2y$10$IjoNkvtXfHzEqugoJE7mOekEWB6Fbz2uYJNFzLbp/Dpf36ud74EuC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(883, '117020337', '', '$2y$10$CklJOGHUNDrS1FIh9rbdR.k5AlL2T/Hd6XwhSXqEFIWZZgUVpZKM2', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(884, '117020339', '', '$2y$10$qTuJyvskdWg3uCbEs29Piufdf58UoIvARtKrUEl2ZkxfZbdFYHpce', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(885, '117020448', '', '$2y$10$OiUqeJsQrplatc13y/coxeHwuETPjpVNC5.Onj1rfUumamm70oyFG', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(886, '117020341', '', '$2y$10$droBSK13gWX0j8FUfcgnSOnftAbUBRVCNFmr4wMDRHbVa6qXk7DIa', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(887, '117020342', '', '$2y$10$Do.ijZZwVVttvUfFGTQHRukh6tQKORioyj7nNBK1qtGaoIsd8ymWe', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(888, '117020343', '', '$2y$10$iBacuKDxre2uevOIMUjhReUSUKL6B2fs./5gpU.TiFvwPOmxbtAZi', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(889, '117020345', '', '$2y$10$gI7cqsZTXo2tu6ANmSXvfeCoccTTqpgGk/buF../wXW2It9Mj9xVu', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(890, '117020346', '', '$2y$10$zUTSZD5tp3D.qanWQ4Qgk.lZR7gT.hJIuhScccShvFDBqDf1FalCS', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(891, '117020347', '', '$2y$10$dqqL3xXL3.Vu9Y8O9M8wxO6DNziJH6w9blBQ1DX.1CUm05Ugc9glW', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(892, '117020348', '', '$2y$10$vgiFu4dPAbqnHsFpmU0JzuX9Fi0cOK.b744dykkHtv/E3a6a1Qs6G', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(893, '117020349', '', '$2y$10$jPQrCFNePk8lpSjYVIYGneB3qUnH71fgaLvzRyff0TCw7ocBkmRRm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(894, '117020350', '', '$2y$10$DV4ebwyTunWyn6BZi/m6f.VkXu0IVyM7oUO72ehWLzUjsG0VZ3RKK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(895, '117020352', '', '$2y$10$/SLGsriq9Cb4WOvikPt2puB7iy9VqU0MoWuLd6/oHS85gvNWU/A/6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(896, '117020353', '', '$2y$10$.dS.5T52BhC2d4LKSpWf1ucdi57hp8OTm60iqw8bjy6oXyOb3wp7m', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(897, '117020357', '', '$2y$10$4yDhsh2kH8hoZUgw6yPntOhTbBFFrzXUJtFnwunV5ThDzpCvIHrLi', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(898, '117020362', '', '$2y$10$u/Zefo3jOqRRTDPvcEsvPe3s3Gqwzi0ZHCstpm78YuQmR8cUcR.wG', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(899, '117020363', '', '$2y$10$U8SUmlf9gaMLETKMr5gr2OvLcGHGDPhTztQglUUNRxkPONn1q4lTC', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(900, '117020365', '', '$2y$10$OTTQ3baH/UaJuhl7JWu8jO52VIM8jSNUn2elU4JEIz8tB4qX0P13u', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(901, '117020366', '', '$2y$10$1iLH7Bh/uVS.4jlzOD49BOIfgepCH/Mn/ST7.VZYV9GdiI7NappzO', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(902, '117020367', '', '$2y$10$pS2kioz7PnH.XSMwKlCVweuuHzYRLTfum6SDov5wjF.G26M9WZYUK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(903, '117020368', '', '$2y$10$Ft2jQsBM7ARrmOHoRIp24e36PFKbpwwbXZKHn8.eVROFAL1eRlGt.', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(904, '117020369', '', '$2y$10$pdIlEruWU5bIfkeGNvTfTe.oJ8UQSJDHlbU.H96SfrWLgvR6ocg3W', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(905, '117020370', '', '$2y$10$jCvjxiY6g74oa7ik/jTNVe6PhImiwkJ4k/LSwga5vX0dIitPODnxa', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(906, '117020371', '', '$2y$10$gvauPlwtvav2UnVMytbw5.B5hZKQXTdX1Y91Dza8bmj9olhbhABcy', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(907, '117020372', '', '$2y$10$PXqJtlDSAak1qAZrRNCN5uNmEopCLM2CnbAhNs9JAkcwHXTyfCmRe', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(908, '117020373', '', '$2y$10$nk1GHBNXBAsJiaHVi7fnFuQ2QINCuNC8PGs56SvPI0XL3H80wGqSe', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(909, '117020374', '', '$2y$10$72j45XRY6.cniV3IkInwGOyPIMuLM8b4yQZUoNzsHvplOuB8UUY/u', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(910, '117020447', '', '$2y$10$O7oZ3GluElYa71s7g52lAOR0QfGAPJb4mk8ASuXDX7i2c76GwhIMS', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(911, '117020375', '', '$2y$10$9GncekGFAqhdZcUbHjBEhOg71MUXOjV0.4mboKswymBNK7vPHd7u6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(912, '117020376', '', '$2y$10$reNf5a6/xC2.5P02siSh8uSSC89XJjCPgVBeVZ2FA8ZukPNJELqve', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(913, '117020377', '', '$2y$10$eXJQQBr0GWkdL10Mg3WqKOE5xJk8lzCOnY9ishFSiCzrjq1.rRItq', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(914, '117020378', '', '$2y$10$jmRgtzWzlRgCEJsqjCIZHuZHlZqCcpw6SVlS1zgOsqm.Fbd9vPEuu', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(915, '117020379', '', '$2y$10$3A/hI9fZdFc2C2Lry4jvSuVEcCveN.0ValU3jurq07IJj5Vq15ia2', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(916, '117020381', '', '$2y$10$k/TUARccfxlYeTrrW0yVleCIlRMJmtlVww5mPQ9UZvLNTeSNSflKq', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(917, '117020382', '', '$2y$10$gYZ0hztFRI/etWHJA.sfGOl1kBJscU1joskgyFWMkSd0vlXujkHb6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(918, '117020383', '', '$2y$10$JJyzsAv9wX/E8ZCK0Xx6Uu9NUL9ZPE/4B6efreat7fPNGAQZwf/Ke', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(919, '117020385', '', '$2y$10$dza2NE1.oXEBv1JYbtxQtuXJ1Kf3h/hIY4xuH6nEKlBbAl7NxoJ2G', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(920, '117020388', '', '$2y$10$Bf94LjzLVtH3moY0od2IbOqT4geByQSqq0zFflozum3C05P0jq9UG', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(921, '117020390', '', '$2y$10$dQEqLCbMZT79bTq//x6nRuHCqBQIs2f0Ym1eCj1itQgC5xLqRYlK6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(922, '117020394', '', '$2y$10$U114/6etwjlmI7UCgCjoH.auPKpDgoUj93XkB7cP1gcDEaf92KPNS', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(923, '117020399', '', '$2y$10$NnGxfh0X5xJOw0ynJCaGouHfK5BCQ9Vk3jS./UVoBWFtCPAwLJera', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(924, '117020401', '', '$2y$10$BpZmaMA.eF8AtM7JeT51m.e/H0Hn129q3cv8/HaWjm6wDdbPcHiqi', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(925, '117020403', '', '$2y$10$6jlxb0U7oXyrrE6CHZVm8Oll7XVXy8dZvUwkzQxtbER4RwkFiN/Bm', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(926, '117020404', '', '$2y$10$921LBi/LsEArkCb1pgUmAeQGUs23EbZqmneCa8MKQ6OQn5yOrdlCy', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(927, '117020405', '', '$2y$10$Mczk7AsblYpdFWLvnqcsQuAWIayd.A27puzq.yI5oonVKVm410zbC', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(928, '117020408', '', '$2y$10$ZvCC.raASCaC4xtRw5JtQuLNcGB02Z0G0wALvNupyBz95mdR0yme.', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(929, '117020409', '', '$2y$10$hp7YA29OskSP2IxUf2P82uNKyXWJlydZfs57lMWgHK58LzUZWCbcq', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(930, '116020432', '', '$2y$10$awZEq3/XF8fQyV8Ab/OZj.5lyebvyx8P.PDG/DeEKyGGJGAGY3D4u', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(931, '116020439', '', '$2y$10$YTvalqaN750pF3SJ3DGBw.ciAbGg0ErPOHnpzvzJtus7RXaOFLzSC', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(932, '117020410', '', '$2y$10$lsnQFOs/QQ52LWhTqGjjguD0DxAv32V4xmU7gurawQBONSOx5sd6C', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(933, '117020414', '', '$2y$10$IrhaVD6okt5eNDSOnUWxuOMwCCIlgGgBcF7U.k6c8.zJd41TTNvd6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(934, '117020415', '', '$2y$10$0YYitDe5et2Qz/v7hX8g2eij.Aod93kH2vcrK/afjH35QTtVej9XK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(935, '117020416', '', '$2y$10$hW1.KOO0leWWY9PEym.fueOmmKV3rTz1DtkH1mRIu0bTMtQg.M4FG', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(936, '117020418', '', '$2y$10$EWcguley58pHmrk7K2wU7ePXCTPAX5jcHwJIhUDTY4tP0i37ZBOMS', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(937, '117020419', '', '$2y$10$ZPqHl5dRKKiZ/3aMASMQMe3Hv4qOvyVNbUSP4cHWIfwG.DHBQuS.6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(938, '117020420', '', '$2y$10$lDkvrSj4H3IEyFZBsdtbG.wVP0L0zAXYOy5izNfFhFhte7TIJKxQW', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(939, '117020421', '', '$2y$10$khKXagfy6HSnf9fvCQVFTOusA69hpFx/PEigqa/O3UyFEbNbQD2Xy', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(940, '117020422', '', '$2y$10$oTuwm2K/v0kxw6sMnlOgwOxcBav3MAzipARP4J0NZuyFYIW8ESEaW', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(941, '117020423', '', '$2y$10$2CGWTd2uf34PTmFuQ5U6VebvozsyJLYlGO2.zl.q2BBrrgklLWxSW', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(942, '117020424', '', '$2y$10$mb4otzXWYIksxso9sCRWROuez9w.xInH3XX0ZA2yiJoJQQFKhOjmW', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(943, '117020425', '', '$2y$10$/LQ60Z9kQ6qY7qCCvypAweVPsQZowyrHmHiCooTVMNGndyM2aEJ8G', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(944, '117020426', '', '$2y$10$l29jZ2Am5dW8CwPXtwTD0.iAw214aiD6sxTewcBUvEK94pLnfx28y', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(945, '117020427', '', '$2y$10$wKt378ssaoR/zGAC5pElceKyhPnzfHdNR2vN1RS7GAyRIagXkaTbS', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(946, '117020430', '', '$2y$10$.1UirTjQtz64QOoD.pBfc.FtzH8FMPPrHIFIsXhEQF3tOD427.cOq', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(947, '117020431', '', '$2y$10$wJ1bA8OuVLo/EIxdPtyCiOG2zbbIJh1KsU/mSL4n.i8cf/J7upuUK', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(948, '117020435', '', '$2y$10$lXIsQUUUHoEt19jc9eAm1u.n6SWZJaIWCEFckCW7PVoPe/PpipaYi', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(949, '117020438', '', '$2y$10$21IZqbGRnAZKH/BgXmTsBOqZJyqB0TbWelRpYxDimOmJaoX6plnhG', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(950, '117020440', '', '$2y$10$uwEVYbB1Vc2/E5G5lCxOCuh7MHgpgqI2NLwzt.h2x9q.vAp7xbpyW', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(951, '117020443', '', '$2y$10$JQkKU..HpZ2QyFsrNL/2guH0ZNS6OZHv3LQ3HX36d4wEc5u63ZcVO', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(952, '116020349', '', '$2y$10$aAyQK.FCYpv03ayYVbeqKugLtjC08ebZ8EMLstVDjbd8YpEg6vH1K', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(955, '117020122', '', '$2y$10$RQVMXApmykQcKdx6z0YkpeD4bmitffb.vO29vLBk8Bm9RZ7nIVH.G', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(956, '117020185', '', '$2y$10$Z2hK3WLb.eyFIQhGzveQ4uS9E1xnTnrwMEFKqXuZQWDV8eD3s/fgq', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(957, '117020437', '', '$2y$10$QTAvJjKjB57oKA7T2vyz7ufexakcPhw2jv5G8V3uWpu/yEBg7fVYi', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(958, '117020453', '', '$2y$10$OpeQFbrYkdhVFaNa5.NZaebW4uI5RJLyCcZVf0RyouNubct08c5.2', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(959, '117020455', '', '$2y$10$9EXVE8mTAR5ztL0mRR7FIee2IpLXXPQOmVT/58W6Bdbl575KBhGgC', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(960, '117020456', '', '$2y$10$EQwTYbHycllie7wjAFVeu.f3jooVFaYoaSv2fcUr8o7DtnncWJyQC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(961, '117020460', '', '$2y$10$KuHtcGu2KvsmY1ZE90OMuOXAh0fDQ1hNJKdWsHhh9z0At9AYPydA6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(962, '117020461', '', '$2y$10$E6p3cv6WSUtHC4soWX8NG.V3HLqPkzdZFtpwv46MJVKVmuKcU8Z2i', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(963, '117020463', '', '$2y$10$njxZhImRiFem3lF3Hp.4qusdlACw3mdJIJ6ASpQvYsJW9g64CLh4y', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(964, '117020466', '', '$2y$10$ryDu0JqTIwQd3WdEGp3U4uTUsDmBjl3saEeyEMEhHar9Qk.o5Ip1i', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(965, '117020467', '', '$2y$10$i9OqQwFe/KWO2YgQs.1wpe.C0qUgMNMxR/yzapWu9LSGIhr2og/b2', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(966, '117020468', '', '$2y$10$1Z31b.OPLcwWSOHA74A9bO6k2gnIm8ztfIlhZIPaNFNFEh3UyjHgu', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(967, '117020470', '', '$2y$10$PIRCTQDa2.nh2TEhsvZJruZSGK3JShKvLkwmNKQqhYgOmMMeArkv6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(968, '117020473', '', '$2y$10$Un91w6xnFyXem8ZYF2Nh5.DmZ00Q2zhp4LZMRztFbjXVf0aq8qHTW', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(969, '117020476', '', '$2y$10$86iepryewGH0OZW5X5GUme3fY3P.dH1T1aPdhXuqm9DpG7FBXJulu', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00');
INSERT INTO `user` (`id_user`, `username`, `auth_key`, `password_hash`, `role`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(970, '117020477', '', '$2y$10$PzBO47EyuIypDYGojHOiiur81b/mRiFJmz8nfbOdYpASmAH8/WHlq', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(971, '117020481', '', '$2y$10$Y.5C/f16r5I1fykrxZWMlegYlLTvF5lhSLUK44BwxWV3mJE8KOq1G', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(972, '117020482', '', '$2y$10$/1h5VAZEdPZ9iiDxp1jxX.zbaGu9zqcGmiYg.N5qCO1xNOlEX7JCO', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(973, '218020006', '', '$2y$10$lboXh8DNCqXxzGw/v3VZPuYkeNVa4UcgQ1xbNegjTqMdV739DDhTS', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(974, '218020007', '', '$2y$10$HxmiB/HWSJ62gMpj1icrx.qeTv3vc3lTSsSKYtyw4Mcw1.k6OPBYW', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(975, '115020428', '', '$2y$10$9Z1YfYuBOBC3w8vLoeV7Wu.lwtBTgkonNsv8ipKEUEBNyipNDGkPu', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(976, '116020483', '', '$2y$10$XkLfd1Z9DFcYOYQS.KkFqejn1IMNsavkJvP9ddYaEVjkJstscMHHu', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(977, '116020501', '', '$2y$10$H.F8Y9pDi8Ml4vvUzqTWPecPKYI4yyI94aOJl4Mc0uSBOz.XDJEN6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(978, '117020001', '', '$2y$10$ckaprIliHYtl6kKEqTqN4ufl6zxMKu9xwema/Z5EorWi7fMVUvu3a', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(980, '116020513', '', '$2y$10$pZI8mYGWviI52dVqoeP05OQK5D.hQayLUkmI60u1nxg1lNHwbKBLC', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(981, '116020536', '', '$2y$10$fjpEaAUbX3ltbXEDIbAEvODp8cC5OBS2dbvXAjSem92Ua6yWAMr32', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(982, '116020510', '', '$2y$10$Z2m0CgMa7GTXv01nGFgu1eNUQB4WBK0ZE8YgX7y2JBNamwVxsBtaO', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(983, '114020514', '', '$2y$10$pgTkIZNZCsnQTO1gHNOZ9ObPppO2DJJyMRcmiMshOqJNPqSmlvlm6', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(984, '116020463', '', '$2y$10$GttKgp2EM7ksYXNkBjClVeKVUo5AEFrQCGNC35OtXuzFoS47ZiPby', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(985, '116020459', '', '$2y$10$dcO8Afy950yJ4RRE4LpLr.7GK5qmY0fBdGywcYHVD0zq//60S0ElC', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(986, '116020102', '', '$2y$10$03nS1YLGPm/TnlQB9vzLSOwr.xfQZe6VcNPBJSEHXgPBSZJkt9A7m', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(987, '116020095', '', '$2y$10$UhEik2v2gdUz9W08r3.GMe8DhFWlY6XzxfdfqW8hm7t7n2MG7sQai', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(988, '116020213', '', '$2y$10$IZJwK24BmjnRLCeRqiPzU.63FgVC4nL6xEWeqQAUUcfQQM7jZZ9rq', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(989, '217020001', '', '$2y$10$yS4CzvZgbxje9ZAyJtpZkOYSZRymjATPwEhxe6JSSGyiPHELnQByK', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(990, '114020543', '', '$2y$10$tCu0/Esir/lmKbPY/B/hkOs862ZZMMxWY/LRjnrB7wWh3xt1lNNke', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(992, '116020087', '', '$2y$10$Ac.cldAKf2vNsgY5K7GNWOdw9N9Y9SN30AIahAfsgGZV4w4175LE6', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(993, '116020383', '', '$2y$10$Uyv5huDst/lntDZTRAE9EO.3N2CDjbsWdZ.ftTK5uQMG6i10m6dSe', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(994, '116020541', '', '$2y$10$JbFQdYGcmOgJAvhFYPHaeeQZ7Az7iRY9f.u9.LQAfsk4WSbieA/dq', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(995, '116020033', '', '$2y$10$7bTLUwv464BdDOYEBvQduOGtFs4wT851Mh/eeWZBpR6aJDC6iZc6y', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(996, '116020493', '', '$2y$10$cZHhenfmrmrfMihfZC9Up.h.IQcZAMrUfHCn9ZYo5AAsBEDtk2F5i', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(997, '218020008', '', '$2y$10$cmllHBCGHrd0pqnNL26nze4VFr/V.9B/RL0GdtxSUvxRZknKVcA7W', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(998, '117020433', '', '$2y$10$TzS5T2CTJBAxEB9hdoMDC.CQEKg8VoiF5HMc7bSoshmCq8Mg69Ru2', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(999, '218020003', '', '$2y$10$Ydmq5xQRz7THhPqawjGE6eWSwfbode5Y5MU1NKx2lA5h4OiYIUiPa', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(1000, '116020415', '', '$2y$10$rLe.CSvsQPKAqvNzwug6w.yx1soPtS4xuU2.47HrZIGuasdfiogym', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(1003, '117020086', '', '$2y$10$eeLCXext9xa07FPgRrTjdeYrOccdW6KRTmVFJF0qQ5xR19Cvj5QEa', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(1004, '117020331', '', '$2y$10$3FPluKHvji4y2r1ojbf3reR3rUgK4I6ru911mbCb4b.QWcI9fgyQe', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(1005, '116020273', '', '$2y$10$epX4svVvqI427i0cwTTyMOPa7aOoaLYhIciJc0HXbrVvcxcaxjFSa', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(1006, '117020411', '', '$2y$10$lvdrcHA7IxFb3Wj7zS0SquAwAsPFt29k91W/Afkaus8sz5ISZ12i6', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(1007, '116020284', '', '$2y$10$dDaG9oRWY9hsvdSQkvScie1tE0zim54jOlZPnRhGclZ8K5EBVk72i', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(1008, '116020395', '', '$2y$10$QmLjR/9IGU2KEH.Xm9.Lau65zGqJoRZUVKmViojEW/IvnBQGaF/sy', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(1009, '116020425', '', '$2y$10$f7Splk/9Wu4WlVa6BL/VCelTbwOH6D.MfAV..v9uA2AyThOJP7CEe', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(1010, '116020421', '', '$2y$10$oYx0jSKtczqaGOjeN1XADupNjhQKMkx1ZObZm6MIdd/i42LpkSZFW', 'mahasiswa', 1, '2021-02-13 00:00:00', 1, '2021-02-13 00:00:00'),
(1011, '116020420', '', '$2y$10$ARzqa0rUflqPt5GWFbo3v.z.POUvtqcpoJ2kLMRfEVYUdlOSr8v8K', 'mahasiswa', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5553, '21590098', 'TzDhG0fJ2dby3toLXLlV9zV5qdJw3yHO', '$2y$13$gOlMZ0eF9orZ4kUH7ovOMewrLgdLl9vFVRylQG7/i8yFw0G9eSk2O', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5554, '31460852', 'tYFJ29Rj7nUivjTBQvrUGg24NhIyqejK', '$2y$13$Y97tDnXEzNnHG8rkIr0sk.P4V.1nXs7O8fwjRBgSPV4G8ouNX7CyW', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5555, '21760518', 'zt3yYqOnjH21N1SHFEhd2IbQqht-fc20', '$2y$13$E/UqBU7k7L5bBNyIZ90zn.xu8o7knXnHzNpdw7ApdjLUPXLdiKZE6', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5556, '21660252', '6wi_TaoFyJg9UUYMeT76cNl1T-r2cNbr', '$2y$13$65z4CfEi936J0876t.lOCesBpGYixnlXaX.EQlPzhPqWln61RLvoy', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5557, '21740184', 'LeuOyyOoRywFNI5lQfX1H4aEsXnaLbH-', '$2y$13$glOi.xOlaLdhNU.C/eGeBuTuBn2eIoC1XwDScfAyNIvhabdnuZKg.', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5558, '21700164', '3NE9gQFAMiCH_MXLI82jT1sxqR4iwODD', '$2y$13$wqJ8Yk/TiKWQnIzQ2ZGtf.hTVMkfhIIU7ab2Sum/ZxWdCseYp49O2', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5560, '21710178', 'JgqBn8jCG3rXdqhAGvrT89XRfHIBmGLQ', '$2y$13$F5SNpkwWiUEMLxuWSdX/DespquX2gjNOenB5nXQ4JGGKMa/BJUrH.', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5561, '21710168', 't5vstx2PS3fT4qk-JYZNvmzB_e5_Ncc_', '$2y$13$5YfOTcbHG1KAqq.RgzunzugvKeUgO9T3ELUkY4sdhICAkbrO29MpC', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5562, '21740188', 's0_nbr-iRih0-S_CH-BUPloOCOZxL2iI', '$2y$13$tY.o7G.sIeF7xaRzZogTweQzE7znpYhhNSSdkKXsNTMJNk.rsODTC', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5564, '23580069', 'vvghH2RPYXjycuLTQA0BQXZaZnPxrK0d', '$2y$13$JvNLyxD5RnIF6ARldAWtKunUQeRB7FFsZBS.z4LqbLFxnVSHu90fm', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5565, '21710227', 'tF06E0E-QmBCdlixF5hbXYQjtl-7JDhp', '$2y$13$jp/n2B3zvYphGJffKe/ItuLTGBAQbuhKXt14j9M7Jo1..Mo2Ed3Ny', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5567, '21760251', 'ex70BzDGk7O3_TLuLzdCTKuy9clUvOfW', '$2y$13$QnCNtRHkOUaZzeIrQatg9.J40.5ZnP0EdbH5H/aFM80AJvU.p/z/W', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5568, '21830542', 'SLcnvuSPWgBz1RLEk-jf1V5FWocV2bDl', '$2y$13$6KrStM1OTXyMWsp3c/rmAuHZTF6qH/S5f0oPoLsvOxXZMkgw2OWhq', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5569, '21820543', 'HnFwwthUIh18IwVYn1Iaaqqmy0DIOQod', '$2y$13$y88zoUcX9.0nSPhIYUViGOMwYC.3PR0v.Y40rCEv9hs.EqJ4HbGmy', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5570, '21780731', 'n-zF3U-KB5uHUZXJhiSibUmH7sAUlMz_', '$2y$13$seXFNc/jQ/EFW4InvFqN9.Rjepg4NE1DFXDEDO4EVssYbgpXbu7lu', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5571, '21850777', 'OqU3yIRZAJXZviafErOK65SK4Yf7TwSO', '$2y$13$K0WNu/XM5hJRCI2m1c6yCO.RI5d6TkVbSPeyxs4ynhuOflU4PJbPG', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5572, '21740835', '5cN76MsluOJKcT_1peKA9TD5ob3WT_pz', '$2y$13$9KwAA5f0GNv1gIZJq2Nv6OQPbnAhIaa5qJqVnA5deNvhy2RReHbT2', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5573, '21870837', 'X-TqY85rK3wzVOHGB7MKRGSRKOgs13jo', '$2y$13$G18fGfKvTYE29fDWRdYWJ.IGcI/dem8t55AOuPsHCvpMcVT/tdCUe', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5574, '21770878', 'MYBUtitIbmY10NSdwHrkJDtfKYwNB-Id', '$2y$13$dGJG3W1RIHbrp.mgyrcJg.umHlfNbfOyUkCapi2jpvN1lhkZ0ZMpe', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5575, '21820778', 'KYYhkoe6Uxwgoza85DZF8XMgf-Jsjn5U', '$2y$13$MgtRExSeBgaLuAQlpXMiseCxgPW.B.WMRXS4pEjGyWhLrX5E/Q8.a', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5579, '21710167', 'xqY_9ehq1949o6qrPGW3ulKh7v6rocWT', '$2y$13$pWy1g5OEFfaOVdxxLfY27eh8Dg5MgrPux4ro05f3QRb3mD4pXFsu6', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5580, '21710169', 'bLwVycqOd6uP1dmNxxxMkQxPe-PmEIsN', '$2y$13$IwTRK2h0B20jeyiBUoiK/eh82hklVlGlYSiWnhMroAuymeweSaGLe', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5581, '23510225', 'LLJK9R50vx43MbuJkuW3F1Wq7RVV_kMw', '$2y$13$DCh3kBw4lom5rJiVlPHA8ep.NJhFVgon6J1VE5Yw.DiLvGmxv0POy', 'penguji', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(5582, '411114701', 'LBZI6WVtaBYU_duaJHLmJXytbmb0arWk', '$2y$10$BdCL.qDrJVdchC/NXx3EZ.02MQTroLezNPk1yKag2LvrUdZmtfwfu', 'penguji', 1, '0000-00-00 00:00:00', 1, '2021-02-16 11:22:32'),
(5617, '117020015', NULL, '$2y$10$KMEsVMHnQRZ5Y9baGcldXu2q40JwqEOWGnIhqtrPt6lJu7iX0/F92', 'mahasiswa', 1, '2021-02-15 15:34:39', 1, '2021-02-15 15:34:39'),
(5618, '117020016', NULL, '$2y$10$ZEMTopzOPAlFz4iUOaqfw.hh/Rku9ADddE24a7hWnN5wsMBDLo.LO', 'mahasiswa', 1, '2021-02-15 15:53:12', 1, '2021-02-15 15:53:12'),
(5619, '117020018', NULL, '$2y$10$woAf3w7Tf5veCm2zOzRRR.8d3F5d7wfVHBJ4WBsZbQF6wpLwhMbBy', 'mahasiswa', 1, '2021-02-15 15:55:47', 1, '2021-02-15 15:55:47'),
(5620, '117020012', NULL, '$2y$10$HJfir9ed4wKT7PsgLmLxXekzH15MxCzm8Jx.ZqHb2Acn3fqyal08y', 'mahasiswa', 1, '2021-02-15 15:58:57', 1, '2021-02-15 15:58:57'),
(5621, 'admin_akademik', NULL, '$2y$10$ChocYwRHalpMHlvV.HiXC.YDcXZV5lOvrSNWZHb/DHguMFyRAj6EW', 'admin', 1, '2021-02-16 10:10:22', 1, '2021-02-16 10:10:22'),
(5622, 'kaproman', NULL, '$2y$10$303TEQImhP24dV7Eg7D6J.uTokLauYsEgyeJHKdfYXwIaWnkgUSKu', 'admin', 1, '2021-02-16 10:22:16', 1, '2021-02-16 10:22:16'),
(5623, 'KaProdiAkuntansi', NULL, '$2y$10$gQW8kjTZyDkS83gsp8GpC.ud9zTFBYLq/eFKEzoCxQX9M1Q9V5w6G', 'admin', 1, '2021-02-16 10:53:15', 1, '2021-02-16 12:07:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_admin`
--

CREATE TABLE `user_admin` (
  `id_admin` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_admin`
--

INSERT INTO `user_admin` (`id_admin`, `id_user`, `nama_admin`, `jenis_kelamin`, `jabatan`) VALUES
(1, 1, 'Badrudin Hadibrata, S.T, M.Kom', 'L', 'Super user'),
(13, 5621, 'Admin Akademik FE', 'P', 'Admin Akademik'),
(14, 5622, 'KaProdi Manajemen', 'P', 'Ketua Program Studi Manajemen'),
(15, 5623, 'KaProdiAkuntansi', 'P', 'Ketua Program Studi Akuntansi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_mahasiswa`
--

CREATE TABLE `user_mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `npm` varchar(10) NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `konsentrasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_mahasiswa`
--

INSERT INTO `user_mahasiswa` (`id_mahasiswa`, `id_user`, `npm`, `nama_mahasiswa`, `jenis_kelamin`, `kelas`, `semester`, `tahun_masuk`, `prodi`, `konsentrasi`) VALUES
(12, 19, '78901', 'Tiara Mentari (DataContoh)', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM'),
(17, 26, '9876', 'Alwan Hanafi (DataContoh)', 'L', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran'),
(603, 613, '117020002', 'SITI ULFA RISDIANTI', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(604, 614, '117020003', 'EKA APRIYANTI', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(605, 615, '117020004', 'PITRI ANDRIYANI', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(606, 616, '117020006', 'INDRA LESMANA', 'L', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(607, 617, '117020007', 'DANI LESMANA', 'L', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(608, 618, '117020008', 'ACHMAD TAUFIK URROHMAN', 'L', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan'),
(609, 619, '117020009', 'KAMELIA', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(610, 620, '117020010', 'EKA LARASATI D. S.', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(611, 621, '117020011', 'BACHTIAR YUSUF ISWADI', 'L', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(614, 624, '117020014', 'TRIANA YULIA', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(618, 628, '117020020', 'WIDANENGSIH', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(620, 630, '117020022', 'DIANA PRIHATINI', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(621, 631, '117020023', 'RATU AYU RAHAJENG', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(622, 632, '117020024', 'NURFAJRIAH', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(623, 633, '117020025', 'TRI ROCHMAN SYAH', 'L', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(624, 634, '117020026', 'DHANI OKTA MAHENDRA', 'L', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(625, 635, '117020027', 'ARIQ SAEFUL ROCHMAN NURHIDAYAT', 'L', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(626, 636, '117020029', 'SANTI LESTARI', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(627, 637, '117020031', 'ARIE NARJUL WAFA', 'L', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(628, 638, '117020032', 'SITI ANITA NURWINDA', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(629, 639, '117020033', 'TIFANIE DEVIANA ARIYANTI', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(630, 640, '117020034', 'SULTAN FIRDAUS ALAMSYAH', 'L', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(631, 641, '117020035', 'CHIKA ADIVTA', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(632, 642, '117020036', 'MUHAMAD RIFAI', 'L', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(633, 643, '117020038', 'DESTY WAHYUDIANI', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(634, 644, '117020039', 'LESLY SOLEHA', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(635, 645, '117020040', 'DEWI SULASTRI', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(636, 646, '117020041', 'YUYUN YUSGINA APRIANI', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(637, 647, '117020042', 'WILLY AGUSTIN', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(638, 648, '117020043', 'MEGA RATNA SARI', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(639, 649, '117020045', 'TAMARA LASIA', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(640, 650, '117020046', 'RINRIN NURALIMAH', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(641, 651, '117020047', 'MUHAMAD HANDOYO', 'L', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(642, 652, '117020048', 'ISMI ABDILAH', 'L', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(643, 653, '117020049', 'IVA AINUL FITRIYAH', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(644, 654, '117020050', 'YAYAH FAUZIYAH', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(645, 655, '117020051', 'MEGA DWI MANIK ASTAGINA', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(646, 656, '117020053', 'YULI NURACHMAN', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(647, 657, '117020054', 'RIZKI FATHURRAHMAN', 'L', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(648, 658, '117020055', 'ARTHUR KUSUMA ATMAJA MANURUNG', 'L', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(649, 659, '117020056', 'YESI UTOMO', 'L', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(650, 660, '117020057', 'ANDI FIRMANSYAH', 'L', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(651, 661, '117020058', 'SHERLY AYU FERLIANI', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(652, 662, '117020059', 'ITA MULYANI', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(653, 663, '117020060', 'KAMILA NURHALISA', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(654, 664, '117020061', 'YANTI FITRIANI', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(655, 665, '117020062', 'RESTA RIZKY AMALIA', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(656, 666, '117020063', 'IKHA MUSTIKA DWI YULYANI', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(657, 667, '117020065', 'LIANA PEBRIANA', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(658, 668, '117020066', 'SELLY ROCHMAWATI', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(659, 669, '117020067', 'RANI MARDHOTILLAH', 'P', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(660, 670, '117020068', 'MUHAMAD BAYU PRATAMA', 'L', 'B', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(661, 671, '117020070', 'CHINTIA ROMANTIKA SANDRA', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(662, 672, '117020071', 'Prita Maulidia', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(663, 673, '117020072', 'WINDA EMILIA', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(664, 674, '117020073', 'ANGGIE PRATIWI', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(665, 675, '117020074', 'VANESA DWI JULIANTA', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(666, 676, '117020075', 'BEBEN SAPUTRI', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(667, 677, '117020076', 'MUHAMMAD RIYADUSSHOLIKH', 'L', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(668, 678, '117020077', 'TRIANA DEWI', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(669, 679, '117020078', 'RINIKA MAYSHANDY', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(670, 680, '117020080', 'MEIARTA PASARIBU', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(671, 681, '117020081', 'MILDA NOVYANTI', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(672, 682, '117020082', 'TUTUT ALFIYAH', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(673, 683, '117020083', 'ANA KHOERUNNISA', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(674, 684, '117020084', 'SELVI OKTAVIANI', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(675, 685, '117020085', 'AUDILYRA PINANDITA BHAKTI TRIALINGGA', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(676, 686, '117020386', 'Indah Inats Suroya', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(678, 688, '117020088', 'EUIS SITI AISAH', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(679, 689, '117020089', 'NABILAH AINUNNISA', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(680, 690, '117020091', 'ANNISA RAHMAH MUFLIHAH', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(681, 691, '117020092', 'MAELANY YONISA', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(682, 692, '117020093', 'HERU SUGITO', 'L', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(683, 693, '117020094', 'RIZKI TAUPIK HIDAYAH', 'L', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(684, 694, '117020095', 'APRIYANI', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(685, 695, '117020096', 'FIKA FITRIYANI PURWANTO', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(686, 696, '117020097', 'MAULANA SAFRI SUSANTO', 'L', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(687, 697, '117020099', 'NUR ADNI AGUSTINA', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(688, 698, '117020100', 'TIA AYUNING TYAS', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(689, 699, '117020101', 'MONIKA', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(690, 700, '117020102', 'QORIAH', 'P', 'C', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(692, 702, '117020103', 'DANDI SUHENDRA', 'L', 'D', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(699, 709, '117020110', 'SHELLA ARIS THANTIA', 'P', 'D', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(702, 712, '117020113', 'ADJIE KUSUMA', 'L', 'D', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(703, 713, '117020115', 'SUSILAH', 'P', 'D', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(709, 719, '117020123', 'ERICK RIYANTO', 'L', 'D', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(710, 720, '117020124', 'LESKA AGUSTIN', 'P', 'D', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(713, 723, '117020128', 'SILFI FAUZIYAH', 'P', 'D', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(715, 725, '117020130', 'ESTETIKA SILVIA', 'P', 'D', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(716, 726, '117020132', 'AULIA DEWI CANTIKA', 'P', 'D', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(719, 730, '117020137', 'MERLINDA DWI S', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(720, 731, '117020140', 'NENG YESI MAYASIRAH', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(721, 732, '117020141', 'M. EGY DEFANOS', 'L', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(722, 733, '117020142', 'TANTI APRIANTI', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(723, 734, '117020143', 'MUHAMMAD ADE JAHIDIN', 'L', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(724, 735, '117020144', 'Anisah Octaviani', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(725, 736, '117020145', 'QURROTU AINI', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(726, 737, '117020147', 'FADHEL MUHAMMAD RINALDY', 'L', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(727, 738, '117020150', 'MUCHAMAD UMAR SYARIF', 'L', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(728, 739, '117020151', 'sayyidati olivia nadilla', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(729, 740, '117020153', 'YAYOEK SALSABILA', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(730, 741, '117020155', 'RESTI MULIYAWATY', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(731, 742, '117020156', 'NURUL FATIMAH', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(732, 743, '117020157', 'FAHMI RAMDANI', 'L', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(733, 744, '117020158', 'ARDHIANI SYARIFAH', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(734, 745, '117020159', 'DIAN ROSDIANA', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(735, 746, '117020160', 'DIMAS WAHYUDI', 'L', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(736, 747, '117020161', 'RIFQI HASAN ALIFFIANSYAH', 'L', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(737, 748, '117020163', 'FEBBY ALFARIDZI', 'L', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(738, 749, '117020164', 'EKA MAULI YUNIAR', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(739, 750, '117020165', 'ROKI NIAMI', 'L', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(740, 751, '117020166', 'DILLA CIPTA SALSABILA', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(741, 752, '117020168', 'SUSI YANA', 'P', 'E', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(742, 753, '117020171', 'MEGA PURNAMA SARI', 'P', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(743, 754, '117020172', 'LIANA', 'P', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(744, 755, '117020173', 'NIA DWI ELYANI', 'P', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(745, 756, '117020174', 'ANGGARA IHZA HUNAFA', 'L', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(746, 757, '117020175', 'INTAN RAHMAN', 'P', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(747, 758, '117020177', 'BALGIS FAHIRA', 'P', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(748, 759, '117020181', 'AGUN SELISTIAWAN', 'L', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(749, 760, '117020186', 'MOHAMMAD ZUNDI LAZUARDI', 'L', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(750, 761, '117020187', 'INDRA LOUIS RIVALDI', 'L', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(751, 762, '117020188', 'SHANDY FIRMANSYAH', 'L', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(752, 763, '117020190', 'SUWANDA', 'L', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(753, 764, '117020191', 'EGA YOHANANDA AGUSTIN', 'P', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(754, 765, '117020192', 'ERWIN NUGRAHA JUNAEDI', 'L', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(755, 766, '117020193', 'MUHAMMAD IQBAL RIZALDI', 'L', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(756, 767, '117020194', 'feisal rahadi nurkhalam', 'L', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(757, 768, '117020195', 'RHESTINA ATIKA DWIYANTI', 'P', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(758, 769, '117020196', 'MAULIDA ZAHRA A S', 'P', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(759, 770, '117020197', 'MUHAMAD SEPTIADI', 'L', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(760, 771, '117020198', 'SHOLIHIN', 'L', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(761, 772, '117020200', 'TIEKA AINI', 'P', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(762, 773, '117020201', 'ANNE TIARISTI', 'P', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(763, 774, '117020202', 'ULFI YUTSIR ATHMAYANTI', 'P', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(764, 775, '117020203', 'PUTRI AYU ANNISA NADYA', 'P', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(765, 776, '117020204', 'MUKHAMAD INDRA HERIYANTO', 'L', 'F', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(766, 777, '117020205', 'MUHAMMAD DANDI RAMADHAN', 'L', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(767, 778, '117020206', 'REYNALDI PRIANGGA', 'L', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(768, 779, '117020207', 'LUQMANUL HAKIM AGI PRATAMA', 'L', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(769, 780, '117020208', 'IRFAN MAULANA', 'L', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(770, 781, '117020210', 'MELAWATI DEWI', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(771, 782, '117020211', 'MAYA AYU YUHANA', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(772, 783, '117020213', 'HENNI SIMBOLON', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(773, 784, '117020214', 'NADYA AYU NURANI', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(774, 785, '117020215', 'NAHDIAT ATIKA MARYAM', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(775, 786, '117020216', 'MAURIN AGUSTIN RAMADANTI', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(776, 787, '117020217', 'YOLANDA MEILIA RAMADANTI', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(777, 788, '117020218', 'VIOLA AGUNG KHASANAH', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(778, 789, '117020219', 'RIFQI NAUFAL ISFANDIAR', 'L', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(779, 790, '117020220', 'EVA TRIANA HUTAMI', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(780, 791, '117020221', 'RIANTO PERNANDA', 'L', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(781, 792, '117020223', 'NURIPAH', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(782, 793, '117020224', 'JIHAN NURACHMANITA', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(783, 794, '117020225', 'ADITYA GUSTI FIRDAUS', 'L', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(784, 795, '117020226', 'GITA RIZKY NURVANIA', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(785, 796, '117020227', 'RISTI RANTIKA JULIANTI', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(786, 797, '117020228', 'SARAH AKBARANI', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(787, 798, '117020229', 'JAPAR SODIQ', 'L', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(788, 799, '117020230', 'DIANA PUSPITA', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(789, 800, '117020231', 'NADHIRA AZZAHRA', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(790, 801, '117020234', 'DEDEN BAROKAH MUHAROM', 'L', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(791, 802, '117020235', 'ZIHAN FADILA SEPTIANI', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(792, 803, '117020236', 'RIO SANDY ILHAM TOHJAYA', 'L', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(793, 804, '117020237', 'DINA ISMI FAUZIAH', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(794, 805, '117020238', 'ANGGITA FEBRIANTI', 'P', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(795, 806, '117020450', 'EGI FATUROHMAN', 'L', 'G', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(796, 807, '117020240', 'NOVANIA LAILATUL IZZAH', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(797, 808, '117020241', 'RISA LIDYAWATI', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(798, 809, '117020242', 'ARYA MULTAZAM', 'L', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(799, 810, '117020246', 'FIQRY PURNOMO AJI', 'L', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(800, 811, '117020247', 'SALAMAH', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(801, 812, '117020248', 'DITA SEPTIANI', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(802, 813, '117020249', 'ADE NOVI', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(803, 814, '117020250', 'M. UBAIDILLAH', 'L', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(804, 815, '117020251', 'ALIYA NURUL AZMI', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(805, 816, '117020252', 'TENTA NOFIANI', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(806, 817, '117020253', 'MEILINDA', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(807, 818, '117020254', 'TOMI AJI PAMUNGKAS', 'L', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(808, 819, '117020256', 'DWI PUJI KURNIASIH', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(809, 820, '117020258', 'SRI DAMAYANTI', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(810, 821, '117020261', 'NURJANNAH', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(811, 822, '117020263', 'TEDY RAMDANI', 'L', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(812, 823, '117020264', 'AISYAH AYU LESTARI', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(813, 824, '117020265', 'TODIN', 'L', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(814, 825, '117020266', 'RETNO DWI JAYANTI', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(815, 826, '117020267', 'FEBY LAILATI NISRINA', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(816, 827, '117020268', 'ASTRI DWI YUNIARTI', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(817, 828, '117020269', 'DINDA ARZIAH NAULITA WINDI', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(818, 829, '117020271', 'RENITA NURJANNAH', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(819, 830, '117020272', 'FAHMI HAMZAH', 'L', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(820, 831, '117020273', 'DEFFY LESTARI', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(821, 832, '117020274', 'RESTU HIDAYANTRI', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(822, 833, '117020275', 'IIS DIAH DWITYAH', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(823, 834, '117020276', 'ENENG ELLA SANEVA', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(825, 836, '117020278', 'DESI', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(826, 837, '117020279', 'ADI HIDAYAT', 'L', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(827, 838, '117020281', 'BEBI AYU WULANSARI', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(828, 839, '117020282', 'FAHAD RAMADHAN', 'L', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(829, 840, '117020284', 'ZAKIA AULIA PRADANINGTYAS', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(830, 841, '117020285', 'LULU HAYAH ATTAQIYYAH', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(831, 842, '117020286', 'HENDRY TRI PRAKOSO R', 'L', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(832, 843, '117020287', 'KIRAN PRAMUSDIKA PRATAMA', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(833, 844, '117020288', 'EKA JUWITA', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(834, 845, '117020289', 'ROHAYATI', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(835, 846, '117020290', 'ADE NURAENI', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(836, 847, '117020291', 'MUHAMAD FEBRI MAPTUHI', 'L', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(837, 848, '117020292', 'ENDRO PIYOGA', 'L', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(838, 849, '117020295', 'OSEP ROBBY NURFAUZAN', 'L', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(839, 850, '117020296', 'DEAZ ALFANDITA', 'L', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(840, 851, '117020297', 'PETY DWI HARIYANTI', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(841, 852, '117020298', 'FAIQOTUL FAJAR', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(843, 854, '117020301', 'RISKY LUKMAN AL-KAHFI', 'L', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(844, 855, '117020302', 'SYAFRIE BAHARUDDIN', 'L', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(845, 856, '117020304', 'NENG ELI FELIYA', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(846, 857, '117020305', 'WULAN SRI LESTARI', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(847, 858, '117020306', 'AI LAELASARI', 'P', 'I', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(848, 859, '117020307', 'MUHAMMAD SILAHUL MUMIN', 'L', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(849, 860, '117020308', 'DHESSI PURWATI', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(850, 861, '117020309', 'YOSI LESMANA', 'L', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(851, 862, '117020310', 'NELY SULISTIANI RAHMI', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(852, 863, '117020311', 'ANGGI SUCI RAHAYU', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(853, 864, '117020312', 'ANGGRAENI', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(854, 865, '117020313', 'SYNTIA RAMDANIATI', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(855, 866, '117020314', 'AWANG KURNIAWANGSIH', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(856, 867, '117020315', 'FATQIYA DINA SALLAMA', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(857, 868, '117020318', 'INDA NOVITASARI', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(858, 869, '117020319', 'AYU AUZI AULIYAH', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(859, 870, '117020320', 'SOFIA MARWAH PERTIWI', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(860, 871, '117020321', 'DIMAS YUDHISTIRA', 'L', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(861, 872, '117020322', 'MUH ZAINUDIN', 'L', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(862, 873, '117020324', 'IGA AMALIA', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(863, 874, '117020325', 'HANDIKA', 'L', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(864, 875, '117020328', 'ASYROFI ANAM', 'L', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(865, 876, '117020329', 'GINA SONIA', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(866, 877, '117020330', 'MOH BAHARI ROJAK', 'L', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(867, 878, '117020332', 'DESI NATALIA', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(868, 879, '117020333', 'EKI NUR FALAHUDIN', 'L', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(869, 880, '117020334', 'YAYAH FAUZIYAH', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(870, 881, '117020335', 'ARINA BAHIYA', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(871, 882, '117020336', 'SYAMSUL MAARIF ALFIN M', 'L', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(872, 883, '117020337', 'GEGE IRVANDI UTOMO', 'L', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(873, 884, '117020339', 'UUS KHASANAH', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(874, 885, '117020448', 'ADELIA ROHMAN', 'P', 'J', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(875, 886, '117020341', 'MUKTADOH ALI AKBAR', 'L', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(876, 887, '117020342', 'MELLISA', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(877, 888, '117020343', 'LUTHFIYAH MUTIAH', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(878, 889, '117020345', 'DION ALVINO', 'L', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(879, 890, '117020346', 'WILMAR RAMA PRADIPTA', 'L', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(880, 891, '117020347', 'MUHAMMAD FAISHAL FARAS', 'L', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(881, 892, '117020348', 'ISKANDAR DZULQORNAEN', 'L', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(882, 893, '117020349', 'DANIRI', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(883, 894, '117020350', 'AFDOL FITROH', 'L', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(884, 895, '117020352', 'EUIS WIDIANENGSIH', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(885, 896, '117020353', 'FAJAR KAWARIS', 'L', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(886, 897, '117020357', 'DIMAS AMBARI', 'L', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(887, 898, '117020362', 'NOK IKAYANA', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(888, 899, '117020363', 'PUTRI MAYANG DARYANI', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(889, 900, '117020365', 'RETNO DWI LESTARI', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(890, 901, '117020366', 'NISA RODIYATUL ALAWIYAH', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(891, 902, '117020367', 'ANDRI NUR ALIM', 'L', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(892, 903, '117020368', 'ANI AINUNNISA', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(893, 904, '117020369', 'NURUL AVIANA', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(894, 905, '117020370', 'BILQIST ARIFAH FADILLAH', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(895, 906, '117020371', 'AVINI ROHMATUN NAZILAH', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(896, 907, '117020372', 'YUSRINI FIRDANINGSIH', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(897, 908, '117020373', 'ELLSA OCTAVIYANI', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(898, 909, '117020374', 'PIPIT NURMALASARI', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(899, 910, '117020447', 'ANI NURMAYANTI', 'P', 'K', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(900, 911, '117020375', 'ATRIA PEPUNDEN GUSTI', 'P', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(901, 912, '117020376', 'ILHAM SUNAN NUGRAHA', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(902, 913, '117020377', 'RIZQI ALDHAN FADILLAH', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(903, 914, '117020378', 'FAIZ FATUROHMAN', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(904, 915, '117020379', 'MAISYAROH', 'P', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(905, 916, '117020381', 'BAYU APRIANTO', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(906, 917, '117020382', 'RACHMAN NURZAMAN', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(907, 918, '117020383', 'RAIHAN HILMY ALAM', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(908, 919, '117020385', 'SITI SALAMAH', 'P', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(909, 920, '117020388', 'AISYI REZQY ADIBTI', 'P', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(910, 921, '117020390', 'ADELIA RAHMAWATI', 'P', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(911, 922, '117020394', 'ECI KARNESIH', 'P', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(912, 923, '117020399', 'RIDWAN E. SUGARA', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(913, 924, '117020401', 'INDRIYA PRIYANSA', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(914, 925, '117020403', 'MOHAMAD ILHAM MANDIRI', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(915, 926, '117020404', 'USMAN WIJAYA', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(916, 927, '117020405', 'MUMUH MUHAMAD JAUHARUDIN', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(917, 928, '117020408', 'AGITS JODI PRATAMA', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(918, 929, '117020409', 'FAISAL QURTUBY', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(919, 930, '116020432', 'AKHMAD RIZKY ROSADY ROKHMAN', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(920, 931, '116020439', 'MOH.TAUFIQ', 'L', 'L', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(921, 932, '117020410', 'MOH SLAMET RIADI', 'L', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(922, 933, '117020414', 'RIJEKA HERNIANSAH', 'P', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(923, 934, '117020415', 'RULA RULIANTI', 'P', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(924, 935, '117020416', 'SYANDI NUGRAHA', 'L', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(925, 936, '117020418', 'DIMAS BAYU KUSUMANING AULIA', 'L', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(926, 937, '117020419', 'CHICHA SARIE', 'P', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(927, 938, '117020420', 'MUHAMMAD NANDA ALFAJRI', 'L', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(928, 939, '117020421', 'DWI RYAN MAULANA', 'L', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(929, 940, '117020422', 'DWI AGENG AYU LESTARI', 'P', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(930, 941, '117020423', 'NASRIAH', 'P', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(931, 942, '117020424', 'FAISAL IRAN IBRAHIM', 'L', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(932, 943, '117020425', 'ATIKAH LUSIAWATI', 'P', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(933, 944, '117020426', 'CICIH SOPIYANTI', 'P', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(934, 945, '117020427', 'DIMAS ARYAJATI', 'L', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(935, 946, '117020430', 'SYNTIA PEBRIYANTI NUR ROHMAH', 'P', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(936, 947, '117020431', 'DINA APRIYANI', 'P', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(937, 948, '117020435', 'PENI ULIYANTI', 'P', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(938, 949, '117020438', 'ETNA DIANA MISKIAH', 'P', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(939, 950, '117020440', 'MOH FARHAN SURYA DWI PUTRA', 'L', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(940, 951, '117020443', 'DESI NURAENI', 'P', 'M', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(941, 952, '116020349', 'PUPUT MAULANI', 'P', 'M', 9, 2016, 'Manajemen', 'Man-SDM\r'),
(944, 955, '117020122', 'EFRAIM NAGODANG HUTABARAT', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(945, 956, '117020185', 'FAIZ ADITYA', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(946, 957, '117020437', 'FARHAN RIFQI NURULLAH', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(947, 958, '117020453', 'Muhamad. Aqil Fahrurozi', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(948, 959, '117020455', 'Rahmat Nugraha Saputra.', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(949, 960, '117020456', 'Tita Nurmayanti', 'P', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(950, 961, '117020460', 'Wahyu Greenvaldy', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(951, 962, '117020461', 'Rama Sanjaya', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(952, 963, '117020463', 'Muhammad. Azis Azhari', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(953, 964, '117020466', 'Bimo Aji Saputro', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(954, 965, '117020467', 'Firmansyah Akbar', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(955, 966, '117020468', 'Ade Cahyana', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(956, 967, '117020470', 'Mulawarman', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(957, 968, '117020473', 'Noviyanti', 'P', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(958, 969, '117020476', 'Reja Akbar Prasetyo', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(959, 970, '117020477', 'Ayip Alfadilah', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(960, 971, '117020481', 'Deasy Wulandari', 'P', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(961, 972, '117020482', 'MUHAMMAD GUSTI FAUZAN', 'L', 'R', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(962, 973, '218020006', 'ANITA MAULINA SOFWAN', 'P', 'R', 5, 2018, 'Manajemen', 'Man-SDM\r'),
(963, 974, '218020007', 'AZZAHRA RAHMA PEBRIYANTI', 'P', 'R', 5, 2018, 'Manajemen', 'Man-SDM\r'),
(964, 975, '115020428', 'M Ardi Affandi', 'L', 'R', 11, 2015, 'Manajemen', 'Man-SDM\r'),
(965, 976, '116020483', 'RIO HERMAWAN', 'L', 'R', 9, 2016, 'Manajemen', 'Man-SDM\r'),
(966, 977, '116020501', 'ALAM ANGGARA', 'L', 'R', 9, 2016, 'Manajemen', 'Man-SDM\r'),
(967, 978, '117020001', 'HALIMATUS SADIYAH', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(969, 980, '116020513', 'Fitri Wahyuninglisa', 'P', 'R', 9, 2016, 'Manajemen', 'Man-Pemasaran\r'),
(970, 981, '116020536', 'Regina Geraldine', 'P', 'R', 9, 2016, 'Manajemen', 'Man-Pemasaran\r'),
(971, 982, '116020510', 'Putri Srimulyani', 'P', 'R', 9, 2016, 'Manajemen', 'Man-Pemasaran\r'),
(972, 983, '114020514', 'Arif Hidayat', 'L', 'M', 11, 2014, 'Manajemen', 'Man-SDM\r'),
(973, 984, '116020463', 'Boby Markus Sihombing', 'L', 'M', 9, 2016, 'Manajemen', 'Man-SDM\r'),
(974, 985, '116020459', 'Nurvie Berliana', 'P', 'M', 6, 2016, 'Manajemen', 'Man-SDM\r'),
(975, 986, '116020102', 'Muh. Hafizh Iqbal', 'L', 'C', 8, 2016, 'Manajemen', 'Man-Keuangan\r'),
(976, 987, '116020095', 'Kendy Putra Pratama', 'L', 'C', 9, 2016, 'Manajemen', 'Man-Keuangan\r'),
(977, 988, '116020213', 'Dika Maulana', 'L', 'C', 9, 2016, 'Manajemen', 'Man-Keuangan\r'),
(978, 989, '217020001', 'Dicki Dwi Permana', 'L', 'M', 9, 2017, 'Manajemen', 'Man-SDM\r'),
(979, 990, '114020543', 'Shinta Juliana', 'P', 'C', 12, 2014, 'Manajemen', 'Man-Keuangan\r'),
(981, 992, '116020087', 'Rd. Muhammad Nurasa', 'L', 'C', 8, 2016, 'Manajemen', 'Man-Keuangan\r'),
(982, 993, '116020383', 'Fitriyah', 'P', 'K', 9, 2016, 'Manajemen', 'Man-SDM\r'),
(983, 994, '116020541', 'Shiema Monica Shandy', 'P', 'D', 8, 2016, 'Manajemen', 'Man-Pemasaran\r'),
(984, 995, '116020033', 'Nur Kholis', 'L', 'H', 9, 2016, 'Manajemen', 'Man-SDM\r'),
(985, 996, '116020493', 'Amin Rachmatullah', 'L', 'D', 6, 2016, 'Manajemen', 'Man-Pemasaran\r'),
(986, 997, '218020008', 'Hadiyan Nur Fauzan', 'L', 'A', 7, 2018, 'Manajemen', 'Man-Keuangan\r'),
(987, 998, '117020433', 'Tofik Faisal', 'L', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan\r'),
(988, 999, '218020003', 'Sirly Tanika Putri', 'P', 'A', 7, 2018, 'Manajemen', 'Man-Keuangan\r'),
(989, 1000, '116020415', 'Dwi Septian Fadillah', 'L', 'H', 9, 2016, 'Manajemen', 'Man-SDM\r'),
(992, 1003, '117020086', 'Ghina Shoraya ', 'P', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(993, 1004, '117020331', 'Mochamad Ryansa Rizki', 'L', 'D', 7, 2017, 'Manajemen', 'Man-Pemasaran\r'),
(994, 1005, '116020273', 'Cristianto Pahpahan', 'L', 'H', 9, 2016, 'Manajemen', 'Man-SDM\r'),
(995, 1006, '117020411', 'Aldi Johdian', 'L', 'H', 7, 2017, 'Manajemen', 'Man-SDM\r'),
(996, 1007, '116020284', 'Mohamad Ichsan Adhima', 'L', 'H', 9, 2016, 'Manajemen', 'Man-SDM\r'),
(997, 1008, '116020395', 'Feriyan Eka Putra', 'L', 'H', 9, 2016, 'Manajemen', 'Man-SDM\r'),
(998, 1009, '116020425', 'Ahmad Suzai', 'L', 'D', 8, 2016, 'Manajemen', 'Man-Pemasaran\r'),
(999, 1010, '116020421', 'Sofianatul Fitriah ', 'P', 'H', 9, 2016, 'Manajemen', 'Man-SDM\r'),
(1000, 1011, '116020420', 'Sartika Kusuma Dewi', 'P', 'D', 9, 2016, 'Manajemen', 'Man-Pemasaran\r'),
(1030, 5617, '117020015', 'Deni Mulyadi', 'L', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan'),
(1031, 5618, '117020016', 'Syifa Fakhira', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan'),
(1032, 5619, '117020018', 'Komarudin', 'L', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan'),
(1033, 5620, '117020012', 'Nada Soraya', 'P', 'A', 7, 2017, 'Manajemen', 'Man-Keuangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_manajer`
--

CREATE TABLE `user_manajer` (
  `id_manajer` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_manajer` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_manajer`
--

INSERT INTO `user_manajer` (`id_manajer`, `id_user`, `nama_manajer`, `jenis_kelamin`, `jabatan`) VALUES
(1, 625, 'a1manajer', 'L', 'a1manajer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_penguji`
--

CREATE TABLE `user_penguji` (
  `id_penguji` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nik` varchar(10) NOT NULL,
  `nama_penguji` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `jafung` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_penguji`
--

INSERT INTO `user_penguji` (`id_penguji`, `id_user`, `nik`, `nama_penguji`, `jenis_kelamin`, `jafung`) VALUES
(10, 5553, '21590098', 'Dr. Junaedi., SE., MM', 'L', 'Lektor Kepala\r'),
(11, 5554, '31460852', 'Dr. Moh.Santoso., SE.,MM', 'L', 'Lektor\r'),
(12, 5555, '21760518', 'Siska Ernawati Fatimah SE., MM', 'P', 'Lektor\r'),
(13, 5556, '21660252', 'Dr. Edy Hartono, SE., MM.', 'L', 'Lektor\r'),
(14, 5557, '21740184', 'Aang Curatman, SP., M.Si.', 'L', 'Lektor\r'),
(15, 5558, '21700164', 'Benny Dhevyanto, SE., MM.', 'L', 'Lektor\r'),
(17, 5560, '21710178', 'Noveria Susijawati, SE., MM.', 'P', 'Lektor\r'),
(18, 5561, '21710168', 'Siti Maryam, SE., MM', 'P', 'Lektor\r'),
(19, 5562, '21740188', 'Teguh Pranowo, SE., M.Si.', 'L', 'Lektor\r'),
(21, 5564, '23580069', 'Hj. Dharliana, SE., SH., MM., MH.', 'P', 'Lektor\r'),
(22, 5565, '21710227', 'H. Ade Solahudin, SE., MM.', 'L', 'Asisten Ahli\r'),
(24, 5567, '21760251', 'Lisa Harry Sulistiowati,SE., MM.', 'P', 'Asisten Ahli\r'),
(25, 5568, '21830542', 'Nurhana Dhea Parlina, SE., MM.', 'P', 'Asisten Ahli\r'),
(26, 5569, '21820543', 'Maiyaliza, SE., M.Si.', 'P', 'Asisten Ahli\r'),
(27, 5570, '21780731', 'Adi Setiawan, SE., MM.', 'L', 'Asisten Ahli\r'),
(28, 5571, '21850777', 'Mardiyani, S.Pd., MM.', 'P', 'Asisten Ahli\r'),
(29, 5572, '21740835', 'Editya Nurdiana, SE., MM.', 'L', 'Asisten Ahli\r'),
(30, 5573, '21870837', 'Agi Syarif Hidayat, SE., MM.', 'L', 'Asisten Ahli\r'),
(31, 5574, '21770878', 'Kartono, SE., M.Si.', 'L', 'Asisten Ahli\r'),
(32, 5575, '21820778', 'Sunimah, SE., M.Si.', 'P', 'Asisten Ahli\r'),
(36, 5579, '21710167', 'Lis Tatin Hernidiatin, SE., MM.', 'P', 'Lektor\r'),
(37, 5580, '21710169', 'Ario Purdianto, SE., MM.', 'L', 'Lektor\r'),
(38, 5581, '23510225', 'H. Dedy M. Kusmayadi, SE., M.Sc.', 'L', 'Lektor Kepala\r'),
(39, 5582, '411114701', 'Dr. Bachrudin Syaroni, S.E, MM', 'L', 'Lektor Kepala');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_ujian`
--
ALTER TABLE `detail_ujian`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_penguji` (`id_penguji`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id_halaman`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indeks untuk tabel `judul_final`
--
ALTER TABLE `judul_final`
  ADD PRIMARY KEY (`id_judul`),
  ADD KEY `id_ajuan` (`id_ajuan`);
ALTER TABLE `judul_final` ADD FULLTEXT KEY `judul` (`judul`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indeks untuk tabel `ta_ajuan`
--
ALTER TABLE `ta_ajuan`
  ADD PRIMARY KEY (`id_ajuan`),
  ADD UNIQUE KEY `judul_ajuan` (`judul_ajuan`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`);
ALTER TABLE `ta_ajuan` ADD FULLTEXT KEY `judul_ajuan_2` (`judul_ajuan`);

--
-- Indeks untuk tabel `ta_ujian`
--
ALTER TABLE `ta_ujian`
  ADD PRIMARY KEY (`id_ujian`),
  ADD KEY `id_ajuan` (`id_ajuan`),
  ADD KEY `id_detail` (`id_detail`);

--
-- Indeks untuk tabel `ta_verifikasi`
--
ALTER TABLE `ta_verifikasi`
  ADD PRIMARY KEY (`id_ajuan`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indeks untuk tabel `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user_mahasiswa`
--
ALTER TABLE `user_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `npm` (`npm`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user_manajer`
--
ALTER TABLE `user_manajer`
  ADD PRIMARY KEY (`id_manajer`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user_penguji`
--
ALTER TABLE `user_penguji`
  ADD PRIMARY KEY (`id_penguji`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_ujian`
--
ALTER TABLE `detail_ujian`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id_halaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `judul_final`
--
ALTER TABLE `judul_final`
  MODIFY `id_judul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `ta_ajuan`
--
ALTER TABLE `ta_ajuan`
  MODIFY `id_ajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT untuk tabel `ta_ujian`
--
ALTER TABLE `ta_ujian`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5624;

--
-- AUTO_INCREMENT untuk tabel `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user_mahasiswa`
--
ALTER TABLE `user_mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1034;

--
-- AUTO_INCREMENT untuk tabel `user_manajer`
--
ALTER TABLE `user_manajer`
  MODIFY `id_manajer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user_penguji`
--
ALTER TABLE `user_penguji`
  MODIFY `id_penguji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_ujian`
--
ALTER TABLE `detail_ujian`
  ADD CONSTRAINT `detail_ujian_ibfk_1` FOREIGN KEY (`id_penguji`) REFERENCES `user_penguji` (`id_penguji`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_ujian_ibfk_2` FOREIGN KEY (`id_mahasiswa`) REFERENCES `user_mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_ujian_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `user_admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `halaman`
--
ALTER TABLE `halaman`
  ADD CONSTRAINT `halaman_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user_admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `halaman_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `user_admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `judul_final`
--
ALTER TABLE `judul_final`
  ADD CONSTRAINT `judul_final_ibfk_1` FOREIGN KEY (`id_ajuan`) REFERENCES `ta_ajuan` (`id_ajuan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD CONSTRAINT `pengumuman_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user_admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengumuman_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `user_admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ta_ajuan`
--
ALTER TABLE `ta_ajuan`
  ADD CONSTRAINT `ta_ajuan_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `user_mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ta_ujian`
--
ALTER TABLE `ta_ujian`
  ADD CONSTRAINT `ta_ujian_ibfk_1` FOREIGN KEY (`id_ajuan`) REFERENCES `ta_ajuan` (`id_ajuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ta_ujian_ibfk_2` FOREIGN KEY (`id_detail`) REFERENCES `detail_ujian` (`id_detail`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ta_verifikasi`
--
ALTER TABLE `ta_verifikasi`
  ADD CONSTRAINT `ta_verifikasi_ibfk_1` FOREIGN KEY (`id_ajuan`) REFERENCES `ta_ajuan` (`id_ajuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ta_verifikasi_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `user_admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_admin`
--
ALTER TABLE `user_admin`
  ADD CONSTRAINT `user_admin_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_mahasiswa`
--
ALTER TABLE `user_mahasiswa`
  ADD CONSTRAINT `user_mahasiswa_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_penguji`
--
ALTER TABLE `user_penguji`
  ADD CONSTRAINT `user_penguji_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
