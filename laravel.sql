-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 29 Nov 2020 pada 02.16
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
('00db883a-29ab-3d52-a1e3-3ec6b5eb9bc8', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:29:32', NULL),
('0223e0a5-a89c-3f5e-89d1-3b259de9e896', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:34:06', NULL),
('086d0702-87aa-312d-8273-6eaf072e9f5d', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:34:21', NULL),
('0ab1e0f8-df4f-36ea-a270-42701b6fbccb', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:31:55', NULL),
('10e0f3ad-c1cc-390b-a919-f0d7064373c8', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:34:13', NULL),
('11b896cf-caaf-31ec-a9c7-e0678630747f', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:31:34', NULL),
('180b3a0a-7ae9-36fe-9e20-d968bc01620f', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:29:41', NULL),
('18e8e32e-f156-394d-b369-369e968219fc', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:31:44', NULL),
('197c6e5a-fc2f-37cf-8249-324b7ee1c702', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:31:48', NULL),
('1d13e91e-3f84-3b3f-8d38-c567cea6628a', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:29:35', NULL),
('1e8c323c-a367-3e2c-ba3f-706c04dce52b', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:29:25', NULL),
('32c09c8f-3ee0-316f-8a68-fca9f9e3240f', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:34:17', NULL),
('3a54ca78-b930-378f-8887-fa9de279ed34', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:29:29', NULL),
('3e79d255-8821-3acb-8ade-3780cb94f1de', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:29:39', NULL),
('402288c3-ad44-3c81-82c6-fc398b0314ac', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:31:53', NULL),
('4e5f6788-c28f-3894-a095-d64adaa0be51', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:34:12', NULL),
('4fec3f88-e6e6-3b4f-b3de-36e41dea1e76', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:31:33', NULL),
('52056eb5-909e-31a5-b3d9-8bd07c0a5478', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:31:51', NULL),
('54f9e6aa-f471-3c27-be0d-3474096c1c2a', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:29:44', NULL),
('56d976e8-ba5f-3b93-8436-1a508938d40f', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:31:35', NULL),
('6664e72e-34db-365b-a7a9-dbbf1a9c83b0', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:31:52', NULL),
('68b21622-2641-3ffe-837b-b1cc99c940d9', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:34:08', NULL),
('6c4b77e8-2594-34cd-8576-69ec5ed47b7a', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:34:09', NULL),
('6c9220f6-7315-3d33-a79d-121ccb2d420c', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:34:19', NULL),
('756bf827-a85a-3306-ba40-7ab8c770f829', 'APD Perawat KURANG', 'MARI BANTU PERAWAT DIGARDA TERDEPAN', '12.jpg', '2020-11-28 20:29:37', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  `collected` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`, `address`, `required`, `collected`) VALUES
('132c3517-9602-31fe-a9e8-ad02e1fd3dd2', 'Bobot Hanya 3,7 Kg & Perut Abi Busung Tak Bisa BAB', 'Bobot Hanya 3,7 Kg & Perut Abi Busung Tak Bisa BAB', '1.jpg', '2020-11-28 20:36:52', NULL, 'Yayasan KNDJH Peduli Kasih Lampung', 3420342, 1568453),
('152d7b69-e916-396b-b698-dc1fc8f7f955', 'Bantu Windo', 'Windo Busung Lapar', '1.jpg', '2020-11-28 20:36:58', NULL, 'Ki. Wahidin No. 817, Surakarta 63459, Papua', 1556421, 1449714),
('1c0eb9bf-7590-332c-9f14-184fc8b67b5f', 'Bantu Santi Melawan Kanker', 'Bantu Santi', '2.jpg', '2020-11-28 20:36:57', NULL, 'Psr. Baik No. 980, Tidore Kepulauan 94493, NTB', 1988404, 2641772),
('2acea1e1-f180-3c1c-a85d-653801e12c9e', 'Bocah pintar butuh dana operasi untuk kanker', 'Bantu aden meraih cita citanya dengan operasi', '3.jpg', '2020-11-28 20:37:11', NULL, 'Kpg. Ters. Pasir Koja No. 925, Sorong 35983, KalBar', 1511780, 2578666),
('2b9741ba-7cac-3b49-9bab-421be3918281', 'Bantu melawan Covid', 'Bantu melawan Covid', '4.jpg', '2020-11-28 20:36:51', NULL, 'Psr. Untung Suropati No. 435, Lubuklinggau 87311, SumSel', 3355804, 2493084),
('7e133e27-1dc0-3543-bad8-7895dbc87e66', 'Bantu panti aisyah', 'Panti Aisyah menampung 300 lebih anak yatim butuh  bantuan berupa biaya untuk uang makan', '15.jpg', '2020-11-28 20:37:03', NULL, 'Jln. sutaatmaja No. 689, Langsa 31058, bandung', 1907554, 2100815),
('7f9dc0a5-3a20-3e38-8385-0ab80220a3ab', 'Bantu Panti Al`Ayubi', 'Panti Alayubi merupakan panti asuhan yangb menampung para hafidz quran', '14.png', '2020-11-28 20:36:54', NULL, 'Jl. Sudarmono No. 899, Bandung 25059, Jabar', 1972832, 2852926),
('875963bf-57aa-3997-b2e4-3cf54f9cd242', 'Braile Untuk Lansia tunanetra', 'Bantu Lansia belajar baca Quran', '13.jpg', '2020-11-28 20:37:02', NULL, 'Ki. Wora Wari No. 646, Langsa 63744, Riau', 3657607, 2613216),
('89c9c2c3-1786-3600-9219-3b72a608aa52', 'Donasi Braile untuk para lansia di bandung', 'Komunitas lansia ingin mengajak anda untuk mendonasikan uang anda untuk membeli alquran braile untuk para lansia di kota bandung', '11.jpg', '2020-11-28 20:36:55', NULL, 'Kab. Bandung', 1933876, 1077204),
('a90100a9-04a5-3548-bec9-f142428444a2', 'Gempa sukabumi', 'bantu sukabumi melawan gempa', '9.jpeg', '2020-11-28 20:37:10', NULL, 'Sukabumi jawabarat', 2670761, 2493222),
('b5a68fbf-ed15-3452-bfad-60010bbc1a54', 'Gempa Palu ayo kita bantu', 'ayo bahu membahu membantu korban gempa palu', '8.jpg', '2020-11-28 20:37:13', NULL, 'KOTA PALU, Sulawesi', 3012150, 2040118),
('bbfa25d9-5a28-3a1c-9d5e-aae8be9e3843', 'Longsor bogor', 'Bantu para pengungsi untuk bertahan hidup akibat longsor di bogor', '9.jpeg', '2020-11-28 20:37:14', NULL, 'Ki. Gegerkalong Hilir No. 138, bogor ', 3342122, 1493715),
('c255b694-8185-3ee7-a83e-d18c3c1c09c7', 'Bantu SDN 2 Garut Memperbaiki sekolah karna longsor', 'Longsor pada tangga 02-11-20 mengakibatkan sekolah dasar negeri 2 hancur, ayo bantu adik kita agar bisa bersekolah', '10.jpeg', '2020-11-28 20:37:06', NULL, 'Gg. Acordion No. 2, Probolinggo 70989, NTB', 2799322, 1891338),
('c62e1843-218c-37ca-a6a1-33c40ad5fe7a', 'Gempa Bali', 'Bali melawan gempa', '4.jpg', '2020-11-28 20:37:12', NULL, 'Bali', 1907219, 2103199),
('da668bf5-4295-319d-9bb4-35f5512098ef', 'Bantu melawan Covid', 'Bantu melawan Covid', '4.jpg', '2020-11-28 20:37:04', NULL, 'Jln. Nakula No. 912, Prabumulih 15375, DKI', 3102178, 2498456),
('e0cb7f49-4d1f-340d-a092-f8fb1f82b834', 'Bantu Lawan Covid', 'Bantu melawan Covid', '4.jpg', '2020-11-28 20:37:07', NULL, 'Ki. Reksoninten No. 568, Salatiga 55071, Bengkulu', 2992106, 2844174),
('eb822863-d224-3daa-87a0-f2595b69b40b', 'Bantu Lawan Covid', 'Bantu melawan Covid', '4.jpg', '2020-11-28 20:36:56', NULL, 'Gg. Flores No. 941, Bau-Bau 63055, KalTim', 1532350, 1044784),
('ef76bc19-4e6b-3cc1-95a7-8d8c55a06d53', 'Bantu Lawan Covid', 'Bantu melawan Covid', '4.jpg', '2020-11-28 20:37:00', NULL, 'Ds. Antapani Lama No. 600, Jayapura 32997, Papua', 2136562, 1080305),
('f5d26a6b-1487-3dd7-9c35-05ee9391873a', 'Bantu Lawan Covid', 'Bantu melawan Covid', '4.jpg', '2020-11-28 20:37:08', NULL, 'Kpg. Haji No. 763, Cilegon 89173, NTB', 2745330, 2807917),
('fe97d618-0e18-35be-80a7-6d5f22bed9d9', 'Banjir Bandang', 'Bantu melawan Banjir', '5.jpg', '2020-11-28 20:37:01', NULL, 'Jr. R.E. Martadinata No. 603, Administrasi Jakarta Pusat 41795, KalUt', 2571424, 2232007);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_04_092311_create_roles_table', 1),
(5, '2020_11_04_092717_add_role_id_to_users_table', 1),
(6, '2020_11_04_093134_create_otp_codes_table', 1),
(7, '2020_11_08_171311_add_photo_to_users_table', 1),
(8, '2020_11_20_145443_create_jobs_table', 1),
(9, '2020_11_21_210333_create_campaigns_table', 1),
(10, '2020_11_21_231217_create_blogs_table', 1),
(11, '2020_11_22_013710_add_address_to_campaigns_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `otp_codes`
--

CREATE TABLE `otp_codes` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` int(11) NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_until` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `otp_codes`
--

INSERT INTO `otp_codes` (`id`, `otp`, `user_id`, `valid_until`, `created_at`, `updated_at`) VALUES
('62b69511-2e2b-4ddd-ad26-babe4c453568', 831598, '8026ab05-3fbe-494c-8d43-8fb607d2547f', '2020-11-29 05:54:58', '2020-11-28 22:49:58', '2020-11-28 22:49:58'),
('8c48ae15-c5b3-451b-be1d-d70410d2e95c', 747515, 'ec7d5081-afe6-459a-8ef5-bd62ea673b09', '2020-11-29 06:05:27', '2020-11-28 23:00:27', '2020-11-28 23:00:27'),
('a9a676af-9b5e-4678-90e6-382c32c9655f', 929803, '579fc25c-69ab-4611-9db1-40535c2ca251', '2020-11-29 04:09:44', '2020-11-28 21:04:44', '2020-11-28 21:04:44'),
('d66f6d29-4178-4f3b-9bd3-ff9021e96bc3', 850837, 'c9573cbf-f5c2-443f-a840-19df53d47cdc', '2020-11-29 04:50:43', '2020-11-28 21:45:43', '2020-11-28 21:45:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
('474687cf-6970-47eb-a81e-fb78a440d25c', 'user', NULL, NULL),
('966f52fd-d316-49fa-a201-64747b7449ba', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `photo`) VALUES
('579fc25c-69ab-4611-9db1-40535c2ca251', 'Rivan Nur Ihsan', 'rivannurihsan@gmail.com', NULL, NULL, NULL, '2020-11-28 21:04:44', '2020-11-28 21:04:44', '474687cf-6970-47eb-a81e-fb78a440d25c', 'https://lh3.googleusercontent.com/a-/AOh14Gi5TacIy0PRM1WyKuWz1keNQo4NCiTN_B75VPKp4A=s96-c'),
('8026ab05-3fbe-494c-8d43-8fb607d2547f', 'Ahmad Sanjaya', 'mfadhilganteng979@gmail.com', NULL, NULL, NULL, '2020-11-28 22:49:58', '2020-11-28 22:49:58', '474687cf-6970-47eb-a81e-fb78a440d25c', 'https://lh5.googleusercontent.com/-69C_U0v8Ns4/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnIUC50ToyLJ3Zgj578Q3w5ZYkAgA/s96-c/photo.jpg'),
('c9573cbf-f5c2-443f-a840-19df53d47cdc', 'Jane Raihan', 'raihanjane@gmail.com', NULL, NULL, NULL, '2020-11-28 21:45:43', '2020-11-28 21:45:43', '474687cf-6970-47eb-a81e-fb78a440d25c', 'https://lh6.googleusercontent.com/-jDpgoIH9Kmo/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmFi9a10zwpFU6Eq0bOAJBAdVl4OA/s96-c/photo.jpg'),
('ec7d5081-afe6-459a-8ef5-bd62ea673b09', 'Muhammad Evan', 'setyoadjiganteng@gmail.com', NULL, NULL, NULL, '2020-11-28 23:00:27', '2020-11-28 23:00:27', '474687cf-6970-47eb-a81e-fb78a440d25c', 'https://lh3.googleusercontent.com/-5j5HRv7I6j4/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclD4m77nztqTLDQVZzz93KQ-woWCw/s96-c/photo.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `otp_codes`
--
ALTER TABLE `otp_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otp_codes_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `otp_codes`
--
ALTER TABLE `otp_codes`
  ADD CONSTRAINT `otp_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
