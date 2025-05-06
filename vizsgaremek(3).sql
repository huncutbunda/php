-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Máj 04. 16:11
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vizsgaremek`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UserId` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `email`, `created_at`, `UserId`) VALUES
(1, 'rlang', '$2y$12$h6lqJY.EWIpgwPzEzokD1e3fL.vL5mIHGlOlcYm8ypEwBX/jc3PWS', 'ellie.carter@konopelski.net', '2025-05-03 10:31:31', 1),
(2, 'maurice79', '$2y$12$uPt6BbsW0Npu0vrZC4TlvuRwf5Cg8NIGOizYvD.e8sY10.RJBNp9y', 'emaggio@yahoo.com', '2025-05-03 10:31:32', 2),
(3, 'colten63', '$2y$12$uXnHgJGOLvce8/SKku.9H.NlTVpTeZ83JC2A.TNePcG4YbLpNCjkO', 'jlangworth@zboncak.com', '2025-05-03 10:31:32', 3),
(4, 'conn.selmer', '$2y$12$AvEa7IANxFNVFVDQkIqUDu3idM7h3LCFBwBYuQrn8AG4Yl5QMH0Ku', 'stokes.victor@sanford.com', '2025-05-03 10:31:32', 4),
(5, 'dboehm', '$2y$12$uwFDjzhv66DQ.gUR80b62.u9KbD1kulHXrc0FMdypOJ7xZwsewkPu', 'mcorkery@yahoo.com', '2025-05-03 10:31:33', 5),
(6, 'obahringer', '$2y$12$4mSyIkTse3BaMlt5HCRmaeBrqqhcCWtaVvqsNtpYWreTROls70/Gu', 'whaley@moen.com', '2025-05-03 10:31:33', 6),
(7, 'nwest', '$2y$12$3Zjd/druH0agwkvBM516G.BwVkQn3.q/58Ds9QeG1simh6zUQLL0i', 'wiegand.davon@gmail.com', '2025-05-03 10:31:33', 7),
(8, 'dkonopelski', '$2y$12$JIv8IwpiGQcONoSbbR2BeeloWz1UGagE7VkaKFYdn9MhrH.dnRMfS', 'nlesch@becker.info', '2025-05-03 10:31:34', 8),
(9, 'rod.fahey', '$2y$12$NNAitcrAjYm1RhyzCq9H.OkyNWpWi7DJdoEoRGViXd6w0pkHuk3gO', 'rita26@lubowitz.com', '2025-05-03 10:31:34', 9),
(10, 'sidney01', '$2y$12$A/nv38gLZRY.vlfU4X033.Yzs0MICw/vD6K2igM1XFzE04HyYccXe', 'friedrich.erdman@hotmail.com', '2025-05-03 10:31:34', 10);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `brands`
--

