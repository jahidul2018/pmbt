-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2022 at 08:05 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-cytech-billing-track`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `audit_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `audit_id` int(11) NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation_menu` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_menu` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `navigation_reports` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `attachable_id` int(11) NOT NULL,
  `attachable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mimetype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_visibility` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `is_company` tinyint(4) NOT NULL DEFAULT 0,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry_id` int(10) UNSIGNED DEFAULT 1,
  `size_id` int(10) UNSIGNED DEFAULT 1,
  `paymentterm_id` int(10) UNSIGNED DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `address`, `city`, `state`, `zip`, `country`, `address_2`, `city_2`, `state_2`, `zip_2`, `country_2`, `phone`, `fax`, `mobile`, `email`, `web`, `url_key`, `active`, `is_company`, `currency_code`, `unique_name`, `language`, `id_number`, `vat_number`, `industry_id`, `size_id`, `paymentterm_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'imc', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YEQ5JR3gJgsjM1BSNHBFKxwU3vZY9HR7', 1, 0, 'USD', 'imc', 'en', NULL, NULL, 1, 1, 1, NULL, '2021-12-12 01:15:38', '2021-12-12 01:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `clients_custom`
--

CREATE TABLE `clients_custom` (
  `client_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients_custom`
--

INSERT INTO `clients_custom` (`client_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, '2021-12-12 01:15:38', '2021-12-12 01:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `company_profiles`
--

CREATE TABLE `company_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.blade.php',
  `workorder_template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.blade.php',
  `invoice_template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.blade.php',
  `purchaseorder_template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.blade.php',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_profiles`
--

INSERT INTO `company_profiles` (`id`, `company`, `address`, `city`, `state`, `zip`, `country`, `address_2`, `city_2`, `state_2`, `zip_2`, `country_2`, `phone`, `fax`, `mobile`, `email`, `web`, `currency_code`, `language`, `id_number`, `vat_number`, `logo`, `quote_template`, `workorder_template`, `invoice_template`, `purchaseorder_template`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'syssolution', '9/1 ma villa, Gupipara Road,shahjahadpur,Gulshan, dhaka 1212', 'Dhaka', 'dhaka', '1212', 'Bangladesh', NULL, NULL, NULL, NULL, NULL, '01777288229', '1234', '01777288229', NULL, 'syssolution.com.bd', 'USD', 'en', NULL, NULL, NULL, 'default.blade.php', 'default.blade.php', 'default.blade.php', 'default.blade.php', NULL, '2021-12-12 01:11:55', '2021-12-12 01:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `company_profiles_custom`
--

CREATE TABLE `company_profiles_custom` (
  `company_profile_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_profiles_custom`
--

INSERT INTO `company_profiles_custom` (`company_profile_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, '2021-12-12 01:11:55', '2021-12-12 01:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_id` int(10) UNSIGNED DEFAULT 1,
  `default_to` tinyint(4) NOT NULL DEFAULT 0,
  `default_cc` tinyint(4) NOT NULL DEFAULT 0,
  `default_bcc` tinyint(4) NOT NULL DEFAULT 0,
  `is_primary` tinyint(4) NOT NULL DEFAULT 0,
  `optin` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thousands` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `symbol`, `placement`, `decimal`, `thousands`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'AUD', 'Australian Dollar', '$', 'before', '.', ',', NULL, NULL, NULL),
(2, 'CAD', 'Canadian Dollar', '$', 'before', '.', ',', NULL, NULL, NULL),
(3, 'EUR', 'Euro', '€', 'before', '.', ',', NULL, NULL, NULL),
(4, 'GBP', 'Pound Sterling', '£', 'before', '.', ',', NULL, NULL, NULL),
(5, 'USD', 'US Dollar', '$', 'before', '.', ',', NULL, NULL, NULL),
(6, 'BDT', 'BDT TAKA', '৳', 'before', '.', ',', NULL, '2021-12-12 01:21:02', '2021-12-12 01:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `tbl_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_meta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `first_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_rate` decimal(15,2) NOT NULL DEFAULT 0.00,
  `schedule` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `driver` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `expense_date` date NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vendor_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `tax` decimal(20,4) NOT NULL,
  `company_profile_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses_custom`
--

CREATE TABLE `expenses_custom` (
  `expense_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_id` int(11) NOT NULL DEFAULT 1,
  `left_pad` int(11) NOT NULL DEFAULT 0,
  `format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reset_number` int(11) NOT NULL,
  `last_id` int(11) NOT NULL,
  `last_year` int(11) NOT NULL,
  `last_month` int(11) NOT NULL,
  `last_week` int(11) NOT NULL,
  `last_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `next_id`, `left_pad`, `format`, `reset_number`, `last_id`, `last_year`, `last_month`, `last_week`, `last_number`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Invoice Default', 2, 0, 'INV{NUMBER}', 0, 1, 2021, 12, 49, 'INV1', NULL, NULL, '2021-12-12 01:17:25'),
(2, 'Quote Default', 1, 0, 'QUO{NUMBER}', 0, 0, 0, 0, 0, '0', NULL, NULL, NULL),
(3, 'Workorder Default', 1, 0, 'WO{NUMBER}', 0, 0, 0, 0, 0, '0', NULL, NULL, NULL),
(4, 'Purchaseorder Default', 1, 0, 'PO{NUMBER}', 0, 0, 0, 0, 0, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `name`) VALUES
(1, ''),
(2, 'Accounting & Legal'),
(3, 'Advertising'),
(4, 'Aerospace'),
(5, 'Agriculture'),
(6, 'Automotive'),
(7, 'Banking & Finance'),
(8, 'Biotechnology'),
(9, 'Broadcasting'),
(10, 'Business Services'),
(11, 'Commodities & Chemicals'),
(12, 'Communications'),
(13, 'Computers & Hightech'),
(14, 'Construction'),
(15, 'Defense'),
(16, 'Energy'),
(17, 'Entertainment'),
(18, 'Government'),
(19, 'Healthcare & Life Sciences'),
(20, 'Insurance'),
(21, 'Manufacturing'),
(22, 'Marketing'),
(23, 'Media'),
(24, 'Nonprofit & Higher Ed'),
(25, 'Pharmaceuticals'),
(26, 'Photography'),
(27, 'Professional Services & Consulting'),
(28, 'Real Estate'),
(29, 'Restaurant & Catering'),
(30, 'Retail & Wholesale'),
(31, 'Sports'),
(32, 'Transportation'),
(33, 'Travel & Luxury'),
(34, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_types`
--

CREATE TABLE `inventory_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(85) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracked` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_types`
--

INSERT INTO `inventory_types` (`id`, `name`, `tracked`) VALUES
(1, '', 0),
(2, 'Rental', 1),
(3, 'Resale', 1),
(4, 'Labor', 0),
(5, 'Asset', 0),
(6, 'Non-Inventory', 0),
(7, 'Other', 0),
(8, 'Raw Materials', 1),
(9, 'W.I.P.', 1),
(10, 'Finished Goods', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_id_ref` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_type_id` tinyint(4) NOT NULL DEFAULT 1,
  `invoice_status_id` int(11) NOT NULL,
  `due_at` date NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(10,7) NOT NULL DEFAULT 1.0000000,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed` tinyint(4) NOT NULL DEFAULT 0,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `company_profile_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_date`, `invoice_id_ref`, `user_id`, `client_id`, `group_id`, `invoice_type_id`, `invoice_status_id`, `due_at`, `number`, `terms`, `footer`, `url_key`, `currency_code`, `exchange_rate`, `template`, `summary`, `viewed`, `discount`, `company_profile_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2021-12-12', NULL, 1, 1, 1, 1, 1, '2022-01-11', 'INV1', NULL, NULL, '2cFBId6fXPvUnCNSgf6HLV1zKp87rNdv', 'USD', '1.0000000', 'default.blade.php', NULL, 0, '0.00', 1, NULL, '2021-12-12 01:17:25', '2021-12-12 01:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_custom`
--

CREATE TABLE `invoices_custom` (
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices_custom`
--

INSERT INTO `invoices_custom` (`invoice_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, '2021-12-12 01:17:25', '2021-12-12 01:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_amounts`
--

CREATE TABLE `invoice_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `subtotal` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `balance` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_amounts`
--

INSERT INTO `invoice_amounts` (`id`, `invoice_id`, `subtotal`, `discount`, `tax`, `total`, `paid`, `balance`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '51120.0000', '0.0000', '0.0000', '51120.0000', '0.0000', '51120.0000', NULL, '2021-12-12 01:17:25', '2021-12-12 01:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_2_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resource_table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_id` int(10) UNSIGNED DEFAULT NULL,
  `is_tracked` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `tax_rate_id`, `tax_rate_2_id`, `resource_table`, `resource_id`, `is_tracked`, `name`, `description`, `quantity`, `display_order`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, NULL, 0, 0, 'Hourly Charge', 'website', '5112.0000', 1, '10.0000', NULL, '2021-12-12 01:17:25', '2021-12-12 01:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item_amounts`
--

CREATE TABLE `invoice_item_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `subtotal` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_1` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_2` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_item_amounts`
--

INSERT INTO `invoice_item_amounts` (`id`, `item_id`, `subtotal`, `tax_1`, `tax_2`, `tax`, `total`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '51120.0000', '0.0000', '0.0000', '0.0000', '51120.0000', NULL, '2021-12-12 01:17:25', '2021-12-12 01:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_transactions`
--

CREATE TABLE `invoice_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `is_successful` tinyint(4) NOT NULL,
  `transaction_reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_lookups`
--

CREATE TABLE `item_lookups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_rate_id` int(11) NOT NULL DEFAULT 0,
  `tax_rate_2_id` int(11) NOT NULL DEFAULT 0,
  `resource_table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_queue`
--

CREATE TABLE `mail_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `mailable_id` int(11) NOT NULL,
  `mailable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach_pdf` tinyint(4) NOT NULL,
  `sent` tinyint(4) NOT NULL DEFAULT 0,
  `error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_clients`
--

CREATE TABLE `merchant_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `merchant_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchant_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_payments`
--

CREATE TABLE `merchant_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL,
  `merchant_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchant_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_08_17_000000_create_activities_table', 1),
(2, '2018_08_17_000001_create_currencies_table', 1),
(3, '2018_08_17_000002_create_users_table', 1),
(4, '2018_08_17_000003_create_workorders_table', 1),
(5, '2018_08_17_000004_create_mail_queue_table', 1),
(6, '2018_08_17_000005_create_products_table', 1),
(7, '2018_08_17_000006_create_item_lookups_table', 1),
(8, '2018_08_17_000007_create_employees_table', 1),
(9, '2018_08_17_000008_create_expense_vendors_table', 1),
(10, '2018_08_17_000009_create_company_profiles_table', 1),
(11, '2018_08_17_000011_create_payment_methods_table', 1),
(12, '2018_08_17_000012_create_schedule_categories_table', 1),
(13, '2018_08_17_000013_create_clients_table', 1),
(14, '2018_08_17_000014_create_tax_rates_table', 1),
(15, '2018_08_17_000015_create_groups_table', 1),
(16, '2018_08_17_000016_create_expense_categories_table', 1),
(17, '2018_08_17_000017_create_addons_table', 1),
(18, '2018_08_17_000018_create_settings_table', 1),
(19, '2018_08_17_000019_create_custom_fields_table', 1),
(20, '2018_08_17_000020_create_clients_custom_table', 1),
(21, '2018_08_17_000021_create_workorder_items_table', 1),
(22, '2018_08_17_000022_create_attachments_table', 1),
(23, '2018_08_17_000023_create_contacts_table', 1),
(24, '2018_08_17_000024_create_invoices_table', 1),
(25, '2018_08_17_000025_create_notes_table', 1),
(26, '2018_08_17_000026_create_schedule_table', 1),
(27, '2018_08_17_000027_create_users_custom_table', 1),
(28, '2018_08_17_000028_create_time_tracking_projects_table', 1),
(29, '2018_08_17_000029_create_quotes_table', 1),
(30, '2018_08_17_000030_create_recurring_invoices_table', 1),
(31, '2018_08_17_000031_create_company_profiles_custom_table', 1),
(32, '2018_08_17_000032_create_merchant_clients_table', 1),
(33, '2018_08_17_000033_create_workorder_amounts_table', 1),
(34, '2018_08_17_000034_create_workorders_custom_table', 1),
(35, '2018_08_17_000035_create_invoice_items_table', 1),
(36, '2018_08_17_000036_create_recurring_invoice_amounts_table', 1),
(37, '2018_08_17_000037_create_quote_amounts_table', 1),
(38, '2018_08_17_000038_create_time_tracking_tasks_table', 1),
(39, '2018_08_17_000039_create_quote_items_table', 1),
(40, '2018_08_17_000040_create_invoice_transactions_table', 1),
(41, '2018_08_17_000041_create_invoices_custom_table', 1),
(42, '2018_08_17_000042_create_expenses_table', 1),
(43, '2018_08_17_000043_create_schedule_occurrences_table', 1),
(44, '2018_08_17_000044_create_invoice_amounts_table', 1),
(45, '2018_08_17_000045_create_payments_table', 1),
(46, '2018_08_17_000046_create_schedule_reminders_table', 1),
(47, '2018_08_17_000047_create_recurring_invoice_items_table', 1),
(48, '2018_08_17_000048_create_workorder_item_amounts_table', 1),
(49, '2018_08_17_000049_create_quotes_custom_table', 1),
(50, '2018_08_17_000050_create_recurring_invoices_custom_table', 1),
(51, '2018_08_17_000051_create_schedule_resources_table', 1),
(52, '2018_08_17_000052_create_expenses_custom_table', 1),
(53, '2018_08_17_000053_create_merchant_payments_table', 1),
(54, '2018_08_17_000054_create_time_tracking_timers_table', 1),
(55, '2018_08_17_000055_create_invoice_item_amounts_table', 1),
(56, '2018_08_17_000056_create_quote_item_amounts_table', 1),
(57, '2018_08_17_000057_create_recurring_invoice_item_amounts_table', 1),
(58, '2018_08_17_000058_create_payments_custom_table', 1),
(59, '2018_08_17_000100_version_400', 1),
(60, '2018_09_07_000100_version_401', 1),
(61, '2018_10_17_000100_version_402', 1),
(62, '2018_11_08_000100_version_410', 1),
(63, '2018_12_16_000100_version_411', 1),
(64, '2018_12_17_000100_version_412', 1),
(65, '2019_03_19_000100_version_500', 1),
(66, '2019_03_25_000100_version_501', 1),
(67, '2019_05_29_000100_version_510', 1),
(68, '2019_06_11_000100_version_5102', 1),
(69, '2019_06_14_000010_create_purchaseorders_table', 1),
(70, '2019_06_14_000020_create_purchaseorder_items_table', 1),
(71, '2019_06_14_000040_create_purchaseorders_custom_table', 1),
(72, '2019_06_14_000050_create_purchaseorder_amounts_table', 1),
(73, '2019_06_14_000060_create_purchaseorder_item_amounts_table', 1),
(74, '2019_06_17_000010_version_5103', 1),
(75, '2020_07_01_000000_version_520', 1),
(76, '2021_02_03_000000_version_530', 1),
(77, '2021_02_10_000000_version_531', 1),
(78, '2021_08_09_000000_version_532', 1),
(79, '2021_11_01_000000_version_533', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `notable_id` int(11) NOT NULL,
  `notable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `private` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `paid_at` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments_custom`
--

CREATE TABLE `payments_custom` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Cash', NULL, NULL, NULL),
(2, 'Check', NULL, NULL, NULL),
(3, 'Credit Card', NULL, NULL, NULL),
(4, 'Online Payment', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_terms`
--

CREATE TABLE `payment_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `num_days` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_terms`
--

INSERT INTO `payment_terms` (`id`, `num_days`, `name`) VALUES
(1, 0, ''),
(2, 0, 'COD'),
(3, 0, 'Due On Receipt'),
(4, 7, 'Net 7'),
(5, 10, 'Net 10'),
(6, 15, 'Net 15'),
(7, 30, 'Net 30'),
(8, 60, 'Net 60'),
(9, 90, 'Net 90');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(85) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `tax_rate_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_rate_2_id` int(10) UNSIGNED DEFAULT NULL,
  `serialnum` varchar(85) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `cost` decimal(7,2) DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `inventorytype_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `numstock` decimal(20,4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorders`
--

CREATE TABLE `purchaseorders` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchaseorder_date` date NOT NULL,
  `purchaseorder_id_ref` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `purchaseorder_type_id` tinyint(4) NOT NULL DEFAULT 1,
  `purchaseorder_status_id` int(11) NOT NULL,
  `due_at` date NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(10,7) NOT NULL DEFAULT 1.0000000,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed` tinyint(4) NOT NULL DEFAULT 0,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `company_profile_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorders_custom`
--

CREATE TABLE `purchaseorders_custom` (
  `purchaseorder_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder_amounts`
--

CREATE TABLE `purchaseorder_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchaseorder_id` int(10) UNSIGNED NOT NULL,
  `subtotal` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `balance` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder_items`
--

CREATE TABLE `purchaseorder_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchaseorder_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_2_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resource_table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `cost` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `rec_qty` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `rec_status_id` int(11) NOT NULL,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder_item_amounts`
--

CREATE TABLE `purchaseorder_item_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `subtotal` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_1` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_2` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `quote_date` date NOT NULL,
  `workorder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `invoice_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `quote_status_id` int(11) NOT NULL,
  `expires_at` date NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(10,7) NOT NULL DEFAULT 1.0000000,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed` tinyint(4) NOT NULL DEFAULT 0,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `company_profile_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotes_custom`
--

CREATE TABLE `quotes_custom` (
  `quote_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quote_amounts`
--

CREATE TABLE `quote_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `quote_id` int(10) UNSIGNED NOT NULL,
  `subtotal` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quote_items`
--

CREATE TABLE `quote_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `quote_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_2_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resource_table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `display_order` int(11) NOT NULL,
  `price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quote_item_amounts`
--

CREATE TABLE `quote_item_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `subtotal` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_1` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_2` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recurring_invoices`
--

CREATE TABLE `recurring_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `company_profile_id` int(10) UNSIGNED DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` decimal(10,7) NOT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `recurring_frequency` int(11) NOT NULL,
  `recurring_period` int(11) NOT NULL,
  `next_date` date NOT NULL,
  `stop_date` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recurring_invoices_custom`
--

CREATE TABLE `recurring_invoices_custom` (
  `recurring_invoice_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recurring_invoice_amounts`
--

CREATE TABLE `recurring_invoice_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `recurring_invoice_id` int(10) UNSIGNED NOT NULL,
  `subtotal` decimal(20,4) NOT NULL,
  `discount` decimal(20,4) NOT NULL,
  `tax` decimal(20,4) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recurring_invoice_items`
--

CREATE TABLE `recurring_invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `recurring_invoice_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tax_rate_2_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resource_table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(20,4) NOT NULL,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `price` decimal(20,4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recurring_invoice_item_amounts`
--

CREATE TABLE `recurring_invoice_item_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `subtotal` decimal(20,4) NOT NULL,
  `tax_1` decimal(20,4) NOT NULL,
  `tax_2` decimal(20,4) NOT NULL,
  `tax` decimal(20,4) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isRecurring` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `rrule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `will_call` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_categories`
--

CREATE TABLE `schedule_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedule_categories`
--

INSERT INTO `schedule_categories` (`id`, `name`, `text_color`, `bg_color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Worker Schedule', '#000000', '#aaffaa', NULL, NULL, NULL),
(2, 'General Appointment', '#000000', '#5656ff', NULL, NULL, NULL),
(3, 'Employee Appointment', '#000000', '#d4aaff', NULL, NULL, NULL),
(4, 'Quote', '#ffffff', '#716cb1', NULL, NULL, NULL),
(5, 'Workorder', '#000000', '#aaffaa', NULL, NULL, NULL),
(6, 'Invoice', '#ffffff', '#377eb8', NULL, NULL, NULL),
(7, 'Payment', '#ffffff', '#5fa213', NULL, NULL, NULL),
(8, 'Expense and Purchaseorder', '#ffffff', '#d95d02', NULL, NULL, NULL),
(9, 'Project', '#ffffff', '#676767', NULL, NULL, NULL),
(10, 'Task', '#ffffff', '#a87821', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_occurrences`
--

CREATE TABLE `schedule_occurrences` (
  `oid` int(10) UNSIGNED NOT NULL,
  `schedule_id` int(10) UNSIGNED NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_reminders`
--

CREATE TABLE `schedule_reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `schedule_id` int(10) UNSIGNED NOT NULL,
  `reminder_date` timestamp NULL DEFAULT NULL,
  `reminder_location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminder_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_resources`
--

CREATE TABLE `schedule_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `schedule_id` int(10) UNSIGNED NOT NULL,
  `resource_table` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` decimal(20,4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'addressFormat', '{{ address }}\r\n{{ city }}, {{ state }} {{ postal_code }}', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(2, 'allowPaymentsWithoutBalance', '0', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(3, 'amountDecimals', '2', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(4, 'attachPdf', '1', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(5, 'automaticEmailOnRecur', '1', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(6, 'baseCurrency', 'BDT', NULL, '2021-12-12 08:09:56', '2021-12-12 01:25:01'),
(7, 'convertQuoteTerms', 'quote', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(8, 'convertQuoteWhenApproved', '1', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(9, 'currencyConversionDriver', 'FixerIOCurrencyConverter', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(10, 'dashboardTotals', 'year_to_date', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(11, 'dateFormat', 'm/d/Y', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(12, 'defaultCompanyProfile', '1', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(13, 'displayClientUniqueName', '0', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(14, 'displayProfileImage', '1', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(15, 'exchangeRateMode', 'automatic', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(16, 'headerTitleText', 'SYSSOLUTION', NULL, '2021-12-12 08:09:56', '2021-12-12 01:25:01'),
(17, 'invoiceEmailBody', '<p>To view your invoice from {{ $invoice->user->name }} for {{ $invoice->amount->formatted_total }}, click the link below:</p><br><br><p><a href=\"{{ $invoice->public_url }}\">{{ $invoice->public_url }}</a></p>', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(18, 'invoiceEmailSubject', 'Invoice #{{ $invoice->number }}', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(19, 'invoiceGroup', '1', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(20, 'invoicesDueAfter', '30', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(21, 'invoiceStatusFilter', 'all_statuses', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(22, 'invoiceTemplate', 'default.blade.php', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(23, 'language', 'en', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(24, 'markInvoicesSentPdf', '0', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(25, 'markQuotesSentPdf', '0', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(26, 'merchant', '{\"PayPalExpress\":{\"enabled\":0,\"username\":\"\",\"password\":\"\",\"signature\":\"\",\"testMode\":0,\"paymentButtonText\":\"Pay with PayPal\"},\"Stripe\":{\"enabled\":0,\"secretKey\":\"\",\"publishableKey\":\"\",\"requireBillingName\":0,\"requireBillingAddress\":0,\"requireBillingCity\":0,\"requireBillingState\":0,\"requireBillingZip\":0,\"paymentButtonText\":\"Pay with Stripe\"},\"Mollie\":{\"enabled\":0,\"apiKey\":\"\",\"paymentButtonText\":\"Pay with Mollie\"}}', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(27, 'merchant_Mollie_apiKey', '', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(28, 'merchant_Mollie_enabled', '0', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(29, 'merchant_Mollie_paymentButtonText', 'Pay with Mollie', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(30, 'merchant_PayPal_paymentButtonText', 'Pay with PayPal', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(31, 'merchant_Stripe_enableBitcoinPayments', '0', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(32, 'merchant_Stripe_enabled', '0', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(33, 'merchant_Stripe_paymentButtonText', 'Pay with Stripe', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(34, 'merchant_Stripe_publishableKey', '', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(35, 'merchant_Stripe_secretKey', '', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(36, 'overdueInvoiceEmailBody', '<p>This is a reminder to let you know your invoice from {{ $invoice->user->name }} for {{ $invoice->amount->formatted_total }} is overdue. Click the link below to view the invoice:</p><br><br><p><a href=\"{{ $invoice->public_url }}\">{{ $invoice->public_url }}</a></p>', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(37, 'overdueInvoiceEmailSubject', 'Overdue Invoice Reminder: Invoice #{{ $invoice->number }}', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(38, 'paperOrientation', 'portrait', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(39, 'paperSize', 'letter', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(40, 'paymentReceiptBody', '<p>Thank you! Your payment of {{ $payment->formatted_amount }} has been applied to Invoice #{{ $payment->invoice->number }}.</p>', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(41, 'paymentReceiptEmailSubject', 'Payment Receipt for Invoice #{{ $payment->invoice->number }}', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(42, 'pdfDriver', 'domPDF', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(43, 'profileImageDriver', 'Gravatar', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(44, 'quoteApprovedEmailBody', '<p><a href=\"{{ $quote->public_url }}\">Quote #{{ $quote->number }}</a> has been APPROVED.</p>', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(45, 'quoteEmailBody', '<p>To view your quote from {{ $quote->user->name }} for {{ $quote->amount->formatted_total }}, click the link below:</p><br><br><p><a href=\"{{ $quote->public_url }}\">{{ $quote->public_url }}</a></p>', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(46, 'quoteEmailSubject', 'Quote #{{ $quote->number }}', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(47, 'quoteGroup', '2', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(48, 'quoteRejectedEmailBody', '<p><a href=\"{{ $quote->public_url }}\">Quote #{{ $quote->number }}</a> has been REJECTED.</p>', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(49, 'quotesExpireAfter', '15', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(50, 'quoteStatusFilter', 'all_statuses', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(51, 'quoteTemplate', 'default.blade.php', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(52, 'resultsPerPage', '10', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(53, 'roundTaxDecimals', '3', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(54, 'skin', '{\"headBackground\":\"blue\",\"headClass\":\"dark\",\"sidebarBackground\":\"white\",\"sidebarClass\":\"light\",\"sidebarMode\":\"open\"}', NULL, '2021-12-12 08:09:56', '2021-12-12 01:25:01'),
(55, 'timezone', 'Asia/Dhaka', NULL, '2021-12-12 08:09:56', '2021-12-12 01:25:01'),
(56, 'upcomingPaymentNoticeEmailBody', '<p>This is a notice to let you know your invoice from {{ $invoice->user->name }} for {{ $invoice->amount->formatted_total }} is due on {{ $invoice->formatted_due_at }}. Click the link below to view the invoice:</p><br><br><p><a href=\"{{ $invoice->public_url }}\">{{ $invoice->public_url }}</a></p>', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(57, 'upcomingPaymentNoticeEmailSubject', 'Upcoming Payment Due Notice: Invoice #{{ $invoice->number }}', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(58, 'version', '5.3.3', NULL, '2021-12-12 08:09:56', '2021-12-12 08:10:01'),
(59, 'widgetColumnWidthClientActivity', '4', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(60, 'widgetColumnWidthInvoiceSummary', '6', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(61, 'widgetColumnWidthQuoteSummary', '6', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(62, 'widgetDisplayOrderClientActivity', '3', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(63, 'widgetDisplayOrderInvoiceSummary', '1', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(64, 'widgetDisplayOrderQuoteSummary', '2', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(65, 'widgetEnabledClientActivity', '0', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(66, 'widgetEnabledInvoiceSummary', '1', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(67, 'widgetEnabledQuoteSummary', '1', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(68, 'widgetInvoiceSummaryDashboardTotals', 'year_to_date', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(69, 'widgetQuoteSummaryDashboardTotals', 'year_to_date', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(70, 'restolup', '0', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(71, 'emptolup', '0', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(72, 'workorderTemplate', 'default.blade.php', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(73, 'workorderGroup', '3', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(74, 'workordersExpireAfter', '15', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(75, 'workorderTerms', 'Default Terms:', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(76, 'workorderFooter', 'Default Footer:', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(77, 'convertWorkorderTerms', 'workorder', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(78, 'tsCompanyName', 'YOURQBCOMPANYNAME', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(79, 'tsCompanyCreate', 'YOURQBCOMPANYCREATETIME', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(80, 'workorderStatusFilter', 'all_statuses', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(81, 'schedulerPastdays', '60', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(82, 'schedulerEventLimit', '5', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(83, 'schedulerCreateWorkorder', '0', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(84, 'schedulerFcThemeSystem', 'standard', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(85, 'schedulerFcAspectRatio', '1.35', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(86, 'schedulerTimestep', '15', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(87, 'schedulerEnabledCoreEvents', '15', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(88, 'schedulerDisplayInvoiced', '0', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(89, 'pdfDisposition', 'inline', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(90, 'jquiTheme', 'cupertino', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(91, 'enabledModules', '127', NULL, '2021-12-12 08:09:56', '2021-12-12 08:10:01'),
(92, 'convertWorkorderDate', 'jobdate', NULL, '2021-12-12 08:09:56', '2021-12-12 08:09:56'),
(93, 'purchaseorderTemplate', 'default.blade.php', NULL, '2021-12-12 08:10:01', '2021-12-12 08:10:01'),
(94, 'purchaseorderGroup', '4', NULL, '2021-12-12 08:10:01', '2021-12-12 08:10:01'),
(95, 'purchaseordersDueAfter', '30', NULL, '2021-12-12 08:10:01', '2021-12-12 08:10:01'),
(96, 'purchaseorderStatusFilter', 'all_statuses', NULL, '2021-12-12 08:10:01', '2021-12-12 08:10:01'),
(97, 'purchaseorderTerms', '', NULL, '2021-12-12 08:10:01', '2021-12-12 08:10:01'),
(98, 'purchaseorderFooter', '', NULL, '2021-12-12 08:10:01', '2021-12-12 08:10:01'),
(99, 'resetPurchaseorderDateEmailDraft', '0', NULL, '2021-12-12 08:10:01', '2021-12-12 08:10:01'),
(100, 'updateProductsDefault', '1', NULL, '2021-12-12 08:10:01', '2021-12-12 08:10:01'),
(101, 'updateInvProductsDefault', '1', NULL, '2021-12-12 08:10:01', '2021-12-12 08:10:01'),
(102, 'purchaseorderEmailSubject', 'Purchase Order #{{ $purchaseorder->number }}', NULL, '2021-12-12 08:10:01', '2021-12-12 08:10:01'),
(103, 'purchaseorderEmailBody', '<p>Please find the attached purchase order from {{ $purchaseorder->user->name }}</p>', NULL, '2021-12-12 08:10:01', '2021-12-12 08:10:01'),
(104, 'currencyConversionKey', '', NULL, '2021-12-12 08:10:01', '2021-12-12 08:10:01'),
(105, 'schedulerFcTodaybgColor', '#FFF9DE', NULL, '2021-12-12 08:10:01', '2021-12-12 08:10:01'),
(106, 'use24HourTimeFormat', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(107, 'forceHttps', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(108, 'widgetInvoiceSummaryDashboardTotalsFromDate', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(109, 'widgetInvoiceSummaryDashboardTotalsToDate', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(110, 'widgetQuoteSummaryDashboardTotalsFromDate', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(111, 'widgetQuoteSummaryDashboardTotalsToDate', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(112, 'widgetEnabledRecentPayments', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(113, 'widgetDisplayOrderRecentPayments', '1', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(114, 'widgetColumnWidthRecentPayments', '1', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(115, 'widgetEnabledSchedulerSummary', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(116, 'widgetDisplayOrderSchedulerSummary', '1', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(117, 'widgetColumnWidthSchedulerSummary', '1', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(118, 'widgetEnabledTodaysWorkorders', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(119, 'widgetDisplayOrderTodaysWorkorders', '1', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(120, 'widgetColumnWidthTodaysWorkorders', '1', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(121, 'widgetEnabledWorkorderSummary', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(122, 'widgetDisplayOrderWorkorderSummary', '1', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(123, 'widgetColumnWidthWorkorderSummary', '1', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(124, 'widgetWorkorderSummaryDashboardTotals', 'year_to_date', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(125, 'widgetWorkorderSummaryDashboardTotalsFromDate', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(126, 'invoiceTerms', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(127, 'invoiceFooter', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(128, 'automaticEmailPaymentReceipts', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(129, 'onlinePaymentMethod', '1', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(130, 'resetInvoiceDateEmailDraft', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(131, 'convertWorkorderWhenApproved', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(132, 'resetWorkorderDateEmailDraft', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(133, 'quoteTerms', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(134, 'quoteFooter', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(135, 'resetQuoteDateEmailDraft', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(136, 'itemTaxRate', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(137, 'itemTax2Rate', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(138, 'mailDriver', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(139, 'mailHost', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(140, 'mailPort', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(141, 'mailUsername', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(142, 'mailEncryption', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(143, 'mailAllowSelfSignedCertificate', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(144, 'mailSendmail', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(145, 'mailReplyToAddress', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(146, 'mailDefaultCc', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(147, 'mailDefaultBcc', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(148, 'overdueInvoiceReminderFrequency', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(149, 'upcomingPaymentNoticeFrequency', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(150, 'workorderApprovedEmailBody', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(151, 'workorderRejectedEmailBody', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(152, 'pdfBinaryPath', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(153, 'merchant_PayPal_enabled', '0', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(154, 'merchant_PayPal_clientId', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(155, 'merchant_PayPal_clientSecret', '', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01'),
(156, 'merchant_PayPal_mode', 'sandbox', NULL, '2021-12-12 01:25:01', '2021-12-12 01:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`) VALUES
(1, ''),
(2, '1 - 3'),
(3, '4 - 10'),
(4, '11 - 50'),
(5, '51 - 100'),
(6, '101 - 500'),
(7, '500+');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` decimal(5,3) NOT NULL DEFAULT 0.000,
  `is_compound` tinyint(4) NOT NULL DEFAULT 0,
  `calculate_vat` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `name`, `percent`, `is_compound`, `calculate_vat`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'vat', '7.000', 1, 1, NULL, '2021-12-12 01:22:07', '2021-12-12 01:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `time_tracking_projects`
--

CREATE TABLE `time_tracking_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_profile_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_at` timestamp NULL DEFAULT NULL,
  `hourly_rate` decimal(8,2) NOT NULL,
  `status_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_tracking_projects`
--

INSERT INTO `time_tracking_projects` (`id`, `company_profile_id`, `user_id`, `client_id`, `name`, `due_at`, `hourly_rate`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'pific', '2023-01-01 18:00:00', '10.00', 1, NULL, '2021-12-12 01:15:38', '2021-12-12 01:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `time_tracking_tasks`
--

CREATE TABLE `time_tracking_tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `time_tracking_project_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `billed` tinyint(4) NOT NULL DEFAULT 0,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_tracking_tasks`
--

INSERT INTO `time_tracking_tasks` (`id`, `time_tracking_project_id`, `name`, `display_order`, `billed`, `invoice_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'website', 1, 1, 1, NULL, '2021-12-12 01:16:04', '2021-12-12 01:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `time_tracking_timers`
--

CREATE TABLE `time_tracking_timers` (
  `id` int(10) UNSIGNED NOT NULL,
  `time_tracking_task_id` int(10) UNSIGNED NOT NULL,
  `start_at` timestamp NULL DEFAULT NULL,
  `end_at` timestamp NULL DEFAULT NULL,
  `hours` decimal(8,2) NOT NULL DEFAULT 0.00,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_tracking_timers`
--

INSERT INTO `time_tracking_timers` (`id`, `time_tracking_task_id`, `start_at`, `end_at`, `hours`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-12 01:16:10', NULL, '0.00', NULL, '2021-12-12 01:16:10', '2021-12-12 01:16:10'),
(2, 1, '2021-05-31 18:00:00', '2021-12-30 18:00:00', '5112.00', NULL, '2021-12-12 01:16:55', '2021-12-12 01:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `name`) VALUES
(1, ''),
(2, 'Accountant'),
(3, 'Administrative Assistant'),
(4, 'Administrator'),
(5, 'CEO'),
(6, 'Consultant'),
(7, 'Customer Service'),
(8, 'Director'),
(9, 'Driver'),
(10, 'IT Professional'),
(11, 'Manager'),
(12, 'Marketing'),
(13, 'Other'),
(14, 'Owner'),
(15, 'President'),
(16, 'Sales'),
(17, 'Secretary'),
(18, 'Software Developer'),
(19, 'Supervisor'),
(20, 'Technician'),
(21, 'Vice President'),
(22, 'Worker');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_public_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `remember_token`, `api_public_key`, `api_secret_key`, `client_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$10$PMNt6NL91AxI9VRH.dKX0.VFhvzKr3IlcCgkVj.f4zeFMVdCH49gW', 'admin', NULL, NULL, NULL, NULL, NULL, '2021-12-12 01:11:54', '2021-12-12 01:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `users_custom`
--

CREATE TABLE `users_custom` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_custom`
--

INSERT INTO `users_custom` (`user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, '2021-12-12 01:11:55', '2021-12-12 01:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentterm_id` int(10) UNSIGNED DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_custom`
--

CREATE TABLE `vendors_custom` (
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_contacts`
--

CREATE TABLE `vendor_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_id` int(10) UNSIGNED DEFAULT 1,
  `default_to` tinyint(4) NOT NULL DEFAULT 0,
  `default_cc` tinyint(4) NOT NULL DEFAULT 0,
  `default_bcc` tinyint(4) NOT NULL DEFAULT 0,
  `is_primary` tinyint(4) NOT NULL DEFAULT 0,
  `optin` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workorders`
--

CREATE TABLE `workorders` (
  `id` int(10) UNSIGNED NOT NULL,
  `workorder_date` date NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `workorder_status_id` int(11) NOT NULL,
  `expires_at` date NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(10,7) NOT NULL DEFAULT 1.0000000,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed` tinyint(4) NOT NULL DEFAULT 0,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `job_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `will_call` tinyint(4) NOT NULL DEFAULT 0,
  `company_profile_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workorders_custom`
--

CREATE TABLE `workorders_custom` (
  `workorder_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workorder_amounts`
--

CREATE TABLE `workorder_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `workorder_id` int(10) UNSIGNED NOT NULL,
  `subtotal` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workorder_items`
--

CREATE TABLE `workorder_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `workorder_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `tax_rate_2_id` int(11) NOT NULL DEFAULT 0,
  `resource_table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `display_order` int(11) NOT NULL,
  `price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workorder_item_amounts`
--

CREATE TABLE `workorder_item_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `subtotal` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_1` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_2` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_parent_id_index` (`audit_id`),
  ADD KEY `activities_object_index` (`audit_type`),
  ADD KEY `activities_activity_index` (`activity`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_attachments_users1_idx` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_unique_name_index` (`unique_name`),
  ADD KEY `clients_active_index` (`active`),
  ADD KEY `clients_name_index` (`name`),
  ADD KEY `clients_industry_id_foreign` (`industry_id`),
  ADD KEY `clients_size_id_foreign` (`size_id`),
  ADD KEY `clients_paymentterm_id_foreign` (`paymentterm_id`);

--
-- Indexes for table `clients_custom`
--
ALTER TABLE `clients_custom`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `company_profiles`
--
ALTER TABLE `company_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_profiles_custom`
--
ALTER TABLE `company_profiles_custom`
  ADD PRIMARY KEY (`company_profile_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_client_id_index` (`client_id`),
  ADD KEY `contacts_title_id_foreign` (`title_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currencies_name_index` (`name`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fields_table_name_index` (`tbl_name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_category_id_index` (`category_id`),
  ADD KEY `fk_expenses_invoices1_idx` (`invoice_id`),
  ADD KEY `expenses_company_profile_id_index` (`company_profile_id`),
  ADD KEY `fk_expenses_users1_idx` (`user_id`);

--
-- Indexes for table `expenses_custom`
--
ALTER TABLE `expenses_custom`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_types`
--
ALTER TABLE `inventory_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_index` (`user_id`),
  ADD KEY `invoices_invoice_group_id_index` (`group_id`),
  ADD KEY `invoices_client_id_index` (`client_id`),
  ADD KEY `invoices_company_profile_id_index` (`company_profile_id`),
  ADD KEY `invoices_invoice_status_id_index` (`invoice_status_id`);

--
-- Indexes for table `invoices_custom`
--
ALTER TABLE `invoices_custom`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_amounts`
--
ALTER TABLE `invoice_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_amounts_invoice_id_index` (`invoice_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_display_order_index` (`display_order`),
  ADD KEY `invoice_items_invoice_id_index` (`invoice_id`);

--
-- Indexes for table `invoice_item_amounts`
--
ALTER TABLE `invoice_item_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_item_amounts_item_id_index` (`item_id`);

--
-- Indexes for table `invoice_transactions`
--
ALTER TABLE `invoice_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_invoice_transactions_invoices1_idx` (`invoice_id`);

--
-- Indexes for table `item_lookups`
--
ALTER TABLE `item_lookups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_lookups_tax_rate_id_index` (`tax_rate_id`),
  ADD KEY `item_lookups_tax_rate_2_id_index` (`tax_rate_2_id`);

--
-- Indexes for table `mail_queue`
--
ALTER TABLE `mail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_clients`
--
ALTER TABLE `merchant_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_clients_merchant_key_index` (`merchant_key`),
  ADD KEY `merchant_clients_client_id_index` (`client_id`),
  ADD KEY `merchant_clients_driver_index` (`driver`);

--
-- Indexes for table `merchant_payments`
--
ALTER TABLE `merchant_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_payments_merchant_key_index` (`merchant_key`),
  ADD KEY `merchant_payments_payment_id_index` (`payment_id`),
  ADD KEY `merchant_payments_driver_index` (`driver`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_notes_users1_idx` (`user_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payments_clients1_idx` (`client_id`),
  ADD KEY `payments_invoice_id_index` (`invoice_id`),
  ADD KEY `payments_payment_method_id_index` (`payment_method_id`);

--
-- Indexes for table `payments_custom`
--
ALTER TABLE `payments_custom`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_index` (`category_id`),
  ADD KEY `products_inventorytype_id_index` (`inventorytype_id`);

--
-- Indexes for table `purchaseorders`
--
ALTER TABLE `purchaseorders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseorders_user_id_index` (`user_id`),
  ADD KEY `purchaseorders_purchaseorder_group_id_index` (`group_id`),
  ADD KEY `purchaseorders_vendor_id_index` (`vendor_id`),
  ADD KEY `purchaseorders_company_profile_id_index` (`company_profile_id`),
  ADD KEY `purchaseorders_purchaseorder_status_id_index` (`purchaseorder_status_id`);

--
-- Indexes for table `purchaseorders_custom`
--
ALTER TABLE `purchaseorders_custom`
  ADD PRIMARY KEY (`purchaseorder_id`);

--
-- Indexes for table `purchaseorder_amounts`
--
ALTER TABLE `purchaseorder_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseorder_amounts_purchaseorder_id_index` (`purchaseorder_id`);

--
-- Indexes for table `purchaseorder_items`
--
ALTER TABLE `purchaseorder_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseorder_items_display_order_index` (`display_order`),
  ADD KEY `purchaseorder_items_purchaseorder_id_index` (`purchaseorder_id`);

--
-- Indexes for table `purchaseorder_item_amounts`
--
ALTER TABLE `purchaseorder_item_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchaseorder_item_amounts_item_id_index` (`item_id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotes_user_id_index` (`user_id`),
  ADD KEY `quotes_invoice_group_id_index` (`group_id`),
  ADD KEY `quotes_number_index` (`number`),
  ADD KEY `quotes_company_profile_id_index` (`company_profile_id`),
  ADD KEY `quotes_client_id_index` (`client_id`);

--
-- Indexes for table `quotes_custom`
--
ALTER TABLE `quotes_custom`
  ADD PRIMARY KEY (`quote_id`);

--
-- Indexes for table `quote_amounts`
--
ALTER TABLE `quote_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quote_amounts_quote_id_index` (`quote_id`);

--
-- Indexes for table `quote_items`
--
ALTER TABLE `quote_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quote_items_quote_id_index` (`quote_id`),
  ADD KEY `quote_items_display_order_index` (`display_order`);

--
-- Indexes for table `quote_item_amounts`
--
ALTER TABLE `quote_item_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quote_item_amounts_item_id_index` (`item_id`);

--
-- Indexes for table `recurring_invoices`
--
ALTER TABLE `recurring_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recurring_invoices_client_id_index` (`client_id`),
  ADD KEY `fk_recurring_invoices_groups1_idx` (`group_id`),
  ADD KEY `recurring_invoices_company_profile_id_index` (`company_profile_id`),
  ADD KEY `recurring_invoices_user_id_index` (`user_id`);

--
-- Indexes for table `recurring_invoices_custom`
--
ALTER TABLE `recurring_invoices_custom`
  ADD PRIMARY KEY (`recurring_invoice_id`);

--
-- Indexes for table `recurring_invoice_amounts`
--
ALTER TABLE `recurring_invoice_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recurring_invoice_amounts_recurring_invoice_id_index` (`recurring_invoice_id`);

--
-- Indexes for table `recurring_invoice_items`
--
ALTER TABLE `recurring_invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recurring_invoice_items_display_order_index` (`display_order`),
  ADD KEY `recurring_invoice_items_recurring_invoice_id_index` (`recurring_invoice_id`);

--
-- Indexes for table `recurring_invoice_item_amounts`
--
ALTER TABLE `recurring_invoice_item_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recurring_invoice_item_amounts_item_id_index` (`item_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_schedule_schedule_categories1_idx` (`category_id`),
  ADD KEY `fk_schedule_users1_idx` (`user_id`);

--
-- Indexes for table `schedule_categories`
--
ALTER TABLE `schedule_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_occurrences`
--
ALTER TABLE `schedule_occurrences`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `schedule_occurrence_event_id_foreign` (`schedule_id`);

--
-- Indexes for table `schedule_reminders`
--
ALTER TABLE `schedule_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_reminder_schedule_id_foreign` (`schedule_id`);

--
-- Indexes for table `schedule_resources`
--
ALTER TABLE `schedule_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_resource_schedule_id_foreign` (`schedule_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_setting_key_index` (`setting_key`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_tracking_projects`
--
ALTER TABLE `time_tracking_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_tracking_projects_user_id_index` (`user_id`),
  ADD KEY `time_tracking_projects_company_profile_id_index` (`company_profile_id`),
  ADD KEY `time_tracking_projects_client_id_index` (`client_id`);

--
-- Indexes for table `time_tracking_tasks`
--
ALTER TABLE `time_tracking_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_tracking_tasks_time_tracking_project_id_index` (`time_tracking_project_id`),
  ADD KEY `time_tracking_tasks_invoice_id_index` (`invoice_id`);

--
-- Indexes for table `time_tracking_timers`
--
ALTER TABLE `time_tracking_timers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_tracking_timers_time_tracking_task_id_index` (`time_tracking_task_id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_client_id_index` (`client_id`);

--
-- Indexes for table `users_custom`
--
ALTER TABLE `users_custom`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendors_active_index` (`active`),
  ADD KEY `vendors_name_index` (`name`),
  ADD KEY `vendors_paymentterm_id_foreign` (`paymentterm_id`);

--
-- Indexes for table `vendors_custom`
--
ALTER TABLE `vendors_custom`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor_contacts`
--
ALTER TABLE `vendor_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_vendor_id_index` (`vendor_id`),
  ADD KEY `vendor_contacts_title_id_foreign` (`title_id`);

--
-- Indexes for table `workorders`
--
ALTER TABLE `workorders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workorders_group_id_index` (`group_id`),
  ADD KEY `workorders_company_profile_id_index` (`company_profile_id`),
  ADD KEY `workorders_number_index` (`number`),
  ADD KEY `workorders_user_id_index` (`user_id`),
  ADD KEY `workorders_client_id_index` (`client_id`);

--
-- Indexes for table `workorders_custom`
--
ALTER TABLE `workorders_custom`
  ADD PRIMARY KEY (`workorder_id`);

--
-- Indexes for table `workorder_amounts`
--
ALTER TABLE `workorder_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workorder_amounts_workorder_id_index` (`workorder_id`);

--
-- Indexes for table `workorder_items`
--
ALTER TABLE `workorder_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workorder_items_tax_rate_2_id_index` (`tax_rate_2_id`),
  ADD KEY `workorder_items_display_order_index` (`display_order`),
  ADD KEY `workorder_items_tax_rate_id_index` (`tax_rate_id`),
  ADD KEY `workorder_items_workorder_id_index` (`workorder_id`);

--
-- Indexes for table `workorder_item_amounts`
--
ALTER TABLE `workorder_item_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workorder_item_amounts_item_id_index` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients_custom`
--
ALTER TABLE `clients_custom`
  MODIFY `client_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_profiles`
--
ALTER TABLE `company_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_profiles_custom`
--
ALTER TABLE `company_profiles_custom`
  MODIFY `company_profile_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses_custom`
--
ALTER TABLE `expenses_custom`
  MODIFY `expense_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `inventory_types`
--
ALTER TABLE `inventory_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices_custom`
--
ALTER TABLE `invoices_custom`
  MODIFY `invoice_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_amounts`
--
ALTER TABLE `invoice_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_item_amounts`
--
ALTER TABLE `invoice_item_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_transactions`
--
ALTER TABLE `invoice_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_lookups`
--
ALTER TABLE `item_lookups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_queue`
--
ALTER TABLE `mail_queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_clients`
--
ALTER TABLE `merchant_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_payments`
--
ALTER TABLE `merchant_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments_custom`
--
ALTER TABLE `payments_custom`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchaseorders`
--
ALTER TABLE `purchaseorders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchaseorders_custom`
--
ALTER TABLE `purchaseorders_custom`
  MODIFY `purchaseorder_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchaseorder_amounts`
--
ALTER TABLE `purchaseorder_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchaseorder_items`
--
ALTER TABLE `purchaseorder_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchaseorder_item_amounts`
--
ALTER TABLE `purchaseorder_item_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotes_custom`
--
ALTER TABLE `quotes_custom`
  MODIFY `quote_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quote_amounts`
--
ALTER TABLE `quote_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quote_items`
--
ALTER TABLE `quote_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quote_item_amounts`
--
ALTER TABLE `quote_item_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recurring_invoices`
--
ALTER TABLE `recurring_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recurring_invoices_custom`
--
ALTER TABLE `recurring_invoices_custom`
  MODIFY `recurring_invoice_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recurring_invoice_amounts`
--
ALTER TABLE `recurring_invoice_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recurring_invoice_items`
--
ALTER TABLE `recurring_invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recurring_invoice_item_amounts`
--
ALTER TABLE `recurring_invoice_item_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_categories`
--
ALTER TABLE `schedule_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schedule_occurrences`
--
ALTER TABLE `schedule_occurrences`
  MODIFY `oid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_reminders`
--
ALTER TABLE `schedule_reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_resources`
--
ALTER TABLE `schedule_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time_tracking_projects`
--
ALTER TABLE `time_tracking_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time_tracking_tasks`
--
ALTER TABLE `time_tracking_tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time_tracking_timers`
--
ALTER TABLE `time_tracking_timers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_custom`
--
ALTER TABLE `users_custom`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors_custom`
--
ALTER TABLE `vendors_custom`
  MODIFY `vendor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_contacts`
--
ALTER TABLE `vendor_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workorders`
--
ALTER TABLE `workorders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workorders_custom`
--
ALTER TABLE `workorders_custom`
  MODIFY `workorder_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workorder_amounts`
--
ALTER TABLE `workorder_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workorder_items`
--
ALTER TABLE `workorder_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workorder_item_amounts`
--
ALTER TABLE `workorder_item_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `fk_attachments_users1_idx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_industry_id_foreign` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `clients_paymentterm_id_foreign` FOREIGN KEY (`paymentterm_id`) REFERENCES `payment_terms` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `clients_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `clients_custom`
--
ALTER TABLE `clients_custom`
  ADD CONSTRAINT `clients_custom_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_profiles_custom`
--
ALTER TABLE `company_profiles_custom`
  ADD CONSTRAINT `company_profiles_custom_company_profile_id` FOREIGN KEY (`company_profile_id`) REFERENCES `company_profiles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_client_id_index` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contacts_title_id_foreign` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_category_id_index` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `expenses_company_profile_id_index` FOREIGN KEY (`company_profile_id`) REFERENCES `company_profiles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_expenses_invoices1_idx` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_expenses_users1_idx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `expenses_custom`
--
ALTER TABLE `expenses_custom`
  ADD CONSTRAINT `expenses_custom_expense_id` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_client_id_index` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_company_profile_id_index` FOREIGN KEY (`company_profile_id`) REFERENCES `company_profiles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_invoice_group_id_index` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_user_id_index` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `invoices_custom`
--
ALTER TABLE `invoices_custom`
  ADD CONSTRAINT `invoices_custom_invoice_id` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_amounts`
--
ALTER TABLE `invoice_amounts`
  ADD CONSTRAINT `invoice_amounts_invoice_id_index` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_index` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_item_amounts`
--
ALTER TABLE `invoice_item_amounts`
  ADD CONSTRAINT `invoice_item_amounts_item_id_index` FOREIGN KEY (`item_id`) REFERENCES `invoice_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_transactions`
--
ALTER TABLE `invoice_transactions`
  ADD CONSTRAINT `fk_invoice_transactions_invoices1_idx` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `merchant_clients`
--
ALTER TABLE `merchant_clients`
  ADD CONSTRAINT `merchant_clients_client_id_index` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `merchant_payments`
--
ALTER TABLE `merchant_payments`
  ADD CONSTRAINT `merchant_payments_payment_id_index` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `fk_notes_users1_idx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payments_clients1_idx` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_invoice_id_index` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_payment_method_id_index` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `payments_custom`
--
ALTER TABLE `payments_custom`
  ADD CONSTRAINT `payments_custom_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_index` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `products_inventorytype_id_index` FOREIGN KEY (`inventorytype_id`) REFERENCES `inventory_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `purchaseorders`
--
ALTER TABLE `purchaseorders`
  ADD CONSTRAINT `purchaseorders_company_profile_id_index` FOREIGN KEY (`company_profile_id`) REFERENCES `company_profiles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `purchaseorders_purchaseorder_group_id_index` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `purchaseorders_user_id_index` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `purchaseorders_vendor_id_index` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchaseorders_custom`
--
ALTER TABLE `purchaseorders_custom`
  ADD CONSTRAINT `purchaseorders_custom_purchaseorder_id` FOREIGN KEY (`purchaseorder_id`) REFERENCES `purchaseorders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchaseorder_amounts`
--
ALTER TABLE `purchaseorder_amounts`
  ADD CONSTRAINT `purchaseorder_amounts_purchaseorder_id_index` FOREIGN KEY (`purchaseorder_id`) REFERENCES `purchaseorders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchaseorder_items`
--
ALTER TABLE `purchaseorder_items`
  ADD CONSTRAINT `purchaseorder_items_purchaseorder_id_index` FOREIGN KEY (`purchaseorder_id`) REFERENCES `purchaseorders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchaseorder_item_amounts`
--
ALTER TABLE `purchaseorder_item_amounts`
  ADD CONSTRAINT `purchaseorder_item_amounts_item_id_index` FOREIGN KEY (`item_id`) REFERENCES `purchaseorder_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `quotes_client_id_index` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quotes_company_profile_id_index` FOREIGN KEY (`company_profile_id`) REFERENCES `company_profiles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `quotes_invoice_group_id_index` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `quotes_user_id_index` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `quotes_custom`
--
ALTER TABLE `quotes_custom`
  ADD CONSTRAINT `quotes_custom_quote_id` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_amounts`
--
ALTER TABLE `quote_amounts`
  ADD CONSTRAINT `quote_amounts_quote_id_index` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_items`
--
ALTER TABLE `quote_items`
  ADD CONSTRAINT `quote_items_quote_id_index` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_item_amounts`
--
ALTER TABLE `quote_item_amounts`
  ADD CONSTRAINT `quote_item_amounts_item_id_index` FOREIGN KEY (`item_id`) REFERENCES `quote_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recurring_invoices`
--
ALTER TABLE `recurring_invoices`
  ADD CONSTRAINT `fk_recurring_invoices_groups1_idx` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `recurring_invoices_client_id_index` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recurring_invoices_company_profile_id_index` FOREIGN KEY (`company_profile_id`) REFERENCES `company_profiles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `recurring_invoices_user_id_index` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `recurring_invoices_custom`
--
ALTER TABLE `recurring_invoices_custom`
  ADD CONSTRAINT `recurring_invoices_custom_recurring_invoice_id` FOREIGN KEY (`recurring_invoice_id`) REFERENCES `recurring_invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recurring_invoice_amounts`
--
ALTER TABLE `recurring_invoice_amounts`
  ADD CONSTRAINT `recurring_invoice_amounts_recurring_invoice_id_index` FOREIGN KEY (`recurring_invoice_id`) REFERENCES `recurring_invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recurring_invoice_items`
--
ALTER TABLE `recurring_invoice_items`
  ADD CONSTRAINT `recurring_invoice_items_recurring_invoice_id_index` FOREIGN KEY (`recurring_invoice_id`) REFERENCES `recurring_invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recurring_invoice_item_amounts`
--
ALTER TABLE `recurring_invoice_item_amounts`
  ADD CONSTRAINT `recurring_invoice_item_amounts_item_id_index` FOREIGN KEY (`item_id`) REFERENCES `recurring_invoice_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `fk_schedule_schedule_categories1_idx` FOREIGN KEY (`category_id`) REFERENCES `schedule_categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_schedule_users1_idx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `schedule_occurrences`
--
ALTER TABLE `schedule_occurrences`
  ADD CONSTRAINT `schedule_occurrence_event_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedule_reminders`
--
ALTER TABLE `schedule_reminders`
  ADD CONSTRAINT `schedule_reminder_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedule_resources`
--
ALTER TABLE `schedule_resources`
  ADD CONSTRAINT `schedule_resource_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_tracking_projects`
--
ALTER TABLE `time_tracking_projects`
  ADD CONSTRAINT `time_tracking_projects_client_id_index` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `time_tracking_projects_company_profile_id_index` FOREIGN KEY (`company_profile_id`) REFERENCES `company_profiles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `time_tracking_projects_user_id_index` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `time_tracking_tasks`
--
ALTER TABLE `time_tracking_tasks`
  ADD CONSTRAINT `time_tracking_tasks_invoice_id_index` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `time_tracking_tasks_time_tracking_project_id_index` FOREIGN KEY (`time_tracking_project_id`) REFERENCES `time_tracking_projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_tracking_timers`
--
ALTER TABLE `time_tracking_timers`
  ADD CONSTRAINT `time_tracking_timers_time_tracking_task_id_index` FOREIGN KEY (`time_tracking_task_id`) REFERENCES `time_tracking_tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_custom`
--
ALTER TABLE `users_custom`
  ADD CONSTRAINT `users_custom_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_paymentterm_id_foreign` FOREIGN KEY (`paymentterm_id`) REFERENCES `payment_terms` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vendors_custom`
--
ALTER TABLE `vendors_custom`
  ADD CONSTRAINT `vendors_custom_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `vendor_contacts`
--
ALTER TABLE `vendor_contacts`
  ADD CONSTRAINT `contacts_vendor_id_index` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `vendor_contacts_title_id_foreign` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `workorders_custom`
--
ALTER TABLE `workorders_custom`
  ADD CONSTRAINT `workorders_custom_workorder_id` FOREIGN KEY (`workorder_id`) REFERENCES `workorders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `workorder_amounts`
--
ALTER TABLE `workorder_amounts`
  ADD CONSTRAINT `workorder_amounts_workorder_id_index` FOREIGN KEY (`workorder_id`) REFERENCES `workorders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `workorder_items`
--
ALTER TABLE `workorder_items`
  ADD CONSTRAINT `workorder_items_workorder_id_index` FOREIGN KEY (`workorder_id`) REFERENCES `workorders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `workorder_item_amounts`
--
ALTER TABLE `workorder_item_amounts`
  ADD CONSTRAINT `workorder_item_amounts_item_id_index` FOREIGN KEY (`item_id`) REFERENCES `workorder_items` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
