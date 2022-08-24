-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Sie 2022, 14:06
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `laravelauth`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'Publicystyka', '2022-08-23 18:02:52', '2022-08-23 18:02:52'),
(5, 'Świat', '2022-08-23 18:03:01', '2022-08-23 18:03:01'),
(6, 'Gospodarka', '2022-08-23 18:03:17', '2022-08-23 18:03:17'),
(7, 'Ekonomia', '2022-08-23 18:03:24', '2022-08-23 18:03:24'),
(8, 'Polska', '2022-08-23 18:03:36', '2022-08-23 18:03:36'),
(9, 'Biznes', '2022-08-23 18:03:43', '2022-08-23 18:03:43');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
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
-- Struktura tabeli dla tabeli `laravel2step`
--

CREATE TABLE `laravel2step` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `authCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authCount` int(11) NOT NULL,
  `authStatus` tinyint(1) NOT NULL DEFAULT 0,
  `authDate` datetime DEFAULT NULL,
  `requestDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `laravel_blocker`
--

CREATE TABLE `laravel_blocker` (
  `id` int(10) UNSIGNED NOT NULL,
  `typeId` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `laravel_blocker`
--

INSERT INTO `laravel_blocker` (`id`, `typeId`, `value`, `note`, `userId`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'test.com', 'Block all domains/emails @test.com', NULL, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(2, 3, 'test.ca', 'Block all domains/emails @test.ca', NULL, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(3, 3, 'fake.com', 'Block all domains/emails @fake.com', NULL, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(4, 3, 'example.com', 'Block all domains/emails @example.com', NULL, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(5, 3, 'mailinator.com', 'Block all domains/emails @mailinator.com', NULL, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `laravel_blocker_types`
--

CREATE TABLE `laravel_blocker_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `laravel_blocker_types`
--