CREATE TABLE `brands` (
  `BrandId` bigint(20) UNSIGNED NOT NULL,
  `BrandName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `brands`
--

INSERT INTO `brands` (`BrandId`, `BrandName`) VALUES
(1, 'Simonis-Conroy'),
(2, 'Shields, Walter and Weimann'),
(3, 'Dooley, McClure and Bechtelar'),
(4, 'Rogahn-Funk'),
(5, 'Zulauf, Kutch and Herzog'),
(6, 'Berge-Buckridge'),
(7, 'Langworth Inc'),
(8, 'Yost Inc'),
(9, 'Renner, Zboncak and Parker'),
(10, 'Gaylord-Kling'),
(11, 'Toyota'),
(12, 'Ford'),
(13, 'BMW'),
(14, 'Mercedes-Benz'),
(15, 'Audi'),
(16, 'Volkswagen'),
(17, 'Honda'),
(18, 'Hyundai'),
(19, 'Chevrolet'),
(20, 'Nissan'),
(21, 'Yamaha'),
(22, 'Kawasaki'),
(23, 'Ducati'),
(24, 'Harley-Davidson'),
(25, 'Suzuki'),
(26, 'KTM'),
(27, 'Triumph'),
(28, 'BMW Motorrad'),
(29, 'Aprilia'),
(30, 'Husqvarna');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cars`
--

CREATE TABLE `cars` (
  `CarId` bigint(20) UNSIGNED NOT NULL,
  `Model` varchar(100) NOT NULL,
  `Horsepower` varchar(7) NOT NULL,
  `Color` varchar(10) NOT NULL,
  `Price` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `BrandId` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `cars`
--

INSERT INTO `cars` (`CarId`, `Model`, `Horsepower`, `Color`, `Price`, `Image`, `BrandId`) VALUES
(1, 'Corolla', '132', 'White', 21000, '../public/corolla.png', 11),
(2, 'Focus', '128', 'Red', 30000, '../public/focus.jpg', 12),
(3, 'M3', '140', 'Blue', 35000, '../public/m3.jpg', 13),
(4, 'AMG', '146', 'Grey', 40000, '../public/amg.jpg', 14),
(5, 'Q7', '127', 'Grey', 35000, '../public/q7.png', 15),
(6, 'Golf GTI', '241', 'Red', 31000, '../public/golfgti.jpg', 16),
(7, 'Civic Type R', '315', 'White', 43000, '../public/civictyper.png', 17),
(8, 'i30 N', '276', 'Blue', 34000, '../public/i30n.jpg', 18),
(9, 'Camaro SS', '455', 'Black', 43000, '../public/camaross.jpg', 19),
(10, '370Z', '332', 'Silver', 30000, '../public/370z.jpg', 20);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2025_05_02_000003_create_users_table', 1),
(4, '2025_05_02_130600_create_personal_access_tokens_table', 1),
(5, '2025_05_02_130741_create_admins_table', 1),
(6, '2025_05_02_130808_create_brands_table', 1),
(7, '2025_05_02_130817_create_cars_table', 1),
(8, '2025_05_02_130826_create_motors_table', 1),
(9, '2025_05_02_153255_create_raffles_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `motors`
--

CREATE TABLE `motors` (
  `MotorId` bigint(20) UNSIGNED NOT NULL,
  `Model` varchar(100) NOT NULL,
  `Horsepower` varchar(7) NOT NULL,
  `Color` varchar(10) NOT NULL,
  `Price` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `BrandId` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `motors`
--

INSERT INTO `motors` (`MotorId`, `Model`, `Horsepower`, `Color`, `Price`, `Image`, `BrandId`) VALUES
(1, 'MT-07', '74', 'Blue', 7599, '../public/mt07.jpg', 21),
(2, 'Ninja 400', '49', 'Green', 5699, '../public/ninja400.png', 22),
(3, 'Panigale V2', '155', 'Red', 17995, '../public/panigalev2.jpg', 23),
(4, 'Iron 883', '54', 'Black', 9999, '../public/iron883.jpg', 24),
(5, 'GSX-R600', '104', 'Blue', 11299, '../public/gsxr600.jpg', 25),
(6, '390 Duke', '44', 'Orange', 5999, '../public/390duke.jpg', 26),
(7, 'Street Triple 765 RS', '121', 'Silver', 12995, '../public/765rs.jpg', 27),
(8, 'S 1000 RR', '205', 'White', 18495, '../public/s1000rr.jpg', 28),
(9, 'RS 660', '100', 'Acid Gold', 11399, '../public/rs660.jpg', 29),
(10, 'Vitpilen 401', '44', 'White', 6799, '../public/vitpilen401.png', 30);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `raffles`
--

CREATE TABLE `raffles` (
  `PrizeId` bigint(20) UNSIGNED NOT NULL,
  `UserId` bigint(20) UNSIGNED NOT NULL,
  `entered_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `raffles`
--

INSERT INTO `raffles` (`PrizeId`, `UserId`, `entered_at`) VALUES
(1, 21, '2025-05-02 11:56:34'),
(2, 22, '2025-05-02 18:06:34'),
(3, 23, '2025-05-03 01:41:34'),
(4, 24, '2025-05-03 01:06:34'),
(5, 25, '2025-05-03 08:23:34'),
(6, 26, '2025-05-03 07:26:35'),
(7, 27, '2025-05-02 21:07:35'),
(8, 28, '2025-05-02 20:22:35'),
(9, 29, '2025-05-03 09:30:35'),
(10, 30, '2025-05-02 22:22:35'),
(11, 31, '2025-05-02 23:53:35'),
(12, 32, '2025-05-02 19:51:35'),
(13, 33, '2025-05-03 05:49:35'),
(14, 34, '2025-05-02 11:14:35'),
(15, 35, '2025-05-03 07:55:35'),
(16, 36, '2025-05-02 14:19:35'),
(17, 37, '2025-05-02 20:58:35'),
(18, 38, '2025-05-02 22:05:35'),
(19, 39, '2025-05-02 19:57:35'),
(20, 40, '2025-05-02 15:48:35');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `UserId` bigint(20) UNSIGNED NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Number` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`UserId`, `Username`, `Password`, `Email`, `Number`, `created_at`) VALUES
(1, 'eldon78', '=QL\"$`}t', 'joyce14@goldner.com', '80011', '2025-05-03 10:31:31'),
(2, 'nkunze', ',U,7%9Z!', 'viola79@hotmail.com', '70998', '2025-05-03 10:31:32'),
(3, 'leonie78', '9=fZw(ya', 'drew69@fahey.biz', '59470', '2025-05-03 10:31:32'),
(4, 'vivien.shanahan', 'yeTL-\'>,$', 'ydaniel@reilly.com', '29573', '2025-05-03 10:31:32'),
(5, 'tracy64', '?qQ];;S&B', 'lurline.pfeffer@olson.com', '5098', '2025-05-03 10:31:33'),
(6, 'bosco.janelle', 'm6qU1:>y]', 'vandervort.leon@cremin.info', '64326', '2025-05-03 10:31:33'),
(7, 'powlowski.amparo', '?<eJgskJ', 'beier.bryana@heller.biz', '77606', '2025-05-03 10:31:33'),
(8, 'dheaney', '*R-B)w?kY', 'pschulist@gulgowski.org', '60162', '2025-05-03 10:31:34'),
(9, 'kailee.hill', '\"FB,QLj4R', 'klein.shanelle@gmail.com', '48505', '2025-05-03 10:31:34'),
(10, 'irunolfsdottir', '~tQD*SPPO', 'johnson.pfeffer@mccullough.info', '38194', '2025-05-03 10:31:34'),
(11, 'dustin37', '<)9A-1@gUu', 'onicolas@bartoletti.net', '71164', '2025-05-03 10:31:34'),
(12, 'matt.fahey', 'y{I\':~;^', 'chester.dicki@upton.com', '99967', '2025-05-03 10:31:34'),
(13, 'nchamplin', 'kfv:C~x%', 'emmie41@gmail.com', '5226', '2025-05-03 10:31:34'),
(14, 'bernhard.michele', 'H*Er(Vum8', 'haleigh.parker@gmail.com', '81424', '2025-05-03 10:31:34'),
(15, 'casper.maverick', ';3bsA}&*', 'durgan.ethel@yahoo.com', '79895', '2025-05-03 10:31:34'),
(16, 'qullrich', '=0eY*8CdIZ', 'isabel.howe@hotmail.com', '28487', '2025-05-03 10:31:34'),
(17, 'onie40', 'oRW@)b(Imp', 'dwill@upton.org', '68304', '2025-05-03 10:31:34'),
(18, 'pmayer', 'Fl|_HFdU', 'annabel.labadie@yahoo.com', '46812', '2025-05-03 10:31:34'),
(19, 'ylockman', 'Pb_J\"\"9u', 'paucek.jeromy@gmail.com', '61413', '2025-05-03 10:31:34'),
(20, 'iquigley', 'Jg*y4sKgX', 'anita82@hotmail.com', '97118', '2025-05-03 10:31:34'),
(21, 'greg08', 'I6-h_cR;', 'stamm.jamil@yahoo.com', '13552', '2025-05-03 10:31:34'),
(22, 'cassie.kuhic', '*:hg1aw9#', 'dwaters@simonis.com', '97510', '2025-05-03 10:31:34'),
(23, 'kaylah17', 'EcLc][)EWa', 'little.ada@yahoo.com', '50921', '2025-05-03 10:31:34'),
(24, 'annabel11', 'vX>\'@$7@\\<', 'dweber@nitzsche.com', '27141', '2025-05-03 10:31:34'),
(25, 'block.angeline', 'jz\":}d/1d', 'elouise06@gmail.com', '22412', '2025-05-03 10:31:34'),
(26, 'feeney.buddy', 'D0qYZJFm', 'ikuphal@hotmail.com', '68566', '2025-05-03 10:31:35'),
(27, 'bruen.meta', 'ads2Q5]-', 'izaiah85@dare.com', '17939', '2025-05-03 10:31:35'),
(28, 'ezra15', '$~^|/2XEK3', 'trevion62@gmail.com', '5298', '2025-05-03 10:31:35'),
(29, 'yprice', 'Qz(S>^mE_g', 'maureen.swaniawski@rippin.biz', '25825', '2025-05-03 10:31:35'),
(30, 'camilla82', 'D5lKMDk/', 'orowe@heathcote.biz', '86469', '2025-05-03 10:31:35'),
(31, 'myah.flatley', '$f-`{?H\'=f', 'jordy44@kutch.com', '92746', '2025-05-03 10:31:35'),
(32, 'zgreenholt', 'TvZ(v]FV(f', 'jorge.satterfield@yahoo.com', '29530', '2025-05-03 10:31:35'),
(33, 'schinner.unique', '\"\'<FQD<X)', 'dpowlowski@gmail.com', '33440', '2025-05-03 10:31:35'),
(34, 'hermina.upton', 'I}D}\"}_)?*', 'vfeil@yahoo.com', '51657', '2025-05-03 10:31:35'),
(35, 'luigi.botsford', 'xTha-(w>{M', 'karine.douglas@yahoo.com', '50543', '2025-05-03 10:31:35'),
(36, 'leo39', 'Nt]h?dKIG', 'corwin.arvid@gmail.com', '83331', '2025-05-03 10:31:35'),
(37, 'nrohan', 'c!6%51smja', 'cleve91@klocko.com', '39405', '2025-05-03 10:31:35'),
(38, 'keon.eichmann', 'Vvi35IQ%', 'rstanton@gmail.com', '82368', '2025-05-03 10:31:35'),
(39, 'electa.schuster', ':p)D^Wju', 'garfield48@macejkovic.com', '49851', '2025-05-03 10:31:35'),
(40, 'dashawn36', '~38X$jV=x', 'rebecca54@gmail.com', '81892', '2025-05-03 10:31:35');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_userid_foreign` (`UserId`);

--
-- A tábla indexei `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`BrandId`);

--
-- A tábla indexei `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- A tábla indexei `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- A tábla indexei `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`CarId`),
  ADD KEY `cars_brandid_foreign` (`BrandId`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- A tábla indexei `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `motors`
--
ALTER TABLE `motors`
  ADD PRIMARY KEY (`MotorId`),
  ADD KEY `motors_brandid_foreign` (`BrandId`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `raffles`
--
ALTER TABLE `raffles`
  ADD PRIMARY KEY (`PrizeId`),
  ADD KEY `raffles_userid_foreign` (`UserId`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `brands`
--
ALTER TABLE `brands`
  MODIFY `BrandId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT a táblához `cars`
--
ALTER TABLE `cars`
  MODIFY `CarId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `motors`
--
ALTER TABLE `motors`
  MODIFY `MotorId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `raffles`
--
ALTER TABLE `raffles`
  MODIFY `PrizeId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `UserId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_userid_foreign` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE;

--
-- Megkötések a táblához `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_brandid_foreign` FOREIGN KEY (`BrandId`) REFERENCES `brands` (`BrandId`) ON DELETE CASCADE;

--
-- Megkötések a táblához `motors`
--
ALTER TABLE `motors`
  ADD CONSTRAINT `motors_brandid_foreign` FOREIGN KEY (`BrandId`) REFERENCES `brands` (`BrandId`) ON DELETE CASCADE;

--
-- Megkötések a táblához `raffles`
--
ALTER TABLE `raffles`
  ADD CONSTRAINT `raffles_userid_foreign` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
