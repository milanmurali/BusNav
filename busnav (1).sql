-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2024 at 10:07 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busnav`
--

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

CREATE TABLE `attractions` (
  `attractions_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `description` varchar(500) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attractions`
--

INSERT INTO `attractions` (`attractions_id`, `name`, `latitude`, `longitude`, `description`, `status`) VALUES
(1, 'Kozhikode Beach', '', '', 'Kozhikode Beach or Calicut Beach is a beach on the western side of Kozhikode, situated on the Malabar Coast of India. The beach is accessible through four road overbridges in the city.', 'Accepted'),
(2, 'SM Street', '', '', 'S.M. Street, abbreviation for Sweetmeat Street, also known as Mittai Theruvu, is a shopping street located in Kozhikode, Kerala, India. The street is a pedestrian zone. It also has a 160 year old Fire temple amidst shopping places', ''),
(3, 'crown', '23', '46', 'Movie theatre showing the latest English and Hindi films with 2k projection technology.', 'Accepted'),
(4, 'Bluegen Solutions', '11.2596819', '75.7876282', 'BLUEGEN SOLUTIONS focus on giving technical support to organizations which wish to strategically transform, grow, and lead in today’s challenging business environment.', 'Accepted'),
(5, 'FOCUS MALL', '', '', 'First shopping mall in Kozhikode', ''),
(6, 'Gokulam Galleria', '', '', 'Shopping and theatre complex in Kozhikode, Kerala', ''),
(7, 'Regal Cinemas', '', '', 'Modern & vibrant cinema featuring a concession stand & 3 screening rooms.', ''),
(8, 'ARC Coronation', '', '', 'Movie theatre', '');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add attractions', 7, 'add_attractions'),
(26, 'Can change attractions', 7, 'change_attractions'),
(27, 'Can delete attractions', 7, 'delete_attractions'),
(28, 'Can view attractions', 7, 'view_attractions'),
(29, 'Can add bus register', 8, 'add_busregister'),
(30, 'Can change bus register', 8, 'change_busregister'),
(31, 'Can delete bus register', 8, 'delete_busregister'),
(32, 'Can view bus register', 8, 'view_busregister'),
(33, 'Can add bus route', 9, 'add_busroute'),
(34, 'Can change bus route', 9, 'change_busroute'),
(35, 'Can delete bus route', 9, 'delete_busroute'),
(36, 'Can view bus route', 9, 'view_busroute'),
(37, 'Can add bus route stop', 10, 'add_busroutestop'),
(38, 'Can change bus route stop', 10, 'change_busroutestop'),
(39, 'Can delete bus route stop', 10, 'delete_busroutestop'),
(40, 'Can view bus route stop', 10, 'view_busroutestop'),
(41, 'Can add bus schedule', 11, 'add_busschedule'),
(42, 'Can change bus schedule', 11, 'change_busschedule'),
(43, 'Can delete bus schedule', 11, 'delete_busschedule'),
(44, 'Can view bus schedule', 11, 'view_busschedule'),
(45, 'Can add bus stop', 12, 'add_busstop'),
(46, 'Can change bus stop', 12, 'change_busstop'),
(47, 'Can delete bus stop', 12, 'delete_busstop'),
(48, 'Can view bus stop', 12, 'view_busstop'),
(49, 'Can add crowdsource', 13, 'add_crowdsource'),
(50, 'Can change crowdsource', 13, 'change_crowdsource'),
(51, 'Can delete crowdsource', 13, 'delete_crowdsource'),
(52, 'Can view crowdsource', 13, 'view_crowdsource'),
(53, 'Can add favourite', 14, 'add_favourite'),
(54, 'Can change favourite', 14, 'change_favourite'),
(55, 'Can delete favourite', 14, 'delete_favourite'),
(56, 'Can view favourite', 14, 'view_favourite'),
(57, 'Can add feedback', 15, 'add_feedback'),
(58, 'Can change feedback', 15, 'change_feedback'),
(59, 'Can delete feedback', 15, 'delete_feedback'),
(60, 'Can view feedback', 15, 'view_feedback'),
(61, 'Can add login', 16, 'add_login'),
(62, 'Can change login', 16, 'change_login'),
(63, 'Can delete login', 16, 'delete_login'),
(64, 'Can view login', 16, 'view_login'),
(65, 'Can add notification', 17, 'add_notification'),
(66, 'Can change notification', 17, 'change_notification'),
(67, 'Can delete notification', 17, 'delete_notification'),
(68, 'Can view notification', 17, 'view_notification'),
(69, 'Can add realtime', 18, 'add_realtime'),
(70, 'Can change realtime', 18, 'change_realtime'),
(71, 'Can delete realtime', 18, 'delete_realtime'),
(72, 'Can view realtime', 18, 'view_realtime'),
(73, 'Can add user register', 19, 'add_userregister'),
(74, 'Can change user register', 19, 'change_userregister'),
(75, 'Can delete user register', 19, 'delete_userregister'),
(76, 'Can view user register', 19, 'view_userregister');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bus_register`
--

