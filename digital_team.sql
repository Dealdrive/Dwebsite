-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 09:32 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_team`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `section_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `language_id`, `section_title`, `title`, `desc`, `video_link`, `cv_file`, `about_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'About us', 'We envision a world in which businesses have granted access to their customer\'s connected devices', 'Dealdrive technology is a one-stop-shop software and web development firm founded for the purpose of automating business operations with branding, software and web technologies.                                 \r\nAt Dealdrive we are poised to provide digital services for enhancing business productivity and optimizing local businesses to a global brand\r\n\r\nWe believe in working in partnership with our clients to understand their unique needs and working methods. Then, we hope to provide our clients credible and functional service to enhance productivity and efficiency, given them a satisfying experience in their daily business computing', '', '1690134170-My Resume.pdf', '1690355058-About us dd website.jpg', '2023-07-23 16:42:50', '2023-07-26 06:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_status` int(11) NOT NULL DEFAULT 1,
  `blog_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('with_this_account','anonymous') COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_status` int(11) NOT NULL DEFAULT 0,
  `custom_breadcrumb_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `language_id`, `category_name`, `category_id`, `author_name`, `user_id`, `title`, `desc`, `short_desc`, `image_status`, `blog_image`, `type`, `slug`, `view`, `status`, `tag`, `meta_desc`, `meta_keyword`, `breadcrumb_status`, `custom_breadcrumb_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'ecommerce', 4, 'Muekara Tor', 1, 'Benefits of Online Store', '<p>In today\'s digital age, owning an online store has become more important\r\nthan ever before. With the rise of e-commerce, online shopping has become the\r\nnorm, and having an online presence is crucial for any business, big or small.<br></p><p>Having an online store allows you to reach a global audience, expand your\r\ncustomer base, and increase your revenue. It also provides a convenient and\r\neasy way for customers to browse and purchase your products from the comfort of\r\ntheir own homes, at any time of the day or night.</p><p>Not only that, but owning an online store also gives you the flexibility\r\nto manage your business on your own terms. You can set your own hours, choose\r\nwhich products to sell, and tailor your marketing strategy to suit your target\r\naudience.</p><p><span style=\"font-family:Calibri, \'sans-serif\';font-size:11pt;\">So if you haven\'t already, consider setting up\r\nan online store for your business. It may just be the key to unlocking your\r\nfull potential and taking your business to the next level</span></p>', 'In today\'s digital age, owning an online store has become more important than ever before. With the rise of e-commerce, online shopping has become the norm, and having an online presence is crucial for any business, big or small.', 1, '1690478367-343293425_282487464105115_3029133884720036396_n.jpg', 'with_this_account', 'benefits-of-online-store', 0, 1, 'online store, ecommerce', 'ecommerce', 'online store, store, ecommerce, online, web, app, developer, website', 0, NULL, '2023-07-27 16:19:40', '2023-07-27 16:19:40'),
