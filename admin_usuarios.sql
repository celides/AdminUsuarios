-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-10-2023 a las 05:36:41
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `admin_usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_10_14_032950_create_usuarios_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo_electronico` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_de_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_correo_electronico_unique` (`correo_electronico`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo_electronico`, `fecha_de_registro`, `created_at`, `updated_at`) VALUES
(1, 'Aileen', 'Sporer', 'jackson.kling@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(2, 'Clyde', 'Schumm', 'iweber@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(3, 'Madalyn', 'Bahringer', 'federico.johnson@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(4, 'Sydnie', 'Morar', 'hyatt.sigrid@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(5, 'Marisa', 'Greenfelder', 'wuckert.abelardo@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(6, 'Tony', 'Lemke', 'harvey.rosamond@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(7, 'Aileen', 'Bergstrom', 'ibailey@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(8, 'Judah', 'Wuckert', 'chuels@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(9, 'Nat', 'Turner', 'okuneva.nyasia@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(10, 'Pascale', 'Schoen', 'afranecki@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(11, 'Nola', 'Orn', 'nicolas.sandra@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(12, 'Kayla', 'D\'Amore', 'alexzander.oreilly@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(13, 'Shaniya', 'Boyle', 'anibal02@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(14, 'Helen', 'Mitchell', 'dickens.gerald@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(15, 'Nico', 'Gusikowski', 'rita18@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(16, 'Darwin', 'Balistreri', 'clifton.hills@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(17, 'Griffin', 'Harvey', 'schinner.cathrine@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(18, 'Ashlee', 'Simonis', 'alejandra.little@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(19, 'Fredy', 'Wisozk', 'chloe.gusikowski@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(20, 'Burnice', 'O\'Keefe', 'braden.marquardt@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(21, 'Donna', 'Hudson', 'conn.clarissa@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(22, 'Adrianna', 'Smitham', 'godfrey35@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(23, 'Oma', 'Gerlach', 'edyth.trantow@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(24, 'Omer', 'Ruecker', 'marks.letha@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(25, 'Otis', 'Romaguera', 'mckenzie.michael@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(26, 'Korbin', 'Cole', 'herzog.dorris@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(27, 'Savanna', 'Hermiston', 'ckerluke@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(28, 'Adriana', 'Yundt', 'jones.elisabeth@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(29, 'Charles', 'Kassulke', 'jody31@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(30, 'Rudy', 'Cruickshank', 'kemmer.bettie@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(31, 'Murray', 'Boehm', 'vidal.strosin@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(32, 'Antone', 'Adams', 'fredy.reichel@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:34', '2023-10-14 10:10:34'),
(33, 'Timothy', 'Runolfsson', 'marco.parisian@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(34, 'Kennith', 'Krajcik', 'rau.lacy@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(35, 'Larissa', 'Strosin', 'tyree.mann@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(36, 'Edyth', 'Kris', 'neal05@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(37, 'Zackery', 'Buckridge', 'shaag@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(38, 'Trudie', 'Klein', 'macejkovic.tiara@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(39, 'Hillary', 'Langworth', 'hills.reggie@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(40, 'Patience', 'Champlin', 'cbernhard@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(41, 'Nayeli', 'Hickle', 'dimitri.upton@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(42, 'Dedrick', 'Dickens', 'lauren46@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(43, 'Fredrick', 'Kling', 'immanuel.robel@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(44, 'Amir', 'McGlynn', 'nikita.torp@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(45, 'Arnoldo', 'Schinner', 'drunte@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(46, 'Ray', 'Lemke', 'runte.jabari@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(47, 'Brisa', 'Farrell', 'linda.altenwerth@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(48, 'Maybelle', 'Corkery', 'sibyl.williamson@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(49, 'Maximus', 'Dickens', 'yvette.sipes@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(50, 'Joey', 'Frami', 'eloisa81@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(51, 'Sadie', 'Stokes', 'ruecker.queen@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(52, 'Leanna', 'Goyette', 'oconner.nikita@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(53, 'Rhianna', 'Wolf', 'zschultz@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(54, 'Christelle', 'Vandervort', 'dhansen@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(55, 'Cathryn', 'Murray', 'vjones@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(56, 'Ahmed', 'Satterfield', 'ellsworth.beer@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(57, 'Antone', 'Cruickshank', 'keon.wunsch@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(58, 'Ansel', 'Legros', 'wratke@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(59, 'Effie', 'Rutherford', 'bradtke.elisha@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(60, 'Leonard', 'Block', 'cody34@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(61, 'Reilly', 'Beier', 'ybarton@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(62, 'Zane', 'Johnston', 'esatterfield@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(63, 'Maci', 'Koepp', 'hbernhard@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(64, 'Bertha', 'Bernhard', 'trantow.adelbert@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(65, 'Roosevelt', 'Fay', 'tgleason@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(66, 'Aditya', 'Franecki', 'donnelly.albin@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(67, 'Owen', 'Douglas', 'scottie.crist@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(68, 'Serenity', 'Herzog', 'trey.jaskolski@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(69, 'Jason', 'Keebler', 'dicki.ken@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(70, 'Crawford', 'Hagenes', 'bernard.effertz@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(71, 'Raymundo', 'Cormier', 'sydnee.quigley@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(72, 'Marisa', 'Jaskolski', 'claud.kuhlman@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(73, 'Gabe', 'Murray', 'lew67@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(74, 'Danyka', 'Mills', 'marta.bartoletti@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(75, 'Jessie', 'Gaylord', 'ernestina.monahan@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(76, 'Gail', 'Eichmann', 'carol.schiller@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(77, 'Dawn', 'Fahey', 'mrosenbaum@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(78, 'Taryn', 'Stokes', 'mayert.napoleon@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(79, 'Alison', 'Sauer', 'steuber.darrell@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(80, 'Della', 'Bartell', 'huel.hailie@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(81, 'Pierre', 'Kuhn', 'kuvalis.deshaun@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(82, 'Darrell', 'Rau', 'dangelo04@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(83, 'Telly', 'Windler', 'gmills@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(84, 'Ricardo', 'Thompson', 'monserrate.pouros@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(85, 'Irma', 'Mayert', 'irving.abshire@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(86, 'Weldon', 'Hauck', 'jackson02@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(87, 'Kristoffer', 'Will', 'nathan.klocko@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(88, 'Anya', 'Wunsch', 'brooks50@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(89, 'Aurore', 'Smitham', 'otromp@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(90, 'Clair', 'Herzog', 'jreichert@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(91, 'Tyler', 'Haag', 'schamberger.alvena@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(92, 'Eryn', 'Goldner', 'mosciski.garnett@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(93, 'Lacey', 'Conn', 'reinger.ole@example.org', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(94, 'Adrien', 'Moore', 'lrath@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(95, 'Shanie', 'Muller', 'walker.tessie@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(96, 'Judge', 'Rau', 'ima37@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(97, 'Claude', 'Reilly', 'irunolfsdottir@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(98, 'Lula', 'Price', 'marlen48@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(99, 'Vernie', 'Ernser', 'chelsie.hyatt@example.net', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35'),
(100, 'Berta', 'Hudson', 'stanford.willms@example.com', '2023-10-14 10:10:34', '2023-10-14 10:10:35', '2023-10-14 10:10:35');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
