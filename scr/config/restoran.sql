-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2025 pada 11.57
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restoran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Main Course', '2025-06-08 07:07:45', '2025-06-08 07:07:45'),
(2, 'Dessert', '2025-06-08 07:07:45', '2025-06-08 07:07:45'),
(3, 'Drink', '2025-06-08 07:07:45', '2025-06-08 07:07:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `nama`, `harga`, `gambar`, `Jumlah`, `id_kategori`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'Nasi Goreng Seafood', 35000, 'https://images.deliveryhero.io/image/fd-my/LH/l7vf-hero.jpg', 20, 1, 1, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(2, 'Ayam Bakar Hot', 29000, 'https://www.blibli.com/friends-backend/wp-content/uploads/2023/04/B300041-Cover-resep-ayam-bakar-scaled.jpg', 15, 1, 2, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(3, 'Mie Goreng Seafood', 35000, 'https://statics.indozone.news/content/2021/03/20/n0sv4jW/resep-mie-goreng-topping-seafood-yang-enak-dan-lezat89_700.jpg', 30, 1, 3, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(4, 'Beef Steak', 60000, 'https://st3.depositphotos.com/1672917/18210/i/450/depositphotos_182105274-stock-photo-fillet-steak-french-fries-salad.jpg', 15, 1, 4, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(5, 'Chicken Katsu', 27000, 'https://www.waitoafreerange.co.nz/wp-content/uploads/Waitoa-Chicken-Katsu-19729-landscape-1200x1200-1.jpg', 20, 1, 5, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(6, 'Sate Ayam', 35000, 'https://www.rumahmesin.com/wp-content/uploads/2017/03/resep-sate-ayam-madura-mencicipi-makanan-asli-indonesia-yang-mendunia.jpg', 25, 1, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(7, 'Soto Ayam', 20000, 'https://i.pinimg.com/originals/22/a9/9e/22a99e5cff6ef7fd0c703e0b0ae42f66.png', 14, 1, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(8, 'Bakso Urat', 20000, 'https://1.bp.blogspot.com/-UXSlTt1LdIg/YN8E9zWJJbI/AAAAAAAAC2g/or_II5dMT3YogjopAjOpCfP0yd65QblkACLcBGAsYHQ/s1000/1624314596-picsaymdodid.jpg', 29, 1, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(9, 'Ikan Nilla Bakar ', 45000, 'https://www.resepistimewa.com/wp-content/uploads/ikan-mas-bakar-sambal-kecap.jpg', 11, 1, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(10, 'Spaghetti Bolognese', 20000, 'https://tse1.mm.bing.net/th/id/OIP.E0GgYXJkCtHmC71H8DM1SAHaE6?rs=1&pid=ImgDetMain', 17, 1, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(11, 'Chicken Teriyaki', 27000, 'https://hips.hearstapps.com/del.h-cdn.co/assets/17/26/1498598755-teriyaki-chicken.jpg', 25, 1, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(12, 'Sup Daging', 60000, 'https://www.kelabmama.com/story_wordpress/wp-content/uploads/2023/01/resepi-sup-daging-sedap.jpg', 23, 1, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(13, 'Nasi Kuning', 15000, 'https://www.sasa.co.id/medias/page_medias/nasi_kuning_rice_cooker.jpg', 19, 1, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(14, 'Rendang', 40000, 'https://2.bp.blogspot.com/-SxAbSmtNPiE/VF2BrijTXJI/AAAAAAAABHA/2u9psxh2iRk/s1600/Cara-Membuat-Rendang.jpg', 28, 1, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(15, 'Gado-Gado', 20000, 'https://tse3.mm.bing.net/th/id/OIP.PwK88sWZQ5PoNuPpkADc3QHaE7?rs=1&pid=ImgDetMain', 21, 1, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(16, 'Pecel Lele', 20000, 'https://cdn.yummy.co.id/content-images/images/20200325/GIMVTR6uVPgQMzdLoS8doH9g1H3TqaHN-31353835313238373935d41d8cd98f00b204e9800998ecf8427e_800x800.jpg', 17, 1, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(17, 'Nasi Rawon', 25000, 'https://img.freepik.com/premium-photo/picture-rawon_871710-20309.jpg?w=996', 40, 1, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(18, 'Tongseng Kambing', 32000, 'https://statik.tempo.co/data/2024/01/15/id_1271434/1271434_720.jpg', 10, 1, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(19, 'Capcay Goreng ', 20000, 'https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/04/Resep-Cap-Cay-Goreng-Jawa.jpg?fit=3187%2C2440&ssl=1', 9, 1, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(20, 'Sop Buntut', 60000, 'https://marketplace.canva.com/9IhEc/MAEJn49IhEc/1/tl/canva-sop-buntut-or-oxtail-soup-MAEJn49IhEc.jpg', 25, 1, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(21, 'Nasi Goreng', 20000, 'https://tse3.mm.bing.net/th/id/OIP.ClVYslsBXxKx4jlcnDzwdAAAAA?rs=1&pid=ImgDetMain', 15, 1, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(22, 'Ayam Bakar Madu', 30000, 'https://kecipir.com/blog/wp-content/uploads/2022/06/resep-ayam-bakar-madu.jpg', 21, 1, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(23, 'Mie Goreng', 20000, 'https://grosirmesin.com/wp-content/uploads/2020/08/mie-goreng-saus-tiram.jpg', 18, 1, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(24, 'Beef Steak With Mushroom Sauce', 70000, 'https://tse1.mm.bing.net/th/id/OIP.TDeCJkE21d3E0bH5dBLIAwHaE9?rs=1&pid=ImgDetMain', 12, 1, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(25, 'Mie Gomak', 27000, 'https://tse2.mm.bing.net/th/id/OIP.nYkAkvrMi4mCn_h0ROyD0AHaHP?rs=1&pid=ImgDetMain', 23, 1, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(26, 'Bakmie Ayam', 23000, 'https://d12man5gwydfvl.cloudfront.net/wp-content/uploads/2019/04/Bakmi-Ayam-Abang-abang.jpg', 16, 1, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(27, 'Bakmie Bakso', 27000, 'https://www.bakmigm.com/cfind/source/thumb/images/menu/cover_w480_h480_6-bakmi-spc-gm-bakso.png', 19, 1, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(28, 'Mie Yamin', 23000, 'https://superapp.id/blog/wp-content/uploads/2022/02/HerStory-mie-yamin.jpg', 24, 1, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(29, 'Mie Yamin Bakso', 27000, 'https://cdn.idntimes.com/content-images/community/2022/06/fromandroid-a5a0bd465e6fc744b0fffa293c160fbc.jpg', 21, 1, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(30, 'Ikan Gurame Bakar', 55000, 'https://dcostseafood.id/wp-content/uploads/2021/12/Ikan-Gurami-Bakar-sedang.jpg', 10, 1, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(31, 'Ikan Gurame Asam Manis', 60000, 'https://tugujatim.id/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-09-at-23.57.11.jpeg', 7, 1, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(32, 'Iga Bakar', 50000, 'https://www.resepkekinian.com/wp-content/uploads/2022/07/Iga-Bakar-Saus-Madu-768x960.jpg', 23, 1, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(33, 'Iga Goreng', 45000, 'https://tse2.mm.bing.net/th/id/OIP.O23dxGeX-9_g5XNSwreRPAHaH9?rs=1&pid=ImgDetMain', 9, 1, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(34, 'Bebek Goreng', 35000, 'https://2.bp.blogspot.com/-rPZRRxSdF0k/XJRSg9PwUII/AAAAAAAAFCY/kxCqvXH6B1E5Y06y2mPfTpfMC0-jrOhigCK4BGAYYCw/s1600/resep-bebek-goreng.jpg', 15, 1, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(35, 'Bebek Rica-rica', 38000, 'https://i.pinimg.com/474x/25/06/07/2506078e70a728d097abc396a2acb4c8.jpg', 26, 1, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(36, 'Bebek Penyet', 35000, 'https://th.bing.com/th/id/R.308ebd25690af125d8108bb6bd9c9e44?rik=u%2baU2JZNasZblw&riu=http%3a%2f%2fasset-a.grid.id%2fcrop%2f0x0%3a0x0%2f700x465%2fphoto%2f2018%2f07%2f24%2f4075791341.jpg&ehk=QUaiSC53RlO896MCWUCnhHdA9RLgJoYUX32yGBppytw%3d&risl=&pid=ImgRaw&r=0', 16, 1, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(37, 'Es Teler Original', 25000, 'https://tse2.mm.bing.net/th/id/OIP.oLFZkJ_jgtSNwV0B_qlV4wHaEj?w=975&h=600&rs=1&pid=ImgDetMain', 15, 2, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(38, 'Klepon', 18000, 'https://media.istockphoto.com/id/1397798716/photo/klepon-cake.jpg?s=612x612&w=0&k=20&c=6yc-HQUiYhzr6_zltbAqMWyyRBgtbrFNgdxkR0MrTyI=', 20, 2, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(39, 'Dadar Gulung', 30000, 'https://tse1.mm.bing.net/th/id/OIP.roCFZLh3sCRPMiwFojoB_gHaHa?rs=1&pid=ImgDetMain', 31, 2, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(40, 'Puding Coklat Special', 17000, 'https://cdn.idntimes.com/content-images/community/2022/02/fromandroid-07613fff9bfcb0517a12faab286d9a10_600x400.jpg', 15, 2, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(41, 'Es Doger Special', 22000, 'https://asset-2.tstatic.net/medan/foto/bank/images/es-doger-buah-naga.jpg', 20, 2, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(42, 'Kue Lapis', 15000, 'https://tse3.mm.bing.net/th/id/OIP.vo5bSezLfpV2xWZWYxJoXwHaFj?rs=1&pid=ImgDetMain', 12, 2, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(43, 'Bubur Ketan Hitam', 18000, 'https://th.bing.com/th/id/R.ee4bfb68e068aa5c1c9faecc5c26ab41?rik=pPzbLrntEtagyg&riu=http%3a%2f%2fwww.bukumasakan.com%2fwp-content%2fuploads%2f2017%2f10%2fbubur-ketan-hitam-kuah-santan.jpg&ehk=ZWfDz2ghagHers9q3w8YlgpC5T1jyxTQm0rig9%2bEpso%3d&risl=&pid=ImgRaw&r=0', 18, 2, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(44, 'Bubur Kacang Hijau', 18000, 'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2022/04/22/mung-bean-porridge-bubur-kacang-20220422122439.jpg', 23, 2, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(45, 'Pancake', 27000, 'https://bing.com/th?id=OSK.e19a3abe217ad36b13f09c1991e10bcd', 29, 2, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(46, 'Brownies', 28000, 'https://tse4.mm.bing.net/th/id/OIP.LVfjuAGA-ISvCw6GdkMiqQHaHa?rs=1&pid=ImgDetMain', 13, 2, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(47, 'Tiramisu', 35000, 'https://th.bing.com/th/id/OIP.PJBJaaSuh7yKWkdXDPiKzwHaEK?o=7rm=3&rs=1&pid=ImgDetMain', 20, 2, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(48, 'Cheesecake', 35000, 'https://stateofdinner.com/wp-content/uploads/2023/03/philadelphia-cheesecake-featured.jpg', 15, 2, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(49, 'Coookies', 25000, 'https://tse4.mm.bing.net/th/id/OIP.ouwvVto2hxB1W8-T09jmNAHaLH?rs=1&pid=ImgDetMain', 9, 2, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(50, 'Apple Pie', 25000, 'https://images.ctfassets.net/3s5io6mnxfqz/CNXz6YGnSO7JwEhivvy7U/29530e00586123ecb537eb966ec29f42/image1.jpg', 16, 2, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(51, 'Es Pisang Hijau', 35000, 'https://img.freepik.com/premium-photo/es-pisang-ijo-traditional-dessert-from-makassar-south-sulawesi-indonesia-made-from-banana_583400-949.jpg?w=2000', 15, 2, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(52, 'Pops Croffle', 20000, 'https://tb-static.uber.com/prod/image-proc/processed_images/9a3e42821f5025f57e2b25f80ab931e3/c9252e6c6cd289c588c3381bc77b1dfc.jpeg', 20, 2, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(53, 'Waffle', 22000, 'https://i.pinimg.com/originals/f8/d5/2a/f8d52a077c259090b20a51330f75e365.jpg', 37, 2, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(54, 'Corn Caramel', 25000, 'https://fantabulosity.com/wp-content/uploads/2017/11/Easy-Caramel-Corn-Recipe-Homemade-No-Bake-10.jpg', 13, 2, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(55, 'Ice Cream Coklat', 17000, 'https://www.modernhoney.com/wp-content/uploads/2018/08/Homemade-Chocolate-Ice-Cream-1.jpg', 50, 2, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(56, 'Ice Cream Vanilla', 17000, 'https://tse2.mm.bing.net/th/id/OIP.xifMnJWEzG21_wznqQlECQHaLI?rs=1&pid=ImgDetMain', 50, 2, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(57, 'Ice Cream Strawberry', 17000, 'https://www.recipetineats.com/wp-content/uploads/2018/07/Strawberry-Ice-Cream-No-Churn_3b.jpg', 50, 2, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(58, 'Es Dawet Hitam', 20000, 'https://assets-pergikuliner.com/uploads/bootsy/image/21966/medium_Cincau_Hitam__detik.net.id_.jpeg', 36, 2, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(59, 'Tiramisu Mochi', 45000, 'https://www.pholfoodmafia.com/wp-content/uploads/2020/11/4Tiramisu-Cream-Mochi-Cake.jpg', 24, 2, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(60, 'Mochi', 23000, 'https://www.pholfoodmafia.com/wp-content/uploads/2020/11/4Tiramisu-Cream-Mochi-Cake.jpg', 20, 2, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(61, 'Salad Buah', 30000, 'https://www.frisianflag.com/storage/app/media/uploaded-files/salad-buah-yoghurt.jpg', 10, 2, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(62, 'Churros', 28000, 'https://tse1.mm.bing.net/th/id/OIP.QtLaLWQO_DHqua90ObIiywHaLH?rs=1&pid=ImgDetMain', 15, 2, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(63, 'Biskuit', 20000, 'https://www.alnatura.de/-/media/Images/Common/Recipe-Images/1/10/106/1060/106039_Klassischer_Biskuit_mit_Erdbeeren_1350px.jpg', 38, 2, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(64, 'Es Krim Almond', 17000, 'https://p4.wallpaperbetter.com/wallpaper/572/738/397/ice-cream-nuts-spoon-mint-wallpaper-preview.jpg', 50, 2, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(65, 'Es Cendol', 27000, 'https://tse3.mm.bing.net/th/id/OIP.f1mlxPZ88G29bFR0EyiDrgHaE8?rs=1&pid=ImgDetMain', 6, 2, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(66, 'Black Forest', 35000, 'https://bakingupmemories.com/wp-content/uploads/2021/06/german-black-forest-cake-10.jpg', 17, 2, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(67, 'Es Teh Manis', 15000, 'https://asset.kompas.com/crops/-EW4dZIFD3U055K4qtHqSgUg_hM=/92x67:892x600/1200x800/data/photo/2023/08/23/64e59deb79bfb.jpg', 50, 3, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(68, 'Jus Alpukat', 20000, 'https://tse2.mm.bing.net/th/id/OIP.9U6N1_d0Xn09DYG8Sx5y9AHaJ4?rs=1&pid=ImgDetMain', 29, 3, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(69, 'Jus Mangga', 20000, 'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2020/01/Blog_Manfaat-Jus-Mangga-untuk-Kesehatan-dan-Nutrisi-di-Dalamnya.jpg', 30, 3, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(70, 'Jus Strawberry', 20000, 'https://imgx.sonora.id/crop/0x0:0x0/700x465/photo/2023/02/14/istockphoto-951214942-170667ajp-20230214025003.jpg', 27, 3, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(71, 'Soda Gembira', 18000, 'https://www.frisianflag.com/storage/app/media/uploaded-files/soda-gembira-sirup.jpg', 21, 3, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(72, 'Teh Tarik', 15000, 'https://www.masakapahariini.com/wp-content/uploads/2018/12/teh-tarik-MAHI-1-1024x739.jpg', 20, 3, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(73, 'Kopi Hitam', 15000, 'https://res.cloudinary.com/dk0z4ums3/image/upload/v1594099345/attached_image/ini-manfaat-konsumsi-kopi-hitam-dan-efek-sampingnya-untuk-kesehatan.jpg', 25, 3, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(74, 'Kopi Susu', 18000, 'https://img.mbizmarket.co.id/products/thumbs/800x800/2022/11/08/191a310d7c7c0d2b1b838589603e1606.jpg', 30, 3, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(75, 'Milkshake Coklat', 25000, 'https://www.thereciperebel.com/wp-content/uploads/2021/06/how-to-make-a-milkshake-www.thereciperebel.com-1200-36-of-44.jpg', 18, 3, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(76, 'Thai Tea', 18000, 'https://th.bing.com/th/id/R.f41728151235dd9de06e8dea3a7f7d9f?rik=TF18zlvTpzeKoQ&riu=http%3a%2f%2fsakiproducts.com%2fcdn%2fshop%2farticles%2f20230310181037-thai-tea-recipe_1200x1200.webp%3fv%3d1678471844&ehk=9K148%2f7AotCJ%2fjJBpK80Z%2fe8gUn1Km5LPL1vX7M1Tkw%3d&risl=&pid=ImgRaw&r=0', 111, 3, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(77, 'Cappuccino', 27000, 'https://tse2.mm.bing.net/th/id/OIP.Pe-S01F7qQmyT8Md6QyK_wHaE8?rs=1&pid=ImgDetMain', 35, 3, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(78, 'Taro', 25000, 'https://i.pinimg.com/736x/b0/1d/d9/b01dd9eb8447ce651a4185d5104eb915.jpg', 28, 3, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(79, 'Matcha Latte', 25000, 'https://tse3.mm.bing.net/th/id/OIP.7VlBBAg42IIiHsnchtVBbAHaJj?rs=1&pid=ImgDetMain', 25, 3, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(80, 'Lemon Tea', 15000, 'https://media.istockphoto.com/photos/iced-tea-picture-id463558821?b=1&k=20&m=463558821&s=170667a&w=0&h=wzX9FUZWrdMOA1ZdhuiiVBUdMkiZ3iIRfRXzCxcZVmA=', 21, 3, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(81, 'Infused Water ', 13000, 'https://www.tasteofhome.com/wp-content/uploads/2018/03/shutterstock_305343494.jpg', 19, 3, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(82, 'Jus Melon', 20000, 'https://tse4.mm.bing.net/th/id/OIP.d39X_33tZNTTXCZsplBF3wHaHA?rs=1&pid=ImgDetMain', 28, 3, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(83, 'Jus Sirsak', 20000, 'https://img.freepik.com/premium-photo/jus-buah-sirsak-soursop-juice-with-soursop-slice_581937-4171.jpg?w=1480', 17, 3, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(84, 'Jus Tomat', 17000, 'https://tse2.mm.bing.net/th/id/OIP.XuTjBpQacgA3ktiVP7IERQHaE8?rs=1&pid=ImgDetMain', 15, 3, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(85, 'Jus Jambu', 20000, 'https://tse4.mm.bing.net/th/id/OIP.7YirL0wQCy79AtMnMI2_PQHaHa?w=1024&h=1024&rs=1&pid=ImgDetMain', 28, 3, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(86, 'Jus Nanas', 20000, 'https://cdn.yummy.co.id/content-images/images/20230626/AsBAWu1bdGvkOJzUA7IUdgMnt6g5YlX4-31363837373836313734d41d8cd98f00b204e9800998ecf8427e.jpg?x-oss-process=image/format,webp', 16, 3, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(87, 'Jus Apel', 20000, 'https://doktersehat.com/wp-content/uploads/2020/11/manfaat-jus-apel-doktersehat.jpg', 6, 3, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(88, 'Kopi Gula Aren', 17000, 'https://coffeeaddictmama.com/wp-content/uploads/2019/03/iced-coffee-at-home.jpg', 19, 3, 8, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(89, 'Kopi Karamel', 17000, 'https://tse3.mm.bing.net/th/id/OIP.FObTTfkjpJk5pxPPow1TrgHaE8?rs=1&pid=ImgDetMain', 18, 3, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(90, 'Lemon Tea', 17000, 'https://tse3.mm.bing.net/th/id/OIP.2oq468L2JhOdaMUCA5LSJwHaE7?rs=1&pid=ImgDetMain', 20, 3, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(91, 'Milo', 17000, 'https://1.bp.blogspot.com/-CPyCvIicijc/WdS5uIOyyuI/AAAAAAAAAFk/4hmp1KbPdvEdVs2NFZmDEnv6lduT-ugSwCLcBGAs/s1600/es_milo.jpg', 18, 3, 6, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(92, 'Es Coklat', 20000, 'https://coffeeland.co.id/wp-content/uploads/2023/01/mon-jester-VqQDk11L3UU-unsplash-533x800.jpg', 29, 3, 9, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(93, 'Red Velvet', 25000, 'https://www.bigbearswife.com/wp-content/uploads/2017/09/bloody-red-velvet-hot-chocolate.jpg', 38, 3, 7, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(94, 'Green Tea', 15000, 'https://lzd-img-global.slatic.net/g/p/9d58948a6081dc627faf4d8bc68c2caa.jpg_720x720q80.jpg', 19, 3, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(95, 'Smoothies Mangga', 25000, 'https://i.pinimg.com/originals/b9/4e/ca/b94eca63094307959f0d8a67142598b0.jpg', 38, 3, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(96, 'Smoothies Stawberry', 25000, 'https://bellyfull.net/wp-content/uploads/2020/06/Strawberry-Smoothie-blog.jpg', 19, 3, 10, '2025-06-08 07:09:38', '2025-06-08 07:09:38'),
(97, 'Smoothies Coklat', 25000, 'https://th.bing.com/th/id/R.765f6e9737d07aa39cc0f3e3e40b3bb6?rik=F6gl1r3r68o6CQ&riu=http%3a%2f%2favirtualvegan.com%2fwp-content%2fuploads%2f2016%2f03%2fHealthy-Chocolate-Smoothie-1.jpg&ehk=bqN8FqiieXlc4zICxRfcuIvcf70ST%2fR4uRF2QLj5qNY%3d&risl=&pid=ImgRaw&r=0', 26, 1, 10, '2025-06-08 08:40:22', '2025-06-08 08:40:22'),
(98, 'Smoothies Alpukat', 25000, 'https://cdn.idntimes.com/content-images/community/2020/08/cara-membuat-jus-alpukat-35a962cb98a3ef75c47accec22305453.jpg', 23, 2, 6, '2025-06-08 18:33:03', '2025-06-08 18:33:03'),
(99, 'Smoothies Blueberry', 25000, 'https://smoothiesandshakes.com/wp-content/uploads/blueberry-smoothie-12.jpg', 26, 3, 6, '2025-06-08 18:40:11', '2025-06-08 18:40:11'),
(100, 'Jasmin Tea', 15000, 'https://draxe.com/wp-content/uploads/2021/12/JasmineTeaHeader-716x327.jpg', 37, 3, 7, '2025-06-08 18:44:11', '2025-06-08 18:44:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status` enum('pending','diproses','selesai','dibatalkan') DEFAULT 'pending',
  `total` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`id_order`, `id_user`, `status`, `total`, `created_at`, `updated_at`) VALUES
(10, 7, 'pending', 0, '2025-06-08 19:32:57', '2025-06-08 19:32:57'),
(11, 7, 'pending', 0, '2025-06-11 15:13:49', '2025-06-11 15:13:49'),
(12, 7, 'pending', 0, '2025-06-11 15:14:10', '2025-06-11 15:14:10'),
(13, 7, 'pending', 0, '2025-06-11 15:29:43', '2025-06-11 15:29:43'),
(14, 7, 'pending', 215000, '2025-06-11 15:38:27', '2025-06-11 15:38:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_item`
--

CREATE TABLE `order_item` (
  `id_order_item` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_satuan` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `order_item`
--

INSERT INTO `order_item` (`id_order_item`, `id_order`, `id_menu`, `jumlah`, `harga_satuan`, `subtotal`, `created_at`) VALUES
(27, 10, 7, 6, 50000.00, 50000.00, '2025-06-08 19:32:57'),
(28, 12, 3, 4, 20000.00, 75000.00, '2025-06-11 15:14:10'),
(29, 12, 2, 5, 55000.00, 75000.00, '2025-06-11 15:14:10'),
(30, 13, 3, 4, 20000.00, 80000.00, '2025-06-11 15:29:43'),
(31, 13, 5, 5, 27000.00, 135000.00, '2025-06-11 15:29:43'),
(32, 14, 3, 4, 20000.00, 80000.00, '2025-06-11 15:38:27'),
(33, 14, 5, 5, 27000.00, 135000.00, '2025-06-11 15:38:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `id_payment` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `metode` varchar(50) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `status` enum('pending','paid','failed') DEFAULT 'pending',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`id_payment`, `id_order`, `total`, `metode`, `customer`, `status`, `created_at`) VALUES
(7, 1, 50000.00, 'BCA', 'bayu', 'pending', '2025-06-09 03:23:46'),
(8, 1, 100000.00, 'BCA', 'raja', 'pending', '2025-06-09 03:25:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nomor_telepon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `role` enum('admin','kasir','owner') DEFAULT 'kasir',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `token`, `role`, `created_at`, `updated_at`) VALUES
(6, 'dilla', '$2b$10$4bzOOS91uLdptgwNB0gaV..5LaWl2KOec/fwbBWz0rsM8rhjZuoa.', 'dilla@gmail.com', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwidXNlcm5hbWUiOiJkaWxsYSIsInJvbGUiOiJhZG1pbiIsImlhdCI6MTc0OTQwMDk1NiwiZXhwIjoxNzQ5NDg3MzU2fQ.cOh6jGDJVL53OWDkmKFqBFpqRCHhiSvDAjPDJykyrQw', 'admin', '2025-06-08 09:40:48', '2025-06-08 09:40:48'),
(7, 'bayu', '$2b$10$ISVZEZkfj0TmFy6BCMA1OeLT6rsBkZwr8/1mwPa8mA3Aq8ffJeROu', 'bayu@gmail.com', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywidXNlcm5hbWUiOiJiYXl1Iiwicm9sZSI6ImFkbWluIiwiaWF0IjoxNzQ5NDM1NjQ1LCJleHAiOjE3NDk1MjIwNDV9.TQJxUxmY8fQltzzYvXJou0-Ga-LtHw0J_epfGQ77TtA', 'admin', '2025-06-08 19:18:04', '2025-06-08 19:18:04'),
(8, 'Dwi', '$2b$10$QIyOfb6oOYi1IBXXEStGgurbgAYLIM6cIxjGoLom8lNQfrBuKB7ne', 'dwi@gmail.com', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6IkR3aSIsInJvbGUiOiJrYXNpciIsImlhdCI6MTc0OTcxMjY3MywiZXhwIjoxNzQ5Nzk5MDczfQ.pyDaocMoEBxDpcic_H-Foa2rApiPRvnFPHWkGQf-W6w', 'kasir', '2025-06-12 07:17:53', '2025-06-12 07:17:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `id_kategori` (`id_kategori`,`id_user`) USING BTREE;

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id_order_item`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_payment`),
  ADD KEY `id_order` (`id_order`) USING BTREE;

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id_order_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order` (`id_order`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