(2, 1, 'Website', 1, 'Muekara Tor', 1, 'Have you ever wondered about the different types of websites that exist? Here\'s a quick rundown', '<p>1. E-commerce websites: These are online stores where you can buy\r\nproducts and services. Examples include Amazon, Etsy, and Zappos.</p><p>2. Blogging websites: These websites are where people create and publish\r\ncontent on a regular basis. Examples include Medium, WordPress, and Blogger.</p><p>3. Social media websites: These are platforms where people can connect\r\nand interact with each other. Examples include Facebook, Twitter, and\r\nInstagram.</p><p>4. Portfolio websites: These websites showcase an individual\'s work or\r\naccomplishments. Examples include Behance, Dribbble, and GitHub.</p><p>5. Educational websites: These are websites that provide information and\r\nresources to help people learn. Examples include Khan Academy, Coursera, and\r\nUdemy.</p><p>6. News websites: These websites provide the latest news and updates on\r\ncurrent events. Examples include CNN, BBC, and The New York Times.</p><p> <span style=\"font-family:Calibri, \'sans-serif\';font-size:11pt;\">There are many other types of websites out\r\nthere, but these are some of the most common ones. Which type of website is\r\nyour favorite? Let me know in the comments!</span></p>', 'There are many other types of websites out there, but let\'s look at some of the most common ones.', 1, '1690480304-343355009_752625083187674_480126942297179210_n.jpg', 'with_this_account', 'have-you-ever-wondered-about-the-different-types-of-websites-that-exist-here-s-a-quick-rundown', 6, 1, 'E-commerce, News, Educational, Social, media, Blog', 'type of website', 'E-commerce, News, Educational, Social, media, Blogging, websites, developer, web, app', 0, NULL, '2023-07-27 16:51:45', '2023-07-27 18:10:50'),
(3, 1, 'Website', 1, 'Muekara Tor', 1, 'When should someone think about running a website', '<p>Owning a website may completely revolutionize your business, whether it\'s\r\na little side gig or a full-time endeavor. It enables you to exhibit your goods\r\nor services in a style that\'s unique to your business and gives you a\r\nprofessional internet presence that can help you draw in new clients and\r\ncustomers.</p><p>But owning a website isn\'t just for businesses. If you have a personal\r\nbrand or are looking to establish yourself as an authority in your field, a\r\nwebsite can be a great way to do that. It gives you a platform to share your\r\nthoughts, ideas, and expertise with the world, and it can help you build a following\r\nof like-minded people.</p><p>So, when should you consider owning a website? I\'d say the answer is\r\npretty simple: if you have something to share with the world, a website can\r\nhelp you do it in a way that\'s professional, effective, and tailored to your unique\r\nvoice and style.</p><p>If you\'re not sure where to start, there are plenty of resources out\r\nthere to help you build a website, from DIY platforms like Wix and Squarespace\r\nto hiring a professional designer or developer. Whatever you decide, just\r\nremember that owning a website can be a valuable asset in today\'s digital age</p><p> <span style=\"font-family:Calibri, \'sans-serif\';font-size:11pt;\">Do you own a website? If so, what benefits have\r\nyou seen from it? Let\'s chat in the comments!</span></p>', 'I frequently get asked when someone should think about running a website. As someone who has spent a lot of time online. These are my opinions', 1, '1690481258-344334914_166568393034107_1232715232693186970_n.jpg', 'with_this_account', 'when-should-someone-think-about-running-a-website', 0, 1, 'website, business, internet, development', 'Having a website', 'website, business, internet, development, expert, developer, experienced, web, app', 0, NULL, '2023-07-27 17:07:38', '2023-07-27 17:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `blog_background_images`
--

CREATE TABLE `blog_background_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_status` int(11) NOT NULL DEFAULT 1,
  `blog_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_paginates`
--

CREATE TABLE `blog_paginates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `homepage_item` int(11) NOT NULL DEFAULT 6,
  `grid_view_paginate` int(11) NOT NULL DEFAULT 9,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_sections`
--

CREATE TABLE `blog_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `section_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_sections`
--

INSERT INTO `blog_sections` (`id`, `language_id`, `section_title`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Blog Post', 'Get all our latest post here', '2023-07-27 17:10:10', '2023-07-27 17:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `breadcrumbs`
--

CREATE TABLE `breadcrumbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `breadcrumb_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `category_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `language_id`, `category_name`, `order`, `status`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Website', 1, 1, 'website', '2023-07-27 15:02:05', '2023-07-27 15:02:05'),
(2, 1, 'mobile app', 2, 1, 'mobile-app', '2023-07-27 15:03:36', '2023-07-27 15:03:36'),
(3, 1, 'branding', 3, 1, 'branding', '2023-07-27 15:07:35', '2023-07-27 15:07:35'),
(4, 1, 'ecommerce', 4, 1, 'ecommerce', '2023-07-27 16:05:33', '2023-07-27 16:05:33'),
(5, 1, 'blog', 5, 1, 'blog', '2023-07-27 16:22:08', '2023-07-27 16:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `color_options`
--

CREATE TABLE `color_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_option` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_options`
--

INSERT INTO `color_options` (`id`, `color_option`, `created_at`, `updated_at`) VALUES
(1, 3, '2023-06-09 00:34:09', '2023-06-26 18:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `blog_id`, `name`, `email`, `comment`, `approval`, `created_at`, `updated_at`) VALUES
(1, 2, 'muekara', 'muekara@gmal.com', 'my comment', '1', '2023-07-27 17:50:57', '2023-07-27 17:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `language_id`, `icon`, `title`, `desc`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'fas fa-phone', 'You can call us', '+2348061467293', 2, '2023-06-12 23:06:19', '2023-07-26 10:36:02'),
(2, 1, 'fas fa-envelope-square', 'Hello Partner!', 'Thank you for taking your time to check us out. What can we do for you today?', 1, '2023-07-26 09:03:07', '2023-07-26 10:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `contact_sections`
--

CREATE TABLE `contact_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `section_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_iframe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_sections`
--

INSERT INTO `contact_sections` (`id`, `language_id`, `section_title`, `title`, `map_iframe`, `created_at`, `updated_at`) VALUES
(1, 1, 'Contact us', 'What can we do for you toady', '', '2023-06-12 23:10:36', '2023-06-12 23:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `timer` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `language_id`, `timer`, `title`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 25, 'Satisfied Brand', 1, '2023-07-23 21:56:31', '2023-07-23 21:57:41'),
(2, 1, 30, 'Successful Projects', 2, '2023-07-23 21:59:03', '2023-07-23 21:59:03'),
(3, 1, 66, 'Highly Rated Review', 3, '2023-07-23 22:01:04', '2023-07-23 22:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `counter_sections`
--

CREATE TABLE `counter_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counter_sections`
--

INSERT INTO `counter_sections` (`id`, `language_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'More than 20+ Brands trust us', '2023-07-23 21:54:25', '2023-07-23 21:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `external_urls`
--

CREATE TABLE `external_urls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `btn_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `external_urls`
--

INSERT INTO `external_urls` (`id`, `language_id`, `btn_name`, `btn_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Get a Quote', 'http://localhost/digitalteam/#contact', 1, '2023-06-13 00:23:36', '2023-07-27 18:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('icon','image') COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `type`, `feature_image`, `icon`, `title`, `desc`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'icon', NULL, 'fas fa-headset', '24/7 Customer Support', 'Prompt assistance, troubleshooting, and resolution of issues, enhancing customer satisfaction', 1, '2023-07-23 17:06:57', '2023-07-23 17:06:57'),
(2, 1, 'icon', NULL, 'far fa-object-ungroup', 'User-Friendly Interface', 'Intuitive and easy-to-use interfaces, reducing the learning curve and improving user adoption', 2, '2023-07-23 17:13:35', '2023-07-23 17:13:35'),
(3, 1, 'icon', NULL, 'fab fa-accusoft', 'Cross-Platform Compatibility', 'Seamless user experience across various devices and operating systems, reaching a broader audience', 3, '2023-07-23 17:23:07', '2023-07-23 17:23:07'),
(4, 1, 'icon', NULL, 'fas fa-bullseye', 'Customization and Personalization Options', 'Allowing users to tailor the product or service to their specific needs and preferences', 4, '2023-07-23 17:30:52', '2023-07-23 17:30:52'),
(5, 1, 'icon', NULL, 'fas fa-spinner', 'High Performance and Fast Loading Times', 'Delivering a smooth and responsive user experience, leading to increased engagement and customer retention', 5, '2023-07-23 17:34:40', '2023-07-23 17:34:40'),
(6, 1, 'icon', NULL, 'fas fa-chart-line', 'Real-Time Analytics', 'Access to valuable insights and data-driven decision-making, optimizing performance and user engagement', 6, '2023-07-23 17:36:26', '2023-07-23 17:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `feature_sections`
--

CREATE TABLE `feature_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `section_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fixed_contents`
--

CREATE TABLE `fixed_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_status` int(11) NOT NULL DEFAULT 1,
  `thumbnail_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fixed_contents`
--

INSERT INTO `fixed_contents` (`id`, `language_id`, `title`, `desc`, `btn_name`, `btn_link`, `image_status`, `thumbnail_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Let\'s work together to move your business forward', 'A good user experience is required before any successful business. Now is a great opportunity to work with us and move your brand forward', 'check our work', 'http://localhost/digitalteam/#portfolio', 1, '1690354975-Home page dd website.jpg', '2023-06-09 00:49:56', '2023-07-27 22:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_keywords`
--

CREATE TABLE `frontend_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontend_keywords`
--

INSERT INTO `frontend_keywords` (`id`, `language_id`, `key`, `value`) VALUES
(1, 1, 'home', 'Home'),
(2, 1, 'about_us', 'About Us'),
(3, 1, 'services', 'Services'),
(4, 1, 'portfolio', 'Portfolio'),
(5, 1, 'blogs', 'Blogs'),
(6, 1, 'contact', 'Contact'),
(7, 1, 'pages', 'Pages'),
(8, 1, 'download', 'Download'),
(9, 1, 'read_more', 'Read More'),
(10, 1, 'back_to_home', 'Back To Home'),
(11, 1, 'scroll_down', 'Scroll Down'),
(12, 1, 'service_details', 'Service Details'),
(13, 1, 'recent_posts', 'Recent Posts'),
(14, 1, 'share', 'Share'),
(15, 1, 'subscribe_newsletter', 'Subscribe Newsletter'),
(16, 1, 'enter_email', 'Enter Email'),
(17, 1, 'all', 'All'),
(18, 1, 'do_you_need_a_new_project', 'Do you need a new project?'),
(19, 1, 'get_in_touch', 'Get In Touch'),
(20, 1, 'anonymous', 'Anonymous'),
(21, 1, 'name', 'Name'),
(22, 1, 'email', 'Email'),
(23, 1, 'subject', 'Subject'),
(24, 1, 'send_message', 'Send Message'),
(25, 1, 'customer_relationship', 'Customer Relationship'),
(26, 1, 'address', 'Address'),
(27, 1, 'address_map_link', 'Address Map Link'),
(28, 1, 'email_and_phone', 'Email And Phone'),
(29, 1, 'portfolio_details', 'Portfolio Details'),
(30, 1, 'search', 'Search'),
(31, 1, 'search_here', 'Search Here...'),
(32, 1, 'categories', 'Categories'),
(33, 1, 'tags', 'Tags'),
(34, 1, 'leave_a_comment', 'Leave A Comment'),
(35, 1, 'your_name', 'Your Name'),
(36, 1, 'your_email', 'Your Email'),
(37, 1, 'your_comment', 'Your Comment'),
(38, 1, 'send_comment', 'Send Comment'),
(39, 1, 'search_results', 'Search Results'),
(40, 1, 'nothing_found', 'Nothing Found'),
(41, 1, 'your_message_has_been_delivered', 'Your message has been delivered.'),
(42, 1, 'your_comment_is_pending_approval', 'Your comment is pending approval.'),
(43, 1, 'message', 'message'),
(44, 1, 'quote', 'Get a quote'),
(45, 1, 'frontend.reply', 'Reply'),
(46, 1, 'frontend.comments', 'Comments');

-- --------------------------------------------------------

--
-- Table structure for table `google_analytics`
--

CREATE TABLE `google_analytics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_analytic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_analytics`
--

INSERT INTO `google_analytics` (`id`, `google_analytic`, `created_at`, `updated_at`) VALUES
(1, 'G-R5FW9RQRK3', '2023-06-13 01:12:37', '2023-06-13 01:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_versions`
--

CREATE TABLE `homepage_versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `choose_version` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepage_versions`
--

INSERT INTO `homepage_versions` (`id`, `choose_version`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-05-02 13:14:54', '2023-06-15 21:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `info_lists`
--

CREATE TABLE `info_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_lists`
--

INSERT INTO `info_lists` (`id`, `language_id`, `title`, `desc`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Company Name', 'Dealdrive technology', 1, '2023-07-23 16:25:09', '2023-07-23 16:25:09'),
(2, 1, 'Country :', 'Nigeria', 2, '2023-07-23 16:26:36', '2023-07-23 16:26:36'),
(3, 1, 'Freelance :', 'Available', 3, '2023-07-23 16:27:35', '2023-07-23 16:27:35'),
(4, 1, 'Technologies :', 'Java, Php, JavaScript, Node.js, Python, Flutter', 4, '2023-07-23 16:29:22', '2023-07-26 06:17:05'),
(5, 1, 'Languages :', 'English', 5, '2023-07-23 16:30:28', '2023-07-23 16:30:28'),
(6, 1, 'Address :', '81 Itu road, Akwa Ibom', 6, '2023-07-23 16:31:50', '2023-07-23 16:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `display_dropdown` int(11) NOT NULL,
  `default_site_language` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `language_code`, `direction`, `status`, `display_dropdown`, `default_site_language`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, 1, 0, 1, '2021-05-02 13:14:51', '2023-07-27 17:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `read`, `created_at`, `updated_at`) VALUES
(1, 'name', 'admin@gmail.com', 'good day', 'I need website', 1, '2023-06-12 23:13:16', '2023-06-13 00:21:05'),
(2, 'musicapp', 'email@email.com', 'subject', 'thank you', 1, '2023-06-13 00:18:23', '2023-07-26 06:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_09_24_005133_create_sessions_table', 1),
(7, '2020_09_26_225805_create_languages_table', 1),
(8, '2020_09_30_133427_create_sliders_table', 1),
(9, '2020_09_30_231340_create_abouts_table', 1),
(10, '2020_10_06_090858_create_services_table', 1),
(11, '2020_10_07_095629_create_service_sections_table', 1),
(12, '2020_10_08_123654_create_features_table', 1),
(13, '2020_10_08_204636_create_counters_table', 1),
(14, '2020_10_10_092350_create_teams_table', 1),
(15, '2020_10_10_092409_create_team_sections_table', 1),
(16, '2020_10_16_144438_create_site_infos_table', 1),
(17, '2020_10_21_053827_create_google_analytics_table', 1),
(18, '2020_10_21_055547_create_seos_table', 1),
(19, '2020_10_21_073549_create_categories_table', 1),
(20, '2020_10_22_003541_create_blogs_table', 1),
(21, '2020_10_22_004159_create_blog_sections_table', 1),
(22, '2020_10_24_064553_create_contacts_table', 1),
(23, '2020_10_24_064616_create_contact_sections_table', 1),
(24, '2020_10_25_004806_create_site_images_table', 1),
(25, '2020_11_05_081548_create_socials_table', 1),
(26, '2020_11_05_125854_create_breadcrumbs_table', 1),
(27, '2020_11_05_132410_create_sections_table', 1),
(28, '2020_11_06_073530_create_pages_table', 1),
(29, '2020_11_11_112402_create_messages_table', 1),
(30, '2020_11_18_125114_create_testimonials_table', 1),
(31, '2020_11_19_105332_create_comments_table', 1),
(32, '2021_02_05_064120_create_color_options_table', 1),
(33, '2021_02_10_001331_create_photos_table', 1),
(34, '2021_02_11_133721_create_feature_sections_table', 1),
(35, '2021_02_14_230418_create_service_paginates_table', 1),
(36, '2021_02_15_230212_create_blog_paginates_table', 1),
(37, '2021_02_15_231253_create_blog_background_images_table', 1),
(38, '2021_02_20_155758_create_portfolio_categories_table', 1),
(39, '2021_02_20_155820_create_portfolios_table', 1),
(40, '2021_02_20_160050_create_portfolio_sections_table', 1),
(41, '2021_02_21_005201_create_permission_tables', 1),
(42, '2021_03_12_145009_create_fixed_contents_table', 1),
(43, '2021_03_12_152225_create_videos_table', 1),
(44, '2021_03_12_161559_create_info_lists_table', 1),
(45, '2021_03_31_090731_create_service_details_table', 1),
(46, '2021_03_31_095702_create_counter_sections_table', 1),
(47, '2021_03_31_101632_create_work_processes_table', 1),
(48, '2021_03_31_101645_create_work_process_sections_table', 1),
(49, '2021_04_17_094919_create_skills_table', 1),
(50, '2021_04_17_095121_create_skill_info_lists_table', 1),
(51, '2021_04_18_125219_create_portfolio_details_table', 1),
(52, '2021_04_19_070023_create_portfolio_sliders_table', 1),
(53, '2021_04_19_114028_create_testimonial_sections_table', 1),
(54, '2021_04_19_152848_create_panel_keywords_table', 1),
(55, '2021_04_19_153008_create_frontend_keywords_table', 1),
(56, '2021_04_21_090937_create_homepage_versions_table', 1),
(57, '2021_04_24_133615_create_external_urls_table', 1),
(58, '2021_04_24_161613_create_subscribes_table', 1),
(59, '2021_04_25_114234_create_quick_access_buttons_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `page_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_header_menu` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  `page_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `language_id`, `page_title`, `desc`, `display_header_menu`, `status`, `order`, `page_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pagetest', '<p>This is the content</p>', 1, 1, 1, 'landing', '2023-06-08 23:45:01', '2023-07-23 21:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `panel_keywords`
--

CREATE TABLE `panel_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `panel_keywords`
--

INSERT INTO `panel_keywords` (`id`, `language_id`, `key`, `value`) VALUES
(1, 1, 'dashboard', 'Dashboard'),
(2, 1, 'admin_role_manage', 'Admin Role Manage'),
(3, 1, 'add_admin_role', 'Add Admin Role'),
(4, 1, 'role_name', 'Role Name'),
(5, 1, 'permissions', 'Permissions'),
(6, 1, 'set_permissions_for_this_role', 'set permissions for this role'),
(7, 1, 'submit', 'Submit'),
(8, 1, 'admin_roles', 'Admin Roles'),
(9, 1, 'has_all_permissions', 'has all permissions'),
(10, 1, 'action', 'Action'),
(11, 1, 'edit_admin_role', 'Edit Admin Role'),
(12, 1, 'admin_manage', 'Admin Manage'),
(13, 1, 'all_admin', 'All Admin'),
(14, 1, 'all_admin_created_by_super_admin', 'All Admin Created By Super Admin'),
(15, 1, 'add_admin_user', 'Add Admin User'),
(16, 1, 'edit_admin_user', 'Edit Admin User'),
(17, 1, 'name', 'Name'),
(18, 1, 'email', 'Email'),
(19, 1, 'new_password', 'New Password'),
(20, 1, 'confirm_password', 'Confirm Password'),
(21, 1, 'image', 'Image'),
(22, 1, 'size', 'size'),
(23, 1, 'delete', 'Delete'),
(24, 1, 'close', 'Close'),
(25, 1, 'you_wont_be_able_to_revert_this', 'You wont be able to revert this!'),
(26, 1, 'cancel', 'Cancel'),
(27, 1, 'yes_delete_it', 'Yes, delete it!'),
(28, 1, 'created_successfully', 'Created Successfully'),
(29, 1, 'updated_successfully', 'Updated Successfully'),
(30, 1, 'deleted_successfully', 'Deleted Successfully'),
(31, 1, 'current_image', 'Current Image'),
(32, 1, 'uploads', 'Uploads'),
(33, 1, 'add_photo', 'Add Photo'),
(34, 1, 'photos', 'Photos'),
(35, 1, 'order', 'Order'),
(36, 1, 'copy_image_link', 'Copy Image Link'),
(37, 1, 'edit_photo', 'Edit Photo'),
(38, 1, 'banner', 'Banner'),
(39, 1, 'add_new', 'Add New'),
(40, 1, 'fixed_content', 'Fixed Content'),
(41, 1, 'section_title', 'Section Title'),
(42, 1, 'title', 'Title'),
(43, 1, 'description', 'Description'),
(44, 1, 'button_name', 'Button Name'),
(45, 1, 'button_link', 'Button Link'),
(46, 1, 'please_use_recommended_sizes', 'You do not have to use the recommended sizes. However, please use the recommended sizes for your site design to look its best.'),
(47, 1, 'image_status', 'Image Status'),
(48, 1, 'thumbnail', 'Thumbnail'),
(49, 1, 'sliders', 'Sliders'),
(50, 1, 'add_slider', 'Add Slider'),
(51, 1, 'edit_slider', 'Edit Slider'),
(52, 1, 'video', 'Video'),
(53, 1, 'about', 'About'),
(54, 1, 'video_link', 'Video Link'),
(55, 1, 'youtube_supported', 'Youtube Supported'),
(56, 1, 'cv_or_any_file', 'CV Or Any File'),
(57, 1, 'information_list', 'Information List'),
(58, 1, 'add_info', 'Add Info'),
(59, 1, 'edit_info', 'Edit Info'),
(60, 1, 'back', 'Back'),
(61, 1, 'features', 'Features'),
(62, 1, 'add_feature', 'Add Feature'),
(63, 1, 'edit_feature', 'Edit Feature'),
(64, 1, 'type', 'Type'),
(65, 1, 'btn_link', 'Button Link'),
(66, 1, 'btn_name', 'Button Name'),
(67, 1, 'blogs', 'Blogs'),
(68, 1, 'categories', 'Categories'),
(69, 1, 'add_category', 'Add Category'),
(70, 1, 'edit_category', 'Edit Category'),
(71, 1, 'category_name', 'Category Name'),
(72, 1, 'please_choose', 'Please choose.'),
(73, 1, 'please_create_a_category', 'Please create a category.'),
(74, 1, 'status', 'Status'),
(75, 1, 'select_your_option', 'Select Your Option'),
(76, 1, 'enable', 'Enable'),
(77, 1, 'disable', 'Disable'),
(78, 1, 'section_title_and_desc', 'Section Title/Description'),
(79, 1, 'not_yet_created', 'Not yet created.'),
(80, 1, 'category', 'Category'),
(81, 1, 'post_date', 'Post Date'),
(82, 1, 'view', 'View'),
(83, 1, 'add_blog', 'Add Blog'),
(84, 1, 'edit_blog', 'Edit Blog'),
(85, 1, 'short_desc', 'Short Description'),
(86, 1, 'tag', 'Tag'),
(87, 1, 'separate_with_commas', 'Separate with commas'),
(88, 1, 'author', 'Author'),
(89, 1, 'with_this_account', 'With this account'),
(90, 1, 'anonymous', 'Anonymous'),
(91, 1, 'seo_optimization', 'Seo Optimization'),
(92, 1, 'meta_desc', 'Meta Description'),
(93, 1, 'meta_keyword', 'Meta Keyword'),
(94, 1, 'breadcrumb_customization', 'Breadcrumb Customization'),
(95, 1, 'use_special_breadcrumb', 'Do you want to use special breadcrumb for the page?'),
(96, 1, 'yes', 'Yes'),
(97, 1, 'no', 'No'),
(98, 1, 'custom_breadcrumb_image', 'Custom Breadcrumb Image'),
(99, 1, 'published', 'Published'),
(100, 1, 'draft', 'Draft'),
(101, 1, 'blog_paginate', 'Blog Paginate'),
(102, 1, 'homepage_item', 'Homepage Item'),
(103, 1, 'grid_view_paginate', 'Grid View Paginate'),
(104, 1, 'services', 'Services'),
(105, 1, 'add_service', 'Add Service'),
(106, 1, 'edit_service', 'Edit Service'),
(107, 1, 'icon', 'Icon'),
(108, 1, 'all', 'All'),
(109, 1, 'additional_features', 'Additional Features'),
(110, 1, 'select', 'Select'),
(111, 1, 'service_paginate', 'Service Paginate'),
(112, 1, 'paginate', 'Paginate'),
(113, 1, 'counters', 'Counters'),
(114, 1, 'add_counter', 'Add Counter'),
(115, 1, 'edit_counter', 'Edit Counter'),
(116, 1, 'timer', 'Timer'),
(117, 1, 'work_processes', 'Work Processes'),
(118, 1, 'add_work_process', 'Add Work Process'),
(119, 1, 'edit_work_process', 'Edit Work Process'),
(120, 1, 'skill', 'Skill'),
(121, 1, 'percent_rate', 'Percent Rate'),
(122, 1, 'portfolios', 'Portfolios'),
(123, 1, 'add_portfolio', 'Add Portfolio'),
(124, 1, 'edit_portfolio', 'Edit Portfolio'),
(125, 1, 'details', 'Details'),
(126, 1, 'add_detail', 'Add Detail'),
(127, 1, 'edit_detail', 'Edit Detail'),
(128, 1, 'teams', 'Teams'),
(129, 1, 'add_team', 'Add Team'),
(130, 1, 'edit_team', 'Edit Team'),
(131, 1, 'job', 'Job'),
(132, 1, 'testimonials', 'Testimonials'),
(133, 1, 'add_testimonial', 'Add Testimonial'),
(134, 1, 'edit_testimonial', 'Edit Testimonial'),
(135, 1, 'star', 'Star'),
(136, 1, 'pages', 'Pages'),
(137, 1, 'add_page', 'Add Page'),
(138, 1, 'edit_page', 'Edit Page'),
(139, 1, 'display_header_menu', 'Display Header Menu?'),
(140, 1, 'other', 'Other'),
(141, 1, 'copy_link', 'Copy Link'),
(142, 1, 'copied_text', 'Copied Text'),
(143, 1, 'contact', 'Contact'),
(144, 1, 'contact_info', 'Contact Info'),
(145, 1, 'map_iframe', 'Map Iframe (link in src)'),
(146, 1, 'map_iframe_desc_placeholder', 'Please find your address on Google Map. And click the Share Button on the Left Side. You will see the Map Placement Area. In the Copy Html field in this section Copy and paste the link in the src from the code inside.'),
(147, 1, 'add_contact', 'Add Contact'),
(148, 1, 'edit_contact', 'Edit Contact'),
(149, 1, 'socials', 'Socials'),
(150, 1, 'add_social', 'Add Social'),
(151, 1, 'edit_social', 'Edit Social'),
(152, 1, 'link', 'Link'),
(153, 1, 'messages', 'Messages'),
(154, 1, 'mark_all_as_read', 'Mark All As Read'),
(155, 1, 'subject', 'Subject'),
(156, 1, 'message', 'Message'),
(157, 1, 'read_status', 'Read Status'),
(158, 1, 'read', 'Read'),
(159, 1, 'unread', 'Unread'),
(160, 1, 'mark', 'Mark'),
(161, 1, 'settings', 'Settings'),
(162, 1, 'site_info', 'Site Info'),
(163, 1, 'site_images', 'Site Images'),
(164, 1, 'copyright', 'Copyright'),
(165, 1, 'address', 'Address'),
(166, 1, 'address_map_link', 'Address Map Link'),
(167, 1, 'phone', 'Phone'),
(168, 1, 'favicon', 'Favicon'),
(169, 1, 'admin_logo', 'Admin Logo'),
(170, 1, 'admin_small_logo', 'Admin Small Logo'),
(171, 1, 'site_white_logo', 'Site White Logo'),
(172, 1, 'site_colored_logo', 'Site Colored Logo'),
(173, 1, 'google_analytic', 'Google Analytic'),
(174, 1, 'breadcrumb', 'Breadcrumb'),
(175, 1, 'sections', 'Sections'),
(176, 1, 'color_option', 'Color Option'),
(177, 1, 'seo', 'Seo'),
(178, 1, 'site_name', 'Site Name'),
(179, 1, 'site_desc', 'Site Description'),
(180, 1, 'site_keywords', 'Site Keywords'),
(181, 1, 'languages', 'Languages'),
(182, 1, 'default_site_language', 'Default Site Language'),
(183, 1, 'add_language', 'Add Language'),
(184, 1, 'language_name', 'Language Name'),
(185, 1, 'language_code', 'Language Code'),
(186, 1, 'direction', 'Direction'),
(187, 1, 'display_dropdown', 'Display Dropdown?'),
(188, 1, 'show', 'Show'),
(189, 1, 'hide', 'Hide'),
(190, 1, 'keywords', 'Keywords'),
(191, 1, 'for_admin_panel', 'For Admin Panel'),
(192, 1, 'for_frontend', 'For Frontend'),
(193, 1, 'profile', 'Profile'),
(194, 1, 'change_password', 'Change Password'),
(195, 1, 'current_password', 'Current Password'),
(196, 1, 'pending_approval', 'Pending Approval'),
(197, 1, 'approval', 'Approval'),
(198, 1, 'data_language', 'Data Language'),
(199, 1, 'which_language', 'Which language do you want to create the data?'),
(200, 1, 'reminding', 'Please note that all the entries you create will be based on your chosen language.'),
(201, 1, 'notifications', 'Notifications'),
(202, 1, 'logout', 'Logout'),
(203, 1, 'optimizer', 'Optimizer'),
(204, 1, 'required_fields', 'Fields marked are required'),
(205, 1, 'site', 'Site'),
(206, 1, 'add_keyword', 'Add Keyword'),
(207, 1, 'key', 'Key'),
(208, 1, 'value', 'Value'),
(209, 1, 'delete_selected', 'Delete selected?'),
(210, 1, 'comments', 'Comments'),
(211, 1, 'homepage_versions', 'Homepage Versions'),
(212, 1, 'choose_version', 'Choose Version'),
(213, 1, 'if_you_choose_no', 'If you choose No, it will appear in the footer section.'),
(214, 1, 'if_you_choose_other', 'If you choose the other, you\'ll know how to create links that you can use on your site.'),
(215, 1, 'external_url', 'External Url'),
(216, 1, 'subscribers', 'Subscribers'),
(217, 1, 'add_subscriber', 'Add Subscriber'),
(218, 1, 'quick_access_buttons', 'Quick Access Buttons'),
(219, 1, 'email_or_phone', 'Email Or Phone');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'uploads check', 'web', '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(2, 'subscribe check', 'web', '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(3, 'banner check', 'web', '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(4, 'external url check', 'web', '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(5, 'about us check', 'web', '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(6, 'features check', 'web', '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(7, 'services check', 'web', '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(8, 'counters check', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(9, 'work processes check', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(10, 'skill check', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(11, 'portfolio check', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(12, 'teams check', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(13, 'testimonials check', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(14, 'blogs check', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(15, 'settings check', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(16, 'contact check', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(17, 'pages check', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(18, 'comments check', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(19, 'language check', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(20, 'clear cache check', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `gallery_image`, `order`, `created_at`, `updated_at`) VALUES
(1, '1686271804-pics.jpg', 0, '2023-06-08 23:50:04', '2023-06-08 23:50:04'),
(2, '1686621287-DD logo new ST.jpg', 3, '2023-06-13 00:54:47', '2023-06-13 00:54:47'),
(3, '1690356292-Our skills dd website two.jpg', 3, '2023-07-26 06:24:52', '2023-07-26 06:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_status` int(11) NOT NULL DEFAULT 1,
  `thumbnail_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_status` int(11) NOT NULL DEFAULT 1,
  `custom_breadcrumb_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `language_id`, `category_name`, `category_id`, `title`, `desc`, `image_status`, `thumbnail_image`, `portfolio_slug`, `status`, `meta_desc`, `meta_keyword`, `breadcrumb_status`, `custom_breadcrumb_image`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Law firm website', 3, 'Ukeme ebong & co Chambers - Your Trusted Legal Advocates', '<p style=\"color:rgb(55,65,81);font-size:16px;font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';background-color:rgb(247,247,248);\">Welcome to Ukeme ebong &amp; co Chambers, where justice finds its voice and your legal needs find expert resolution. As a leading law firm dedicated to upholding the rights and defending the interests of their clients, Ukeme ebong &amp; co Chambers is committed to delivering unparalleled legal counsel and representation.</p><p style=\"color:rgb(55,65,81);font-size:16px;font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';background-color:rgb(247,247,248);\"><span style=\"font-weight:600;\">Their Commitment to Excellence:</span></p><ol><li><p><span style=\"font-weight:600;\">Experienced Legal Team:</span> At Ukeme ebong &amp; co Chambers, we take pride in our team of accomplished attorneys and legal professionals. With years of collective experience and a diverse range of expertise, we are equipped to handle a wide array of legal matters.</p></li><li><p><span style=\"font-weight:600;\">Client-Centered Approach:</span> Your success and satisfaction are at the heart of everything we do. We believe in fostering strong attorney-client relationships, taking the time to understand your unique circumstances, and tailoring our strategies to achieve the best possible outcomes.</p></li><li><p><span style=\"font-weight:600;\">Comprehensive Practice Areas:</span> Whether you need assistance with business law, family law, real estate, immigration, or any other legal concern, our firm\'s comprehensive practice areas ensure that you have access to reliable guidance and representation for a variety of legal issues.</p></li><li><p><span style=\"font-weight:600;\">Personalized Legal Solutions:</span> We recognize that no two cases are the same. That\'s why we approach each matter with a personalized touch, crafting tailored legal solutions that align with your goals and objectives.</p></li><li><p><span style=\"font-weight:600;\">Strategic Advocacy:</span> With a keen understanding of the complexities of the legal landscape, our adept attorneys offer strategic advocacy both in and out of the courtroom. Our aim is to protect your rights, champion your interests, and navigate challenges with finesse.</p></li><li><p><span style=\"font-weight:600;\">Transparent Communication:</span> We believe in fostering open and transparent communication with our clients. Throughout your legal journey with us, you can expect regular updates, clear explanations, and attentive support to keep you informed and at ease.</p></li><li><p><span style=\"font-weight:600;\">Ethical Standards:</span> Upholding the highest ethical standards is non-negotiable at Ukeme ebong &amp; co Chambers Law Firm. Our integrity, professionalism, and dedication to the law form the foundation of our practice.</p></li><li><p><span style=\"font-weight:600;\">Community Engagement:</span> We are not just legal advocates; we are active members of the community. Ukeme ebong &amp; co Chambers proudly engages in various pro bono initiatives, promoting access to justice and giving back to society.</p></li></ol><p style=\"color:rgb(55,65,81);font-size:16px;font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';background-color:rgb(247,247,248);\">When you choose Ukeme ebong &amp; co Chambers, you gain more than just legal representation; you gain a trusted partner in your pursuit of justice. We are here to guide you through challenging times, provide clarity in complex legal matters, and help you navigate the legal landscape with confidence.</p><p style=\"color:rgb(55,65,81);font-size:16px;font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';background-color:rgb(247,247,248);\">Discover the strength of unwavering legal advocacy at Ukeme ebong &amp; co Chambers.</p>', 1, '1690278938-ukslide1.png', 'ukeme-ebong-co-chambers', 1, 'Law firm website', 'best, law, lawyer, website, designer, expert', 0, NULL, 1, '2023-07-25 08:55:58', '2023-07-27 01:24:24'),
(2, 1, 'E-Commerce', 5, 'Banix Deals: - Redefining Online Shopping', '<p style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;background-color:rgb(247,247,248);\">Welcome to Banix Deals, an innovative and user-centric online shopping destination that promises an unparalleled shopping experience for customers worldwide. Designed and developed by Dealdrive technology, this cutting-edge ecommerce platform seamlessly blends style, functionality, and ease of use to create a virtual marketplace like no other.<br></p><p style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;background-color:rgb(247,247,248);\"><span style=\"font-weight:600;\">The Features we built into Banix deals:</span></p><ol><li><p><span style=\"font-weight:600;\">Intuitive User Interface:</span> At <span style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;\">Banix Deals</span>, we believe shopping should be effortless and enjoyable. Our user-friendly interface ensures a smooth and intuitive browsing experience, allowing customers to find what they desire quickly and conveniently.</p></li><li><p><span style=\"font-weight:600;\">Vast Product Selection:</span> From fashion-forward clothing and accessories to high-tech gadgets and home essentials, their extensive product catalog caters to diverse tastes and preferences, making it a one-stop-shop for all shopping needs.</p></li><li><p><span style=\"font-weight:600;\">Personalized Recommendations:</span> Utilizing state-of-the-art algorithms, <span style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;\">Banix Deals</span> presents personalized product recommendations based on customers\' browsing history, ensuring they discover products that resonate with their unique interests.</p></li><li><p><span style=\"font-weight:600;\">Secure Payment Gateway:</span> Your safety is our top priority. With a secure and encrypted payment gateway, customers can shop with confidence, knowing that their financial information is protected.</p></li><li><p><span style=\"font-weight:600;\">Responsive Design:</span> Whether you\'re accessing our platform from a desktop, tablet, or smartphone, <span style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;\">Banix Deals</span> adjusts seamlessly to various screen sizes, offering a consistent and delightful shopping experience on any device.</p></li><li><p><span style=\"font-weight:600;\">Efficient Order Management:</span> Our streamlined order processing and fulfillment system guarantee timely deliveries, keeping customers informed at every step of their purchase journey.</p></li><li><p><span style=\"font-weight:600;\">Customer Reviews and Ratings:</span> Transparency matters. We encourage our valued customers to share their feedback and rate their purchases, empowering others to make informed decisions.</p></li><li><p><span style=\"font-weight:600;\">24/7 Customer Support:</span> Have a question or need assistance? Our dedicated customer support team is available around the clock to provide prompt and friendly assistance.</p></li></ol><p style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;background-color:rgb(247,247,248);\">Experience the future of online shopping with Banix Deals. Browse, shop, and discover a world of possibilities at your fingertips.</p>', 1, '1690422316-4.png', 'banix-deals-redefining-online-shopping', 1, 'E-commerce', 'ecommerce, online store, web, app, website, store', 0, NULL, 2, '2023-07-27 00:45:29', '2023-07-27 00:45:29'),
(3, 1, 'Aviation website', 1, 'Geopetrax Aerotech Consults -', '<p style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;background-color:rgb(247,247,248);\">We take immense pride in creating a dynamic online platform for Geopetrax Aerotech Consults. This project showcases our shared passion for aviation and dedication to empowering the next generation of aviation professionals.<br></p><p style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;background-color:rgb(247,247,248);\">The Geopetrax Aerotech Consults website serves as a gateway to VCATI\'s world-class training programs, providing aspiring aircraft maintenance engineers and cabin crew members with a comprehensive and industry-relevant learning experience. Our collaborative approach focused on delivering a cutting-edge design that reflects the institute\'s commitment to excellence.</p><p style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;background-color:rgb(247,247,248);\">Key features of the website include:</p><ol><li><p><span style=\"font-weight:600;\">Intuitive User Experience:</span> I crafted an intuitive and user-friendly interface, ensuring that visitors can easily navigate through the website and access essential information about VCATI\'s programs and facilities.</p></li><li><p><span style=\"font-weight:600;\">Responsive Design:</span> Recognizing the significance of accessibility, the website adapts seamlessly to various devices, enabling prospective students to explore the institute\'s offerings on desktops, tablets, and smartphones.</p></li><li><p><span style=\"font-weight:600;\">Dynamic Content:</span> To provide a glimpse into the world of aviation training, we integrated captivating multimedia elements, including videos, images, and interactive features, capturing the essence of VCATI\'s immersive learning environment.</p></li><li><p><span style=\"font-weight:600;\">Program Details:</span> The website offers in-depth descriptions of VCATI\'s aircraft maintenance engineering and cabin crew training programs, emphasizing their industry relevance and career prospects.</p></li></ol>', 1, '1690425880-2.png', 'geopetrax-aerotech-consults', 1, 'Aviation website', 'aeronautic, website, cabin crew, app, expert, developer, software', 0, NULL, 3, '2023-07-27 01:44:41', '2023-07-27 07:41:22'),
(4, 1, 'Clinic website', 4, 'ImagePlus Eye Clinic Website', '<p style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;background-color:rgb(247,247,248);\"> We delivered a visually engaging and user-centric online platform for this esteemed eye care destination. The website embodies the essence of ImagePlus Eye Clinic\'s commitment to providing visionary care for healthy eyes while offering patients a seamless and informative online experience.</p><p style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;background-color:rgb(247,247,248);\"><span style=\"font-weight:600;\">Key Features and Achievements:</span></p><ol><li><p><span style=\"font-weight:600;\">Intuitive User Interface:</span> we meticulously designed an intuitive user interface that allows patients to effortlessly navigate through the website and access essential information about the clinic\'s services, specialists, and contact details.</p></li><li><p><span style=\"font-weight:600;\">Mobile Responsiveness:</span> Recognizing the importance of accessibility, we ensured that the website is fully responsive on various devices, including desktops, tablets, and smartphones, so that patients can conveniently engage with the clinic on the go.</p></li><li><p><span style=\"font-weight:600;\">Eye-Catching Design:</span> Employing a blend of captivating visuals, calming colors, and crisp typography, the website\'s design reflects ImagePlus Eye Clinic\'s dedication to excellence and instills confidence in visitors seeking top-tier eye care services.</p></li><li><p><span style=\"font-weight:600;\">Informative Content:</span> We curated informative and concise content that highlights the clinic\'s comprehensive eye care offerings, cutting-edge technology, and a compassionate team of eye care professionals.</p></li><li><p><span style=\"font-weight:600;\">Online Appointment Scheduling:</span> Enhancing patient convenience, I integrated an online appointment scheduling feature, allowing patients to book their eye examinations and consultations with ease.</p></li><li><p><span style=\"font-weight:600;\">Virtual Tour:</span> To offer a glimpse into the clinic\'s modern facility, I incorporated a virtual tour feature that immerses visitors in the welcoming ambiance of ImagePlus Eye Clinic.</p></li><li><p><span style=\"font-weight:600;\">Testimonials and Success Stories:</span> We showcased patient testimonials and success stories, adding a human touch to the website and reinforcing the clinic\'s reputation for outstanding patient care.</p></li><li><p><span style=\"font-weight:600;\">Accessibility Features:</span> Committed to inclusivity, we implemented accessibility features such as screen reader compatibility and clear navigation pathways, ensuring all users can access the website\'s content effortlessly.</p></li></ol><p style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;background-color:rgb(247,247,248);\">The ImagePlus Eye Clinic website represents a harmonious blend of form and function, underscoring the clinic\'s dedication to maintaining healthy eyes and enhancing visual clarity. It has been an honor to contribute our web development expertise to this project, supporting ImagePlus Eye Clinic\'s mission to empower patients with exceptional eye care services.</p><p style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;background-color:rgb(247,247,248);\">With the website as a digital gateway, ImagePlus Eye Clinic continues to reach and serve individuals seeking the best in eye care, instilling confidence in patients as they embark on their journey towards a clearer and brighter vision of the world.</p>', 1, '1690426855-3.png', 'imageplus-eye-clinic-website', 1, 'clinic website', 'clinic, website, app, developer, expert', 0, NULL, 4, '2023-07-27 02:01:03', '2023-07-27 07:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_categories`
--

CREATE TABLE `portfolio_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `portfolio_category_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_categories`
--

INSERT INTO `portfolio_categories` (`id`, `language_id`, `category_name`, `order`, `status`, `portfolio_category_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aviation website', 1, 1, 'website', '2023-07-24 21:28:12', '2023-07-24 21:37:32'),
(2, 1, 'NGO Website', 2, 1, 'mobile-app', '2023-07-24 21:28:56', '2023-07-24 21:35:04'),
(3, 1, 'Law firm website', 3, 1, 'frontend-design', '2023-07-24 21:29:52', '2023-07-24 21:36:44'),
(4, 1, 'Clinic website', 4, 1, 'clinic-website', '2023-07-24 21:31:20', '2023-07-24 21:31:20'),
(5, 1, 'E-Commerce', 5, 1, 'e-commerce', '2023-07-24 21:38:45', '2023-07-24 21:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_details`
--

CREATE TABLE `portfolio_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_details`
--

INSERT INTO `portfolio_details` (`id`, `portfolio_id`, `title`, `desc`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Our latest jobs done', 'This was successfully delivered to a reputable law firm', 1, '2023-07-25 10:19:59', '2023-07-25 10:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_sections`
--

CREATE TABLE `portfolio_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `section_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_sections`
--

INSERT INTO `portfolio_sections` (`id`, `language_id`, `section_title`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Our Latest Job Done', 'Our portfolio are enough to tell you more about expertise', '2023-07-25 10:28:46', '2023-07-25 10:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_sliders`
--

CREATE TABLE `portfolio_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_sliders`
--

INSERT INTO `portfolio_sliders` (`id`, `portfolio_id`, `portfolio_image`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, '1690282980-1.png', 1, '2023-07-25 10:03:00', '2023-07-25 10:03:00'),
(2, 1, '1690283031-2.png', 2, '2023-07-25 10:03:51', '2023-07-25 10:03:51'),
(3, 1, '1690283095-3.png', 3, '2023-07-25 10:04:55', '2023-07-25 10:04:55'),
(4, 1, '1690283360-4.png', 4, '2023-07-25 10:09:20', '2023-07-25 10:09:20'),
(5, 1, '1690283431-5.png', 5, '2023-07-25 10:10:31', '2023-07-25 10:10:31'),
(6, 1, '1690283464-6.png', 6, '2023-07-25 10:11:04', '2023-07-25 10:11:04'),
(7, 1, '1690283513-7.png', 7, '2023-07-25 10:11:53', '2023-07-25 10:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `quick_access_buttons`
--

CREATE TABLE `quick_access_buttons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_media` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_or_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_phone` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quick_access_buttons`
--

INSERT INTO `quick_access_buttons` (`id`, `social_media`, `link`, `status`, `contact`, `email_or_phone`, `status_phone`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-whatsapp', 'https://wa.me/2347014970207', 1, 'fas fa-phone', '+2348061467293', 0, '2023-06-12 23:21:05', '2023-06-15 21:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(2, 'admin', 'web', '2021-05-02 13:14:52', '2021-05-02 13:14:52'),
(3, 'editor', 'web', '2021-05-02 13:14:53', '2021-05-02 13:14:53'),
(4, 'Content Creator', 'web', '2023-06-09 01:06:42', '2023-06-09 01:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(7, 3),
(8, 2),
(8, 4),
(9, 2),
(10, 2),
(11, 2),
(11, 3),
(11, 4),
(12, 2),
(13, 2),
(13, 4),
(14, 2),
(14, 3),
(14, 4),
(16, 2),
(17, 2),
(18, 2),
(18, 4),
(19, 2),
(20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `section`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Page Menu', 'page_menu', 0, '2021-05-02 13:14:51', '2023-07-26 06:22:14'),
(2, 'About Us Section', 'about_us_section', 1, '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(3, 'Feature Section', 'feature_section', 1, '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(4, 'Service Section', 'service_section', 1, '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(5, 'Counter Section', 'counter_section', 1, '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(6, 'Work Process Section', 'work_process_section', 1, '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(7, 'Skill Section', 'skill_section', 1, '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(8, 'Portfolio Section', 'portfolio_section', 1, '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(9, 'Call To Action Section', 'call_to_action_section', 1, '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(10, 'Team Section', 'team_section', 0, '2021-05-02 13:14:51', '2023-07-26 06:28:23'),
(11, 'Client Section', 'client_section', 1, '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(12, 'Blog Section', 'blog_section', 1, '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(13, 'Contact Section', 'contact_section', 1, '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(14, 'Footer Section', 'footer_section', 1, '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(15, 'Scroll Top Button', 'scroll_top_btn', 1, '2021-05-02 13:14:51', '2021-05-02 13:14:51'),
(16, 'RTL Sidebar', 'rtl_sidebar', 1, '2021-05-02 13:14:51', '2023-06-09 13:58:09'),
(17, 'Color Option Sidebar', 'color_option_sidebar', 0, '2021-05-02 13:14:51', '2023-06-09 00:33:17'),
(18, 'Preloader', 'preloader', 1, '2021-05-02 13:14:51', '2023-07-23 21:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_app_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_status` enum('enable','disable') COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_status` int(11) NOT NULL DEFAULT 0,
  `custom_breadcrumb_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `language_id`, `title`, `desc`, `short_desc`, `image_status`, `service_image`, `icon`, `service_slug`, `status`, `meta_desc`, `meta_keyword`, `breadcrumb_status`, `custom_breadcrumb_image`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mobile app development', '<p>\r\niOS app development: We develop custom iOS apps for iPhones,\r\niPads, and other Apple devices, using the latest technologies and design\r\nprinciples to deliver high-quality, user-friendly apps.</p><p>Android app development: We develop custom Android apps for\r\nsmartphones, tablets, and other Android devices, ensuring compatibility with\r\ndifferent versions of Android and a range of screen sizes.</p>\r\n<p>Cross-platform app development: We develop cross-platform\r\nmobile apps that work on multiple devices and platforms, using frameworks like\r\nReact Native or Flutter.</p><p>Mobile app UI/UX design: We create intuitive and visually\r\nappealing user interfaces for mobile apps, ensuring that users have a positive\r\nexperience using the app.</p><p>Mobile app integration: We integrate mobile apps with other\r\nsystems and technologies, such as back-end databases, third-party APIs, and\r\ncloud services.</p>', 'We offer native app development, hybrid app development, and cross-platform app development', 'enable', '1690119772-3.png', 'fas fa-tablet-alt', 'web-development', 1, 'best mobile developer', 'Mobile-app, developer, best, professional, app, mobile, reliable, professional', 1, '1686273904-ddbanner.png', 1, '2023-06-09 00:25:10', '2023-07-23 12:43:07'),
(2, 1, 'Custom software', '<p>Software requirements gathering and analysis: We work with\r\nyou to determine your specific needs and requirements for your custom software,\r\nincluding user requirements, technical requirements, and project constraints.</p><p>User interface and experience design: We design and develop\r\nuser-friendly and visually appealing interfaces for your custom software to\r\nimprove user engagement and satisfaction.</p><p>Custom software development and coding: We can build the\r\ncustom software from scratch, using the latest technologies and programming\r\nlanguages to ensure that it meets your requirements and specifications.</p><p>Integration with other systems: Let’s integrate your custom\r\nsoftware with other existing software systems in the your organization, such as\r\nERP or CRM systems, to ensure seamless data exchange and communication.</p><p>Testing and quality assurance: We can conduct comprehensive\r\ntesting and quality assurance processes to identify and fix any bugs or issues\r\nin the custom software, ensuring that it is reliable, scalable, and secure.</p><p>Deployment and maintenance: We can assist with the deployment\r\nand implementation of your custom software and provide ongoing maintenance and\r\nsupport to ensure that it runs smoothly and is always up-to-date.</p><p>Custom software modernization and enhancement: We modernize\r\nand enhance your existing software applications to improve their functionality,\r\nusability, and performance.</p><p>Custom software consulting and advisory services: We provide\r\nconsulting and advisory services our clients on custom software development\r\nprojects, helping them make informed decisions and optimize their software\r\ndevelopment processes.</p>', 'We are expert in building custom software applications tailored to meet the unique needs of our clients.', 'enable', '1690035959-1.png', 'fab fa-xbox', 'custom-software', 1, 'best software developer', 'software, developer, professional, fast, trending, Uyo, Nigeria, Lagos, Secure, Portharcourt', 0, NULL, 2, '2023-07-22 13:26:13', '2023-07-22 13:26:13'),
(3, 1, 'Web development', '<p><span style=\"font-size:11pt;font-family:Calibri, \'sans-serif\';\">This involves the design, development, and\r\ndeployment of your custom website. The website would be created from scratch,\r\nand you will have more control over the design and functionalities. </span></p><p><span style=\"font-size:11pt;font-family:Calibri, \'sans-serif\';\">Here we focus on developing web application as\r\ntool to meet up your business needs. These applications could range from simple\r\ntools to more complex systems, depending on the client\'s needs. The package\r\nwould include design, development, and deployment of the application, as well\r\nas any necessary integration with other systems</span></p>', 'Our web development services include designing, developing, and maintaining websites', 'enable', '1690130308-2.png', 'fas fa-file-code', 'web-development-2', 1, 'best web developer', 'best, website, developer, experienced, expert, web, app', 0, NULL, 3, '2023-07-23 15:38:39', '2023-07-23 15:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `service_details`
--

CREATE TABLE `service_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_paginates`
--

CREATE TABLE `service_paginates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `homepage_item` int(11) NOT NULL DEFAULT 4,
  `paginate` int(11) NOT NULL DEFAULT 6,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_paginates`
--

INSERT INTO `service_paginates` (`id`, `homepage_item`, `paginate`, `created_at`, `updated_at`) VALUES
(1, 3, 9, '2023-07-23 15:45:52', '2023-07-23 15:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `service_sections`
--

CREATE TABLE `service_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `section_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_sections`
--

INSERT INTO `service_sections` (`id`, `language_id`, `section_title`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Our Services', 'Services', '2023-06-09 00:14:30', '2023-06-09 00:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('F90ag5Tw1DjNo36tMUehiSVINGtiTHRbPOoeviQ3', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiVU1JRGk5S3RsRkNjRFZjOGdTSjJiTUdGdk9tWktnUHRJS0swRUlQaSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjgyOiJodHRwOi8vbG9jYWxob3N0L2RpZ2l0YWx0ZWFtL3VwbG9kcy9pbWcvZ2VuZXJhbC8xNjg2MjcyNDIyLURFQUxEUklWRSUyMEZBVklDT04ucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJFNSaDE5dW5LNzFDdVlWRk5Td1o5c2U3b1BWaVBTU2d1U3RTdUNxd1NRQTYvaEUxQWhaaml1IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRTUmgxOXVuSzcxQ3VZVkZOU3daOXNlN29QVmlQU1NndVN0U3VDcXdTUUE2L2hFMUFoWmppdSI7fQ==', 1690500467);

-- --------------------------------------------------------

--
-- Table structure for table `site_images`
--

CREATE TABLE `site_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `favicon_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_logo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_small_logo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_white_logo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_colored_logo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_images`
--

INSERT INTO `site_images` (`id`, `favicon_image`, `admin_logo_image`, `admin_small_logo_image`, `site_white_logo_image`, `site_colored_logo_image`, `created_at`, `updated_at`) VALUES
(1, '1686272422-DEALDRIVE FAVICON.png', '1686613077-logo2.png', '1686613146-smalllogo.png', '1686868132-DD_logo_new_ST.png', '1686659016-DD logo new ST.jpg', '2023-06-09 00:00:22', '2023-06-15 21:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_map_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `language_id`, `short_desc`, `copyright`, `address`, `address_map_link`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'If you have an app idea that need implementation then consult Dealdrive technology for easy IMPLEMENTATION', 'Copyright 2023. PoweredBy Dealdrive technology', '81 Itu road', '', 'dealdrivetechnology@gmail.com', '08061467293', '2023-06-09 16:29:55', '2023-07-26 06:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `section_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `language_id`, `section_title`, `title`, `desc`, `skill_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Our Skills', 'OUR EXPERIENCE | OUR EXPERTISE', 'We have skills relating to website development, mobile app development and brand strategy development. Our skill set is a enough to turn your idea into a profitable', '1690356380-Our skills dd website one.jpg', '2023-07-24 11:20:15', '2023-07-27 21:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `skill_info_lists`
--

CREATE TABLE `skill_info_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent_rate` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill_info_lists`
--

INSERT INTO `skill_info_lists` (`id`, `language_id`, `title`, `percent_rate`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Frontend', 90, 1, '2023-07-24 11:11:04', '2023-07-24 11:11:04'),
(2, 1, 'Backend', 90, 2, '2023-07-24 11:12:09', '2023-07-24 11:12:09'),
(3, 1, 'Fullstack', 95, 3, '2023-07-24 11:12:51', '2023-07-24 11:13:36'),
(4, 1, 'DevOps', 95, 4, '2023-07-24 11:17:15', '2023-07-24 11:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_media` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `social_media`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-facebook-f', 'https://facebook.com/ddrivebrand', 1, '2023-07-27 18:11:47', '2023-07-27 18:11:47'),
(2, 'fab fa-instagram', 'https://instagram.com/ddrivebrand', 1, '2023-07-27 18:12:39', '2023-07-27 18:12:39'),
(3, 'fab fa-linkedin-in', 'https://linkedin.com/in/ddrivebrand', 1, '2023-07-27 18:13:42', '2023-07-27 18:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '2023-06-08 23:47:31', '2023-06-08 23:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `team_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_sections`
--

CREATE TABLE `team_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `section_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `image_status` int(11) NOT NULL DEFAULT 1,
  `testimonial_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `image_status`, `testimonial_image`, `name`, `job`, `desc`, `star`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1690453619-5.png', 'Janice Nnamchi', 'CEO- Reform7 International', 'Working with DDrive has helped us improve our operations and gain more visibility. Their creative, design, and build skills are among the best in the industry...and we didn\'t have to break the bank, which is very important as we navigate the ever-changing and ever-demanding technology environment. DDrive also showed great articulation of what we wanted even when we didn\'t know how to express it. Thank you team for doing a great job!', 5, 1, '2023-07-27 09:26:59', '2023-07-27 09:26:59'),
(2, 1, 1, '1690453924-4.png', 'Ukeme ebong', 'Lead Lawyer - Ukeme ebong & co Chambers', 'Great experience!\r\nThey are a group of tech experts capable of delivering on every online tech-support task.', 5, 2, '2023-07-27 09:32:04', '2023-07-27 09:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_sections`
--

CREATE TABLE `testimonial_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `section_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Muekara Tor', 'torwisdom4@gmail.com', '2021-05-02 13:14:53', '$2y$10$SRh19unK71CuYVFNSwZ9se7oPViPSSguStSuCqwSQA6/hE1AhZjiu', NULL, NULL, '1gy52IoHqeNs14T1BzYA7MFe08KCtXaCYRLGr35V9bdyT6u5D1hse2O6bans', NULL, '1686276632-pics.png', 0, '2021-05-02 13:14:53', '2023-07-26 13:49:52'),
(2, 'Moses Imeh', 'mosesimeh@dealdrivetechnology.com', '2021-05-02 13:14:53', '$2y$10$4WrPXtOe0cXhntghkMsecOFPcWwrws0js.0JDyfXa8PpXg7qL4vfW', NULL, NULL, 'uZdY2feVD39neyODPdrAKyEe19ycdQB3aC1Y6KUhxBUg4X6rkRXnkrERfxT9', NULL, NULL, 0, '2021-05-02 13:14:53', '2023-07-26 13:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_processes`
--

CREATE TABLE `work_processes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `image_status` enum('enable','disable') COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_process_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_processes`
--

INSERT INTO `work_processes` (`id`, `language_id`, `image_status`, `work_process_image`, `title`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'enable', '1690148931-1.png', 'Thinking and Research', 1, '2023-07-23 20:48:52', '2023-07-23 20:48:52'),
(2, 1, 'enable', '1690149097-2.png', 'Design', 2, '2023-07-23 20:51:37', '2023-07-23 20:51:37'),
(3, 1, 'enable', '1690356051-Implementation dd website.jpg', 'Implementation', 3, '2023-07-23 20:52:33', '2023-07-26 06:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `work_process_sections`
--

CREATE TABLE `work_process_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `section_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_process_sections`
--

INSERT INTO `work_process_sections` (`id`, `language_id`, `section_title`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'How we work', 'Our work process is in 3 stages', '2023-07-23 20:50:39', '2023-07-23 20:50:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abouts_language_id_foreign` (`language_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_language_id_foreign` (`language_id`);

--
-- Indexes for table `blog_background_images`
--
ALTER TABLE `blog_background_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_paginates`
--
ALTER TABLE `blog_paginates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_sections`
--
ALTER TABLE `blog_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_sections_language_id_foreign` (`language_id`);

--
-- Indexes for table `breadcrumbs`
--
ALTER TABLE `breadcrumbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`),
  ADD KEY `categories_language_id_foreign` (`language_id`);

--
-- Indexes for table `color_options`
--
ALTER TABLE `color_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_language_id_foreign` (`language_id`);

--
-- Indexes for table `contact_sections`
--
ALTER TABLE `contact_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_sections_language_id_foreign` (`language_id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counters_language_id_foreign` (`language_id`);

--
-- Indexes for table `counter_sections`
--
ALTER TABLE `counter_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counter_sections_language_id_foreign` (`language_id`);

--
-- Indexes for table `external_urls`
--
ALTER TABLE `external_urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `external_urls_language_id_foreign` (`language_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `features_language_id_foreign` (`language_id`);

--
-- Indexes for table `feature_sections`
--
ALTER TABLE `feature_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_sections_language_id_foreign` (`language_id`);

--
-- Indexes for table `fixed_contents`
--
ALTER TABLE `fixed_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fixed_contents_language_id_foreign` (`language_id`);

--
-- Indexes for table `frontend_keywords`
--
ALTER TABLE `frontend_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_keywords_language_id_foreign` (`language_id`);

--
-- Indexes for table `google_analytics`
--
ALTER TABLE `google_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_versions`
--
ALTER TABLE `homepage_versions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_lists`
--
ALTER TABLE `info_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `info_lists_language_id_foreign` (`language_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_language_id_foreign` (`language_id`);

--
-- Indexes for table `panel_keywords`
--
ALTER TABLE `panel_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `panel_keywords_language_id_foreign` (`language_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_language_id_foreign` (`language_id`);

--
-- Indexes for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portfolio_categories_category_name_unique` (`category_name`),
  ADD KEY `portfolio_categories_language_id_foreign` (`language_id`);

--
-- Indexes for table `portfolio_details`
--
ALTER TABLE `portfolio_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_details_portfolio_id_foreign` (`portfolio_id`);

--
-- Indexes for table `portfolio_sections`
--
ALTER TABLE `portfolio_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_sections_language_id_foreign` (`language_id`);

--
-- Indexes for table `portfolio_sliders`
--
ALTER TABLE `portfolio_sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_sliders_portfolio_id_foreign` (`portfolio_id`);

--
-- Indexes for table `quick_access_buttons`
--
ALTER TABLE `quick_access_buttons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seos_language_id_foreign` (`language_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_language_id_foreign` (`language_id`);

--
-- Indexes for table `service_details`
--
ALTER TABLE `service_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_details_service_id_foreign` (`service_id`);

--
-- Indexes for table `service_paginates`
--
ALTER TABLE `service_paginates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_sections`
--
ALTER TABLE `service_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_sections_language_id_foreign` (`language_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_images`
--
ALTER TABLE `site_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_infos_language_id_foreign` (`language_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_language_id_foreign` (`language_id`);

--
-- Indexes for table `skill_info_lists`
--
ALTER TABLE `skill_info_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skill_info_lists_language_id_foreign` (`language_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_language_id_foreign` (`language_id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_language_id_foreign` (`language_id`);

--
-- Indexes for table `team_sections`
--
ALTER TABLE `team_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_sections_language_id_foreign` (`language_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_language_id_foreign` (`language_id`);

--
-- Indexes for table `testimonial_sections`
--
ALTER TABLE `testimonial_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonial_sections_language_id_foreign` (`language_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_processes`
--
ALTER TABLE `work_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_processes_language_id_foreign` (`language_id`);

--
-- Indexes for table `work_process_sections`
--
ALTER TABLE `work_process_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_process_sections_language_id_foreign` (`language_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_background_images`
--
ALTER TABLE `blog_background_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_paginates`
--
ALTER TABLE `blog_paginates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_sections`
--
ALTER TABLE `blog_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `breadcrumbs`
--
ALTER TABLE `breadcrumbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `color_options`
--
ALTER TABLE `color_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_sections`
--
ALTER TABLE `contact_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `counter_sections`
--
ALTER TABLE `counter_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `external_urls`
--
ALTER TABLE `external_urls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feature_sections`
--
ALTER TABLE `feature_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fixed_contents`
--
ALTER TABLE `fixed_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `frontend_keywords`
--
ALTER TABLE `frontend_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `google_analytics`
--
ALTER TABLE `google_analytics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homepage_versions`
--
ALTER TABLE `homepage_versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `info_lists`
--
ALTER TABLE `info_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `panel_keywords`
--
ALTER TABLE `panel_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `portfolio_details`
--
ALTER TABLE `portfolio_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio_sections`
--
ALTER TABLE `portfolio_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio_sliders`
--
ALTER TABLE `portfolio_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quick_access_buttons`
--
ALTER TABLE `quick_access_buttons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_details`
--
ALTER TABLE `service_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_paginates`
--
ALTER TABLE `service_paginates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_sections`
--
ALTER TABLE `service_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_images`
--
ALTER TABLE `site_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skill_info_lists`
--
ALTER TABLE `skill_info_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_sections`
--
ALTER TABLE `team_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonial_sections`
--
ALTER TABLE `testimonial_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_processes`
--
ALTER TABLE `work_processes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `work_process_sections`
--
ALTER TABLE `work_process_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_sections`
--
ALTER TABLE `blog_sections`
  ADD CONSTRAINT `blog_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