CREATE TABLE `bus_register` (
  `bus_id` int(11) NOT NULL,
  `busname` varchar(50) NOT NULL,
  `vehicle_no` varchar(25) NOT NULL,
  `starting_point` varchar(25) NOT NULL,
  `destination_point` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `status` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_register`
--

INSERT INTO `bus_register` (`bus_id`, `busname`, `vehicle_no`, `starting_point`, `destination_point`, `user_id`, `type`, `status`, `username`, `password`) VALUES
(2, 'Shivadas', 'KL11AB9378', 'LIC', 'JDT / Vellimadukunnu', 1, 'priv', 'Accepted', 'shivadas', 'shivadas'),
(4, 'Fantasy', 'KL11AB9378', 'LIC', 'Medi college', 1, 'priv', 'Accepted', 'fantasy', 'fantasy'),
(5, 'sumo', 'KL11AC9304', 'LIC', 'JDT / Vellimadukunnu', 1, 'priv', 'Accepted', 'sumo', 'sumo'),
(6, 'Hayath', 'KL11BJ9304', 'pantherankavu', 'mananchira', 1, 'priv', 'Accepted', 'hayath', 'murat'),
(14, 'Brothers', 'KL11BJ7304', 'vellimadukunnu', 'LIC', 1, 'pub', 'Accepted', 'Brothers', 'brothers'),
(22, 'Legacy', 'KL11AB0001', 'LIC', 'JDT / Vellimadukunnu', 1, 'priv', 'Accepted', 'abc', 'abc'),
(23, 'ABS', 'KL11AB0002', 'LIC', 'JDT / Vellimadukunnu', 1, 'priv', 'Accepted', 'abs', 'abs'),
(24, 'Legend', 'KL11AB0003', 'LIC', 'JDT / Vellimadukunnu', 1, 'priv', 'Accepted', 'legend', 'legend'),
(25, 'Manirsha', 'KL11AB0004', 'LIC', 'JDT / Vellimadukunnu', 1, 'priv', 'Accepted', 'manirsha', 'manirsha'),
(26, 'BTC', 'KL11AB0005', 'LIC', 'JDT / Vellimadukunnu', 1, 'priv', 'Accepted', 'btc', 'btc');

-- --------------------------------------------------------

--
-- Table structure for table `bus_route`
--

CREATE TABLE `bus_route` (
  `route_id` int(11) NOT NULL,
  `route_name` varchar(30) NOT NULL,
  `stop_id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `status` varchar(50) NOT NULL,
  `end_stop_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_route`
--

INSERT INTO `bus_route` (`route_id`, `route_name`, `stop_id`, `description`, `status`, `end_stop_id`) VALUES
(1, 'VLM', 1, 'Vellimadukunnu, LIC, Manachira', '', 'Vellimadukunnu'),
(2, 'CLM', 1, 'Chelavoor LIC Manachira', '', 'Chelavoor '),
(3, 'MLM', 1, 'Moozhikal LIC manachira', '', 'Moozhikal '),
(4, 'MCL', 1, 'Medical college, chevarambalam, LIC', '', 'Medical college');

-- --------------------------------------------------------

--
-- Table structure for table `bus_route_stop`
--

CREATE TABLE `bus_route_stop` (
  `route_stop_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `stop_id` int(11) NOT NULL,
  `stop_sequence_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_route_stop`
--

INSERT INTO `bus_route_stop` (`route_stop_id`, `route_id`, `stop_id`, `stop_sequence_order`) VALUES
(7, 4, 3, 1),
(8, 4, 4, 2),
(9, 4, 5, 3),
(10, 4, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `bus_schedule`
--

CREATE TABLE `bus_schedule` (
  `schedule_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `stop_id` int(11) NOT NULL,
  `stop_arrival_time` time NOT NULL,
  `trip` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_schedule`
--

INSERT INTO `bus_schedule` (`schedule_id`, `bus_id`, `route_id`, `stop_id`, `stop_arrival_time`, `trip`, `status`) VALUES
(14, 22, 1, 1, '08:00:00', 1, 'Accepted'),
(15, 22, 1, 2, '08:05:00', 1, 'Accepted'),
(17, 22, 1, 3, '08:13:00', 1, 'Accepted'),
(18, 22, 1, 4, '08:20:00', 1, 'Accepted'),
(19, 22, 1, 5, '08:28:00', 1, 'Accepted'),
(20, 22, 1, 6, '08:34:00', 1, 'Accepted'),
(21, 22, 1, 7, '08:39:00', 1, 'Accepted'),
(22, 22, 1, 8, '08:46:00', 1, 'Accepted'),
(23, 2, 1, 1, '08:03:00', 1, 'Accepted'),
(24, 2, 1, 2, '08:08:00', 1, 'Accepted'),
(25, 2, 1, 3, '08:14:00', 1, 'Accepted'),
(26, 2, 1, 4, '08:20:00', 1, 'Accepted'),
(27, 2, 1, 5, '08:26:00', 1, 'Accepted'),
(28, 2, 1, 6, '08:33:00', 1, 'Accepted'),
(29, 4, 2, 1, '08:10:00', 1, 'Accepted'),
(30, 4, 2, 2, '08:15:00', 2, 'Accepted'),
(31, 4, 2, 3, '08:20:00', 1, 'Accepted'),
(32, 4, 2, 4, '08:27:00', 1, 'Accepted'),
(33, 4, 2, 5, '20:34:00', 1, 'Accepted'),
(34, 4, 1, 6, '08:40:00', 1, 'Accepted'),
(35, 4, 2, 7, '08:45:00', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `bus_stop`
--

CREATE TABLE `bus_stop` (
  `stop_id` int(11) NOT NULL,
  `stop_name` varchar(30) NOT NULL,
  `stop_desc` varchar(100) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_stop`
--

INSERT INTO `bus_stop` (`stop_id`, `stop_name`, `stop_desc`, `latitude`, `longitude`, `status`) VALUES
(1, 'LIC', 'Near LIC divisonal office, SM street', '11.2531908', '75.7820318', 'Accepted'),
(2, 'Model', 'Near Model high school', '11.2554956', '75.7789463', 'Accepted'),
(3, 'YMCA', 'Near YMCA cross road', '11.2598591', '75.7771545', 'Accepted'),
(4, 'MCC', 'Near Malabar Christian College', '11.2639101', '75.7772689', 'Accepted'),
(5, 'English palli', 'Near CSI St. Mary\'s English Church', '11.2694366', '75.7763576', 'Accepted'),
(6, 'Nadakkavu', 'Near Nadakkavu cross road', '11.2725152', '75.7767757', 'Accepted'),
(7, 'Eranhipalam', 'Near Eranhipalam junction', '11.2793185', '75.7830671', 'Accepted'),
(8, 'Malabar', 'Near Malabar Hospital', '11.2800155', '75.7858439', 'Accepted'),
(9, 'Thazhe civil', 'Near Civil Station', '11.2836382', '75.7899601', 'Accepted'),
(10, 'Mele Civil', 'Near Civil Station main entrance', '11.2848594', '75.7914034', 'Accepted'),
(11, 'IQRAA', 'Near IQRAA hospital', '11.2873072', '75.7974521', 'Accepted'),
(12, 'Malaparambu', 'Near Malaparabu junction', '11.2871403', '75.8019384', 'Accepted'),
(17, 'JDT/ Vellimadukkunu', 'Near JDT Islam College of Arts And Science in Vellimadukkunnu', '11.2928388,', '75.8247329', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `crowdsource`
--

CREATE TABLE `crowdsource` (
  `crowdsource_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` varchar(15) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crowdsource`
--

INSERT INTO `crowdsource` (`crowdsource_id`, `user_id`, `description`, `status`, `type`) VALUES
(1, 1, 'a', 'Accepted', 'Bus'),
(2, 1, 'asasas', 'Accepted', 'Routes'),
(3, 1, 'lml', 'Accepted', 'Bus');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'attractions', 'attractions'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'bus_register', 'busregister'),
(9, 'bus_route', 'busroute'),
(10, 'bus_route_stop', 'busroutestop'),
(11, 'bus_schedule', 'busschedule'),
(12, 'bus_stop', 'busstop'),
(5, 'contenttypes', 'contenttype'),
(13, 'crowdsource', 'crowdsource'),
(14, 'favourite', 'favourite'),
(15, 'feedback', 'feedback'),
(16, 'login', 'login'),
(17, 'notification', 'notification'),
(18, 'realtime', 'realtime'),
(6, 'sessions', 'session'),
(19, 'user_register', 'userregister');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-01-11 11:16:52.444579'),
(2, 'auth', '0001_initial', '2024-01-11 11:16:52.772507'),
(3, 'admin', '0001_initial', '2024-01-11 11:16:52.859297'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-01-11 11:16:52.867296'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-11 11:16:52.875295'),
(6, 'attractions', '0001_initial', '2024-01-11 11:16:52.879751'),
(7, 'contenttypes', '0002_remove_content_type_name', '2024-01-11 11:16:52.920747'),
(8, 'auth', '0002_alter_permission_name_max_length', '2024-01-11 11:16:52.953926'),
(9, 'auth', '0003_alter_user_email_max_length', '2024-01-11 11:16:52.968921'),
(10, 'auth', '0004_alter_user_username_opts', '2024-01-11 11:16:52.977210'),
(11, 'auth', '0005_alter_user_last_login_null', '2024-01-11 11:16:53.010491'),
(12, 'auth', '0006_require_contenttypes_0002', '2024-01-11 11:16:53.015486'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2024-01-11 11:16:53.023464'),
(14, 'auth', '0008_alter_user_username_max_length', '2024-01-11 11:16:53.037462'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2024-01-11 11:16:53.049474'),
(16, 'auth', '0010_alter_group_name_max_length', '2024-01-11 11:16:53.062501'),
(17, 'auth', '0011_update_proxy_permissions', '2024-01-11 11:16:53.072563'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2024-01-11 11:16:53.083452'),
(19, 'bus_register', '0001_initial', '2024-01-11 11:16:53.087454'),
(20, 'bus_route', '0001_initial', '2024-01-11 11:16:53.092453'),
(21, 'bus_route_stop', '0001_initial', '2024-01-11 11:16:53.097175'),
(22, 'bus_schedule', '0001_initial', '2024-01-11 11:16:53.101219'),
(23, 'bus_stop', '0001_initial', '2024-01-11 11:16:53.106232'),
(24, 'crowdsource', '0001_initial', '2024-01-11 11:16:53.110225'),
(25, 'favourite', '0001_initial', '2024-01-11 11:16:53.114207'),
(26, 'feedback', '0001_initial', '2024-01-11 11:16:53.118205'),
(27, 'login', '0001_initial', '2024-01-11 11:16:53.124139'),
(28, 'notification', '0001_initial', '2024-01-11 11:16:53.130136'),
(29, 'realtime', '0001_initial', '2024-01-11 11:16:53.135149'),
(30, 'sessions', '0001_initial', '2024-01-11 11:16:53.156165'),
(31, 'user_register', '0001_initial', '2024-01-11 11:16:53.161815');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4tlbttdxngvtwsjtvafbi5j6pac9w1zv', 'eyJ1c2VyX2lkIjoxNn0:1raw2I:PYF-FyqJaKZI8el0_dFYM0gMdmEjmCdDpyrQoSOCJU8', '2024-03-01 11:05:42.786407'),
('55dsd4t58uglwq7beck5no5jvm2wx3yj', 'eyJ1c2VyX2lkIjoxfQ:1rRcWe:wJfQKsAkJfXBsiuhiqPT47rmMPf5gCP0ikrtxEeE2Hc', '2024-02-04 18:26:32.202660'),
('eybycu7rjvxwpr2lpr7z2iaf7749ep9h', 'eyJ1c2VyX2lkIjo2fQ:1rSxBB:V-2RS2xBGLnWuvde9nveolHmL3WFXe0Q5Vf2DXLHvZc', '2024-02-08 10:41:53.276193'),
('fbsnwuspahyraupg2kle3v1u3d77ao7t', 'eyJ1c2VyX2lkIjo2fQ:1rhmsZ:XJ9gx6G5HcTsZe5meNve4yK0yZy6cmIJxOIpPfxQHDY', '2024-03-20 08:43:59.269606'),
('l2bs08qf50pn2b6m362d3ele4e893ujc', 'eyJ1c2VyX2lkIjoxNn0:1rawDz:6DEkoSCZjd3s6paGVg17EZIdFC9K96edu_fKOVnhLJY', '2024-03-01 11:17:47.139271'),
('qnn2a3lpvl09rsf3v97nx4wo0l7sq9jg', 'eyJ1c2VyX2lkIjo2fQ:1rjb7c:jYPwfK7lR8stMH4zaUJECyVL1KC4FYoqbsqNK8krR4A', '2024-03-25 08:35:00.188547'),
('so1vgultz9bc0jmpu4xin8c62os9rzi1', 'eyJ1c2VyX2lkIjo2fQ:1riEQG:CrAVyJ3lCQ2_IV7dYcPVA57txqwj2VabkQvrn4RXWVg', '2024-03-21 14:08:36.727573');

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `favourite_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `stop_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`favourite_id`, `user_id`, `route_id`, `stop_id`, `bus_id`) VALUES
(3, 1, 4, 6, 2),
(4, 1, 4, 4, 1),
(5, 1, 4, 4, 1),
(6, 1, 5, 6, 1),
(7, 6, 4, 5, 2),
(8, 6, 2, 4, 25),
(9, 6, 1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `stop_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `feedback_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `user_id`, `route_id`, `bus_id`, `stop_id`, `rating`, `comment`, `feedback_date`) VALUES
(4, 1, 4, 2, 6, 10, 'good', '2023-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `user_id`, `type`) VALUES
(1, 'admin', 'admin', 1, 'admin'),
(2, 'nandhu', 'pathiri', 2, 'user'),
(3, 'sksk', 'gym', 3, 'user'),
(4, 'trafalger_law', 'sian', 4, 'user'),
(5, 'Sarkan', 'eda', 5, 'user'),
(6, 'sumo', 'sumo', 5, 'bus'),
(7, 'hayath', 'murat', 6, 'bus'),
(10, 'zoro', 'luffy', 6, 'user'),
(11, 'Brothers', 'Brothers', 14, 'bus'),
(12, 'itachi', 'sasuke', 9, 'user'),
(13, 'naruto', 'hinata69', 10, 'user'),
(14, '', '', 4, 'bus'),
(15, '', '', 2, 'bus'),
(16, 'cbum', '1234', 11, 'user'),
(17, 'nandhu', 'pathiri', 12, 'user'),
(18, 'saaaa', 'gggg', 13, 'user'),
(19, 'zara', '1234', 14, 'user'),
(20, 'fvf', 'vfv', 15, 'user'),
(21, 'sumo', 'sumo', 15, 'bus'),
(22, 'aaaaaaa', 'nnnn', 16, 'bus'),
(23, 'zoro', 'eded', 17, 'bus'),
(24, 'usopp', '1234', 18, 'bus'),
(25, 'a', 'a', 16, 'user'),
(26, 'tazzerex', '9400267516', 17, 'user'),
(27, 'sumo', 'sumo', 15, 'bus'),
(28, 'shivadas', 'shivadas', 2, 'bus'),
(29, 'legacy', 'legacy', 21, 'bus'),
(30, 'legacy', 'legacy', 22, 'bus'),
(31, 'abs', 'abs', 23, 'bus'),
(32, 'legend', 'legend', 24, 'bus'),
(33, 'manirsha', 'manirsha', 25, 'bus');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(50) NOT NULL,
  `notification_type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `user_id`, `message`, `notification_type`) VALUES
(1, 1, 'ok', ''),
(2, 1, 'ok', 'a'),
(3, 1, 'kk', 'a'),
(4, 1, 'f', 'a'),
(5, 1, 'kkjkj', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `realtime`
--

CREATE TABLE `realtime` (
  `realtime_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `latitude` varchar(400) NOT NULL,
  `longitude` varchar(400) NOT NULL,
  `speed` int(11) NOT NULL,
  `direction` int(11) NOT NULL,
  `status` varchar(25) NOT NULL,
  `bus_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realtime`
--

INSERT INTO `realtime` (`realtime_id`, `bus_id`, `route_id`, `latitude`, `longitude`, `speed`, `direction`, `status`, `bus_no`) VALUES
(1, 1, 1, '11.2585928', '75.7874735', 1, 1, 'pending', 1),
(2, 1, 1, '11.2596989', '75.7875964', 1, 1, 'pending', 2),
(3, 1, 1, '11.2597429', '75.7876535', 1, 1, 'pending', 6),
(4, 1, 1, '11.2597011', '75.7875899', 1, 1, 'pending', 4),
(5, 1, 1, '11.2762647', '75.7885633', 1, 1, 'pending', 3),
(6, 1, 1, '11.2653585', '75.7798607', 1, 1, 'pending', 7);

-- --------------------------------------------------------

--
-- Table structure for table `rt_autostand`
--

CREATE TABLE `rt_autostand` (
  `rtautostand_id` int(11) NOT NULL,
  `stand_name` varchar(100) NOT NULL,
  `latitude` varchar(45) NOT NULL,
  `longitude` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rt_autostand`
--

INSERT INTO `rt_autostand` (`rtautostand_id`, `stand_name`, `latitude`, `longitude`) VALUES
(1, 'Lic auto', '11.2531803', '75.7819017'),
(2, 'Malabar auto', '11.2799028', '75.7856011'),
(3, 'Paropadi auto', '11.2906359', '75.8127528'),
(4, 'Malaparambu auto', '11.2870176', '75.8013853'),
(5, 'Eranhipalam auto', '11.2790439', '75.7833404'),
(6, 'Iqra auto', '11.2871600', '75.7983862');

-- --------------------------------------------------------

--
-- Table structure for table `rt_stop`
--

CREATE TABLE `rt_stop` (
  `rtstop_id` int(11) NOT NULL,
  `stop_name` varchar(100) NOT NULL,
  `latitude` varchar(45) NOT NULL,
  `longitude` varchar(45) NOT NULL,
  `direction` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rt_stop`
--

INSERT INTO `rt_stop` (`rtstop_id`, `stop_name`, `latitude`, `longitude`, `direction`) VALUES
(0, '', '', '', ''),
(1, 'LIC', '11.2531908', '75.7820318', '1'),
(2, 'Model', '11.2554956', '75.7789463', '1'),
(3, 'YMCA', '11.2598591', '75.7771545', '1'),
(4, 'MCC', '11.2639101', '75.7772689', '1'),
(5, 'English palli', '11.2694366', '75.7763576', '1'),
(6, 'Nadakkavu Cross Road', '11.2725152', '75.7767757', '1'),
(7, 'Eranhipalam', '11.2793185', '75.7830671', '1'),
(8, 'Malabar Hospital', '11.2800155', '75.7858439', '1'),
(9, 'Thazhe Civil', '11.2836382', '75.7899601', '1'),
(10, 'Mele Civil', '11.2848594', '75.7914034', '1'),
(11, 'IQRAA', '11.2873072', '75.7974521', '1'),
(12, 'Malaparambu', '11.2871403', '75.8019384', '1'),
(13, 'Vayanashala', '11.2884199', '75.8072720', '1'),
(14, 'Paropadi', '11.2909098', '75.8131501', '1'),
(15, 'NGO', '11.2927336', '75.8180548', '1'),
(16, 'Poolakkadave', '11.2927770', '75.8215200', '1'),
(17, 'JDT/ vellimadukkunu', '11.2928388', '75.8247329', '1'),
(18, 'JDT/ vellimadukkunu', '11.2928388', '75.8247329', '2'),
(19, 'Poolakkadave oppo', '11.2926435', '75.8207897', '2'),
(20, 'NGO oppo', '11.2925843', '75.8179288', '2'),
(21, 'Paropadi oppo', '11.2893086', '75.8117577', '2'),
(22, 'Vayanashala oppo', '11.2877689', '75.8061210', '2'),
(23, 'Malaparambu oppo', '11.2870498', '75.8026905', '2'),
(24, 'IQRAA oppo', '11.2871169', '75.7984805', '2'),
(25, 'Mele civil oppo', '11.2847440', '75.7914775', '2'),
(26, 'Thazhe civil oppo', '11.2833838', '75.7899393', '2'),
(27, 'Palattuthazham', '11.2812756', '75.7877868', '2'),
(28, 'Eranhipalam oppo', '11.2791048', '75.7835989', '2'),
(29, 'Nadakkavu oppo', '11.2722127', '75.7779549', '2'),
(30, 'English palli/Manorama oppo', '11.2679753', '75.7780964', '2'),
(31, 'MCC oppo', '11.2659229', '75.7790730', '2'),
(32, 'Fathima', '11.2626449', '75.7804101', '2'),
(33, 'Mavoor road', '11.2593093', '75.7804694', '2'),
(34, 'Manachira', '11.2550053', '75.7810635', '2'),
(35, 'LIC', '11.2531908', '75.7820318', '2'),
(36, 'Nadakav', '11.2736776', '75.7744408', '1'),
(37, 'Chakkorthkulam', '11.2771642', '75.7716057', '1'),
(38, 'Kanara bank', '11.2798344', '75.7706790', '1'),
(39, 'West Hill', '11.2842718', '75.7687317', '1'),
(40, 'Chungham', '11.2917078', '75.7646531', '1'),
(41, 'Athanikkal', '11.2969358', '75.7637482', '1'),
(42, 'Koya Road', '11.3005428', '75.7624061', '1'),
(43, 'Puthiyanghadi', '11.3041577', '75.7599927', '1'),
(44, 'Pavanghad', '11.3094245', '75.7584025', '1'),
(45, 'Puthoor', '11.3150842', '75.7553555', '1'),
(46, 'Vengali', '11.3194330', '75.7521449', '1'),
(47, 'Puthiyanirath', '11.3233116', '75.7471041', '1'),
(48, 'Chettikulam', '11.3269239', '75.7439334', '1'),
(49, 'Elathur police station', '11.3423689', '75.7403744', '1'),
(50, 'Elathur', '11.3522378', '75.7404619', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`user_id`, `first_name`, `last_name`, `dob`, `gender`, `email`, `username`, `password`) VALUES
(4, 'Sian', 'Julian', '2003-06-21', 'm', 'siansarjith@gmail.com', 'trafalger_law', 'sian'),
(5, 'Nandhalal', 'M', '2002-09-28', 'm', 'nandhalaljr@gmail.com', 'Sarkan', 'eda'),
(6, 'Aswanth', 'Krishna ', '2003-12-05', 'm', 'aswanthp@gmail.com', 'zoro', 'luffy'),
(9, 'Adwaid', 'P', '2004-02-15', 'm', 'adwaid8075@gmail.com', 'itachi', 'sasuke'),
(10, 'Gautham', 'Bejoy', '2003-10-19', 'm', 'gauthambejoypublic@gmail.', 'naruto', 'hinata69'),
(11, 'Sanjay', 'Krishna K', '2004-04-08', 'm', 'sanjaykrishnak20040804@gm', 'cbum', '1234'),
(14, 'Adhithya', 'Krishna P', '2001-11-28', 'm', 'adhithya012@gmail.com', 'zara', '1234'),
(16, 'Mehul', 'Madhav CK', '2002-11-28', 'm', 'mehulmadhavprof@gmail.com', 'LOKI', 'swathi'),
(17, 'Milan', 'Murali', '2004-01-24', 'm', 'milanmurali60@gmail.com', 'tazzerex', '9400267516');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attractions`
--
ALTER TABLE `attractions`
  ADD PRIMARY KEY (`attractions_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bus_register`
--
ALTER TABLE `bus_register`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `bus_route`
--
ALTER TABLE `bus_route`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `bus_route_stop`
--
ALTER TABLE `bus_route_stop`
  ADD PRIMARY KEY (`route_stop_id`);

--
-- Indexes for table `bus_schedule`
--
ALTER TABLE `bus_schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `bus_stop`
--
ALTER TABLE `bus_stop`
  ADD PRIMARY KEY (`stop_id`);

--
-- Indexes for table `crowdsource`
--
ALTER TABLE `crowdsource`
  ADD PRIMARY KEY (`crowdsource_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`favourite_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `realtime`
--
ALTER TABLE `realtime`
  ADD PRIMARY KEY (`realtime_id`);

--
-- Indexes for table `rt_autostand`
--
ALTER TABLE `rt_autostand`
  ADD PRIMARY KEY (`rtautostand_id`);

--
-- Indexes for table `rt_stop`
--
ALTER TABLE `rt_stop`
  ADD PRIMARY KEY (`rtstop_id`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attractions`
--
ALTER TABLE `attractions`
  MODIFY `attractions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bus_register`
--
ALTER TABLE `bus_register`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `bus_route`
--
ALTER TABLE `bus_route`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bus_route_stop`
--
ALTER TABLE `bus_route_stop`
  MODIFY `route_stop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bus_schedule`
--
ALTER TABLE `bus_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `bus_stop`
--
ALTER TABLE `bus_stop`
  MODIFY `stop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `crowdsource`
--
ALTER TABLE `crowdsource`
  MODIFY `crowdsource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `favourite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `realtime`
--
ALTER TABLE `realtime`
  MODIFY `realtime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rt_autostand`
--
ALTER TABLE `rt_autostand`
  MODIFY `rtautostand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rt_stop`
--
ALTER TABLE `rt_stop`
  MODIFY `rtstop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