INSERT INTO `laravel_blocker_types` (`id`, `slug`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'email', 'E-mail', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(2, 'ipAddress', 'IP Address', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(3, 'domain', 'Domain Name', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(4, 'user', 'User', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(5, 'city', 'City', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(6, 'state', 'State', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(7, 'country', 'Country', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(8, 'countryCode', 'Country Code', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(9, 'continent', 'Continent', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(10, 'region', 'Region', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `laravel_logger_activity`
--

CREATE TABLE `laravel_logger_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `methodType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `laravel_logger_activity`
--

INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-13 06:50:19', '2022-08-13 06:50:19', NULL),
(2, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-13 06:50:50', '2022-08-13 06:50:50', NULL),
(3, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-13 06:50:57', '2022-08-13 06:50:57', NULL),
(4, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:08:54', '2022-08-23 10:08:54', NULL),
(5, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:09:01', '2022-08-23 10:09:01', NULL),
(6, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:09:03', '2022-08-23 10:09:03', NULL),
(7, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:09:08', '2022-08-23 10:09:08', NULL),
(8, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:09:12', '2022-08-23 10:09:12', NULL),
(9, 'Locked Out', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:09:17', '2022-08-23 10:09:17', NULL),
(10, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:09:22', '2022-08-23 10:09:22', NULL),
(11, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:09:27', '2022-08-23 10:09:27', NULL),
(12, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:09:52', '2022-08-23 10:09:52', NULL),
(13, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:10:05', '2022-08-23 10:10:05', NULL),
(14, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:10:26', '2022-08-23 10:10:26', NULL),
(15, 'Viewed social/redirect/google', 'Guest', NULL, 'http://127.0.0.1:8000/social/redirect/google', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 10:10:35', '2022-08-23 10:10:35', NULL),
(16, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:11:54', '2022-08-23 10:11:54', NULL),
(17, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:12:51', '2022-08-23 10:12:51', NULL),
(18, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:13:26', '2022-08-23 10:13:26', NULL),
(19, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 10:18:10', '2022-08-23 10:18:10', NULL),
(20, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 10:23:11', '2022-08-23 10:23:11', NULL),
(21, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/activity', 'GET', '2022-08-23 10:23:21', '2022-08-23 10:23:21', NULL),
(22, 'Viewed active-users', 'Registered', 1, 'http://127.0.0.1:8000/active-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes', 'GET', '2022-08-23 10:23:29', '2022-08-23 10:23:29', NULL),
(23, 'Viewed blocker', 'Registered', 1, 'http://127.0.0.1:8000/blocker', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/active-users', 'GET', '2022-08-23 10:23:34', '2022-08-23 10:23:34', NULL),
(24, 'Viewed routes', 'Registered', 1, 'http://127.0.0.1:8000/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 10:23:54', '2022-08-23 10:23:54', NULL),
(25, 'Viewed phpinfo', 'Registered', 1, 'http://127.0.0.1:8000/phpinfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/routes', 'GET', '2022-08-23 10:23:57', '2022-08-23 10:23:57', NULL),
(26, 'Viewed profile/Admin', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/phpinfo', 'GET', '2022-08-23 10:24:03', '2022-08-23 10:24:03', NULL),
(27, 'Viewed profile/Admin/edit', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin', 'GET', '2022-08-23 10:24:06', '2022-08-23 10:24:06', NULL),
(28, 'Viewed logs', 'Registered', 1, 'http://127.0.0.1:8000/logs', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin/edit', 'GET', '2022-08-23 10:24:44', '2022-08-23 10:24:44', NULL),
(29, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/logs', 'GET', '2022-08-23 10:25:08', '2022-08-23 10:25:08', NULL),
(30, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-08-23 10:25:21', '2022-08-23 10:25:21', NULL),
(31, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes', 'POST', '2022-08-23 10:25:25', '2022-08-23 10:25:25', NULL),
(32, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:25:38', '2022-08-23 10:25:38', NULL),
(33, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:25:56', '2022-08-23 10:25:56', NULL),
(34, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:26:24', '2022-08-23 10:26:24', NULL),
(35, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:26:30', '2022-08-23 10:26:30', NULL),
(36, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:26:45', '2022-08-23 10:26:45', NULL),
(37, 'Logged In', 'Registered', 2, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:27:01', '2022-08-23 10:27:01', NULL),
(38, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 10:27:02', '2022-08-23 10:27:02', NULL),
(39, 'Logged Out', 'Registered', 2, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'POST', '2022-08-23 10:27:26', '2022-08-23 10:27:26', NULL),
(40, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:27:55', '2022-08-23 10:27:55', NULL),
(41, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 10:27:55', '2022-08-23 10:27:55', NULL),
(42, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 10:29:51', '2022-08-23 10:29:51', NULL),
(43, 'Viewed users/1', 'Registered', 1, 'http://127.0.0.1:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 10:37:53', '2022-08-23 10:37:53', NULL),
(44, 'Viewed profile/Admin', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/1', 'GET', '2022-08-23 10:38:15', '2022-08-23 10:38:15', NULL),
(45, 'Viewed profile/Admin/edit', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin', 'GET', '2022-08-23 10:38:18', '2022-08-23 10:38:18', NULL),
(46, 'Created avatar/upload', 'Registered', 1, 'http://127.0.0.1:8000/avatar/upload', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin/edit', 'POST', '2022-08-23 10:38:32', '2022-08-23 10:38:32', NULL),
(47, 'Edited profile/Admin', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin/edit', 'PATCH', '2022-08-23 10:38:58', '2022-08-23 10:38:58', NULL),
(48, 'Viewed profile/Admin/edit', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin/edit', 'GET', '2022-08-23 10:38:59', '2022-08-23 10:38:59', NULL),
(49, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 10:39:37', '2022-08-23 10:39:37', NULL),
(50, 'Viewed active-users', 'Registered', 1, 'http://127.0.0.1:8000/active-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 10:40:12', '2022-08-23 10:40:12', NULL),
(51, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 10:40:54', '2022-08-23 10:40:54', NULL),
(52, 'Viewed blocker', 'Registered', 1, 'http://127.0.0.1:8000/blocker', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 10:41:13', '2022-08-23 10:41:13', NULL),
(53, 'Viewed logs', 'Registered', 1, 'http://127.0.0.1:8000/logs', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/blocker', 'GET', '2022-08-23 10:41:51', '2022-08-23 10:41:51', NULL),
(54, 'Viewed profile/Admin', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/logs', 'GET', '2022-08-23 10:44:53', '2022-08-23 10:44:53', NULL),
(55, 'Viewed profile/Admin/edit', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin', 'GET', '2022-08-23 10:44:55', '2022-08-23 10:44:55', NULL),
(56, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles/2/edit', 'POST', '2022-08-23 10:46:36', '2022-08-23 10:46:36', NULL),
(57, 'Logged In', 'Registered', 2, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:46:51', '2022-08-23 10:46:51', NULL),
(58, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 10:46:56', '2022-08-23 10:46:56', NULL),
(59, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 10:49:05', '2022-08-23 10:49:05', NULL),
(60, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 10:49:08', '2022-08-23 10:49:08', NULL),
(61, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 10:49:41', '2022-08-23 10:49:41', NULL),
(62, 'Logged Out', 'Registered', 2, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'POST', '2022-08-23 10:49:55', '2022-08-23 10:49:55', NULL),
(63, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 10:50:10', '2022-08-23 10:50:10', NULL),
(64, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 10:50:10', '2022-08-23 10:50:10', NULL),
(65, 'Viewed active-users', 'Registered', 1, 'http://127.0.0.1:8000/active-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 10:50:21', '2022-08-23 10:50:21', NULL),
(66, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/active-users', 'GET', '2022-08-23 10:51:44', '2022-08-23 10:51:44', NULL),
(67, 'Viewed users/2/edit', 'Registered', 1, 'http://127.0.0.1:8000/users/2/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 10:51:53', '2022-08-23 10:51:53', NULL),
(68, 'Viewed profile/Admin', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/2/edit', 'GET', '2022-08-23 10:52:01', '2022-08-23 10:52:01', NULL),
(69, 'Viewed profile/Admin/edit', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin', 'GET', '2022-08-23 10:52:03', '2022-08-23 10:52:03', NULL),
(70, 'Edited profile/Admin', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin/edit', 'PATCH', '2022-08-23 10:52:15', '2022-08-23 10:52:15', NULL),
(71, 'Viewed profile/Admin/edit', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin/edit', 'GET', '2022-08-23 10:52:16', '2022-08-23 10:52:16', NULL),
(72, 'Edited profile/Admin', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin/edit', 'PATCH', '2022-08-23 10:52:25', '2022-08-23 10:52:25', NULL),
(73, 'Viewed profile/Admin/edit', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin/edit', 'GET', '2022-08-23 10:52:25', '2022-08-23 10:52:25', NULL),
(74, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin/edit', 'GET', '2022-08-23 10:52:30', '2022-08-23 10:52:30', NULL),
(75, 'Viewed users/1', 'Registered', 1, 'http://127.0.0.1:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 10:52:34', '2022-08-23 10:52:34', NULL),
(76, 'Viewed users/2', 'Registered', 1, 'http://127.0.0.1:8000/users/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 10:52:44', '2022-08-23 10:52:44', NULL),
(77, 'Viewed profile/User', 'Registered', 1, 'http://127.0.0.1:8000/profile/User', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/2', 'GET', '2022-08-23 10:52:59', '2022-08-23 10:52:59', NULL),
(78, 'Viewed blocker', 'Registered', 1, 'http://127.0.0.1:8000/blocker', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/User', 'GET', '2022-08-23 10:53:08', '2022-08-23 10:53:08', NULL),
(79, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/blocker', 'GET', '2022-08-23 10:53:11', '2022-08-23 10:53:11', NULL),
(80, 'Viewed profile/Admin', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-08-23 10:54:02', '2022-08-23 10:54:02', NULL),
(81, 'Viewed phpinfo', 'Registered', 1, 'http://127.0.0.1:8000/phpinfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin', 'GET', '2022-08-23 10:54:07', '2022-08-23 10:54:07', NULL),
(82, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/phpinfo', 'GET', '2022-08-23 10:54:11', '2022-08-23 10:54:11', NULL),
(83, 'Viewed themes/5', 'Registered', 1, 'http://127.0.0.1:8000/themes/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes', 'GET', '2022-08-23 10:54:22', '2022-08-23 10:54:22', NULL),
(84, 'Viewed themes/14', 'Registered', 1, 'http://127.0.0.1:8000/themes/14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes', 'GET', '2022-08-23 10:54:29', '2022-08-23 10:54:29', NULL),
(85, 'Viewed themes/20', 'Registered', 1, 'http://127.0.0.1:8000/themes/20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes', 'GET', '2022-08-23 10:54:41', '2022-08-23 10:54:41', NULL),
(86, 'Viewed themes/20/edit', 'Registered', 1, 'http://127.0.0.1:8000/themes/20/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes/20', 'GET', '2022-08-23 10:54:48', '2022-08-23 10:54:48', NULL),
(87, 'Viewed themes/28', 'Registered', 1, 'http://127.0.0.1:8000/themes/28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes', 'GET', '2022-08-23 10:55:04', '2022-08-23 10:55:04', NULL),
(88, 'Viewed themes/28/edit', 'Registered', 1, 'http://127.0.0.1:8000/themes/28/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes/28', 'GET', '2022-08-23 10:55:09', '2022-08-23 10:55:09', NULL),
(89, 'Edited themes/28', 'Registered', 1, 'http://127.0.0.1:8000/themes/28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes/28/edit', 'PUT', '2022-08-23 10:55:20', '2022-08-23 10:55:20', NULL),
(90, 'Viewed themes/28', 'Registered', 1, 'http://127.0.0.1:8000/themes/28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes/28/edit', 'GET', '2022-08-23 10:55:20', '2022-08-23 10:55:20', NULL),
(91, 'Viewed routes', 'Registered', 1, 'http://127.0.0.1:8000/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 10:56:04', '2022-08-23 10:56:04', NULL),
(92, 'Viewed profile/Admin', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/routes', 'GET', '2022-08-23 10:56:17', '2022-08-23 10:56:17', NULL),
(93, 'Viewed profile/Admin/edit', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin', 'GET', '2022-08-23 10:56:26', '2022-08-23 10:56:26', NULL),
(94, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/Admin/edit', 'GET', '2022-08-23 10:56:49', '2022-08-23 10:56:49', NULL),
(95, 'Viewed themes/create', 'Registered', 1, 'http://127.0.0.1:8000/themes/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes', 'GET', '2022-08-23 10:56:56', '2022-08-23 10:56:56', NULL),
(96, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 11:03:21', '2022-08-23 11:03:21', NULL),
(97, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 11:09:38', '2022-08-23 11:09:38', NULL),
(98, 'Viewed routes', 'Registered', 1, 'http://127.0.0.1:8000/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 11:22:47', '2022-08-23 11:22:47', NULL),
(99, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/routes', 'GET', '2022-08-23 11:22:51', '2022-08-23 11:22:51', NULL),
(100, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-08-23 11:22:58', '2022-08-23 11:22:58', NULL),
(101, 'Viewed blocker', 'Registered', 1, 'http://127.0.0.1:8000/blocker', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 11:35:19', '2022-08-23 11:35:19', NULL),
(102, 'Viewed routes', 'Registered', 1, 'http://127.0.0.1:8000/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/blocker', 'GET', '2022-08-23 11:35:25', '2022-08-23 11:35:25', NULL),
(103, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 11:41:34', '2022-08-23 11:41:34', NULL),
(104, 'Viewed phpinfo', 'Registered', 1, 'http://127.0.0.1:8000/phpinfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 11:45:31', '2022-08-23 11:45:31', NULL),
(105, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/phpinfo', 'GET', '2022-08-23 11:45:46', '2022-08-23 11:45:46', NULL),
(106, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:8000/activity?page=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/activity', 'GET', '2022-08-23 11:47:09', '2022-08-23 11:47:09', NULL),
(107, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:8000/activity?page=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/activity?page=2', 'GET', '2022-08-23 11:47:28', '2022-08-23 11:47:28', NULL),
(108, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:8000/activity?page=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/activity?page=3', 'GET', '2022-08-23 11:47:34', '2022-08-23 11:47:34', NULL),
(109, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:8000/activity?page=5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/activity?page=4', 'GET', '2022-08-23 11:47:44', '2022-08-23 11:47:44', NULL),
(110, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:8000/activity?page=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/activity?page=5', 'GET', '2022-08-23 11:47:53', '2022-08-23 11:47:53', NULL),
(111, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/activity?page=1', 'GET', '2022-08-23 11:54:46', '2022-08-23 11:54:46', NULL),
(112, 'Viewed themes/18/edit', 'Registered', 1, 'http://127.0.0.1:8000/themes/18/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes', 'GET', '2022-08-23 11:55:00', '2022-08-23 11:55:00', NULL),
(113, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 12:11:50', '2022-08-23 12:11:50', NULL),
(114, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 12:13:40', '2022-08-23 12:13:40', NULL),
(115, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-08-23 12:14:15', '2022-08-23 12:14:15', NULL),
(116, 'Viewed logs', 'Registered', 1, 'http://127.0.0.1:8000/logs', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 12:14:38', '2022-08-23 12:14:38', NULL),
(117, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/logs', 'GET', '2022-08-23 12:14:50', '2022-08-23 12:14:50', NULL),
(118, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 12:15:54', '2022-08-23 12:15:54', NULL),
(119, 'Viewed routes', 'Registered', 1, 'http://127.0.0.1:8000/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/activity', 'GET', '2022-08-23 12:15:58', '2022-08-23 12:15:58', NULL),
(120, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 12:17:57', '2022-08-23 12:17:57', NULL),
(121, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 12:18:04', '2022-08-23 12:18:04', NULL),
(122, 'Viewed blocker', 'Registered', 1, 'http://127.0.0.1:8000/blocker', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-08-23 12:18:15', '2022-08-23 12:18:15', NULL),
(123, 'Viewed logs', 'Registered', 1, 'http://127.0.0.1:8000/logs', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 12:46:55', '2022-08-23 12:46:55', NULL),
(124, 'Viewed active-users', 'Registered', 1, 'http://127.0.0.1:8000/active-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/logs', 'GET', '2022-08-23 12:47:07', '2022-08-23 12:47:07', NULL),
(125, 'Viewed blocker', 'Registered', 1, 'http://127.0.0.1:8000/blocker', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/active-users', 'GET', '2022-08-23 12:47:12', '2022-08-23 12:47:12', NULL),
(126, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 12:47:19', '2022-08-23 12:47:19', NULL),
(127, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 12:50:07', '2022-08-23 12:50:07', NULL),
(128, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 12:58:17', '2022-08-23 12:58:17', NULL),
(129, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 12:58:41', '2022-08-23 12:58:41', NULL),
(130, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 12:59:39', '2022-08-23 12:59:39', NULL),
(131, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 13:00:22', '2022-08-23 13:00:22', NULL),
(132, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 13:06:47', '2022-08-23 13:06:47', NULL),
(133, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 13:09:16', '2022-08-23 13:09:16', NULL),
(134, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 13:09:20', '2022-08-23 13:09:20', NULL),
(135, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 13:09:49', '2022-08-23 13:09:49', NULL),
(136, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 13:11:38', '2022-08-23 13:11:38', NULL),
(137, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 13:11:50', '2022-08-23 13:11:50', NULL),
(138, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 13:12:26', '2022-08-23 13:12:26', NULL),
(139, 'Viewed logs', 'Registered', 1, 'http://127.0.0.1:8000/logs', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 13:12:36', '2022-08-23 13:12:36', NULL),
(140, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 13:12:55', '2022-08-23 13:12:55', NULL),
(141, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 13:36:54', '2022-08-23 13:36:54', NULL),
(142, 'Viewed logs', 'Registered', 1, 'http://127.0.0.1:8000/logs', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 14:27:12', '2022-08-23 14:27:12', NULL),
(143, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 14:27:25', '2022-08-23 14:27:25', NULL),
(144, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 14:27:27', '2022-08-23 14:27:27', NULL),
(145, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 14:27:27', '2022-08-23 14:27:27', NULL),
(146, 'Viewed routes', 'Registered', 1, 'http://127.0.0.1:8000/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/activity', 'GET', '2022-08-23 14:27:34', '2022-08-23 14:27:34', NULL),
(147, 'Viewed active-users', 'Registered', 1, 'http://127.0.0.1:8000/active-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/routes', 'GET', '2022-08-23 14:27:37', '2022-08-23 14:27:37', NULL),
(148, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/active-users', 'GET', '2022-08-23 14:27:41', '2022-08-23 14:27:41', NULL),
(149, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/activity', 'GET', '2022-08-23 14:27:45', '2022-08-23 14:27:45', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(150, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes', 'GET', '2022-08-23 14:27:47', '2022-08-23 14:27:47', NULL),
(151, 'Viewed active-users', 'Registered', 1, 'http://127.0.0.1:8000/active-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-08-23 14:29:50', '2022-08-23 14:29:50', NULL),
(152, 'Viewed routes', 'Registered', 1, 'http://127.0.0.1:8000/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/active-users', 'GET', '2022-08-23 14:29:55', '2022-08-23 14:29:55', NULL),
(153, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 14:32:14', '2022-08-23 14:32:14', NULL),
(154, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 14:34:15', '2022-08-23 14:34:15', NULL),
(155, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 14:57:45', '2022-08-23 14:57:45', NULL),
(156, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:06:50', '2022-08-23 15:06:50', NULL),
(157, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:06:52', '2022-08-23 15:06:52', NULL),
(158, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:10:37', '2022-08-23 15:10:37', NULL),
(159, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:19:18', '2022-08-23 15:19:18', NULL),
(160, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:19:30', '2022-08-23 15:19:30', NULL),
(161, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:19:32', '2022-08-23 15:19:32', NULL),
(162, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:19:32', '2022-08-23 15:19:32', NULL),
(163, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:19:33', '2022-08-23 15:19:33', NULL),
(164, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:19:33', '2022-08-23 15:19:33', NULL),
(165, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:19:34', '2022-08-23 15:19:34', NULL),
(166, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:19:36', '2022-08-23 15:19:36', NULL),
(167, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:20:26', '2022-08-23 15:20:26', NULL),
(168, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:21:26', '2022-08-23 15:21:26', NULL),
(169, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 15:21:42', '2022-08-23 15:21:42', NULL),
(170, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:22:01', '2022-08-23 15:22:01', NULL),
(171, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:24:09', '2022-08-23 15:24:09', NULL),
(172, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:24:11', '2022-08-23 15:24:11', NULL),
(173, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:24:12', '2022-08-23 15:24:12', NULL),
(174, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:24:16', '2022-08-23 15:24:16', NULL),
(175, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:24:22', '2022-08-23 15:24:22', NULL),
(176, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:25:22', '2022-08-23 15:25:22', NULL),
(177, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:29:33', '2022-08-23 15:29:33', NULL),
(178, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:29:38', '2022-08-23 15:29:38', NULL),
(179, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:29:40', '2022-08-23 15:29:40', NULL),
(180, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:29:49', '2022-08-23 15:29:49', NULL),
(181, 'Viewed blocker', 'Registered', 1, 'http://127.0.0.1:8000/blocker', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:30:14', '2022-08-23 15:30:14', NULL),
(182, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/blocker', 'GET', '2022-08-23 15:30:16', '2022-08-23 15:30:16', NULL),
(183, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/activity', 'GET', '2022-08-23 15:30:18', '2022-08-23 15:30:18', NULL),
(184, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:30:20', '2022-08-23 15:30:20', NULL),
(185, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:31:37', '2022-08-23 15:31:37', NULL),
(186, 'Viewed logs', 'Registered', 1, 'http://127.0.0.1:8000/logs', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 15:31:54', '2022-08-23 15:31:54', NULL),
(187, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/logs', 'GET', '2022-08-23 15:31:59', '2022-08-23 15:31:59', NULL),
(188, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/create', 'POST', '2022-08-23 15:32:01', '2022-08-23 15:32:01', NULL),
(189, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-08-23 15:32:02', '2022-08-23 15:32:02', NULL),
(190, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/logs', 'GET', '2022-08-23 15:32:15', '2022-08-23 15:32:15', NULL),
(191, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:32:20', '2022-08-23 15:32:20', NULL),
(192, 'Viewed users/1', 'Registered', 1, 'http://127.0.0.1:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 15:32:23', '2022-08-23 15:32:23', NULL),
(193, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:32:48', '2022-08-23 15:32:48', NULL),
(194, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:35:06', '2022-08-23 15:35:06', NULL),
(195, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:35:08', '2022-08-23 15:35:08', NULL),
(196, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:35:28', '2022-08-23 15:35:28', NULL),
(197, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/1', 'GET', '2022-08-23 15:37:52', '2022-08-23 15:37:52', NULL),
(198, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:37:55', '2022-08-23 15:37:55', NULL),
(199, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:42:02', '2022-08-23 15:42:02', NULL),
(200, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:42:07', '2022-08-23 15:42:07', NULL),
(201, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:42:07', '2022-08-23 15:42:07', NULL),
(202, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:42:08', '2022-08-23 15:42:08', NULL),
(203, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:42:08', '2022-08-23 15:42:08', NULL),
(204, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 15:42:09', '2022-08-23 15:42:09', NULL),
(205, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:45:22', '2022-08-23 15:45:22', NULL),
(206, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:45:35', '2022-08-23 15:45:35', NULL),
(207, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:45:47', '2022-08-23 15:45:47', NULL),
(208, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:46:02', '2022-08-23 15:46:02', NULL),
(209, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:46:04', '2022-08-23 15:46:04', NULL),
(210, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:46:08', '2022-08-23 15:46:08', NULL),
(211, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 15:46:29', '2022-08-23 15:46:29', NULL),
(212, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:13:38', '2022-08-23 16:13:38', NULL),
(213, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:13:42', '2022-08-23 16:13:42', NULL),
(214, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:13:44', '2022-08-23 16:13:44', NULL),
(215, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:14:02', '2022-08-23 16:14:02', NULL),
(216, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:14:06', '2022-08-23 16:14:06', NULL),
(217, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 16:14:10', '2022-08-23 16:14:10', NULL),
(218, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 16:15:34', '2022-08-23 16:15:34', NULL),
(219, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 16:15:36', '2022-08-23 16:15:36', NULL),
(220, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 16:15:45', '2022-08-23 16:15:45', NULL),
(221, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 16:15:47', '2022-08-23 16:15:47', NULL),
(222, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 16:17:50', '2022-08-23 16:17:50', NULL),
(223, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:18:00', '2022-08-23 16:18:00', NULL),
(224, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:18:31', '2022-08-23 16:18:31', NULL),
(225, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:18:34', '2022-08-23 16:18:34', NULL),
(226, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:22:14', '2022-08-23 16:22:14', NULL),
(227, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:24:15', '2022-08-23 16:24:15', NULL),
(228, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:24:17', '2022-08-23 16:24:17', NULL),
(229, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:26:39', '2022-08-23 16:26:39', NULL),
(230, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 16:45:08', '2022-08-23 16:45:08', NULL),
(231, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:46:54', '2022-08-23 16:46:54', NULL),
(232, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:47:32', '2022-08-23 16:47:32', NULL),
(233, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:48:11', '2022-08-23 16:48:11', NULL),
(234, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 16:48:14', '2022-08-23 16:48:14', NULL),
(235, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 16:52:45', '2022-08-23 16:52:45', NULL),
(236, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:52:51', '2022-08-23 16:52:51', NULL),
(237, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 16:52:54', '2022-08-23 16:52:54', NULL),
(238, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:57:30', '2022-08-23 16:57:30', NULL),
(239, 'Viewed use', 'Registered', 1, 'http://127.0.0.1:8000/use', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:57:34', '2022-08-23 16:57:34', NULL),
(240, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 16:58:15', '2022-08-23 16:58:15', NULL),
(241, 'Viewed phpinfo', 'Registered', 1, 'http://127.0.0.1:8000/phpinfo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 17:02:15', '2022-08-23 17:02:15', NULL),
(242, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/phpinfo', 'GET', '2022-08-23 17:03:39', '2022-08-23 17:03:39', NULL),
(243, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 17:03:45', '2022-08-23 17:03:45', NULL),
(244, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 17:03:46', '2022-08-23 17:03:46', NULL),
(245, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 17:03:48', '2022-08-23 17:03:48', NULL),
(246, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 17:04:31', '2022-08-23 17:04:31', NULL),
(247, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 17:04:33', '2022-08-23 17:04:33', NULL),
(248, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 17:05:40', '2022-08-23 17:05:40', NULL),
(249, 'Viewed categories/create', 'Registered', 1, 'http://127.0.0.1:8000/categories/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 17:05:51', '2022-08-23 17:05:51', NULL),
(250, 'Created categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'POST', '2022-08-23 17:05:55', '2022-08-23 17:05:55', NULL),
(251, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'GET', '2022-08-23 17:05:56', '2022-08-23 17:05:56', NULL),
(252, 'Created categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'POST', '2022-08-23 17:05:57', '2022-08-23 17:05:57', NULL),
(253, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'GET', '2022-08-23 17:05:58', '2022-08-23 17:05:58', NULL),
(254, 'Deleted categories/3', 'Registered', 1, 'http://127.0.0.1:8000/categories/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'DELETE', '2022-08-23 17:06:03', '2022-08-23 17:06:03', NULL),
(255, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 17:06:04', '2022-08-23 17:06:04', NULL),
(256, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 17:09:35', '2022-08-23 17:09:35', NULL),
(257, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 17:09:38', '2022-08-23 17:09:38', NULL),
(258, 'Viewed posts/create', 'Registered', 1, 'http://127.0.0.1:8000/posts/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/posts', 'GET', '2022-08-23 17:09:42', '2022-08-23 17:09:42', NULL),
(259, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 17:12:24', '2022-08-23 17:12:24', NULL),
(260, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 17:13:33', '2022-08-23 17:13:33', NULL),
(261, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'POST', '2022-08-23 17:13:41', '2022-08-23 17:13:41', NULL),
(262, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 17:13:53', '2022-08-23 17:13:53', NULL),
(263, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 17:13:54', '2022-08-23 17:13:54', NULL),
(264, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 17:14:05', '2022-08-23 17:14:05', NULL),
(265, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 17:14:41', '2022-08-23 17:14:41', NULL),
(266, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 17:16:30', '2022-08-23 17:16:30', NULL),
(267, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 17:16:31', '2022-08-23 17:16:31', NULL),
(268, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'POST', '2022-08-23 17:16:36', '2022-08-23 17:16:36', NULL),
(269, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 17:16:42', '2022-08-23 17:16:42', NULL),
(270, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 17:16:43', '2022-08-23 17:16:43', NULL),
(271, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 17:17:35', '2022-08-23 17:17:35', NULL),
(272, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 17:17:39', '2022-08-23 17:17:39', NULL),
(273, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 17:17:42', '2022-08-23 17:17:42', NULL),
(274, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 17:17:47', '2022-08-23 17:17:47', NULL),
(275, 'Viewed /', 'Registered', 1, 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 17:17:58', '2022-08-23 17:17:58', NULL),
(276, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 17:20:50', '2022-08-23 17:20:50', NULL),
(277, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 17:20:58', '2022-08-23 17:20:58', NULL),
(278, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 17:57:41', '2022-08-23 17:57:41', NULL),
(279, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 17:57:43', '2022-08-23 17:57:43', NULL),
(280, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 17:57:47', '2022-08-23 17:57:47', NULL),
(281, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 18:02:29', '2022-08-23 18:02:29', NULL),
(282, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 18:02:32', '2022-08-23 18:02:32', NULL),
(283, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 18:02:36', '2022-08-23 18:02:36', NULL),
(284, 'Deleted categories/2', 'Registered', 1, 'http://127.0.0.1:8000/categories/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'DELETE', '2022-08-23 18:02:39', '2022-08-23 18:02:39', NULL),
(285, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 18:02:40', '2022-08-23 18:02:40', NULL),
(286, 'Deleted categories/1', 'Registered', 1, 'http://127.0.0.1:8000/categories/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'DELETE', '2022-08-23 18:02:43', '2022-08-23 18:02:43', NULL),
(287, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 18:02:44', '2022-08-23 18:02:44', NULL),
(288, 'Viewed categories/create', 'Registered', 1, 'http://127.0.0.1:8000/categories/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 18:02:46', '2022-08-23 18:02:46', NULL),
(289, 'Created categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'POST', '2022-08-23 18:02:51', '2022-08-23 18:02:51', NULL),
(290, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'GET', '2022-08-23 18:02:52', '2022-08-23 18:02:52', NULL),
(291, 'Viewed categories/create', 'Registered', 1, 'http://127.0.0.1:8000/categories/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 18:02:55', '2022-08-23 18:02:55', NULL),
(292, 'Created categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'POST', '2022-08-23 18:03:01', '2022-08-23 18:03:01', NULL),
(293, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'GET', '2022-08-23 18:03:02', '2022-08-23 18:03:02', NULL),
(294, 'Viewed categories/create', 'Registered', 1, 'http://127.0.0.1:8000/categories/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 18:03:04', '2022-08-23 18:03:04', NULL),
(295, 'Created categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'POST', '2022-08-23 18:03:17', '2022-08-23 18:03:17', NULL),
(296, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'GET', '2022-08-23 18:03:18', '2022-08-23 18:03:18', NULL),
(297, 'Viewed categories/create', 'Registered', 1, 'http://127.0.0.1:8000/categories/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 18:03:20', '2022-08-23 18:03:20', NULL),
(298, 'Created categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'POST', '2022-08-23 18:03:24', '2022-08-23 18:03:24', NULL),
(299, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'GET', '2022-08-23 18:03:25', '2022-08-23 18:03:25', NULL),
(300, 'Viewed categories/create', 'Registered', 1, 'http://127.0.0.1:8000/categories/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 18:03:28', '2022-08-23 18:03:28', NULL),
(301, 'Created categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'POST', '2022-08-23 18:03:35', '2022-08-23 18:03:35', NULL),
(302, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'GET', '2022-08-23 18:03:36', '2022-08-23 18:03:36', NULL),
(303, 'Viewed categories/create', 'Registered', 1, 'http://127.0.0.1:8000/categories/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 18:03:38', '2022-08-23 18:03:38', NULL),
(304, 'Created categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'POST', '2022-08-23 18:03:43', '2022-08-23 18:03:43', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(305, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'GET', '2022-08-23 18:03:43', '2022-08-23 18:03:43', NULL),
(306, 'Viewed categories/create', 'Registered', 1, 'http://127.0.0.1:8000/categories/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 18:03:47', '2022-08-23 18:03:47', NULL),
(307, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 18:04:45', '2022-08-23 18:04:45', NULL),
(308, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 18:04:48', '2022-08-23 18:04:48', NULL),
(309, 'Viewed posts/create', 'Registered', 1, 'http://127.0.0.1:8000/posts/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/posts', 'GET', '2022-08-23 18:04:50', '2022-08-23 18:04:50', NULL),
(310, 'Created posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/posts/create', 'POST', '2022-08-23 18:05:47', '2022-08-23 18:05:47', NULL),
(311, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/posts/create', 'GET', '2022-08-23 18:05:48', '2022-08-23 18:05:48', NULL),
(312, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 18:06:42', '2022-08-23 18:06:42', NULL),
(313, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 18:06:46', '2022-08-23 18:06:46', NULL),
(314, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 18:10:48', '2022-08-23 18:10:48', NULL),
(315, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 18:11:25', '2022-08-23 18:11:25', NULL),
(316, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 18:12:04', '2022-08-23 18:12:04', NULL),
(317, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 18:12:38', '2022-08-23 18:12:38', NULL),
(318, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 18:13:02', '2022-08-23 18:13:02', NULL),
(319, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 18:13:21', '2022-08-23 18:13:21', NULL),
(320, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 18:13:36', '2022-08-23 18:13:36', NULL),
(321, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 18:13:55', '2022-08-23 18:13:55', NULL),
(322, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'POST', '2022-08-23 18:15:18', '2022-08-23 18:15:18', NULL),
(323, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 18:15:30', '2022-08-23 18:15:30', NULL),
(324, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 18:15:30', '2022-08-23 18:15:30', NULL),
(325, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 18:17:13', '2022-08-23 18:17:13', NULL),
(326, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 18:17:41', '2022-08-23 18:17:41', NULL),
(327, 'Viewed posts/create', 'Registered', 1, 'http://127.0.0.1:8000/posts/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/posts', 'GET', '2022-08-23 18:17:42', '2022-08-23 18:17:42', NULL),
(328, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 18:18:54', '2022-08-23 18:18:54', NULL),
(329, 'Viewed categories/create', 'Registered', 1, 'http://127.0.0.1:8000/categories/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 18:18:55', '2022-08-23 18:18:55', NULL),
(330, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 18:19:35', '2022-08-23 18:19:35', NULL),
(331, 'Viewed posts/create', 'Registered', 1, 'http://127.0.0.1:8000/posts/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 18:19:38', '2022-08-23 18:19:38', NULL),
(332, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/posts/create', 'GET', '2022-08-23 18:19:41', '2022-08-23 18:19:41', NULL),
(333, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 18:19:47', '2022-08-23 18:19:47', NULL),
(334, 'Viewed categories/create', 'Registered', 1, 'http://127.0.0.1:8000/categories/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes', 'GET', '2022-08-23 18:19:50', '2022-08-23 18:19:50', NULL),
(335, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'GET', '2022-08-23 18:19:57', '2022-08-23 18:19:57', NULL),
(336, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'POST', '2022-08-23 18:25:51', '2022-08-23 18:25:51', NULL),
(337, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 18:25:59', '2022-08-23 18:25:59', NULL),
(338, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 18:25:59', '2022-08-23 18:25:59', NULL),
(339, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'POST', '2022-08-23 19:43:46', '2022-08-23 19:43:46', NULL),
(340, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 19:45:14', '2022-08-23 19:45:14', NULL),
(341, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 19:45:15', '2022-08-23 19:45:15', NULL),
(342, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 19:45:25', '2022-08-23 19:45:25', NULL),
(343, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 19:45:39', '2022-08-23 19:45:39', NULL),
(344, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 19:45:43', '2022-08-23 19:45:43', NULL),
(345, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 19:45:47', '2022-08-23 19:45:47', NULL),
(346, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/posts', 'GET', '2022-08-23 19:46:17', '2022-08-23 19:46:17', NULL),
(347, 'Viewed activity', 'Registered', 1, 'http://127.0.0.1:8000/activity', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/themes', 'GET', '2022-08-23 19:46:25', '2022-08-23 19:46:25', NULL),
(348, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'POST', '2022-08-23 19:57:13', '2022-08-23 19:57:13', NULL),
(349, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 19:57:55', '2022-08-23 19:57:55', NULL),
(350, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 19:57:55', '2022-08-23 19:57:55', NULL),
(351, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'POST', '2022-08-23 20:00:36', '2022-08-23 20:00:36', NULL),
(352, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 20:00:45', '2022-08-23 20:00:45', NULL),
(353, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 20:00:46', '2022-08-23 20:00:46', NULL),
(354, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 20:00:58', '2022-08-23 20:00:58', NULL),
(355, 'Viewed active-users', 'Registered', 1, 'http://127.0.0.1:8000/active-users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-08-23 20:01:06', '2022-08-23 20:01:06', NULL),
(356, 'Viewed blocker', 'Registered', 1, 'http://127.0.0.1:8000/blocker', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/active-users', 'GET', '2022-08-23 20:01:14', '2022-08-23 20:01:14', NULL),
(357, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/blocker', 'GET', '2022-08-23 20:01:26', '2022-08-23 20:01:26', NULL),
(358, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 20:01:32', '2022-08-23 20:01:32', NULL),
(359, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 20:01:49', '2022-08-23 20:01:49', NULL),
(360, 'Viewed posts/create', 'Registered', 1, 'http://127.0.0.1:8000/posts/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 20:01:50', '2022-08-23 20:01:50', NULL),
(361, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 20:01:50', '2022-08-23 20:01:50', NULL),
(362, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', NULL, 'GET', '2022-08-23 20:02:05', '2022-08-23 20:02:05', NULL),
(363, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 20:02:14', '2022-08-23 20:02:14', NULL),
(364, 'Viewed posts/create', 'Registered', 1, 'http://127.0.0.1:8000/posts/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/posts', 'GET', '2022-08-23 20:02:17', '2022-08-23 20:02:17', NULL),
(365, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/posts/create', 'GET', '2022-08-23 20:03:07', '2022-08-23 20:03:07', NULL),
(366, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 20:13:11', '2022-08-23 20:13:11', NULL),
(367, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 20:13:38', '2022-08-23 20:13:38', NULL),
(368, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 20:13:45', '2022-08-23 20:13:45', NULL),
(369, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'POST', '2022-08-23 20:13:51', '2022-08-23 20:13:51', NULL),
(370, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 20:13:57', '2022-08-23 20:13:57', NULL),
(371, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 20:13:57', '2022-08-23 20:13:57', NULL),
(372, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 20:38:15', '2022-08-23 20:38:15', NULL),
(373, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 20:38:27', '2022-08-23 20:38:27', NULL),
(374, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 20:50:44', '2022-08-23 20:50:44', NULL),
(375, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 20:50:46', '2022-08-23 20:50:46', NULL),
(376, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'POST', '2022-08-23 20:50:50', '2022-08-23 20:50:50', NULL),
(377, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 20:50:59', '2022-08-23 20:50:59', NULL),
(378, 'Logged In', 'Registered', 2, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 20:51:03', '2022-08-23 20:51:03', NULL),
(379, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 20:51:04', '2022-08-23 20:51:04', NULL),
(380, 'Viewed profile/User', 'Registered', 2, 'http://127.0.0.1:8000/profile/User', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 20:51:15', '2022-08-23 20:51:15', NULL),
(381, 'Logged Out', 'Registered', 2, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'POST', '2022-08-23 21:03:24', '2022-08-23 21:03:24', NULL),
(382, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 21:03:35', '2022-08-23 21:03:35', NULL),
(383, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 21:03:36', '2022-08-23 21:03:36', NULL),
(384, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 21:03:40', '2022-08-23 21:03:40', NULL),
(385, 'Viewed users/2/edit', 'Registered', 1, 'http://127.0.0.1:8000/users/2/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-08-23 21:03:45', '2022-08-23 21:03:45', NULL),
(386, 'Edited users/2', 'Registered', 1, 'http://127.0.0.1:8000/users/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/2/edit', 'PUT', '2022-08-23 21:04:09', '2022-08-23 21:04:09', NULL),
(387, 'Viewed users/2/edit', 'Registered', 1, 'http://127.0.0.1:8000/users/2/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/users/2/edit', 'GET', '2022-08-23 21:04:09', '2022-08-23 21:04:09', NULL),
(388, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 21:05:59', '2022-08-23 21:05:59', NULL),
(389, 'Viewed categories/create', 'Registered', 1, 'http://127.0.0.1:8000/categories/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 21:06:12', '2022-08-23 21:06:12', NULL),
(390, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories/create', 'GET', '2022-08-23 21:06:17', '2022-08-23 21:06:17', NULL),
(391, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-08-23 21:06:25', '2022-08-23 21:06:25', NULL),
(392, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/roles', 'POST', '2022-08-23 21:17:04', '2022-08-23 21:17:04', NULL),
(393, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 21:17:10', '2022-08-23 21:17:10', NULL),
(394, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 21:17:10', '2022-08-23 21:17:10', NULL),
(395, 'Viewed panel', 'Registered', 1, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 21:17:13', '2022-08-23 21:17:13', NULL),
(396, 'Viewed categories', 'Registered', 1, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 21:17:18', '2022-08-23 21:17:18', NULL),
(397, 'Viewed posts', 'Registered', 1, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 21:17:20', '2022-08-23 21:17:20', NULL),
(398, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/posts', 'POST', '2022-08-23 21:17:24', '2022-08-23 21:17:24', NULL),
(399, 'Logged In', 'Registered', 2, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 21:17:33', '2022-08-23 21:17:33', NULL),
(400, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 21:17:33', '2022-08-23 21:17:33', NULL),
(401, 'Viewed panel', 'Registered', 2, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-23 21:17:44', '2022-08-23 21:17:44', NULL),
(402, 'Viewed categories', 'Registered', 2, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 21:17:56', '2022-08-23 21:17:56', NULL),
(403, 'Viewed categories', 'Registered', 2, 'http://127.0.0.1:8000/categories', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 21:19:44', '2022-08-23 21:19:44', NULL),
(404, 'Viewed panel', 'Registered', 2, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/categories', 'GET', '2022-08-23 21:19:49', '2022-08-23 21:19:49', NULL),
(405, 'Logged Out', 'Registered', 2, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'POST', '2022-08-23 21:19:53', '2022-08-23 21:19:53', NULL),
(406, 'Logged In', 'Registered', 2, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-23 21:20:07', '2022-08-23 21:20:07', NULL),
(407, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-23 21:20:07', '2022-08-23 21:20:07', NULL),
(408, 'Viewed panel', 'Registered', 2, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-23 21:20:20', '2022-08-23 21:20:20', NULL),
(409, 'Viewed posts', 'Registered', 2, 'http://127.0.0.1:8000/posts', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-23 21:20:25', '2022-08-23 21:20:25', NULL),
(410, 'Logged Out', 'Registered', 2, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'POST', '2022-08-23 21:30:40', '2022-08-23 21:30:40', NULL),
(411, 'Logged In', 'Registered', 2, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-24 05:02:07', '2022-08-24 05:02:07', NULL),
(412, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-24 05:02:07', '2022-08-24 05:02:07', NULL),
(413, 'Viewed profile/User', 'Registered', 2, 'http://127.0.0.1:8000/profile/User', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-24 05:02:29', '2022-08-24 05:02:29', NULL),
(414, 'Viewed panel', 'Registered', 2, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/profile/User', 'GET', '2022-08-24 05:02:34', '2022-08-24 05:02:34', NULL),
(415, 'Viewed panel', 'Registered', 2, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-24 06:20:00', '2022-08-24 06:20:00', NULL),
(416, 'Viewed panel', 'Registered', 2, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-24 06:20:09', '2022-08-24 06:20:09', NULL),
(417, 'Viewed posts/create', 'Registered', 2, 'http://127.0.0.1:8000/posts/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'GET', '2022-08-24 06:20:11', '2022-08-24 06:20:11', NULL),
(418, 'Viewed panel', 'Registered', 2, 'http://127.0.0.1:8000/panel', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/', 'GET', '2022-08-24 06:43:06', '2022-08-24 06:43:06', NULL),
(419, 'Logged Out', 'Registered', 2, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/panel', 'POST', '2022-08-24 06:43:11', '2022-08-24 06:43:11', NULL),
(420, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-08-24 06:43:18', '2022-08-24 06:43:18', NULL),
(421, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-08-24 06:43:18', '2022-08-24 06:43:18', NULL),
(422, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-08-24 06:43:23', '2022-08-24 06:43:23', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_15_105324_create_roles_table', 1),
(4, '2016_01_15_114412_create_role_user_table', 1),
(5, '2016_01_26_115212_create_permissions_table', 1),
(6, '2016_01_26_115523_create_permission_role_table', 1),
(7, '2016_02_09_132439_create_permission_user_table', 1),
(8, '2017_03_09_082449_create_social_logins_table', 1),
(9, '2017_03_09_082526_create_activations_table', 1),
(10, '2017_03_20_213554_create_themes_table', 1),
(11, '2017_03_21_042918_create_profiles_table', 1),
(12, '2017_11_04_103444_create_laravel_logger_activity_table', 1),
(13, '2017_12_09_070937_create_two_step_auth_table', 1),
(14, '2019_02_19_032636_create_laravel_blocker_types_table', 1),
(15, '2019_02_19_045158_create_laravel_blocker_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2022_06_07_073738_create_categories_table', 2),
(18, '2022_06_07_073800_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(2, 2, 1, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(3, 3, 1, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(4, 4, 1, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(5, 1, 2, '2022-08-23 10:46:18', '2022-08-23 10:46:18', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `post_text`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'Prezydent Czech: Potępiam ataki Brukseli na Polskę i Węgry', '1661285147.e56572905006574265d9eb222ce7.jpeg', '<div id=\"art-lead-inner\" class=\"art-lead\" style=\"font-size: 22px; font-weight: 600; line-height: 32px; padding: 0px 0px 25px 100px; margin: 0px; color: #2f2f30; font-family: Inter, Arial, sans-serif; background-color: #ffffff;\">Prezydent Czech Milosz Zeman potępił ataki na&nbsp;Polskę i&nbsp;Węgry ze&nbsp;strony \"niekt&oacute;rych miejsc w&nbsp;Brukseli\".</div>\r\n<div style=\"color: #2f2f30; font-family: Inter, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" data-cp=\"genesis\" data-cp-name=\"end-of-article-lead\">&nbsp;</div>\r\n<div style=\"color: #2f2f30; font-family: Inter, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\" data-cp=\"genesis\" data-cp-name=\"start-of-article-text\">&nbsp;</div>\r\n<div class=\"art-text\" style=\"font-family: Inter, Arial, sans-serif; font-size: 18px; line-height: 27px; padding: 0px 0px 0px 100px; color: #2f2f30; background-color: #ffffff;\">\r\n<div id=\"art-text-inner\" class=\"art-text-inner\">\r\n<p style=\"margin: 0px; padding: 0px 0px 1em;\" data-block-type=\"text\" data-ad-possible=\"true\">Prezydent Czech opowiedział się za&nbsp;dalszą wsp&oacute;łpracą w&nbsp;ramach Grupy Wyszehradzkiej, mimo istniejących r&oacute;żnic między jej członkami. &ndash;&nbsp;Doceniam r&oacute;wnież pracę Wyszehradzkiego Funduszu Kultury. (...) Potępiam&nbsp;<a style=\"outline: none; color: #333333;\" title=\"Sikorski: Środki z&nbsp;KPO trafią do&nbsp;Polski, gdy PiS straci władzę\" href=\"https://dorzeczy.pl/opinie/337468/sikorski-srodki-kpo-zaczna-plynac-po-zmianie-wladzy.html\">ataki, kt&oacute;re z&nbsp;niekt&oacute;rych miejsc w&nbsp;Brukseli</a>&nbsp;są kierowane zar&oacute;wno przeciwko Polsce, jak i&nbsp;Węgrom. Ta&nbsp;wyniosła kuratela i&nbsp;pouczanie, kt&oacute;re &ndash;&nbsp;oczywiście &ndash;&nbsp;może zostać użyte także przeciwko nam, jest -&nbsp;moim zdaniem -&nbsp;nie&nbsp;do&nbsp;przyjęcia dla&nbsp;każdego suwerennego kraju &ndash;&nbsp;powiedział polityk podczas wtorkowego spotkania z&nbsp;ambasadorami</p>\r\n<p style=\"margin: 0px; padding: 0px 0px 1em;\" data-block-type=\"text\" data-ad-possible=\"true\">Zeman stwierdził, że&nbsp;za&nbsp;takim rozwiązaniem są politycy ze&nbsp;wsp&oacute;łrządzącej Czeskiej Partii Pirat&oacute;w. Członkiem Pirat&oacute;w jest minister spraw zagranicznych Czech Jan Lipavsky, kt&oacute;rego prezydent nie&nbsp;zaprosił na&nbsp;spotkanie z&nbsp;ambasadorami. Zeman sprzeciwiał się także jego nominacji na&nbsp;szefa czeskiej dyplomacji.</p>\r\n<h2 style=\"font-size: 1.7em; line-height: 35px; padding: 0.3em 0px 0.8em; margin: 0px; color: #e51b38;\" data-block-type=\"head\" data-ad-possible=\"false\">Sprzeciw wobec federalizacji UE</h2>\r\n<p style=\"margin: 0px; padding: 0px 0px 1em;\" data-block-type=\"text\" data-ad-possible=\"true\">&ndash; Obawiam się, że&nbsp;niekt&oacute;rzy czescy politycy, na&nbsp;przykład z&nbsp;Partii Pirat&oacute;w, poprą propozycje, by&nbsp;nawet kwestie dotyczące naszej suwerenności były poddawane pod&nbsp;głosowanie kwalifikowaną większością głos&oacute;w. I&nbsp;uważam, że&nbsp;jeśli mamy mieć niezależną politykę zagraniczną i&nbsp;niezależne państwo, to&nbsp;musimy zapobiegać takim pr&oacute;bom &ndash;&nbsp;ocenił przyw&oacute;dca Czech.</p>\r\n<p style=\"margin: 0px; padding: 0px 0px 1em;\" data-block-type=\"text\" data-ad-possible=\"true\">Dodał, że&nbsp;kraje Grupy Wyszehradzkiej były w&nbsp;mniejszości, gdy doprowadziły do&nbsp;odejścia pomysł&oacute;w wprowadzenia kwot migracyjnych w&nbsp;UE w&nbsp;trakcie kryzysu z&nbsp;2015&nbsp;r. Zeman powiedział, że&nbsp;gdyby dziś obowiązywała zasada większości kwalifikowanej, to&nbsp;w&nbsp;Europie byliby już migranci z&nbsp;kraj&oacute;w muzułmańskich.</p>\r\n<h3 style=\"font-size: 22px; line-height: 30px; padding: 0.3em 0px 0.8em; margin: 0px;\" data-block-type=\"head\" data-ad-possible=\"false\">Czeska prezydencja</h3>\r\n<p style=\"margin: 0px; padding: 0px 0px 1em;\" data-block-type=\"text\" data-ad-possible=\"true\">Do końca grudnia Czechy sprawują p&oacute;łroczną prezydencję w&nbsp;Radzie UE. Motto czeskiej prezydencji to&nbsp;hasło \"Europa jako zadanie: nowa myśl, nowy kształt, nowa energia\".</p>\r\n<p style=\"margin: 0px; padding: 0px 0px 1em;\" data-block-type=\"text\" data-ad-possible=\"false\">Jako priorytety wskazano zarządzanie kryzysem uchodźczym i&nbsp;odbudowa Ukrainy po&nbsp;wojnie, bezpieczeństwo energetyczne, wzmacnianie potencjału obronnego i&nbsp;cyberbezpieczeństwa Europy, strategiczną odporność europejskiej gospodarki oraz&nbsp;odporność instytucji demokratycznych.</p>\r\n</div>\r\n</div>\r\n<div class=\"art-text art-text-relations\" style=\"font-family: Inter, Arial, sans-serif; font-size: 18px; line-height: 27px; padding: 0px 0px 0px 100px; margin-bottom: 0px; color: #2f2f30; background-color: #ffffff;\">\r\n<div class=\"art-sources\" style=\"margin-top: 20px;\">\r\n<div class=\"sources\" style=\"color: #999999; margin-bottom: 40px;\">Źr&oacute;dło:&nbsp;<span class=\"source\" data-id=\"131\">Interia.pl</span>&nbsp;/&nbsp;<span class=\"source\">PAP/gov.pl</span></div>\r\n</div>\r\n</div>', 4, '2022-08-23 18:05:47', '2022-08-23 18:05:47');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `theme_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `theme_id`, `location`, `bio`, `twitter_username`, `github_username`, `avatar`, `avatar_status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-13 06:41:22', '2022-08-23 10:52:25'),
(2, 2, 1, NULL, NULL, NULL, NULL, NULL, 0, '2022-08-13 06:41:22', '2022-08-13 06:41:22');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 5, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(2, 'User', 'user', 'User Role', 1, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(3, 'Unverified', 'unverified', 'Unverified Role', 0, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(2, 2, 2, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `social_logins`
--

CREATE TABLE `social_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `themes`
--

INSERT INTO `themes` (`id`, `name`, `link`, `notes`, `status`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Default', 'null', NULL, 1, 'theme', 1, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(2, 'Darkly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/darkly/bootstrap.min.css', NULL, 1, 'theme', 2, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(3, 'Cyborg', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cyborg/bootstrap.min.css', NULL, 1, 'theme', 3, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(4, 'Cosmo', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cosmo/bootstrap.min.css', NULL, 1, 'theme', 4, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(5, 'Cerulean', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css', NULL, 1, 'theme', 5, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(6, 'Flatly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css', NULL, 1, 'theme', 6, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(7, 'Journal', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/journal/bootstrap.min.css', NULL, 1, 'theme', 7, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(8, 'Lumen', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lumen/bootstrap.min.css', NULL, 1, 'theme', 8, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(9, 'Paper', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/paper/bootstrap.min.css', NULL, 1, 'theme', 9, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(10, 'Readable', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/readable/bootstrap.min.css', NULL, 1, 'theme', 10, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(11, 'Sandstone', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css', NULL, 1, 'theme', 11, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(12, 'Simplex', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/simplex/bootstrap.min.css', NULL, 1, 'theme', 12, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(13, 'Slate', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/slate/bootstrap.min.css', NULL, 1, 'theme', 13, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(14, 'Spacelab', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css', NULL, 1, 'theme', 14, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(15, 'Superhero', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/superhero/bootstrap.min.css', NULL, 1, 'theme', 15, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(16, 'United', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css', NULL, 1, 'theme', 16, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(17, 'Yeti', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/yeti/bootstrap.min.css', NULL, 1, 'theme', 17, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(18, 'Bootstrap 4.3.1', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', NULL, 1, 'theme', 18, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(19, 'Materialize', 'https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.css', NULL, 1, 'theme', 19, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(20, 'Material Design for Bootstrap (MDB) 4.8.7', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.7/css/mdb.css', NULL, 1, 'theme', 20, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(21, 'mdbootstrap', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.1/css/mdb.min.css', NULL, 1, 'theme', 21, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(22, 'Litera', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css', NULL, 1, 'theme', 22, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(23, 'Lux', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lux/bootstrap.min.css', NULL, 1, 'theme', 23, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(24, 'Materia', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/materia/bootstrap.min.css', NULL, 1, 'theme', 24, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(25, 'Minty', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/minty/bootstrap.min.css', NULL, 1, 'theme', 25, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(26, 'Pulse', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/pulse/bootstrap.min.css', NULL, 1, 'theme', 26, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(27, 'Sketchy', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css', NULL, 1, 'theme', 27, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL),
(28, 'Solar', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/solar/bootstrap.min.css', NULL, 1, 'theme', 28, '2022-08-13 06:41:22', '2022-08-13 06:41:22', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `activated`, `token`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'Harry', 'Potter', 'admin@admin.com', NULL, '$2y$10$3rsslkG0KUrqIhphKULVIeqkHNs2RUpSAH.r./XDFHxo37LvabeK.', NULL, 1, 'W7YrMa3VuUxmJQNV7HWj7vXo9GkPEF1mcwnNhpg8FmxywsL6LEDEX4yz7BFQqccB', NULL, '127.0.0.1', NULL, '127.0.0.1', '0.0.0.0', NULL, '2022-08-13 06:41:22', '2022-08-23 10:38:58', NULL),
(2, 'User', 'Hermione', 'Granger', 'user@user.com', NULL, '$2y$10$oXEWSGRKqBFIT954vyPKt.l87a/hfa24PwGWYwVRaIPPqoCe.Ub4u', NULL, 1, 'GrPD1haWM4w3GVoUH4CTXi3M8VHmtsmuwOABodwCdne2gtq5KAZ2doOXrLDgGZl0', '127.0.0.1', '127.0.0.1', NULL, NULL, '0.0.0.0', NULL, '2022-08-13 06:41:22', '2022-08-23 21:04:09', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laravel2step_userid_index` (`userId`);

--
-- Indeksy dla tabeli `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_value_unique` (`value`),
  ADD KEY `laravel_blocker_typeid_index` (`typeId`),
  ADD KEY `laravel_blocker_userid_index` (`userId`);

--
-- Indeksy dla tabeli `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_types_slug_unique` (`slug`);

--
-- Indeksy dla tabeli `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indeksy dla tabeli `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indeksy dla tabeli `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indeksy dla tabeli `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indeksy dla tabeli `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_theme_id_foreign` (`theme_id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indeksy dla tabeli `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_logins_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_name_unique` (`name`),
  ADD UNIQUE KEY `themes_link_unique` (`link`),
  ADD KEY `themes_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  ADD KEY `themes_id_index` (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `laravel2step`
--
ALTER TABLE `laravel2step`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD CONSTRAINT `laravel2step_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD CONSTRAINT `laravel_blocker_typeid_foreign` FOREIGN KEY (`typeId`) REFERENCES `laravel_blocker_types` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ograniczenia dla tabeli `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `social_logins`
--
ALTER TABLE `social_logins`
  ADD CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
