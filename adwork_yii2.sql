-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2020 at 11:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adwork_yii2`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(20) NOT NULL,
  `task_name` varchar(100) NOT NULL,
  `assigned_staffs` varchar(100) NOT NULL,
  `supervisor_name` varchar(100) NOT NULL,
  `date_created` date NOT NULL,
  `date_due` date NOT NULL,
  `news_outlet` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `task_name`, `assigned_staffs`, `supervisor_name`, `date_created`, `date_due`, `news_outlet`) VALUES
(1, 'Product Marketing', 'Jennifer Gary White', 'Moshood Adenike Remmy', '0000-00-00', '2020-08-08', '-');

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('author', '2', 1596184030),
('peace', '1', 1596184030);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('assignment/update', 1, 'Update Assignment', NULL, NULL, NULL, NULL),
('author', 1, NULL, NULL, NULL, 1596184030, 1596184030),
('company/index', 1, 'View Company', NULL, NULL, NULL, NULL),
('companybranch/index', 1, 'View Companies', NULL, NULL, NULL, NULL),
('companyinformation/index', 1, 'View Companyinformation\r\n', NULL, NULL, NULL, NULL),
('currencies', 1, 'View Currencies', NULL, NULL, NULL, NULL),
('currencies-view', 1, 'View Currencies', NULL, NULL, NULL, NULL),
('currencies/view', 1, 'View Currencies', NULL, NULL, NULL, NULL),
('department/index', 1, 'View Departments', NULL, NULL, NULL, NULL),
('education/index', 1, 'View Education', NULL, NULL, NULL, NULL),
('employee/create', 2, 'Create Employee', NULL, NULL, 1596184030, 1596184030),
('employee/delete', 2, 'Delete Employee', NULL, NULL, 1596184030, 1596184030),
('employee/index', 2, 'Index Employee', NULL, NULL, 1596184030, 1596184030),
('employee/update', 2, 'Update Employee', NULL, NULL, 1596184030, 1596184030),
('employee/view', 2, 'View Employee', NULL, NULL, 1596184030, 1596184030),
('employeedependant/index', 1, 'View Employeedependant', NULL, NULL, NULL, NULL),
('employeedetails/index', 1, 'View Employeedetails', NULL, NULL, NULL, NULL),
('employeeeducation/index', 1, 'View Employeeeducation', NULL, NULL, NULL, NULL),
('employeeemergenciescontact/view', 1, 'View Employeeemergenciescontact', NULL, NULL, NULL, NULL),
('employeeimmigration/view', 1, 'View Employeeimmigration', NULL, NULL, NULL, NULL),
('employeejob/index', 1, 'View Employeejob', NULL, NULL, NULL, NULL),
('employeelanguage/index', 1, 'View Employeelanguage', NULL, NULL, NULL, NULL),
('employeelicense/index', 1, 'View Employeelicense', NULL, NULL, NULL, NULL),
('employeememberships/index', 1, 'View Employeememberships', NULL, NULL, NULL, NULL),
('employeesalary/index', 1, 'View Employeesalary', NULL, NULL, NULL, NULL),
('employeeskill/index', 1, 'View Employeeskill', NULL, NULL, NULL, NULL),
('employeesubordinates/index', 1, 'View Employeesubordinates', NULL, NULL, NULL, NULL),
('employeesupervisors/index', 1, 'View Employeesupervisors', NULL, NULL, NULL, NULL),
('employeeworkexperience/index', 1, 'View Employeeworkexperience', NULL, NULL, NULL, NULL),
('employmentstatus/index', 1, 'View Employmentstatus', NULL, NULL, NULL, NULL),
('jobcategories/index', 1, 'View Jobcategories', NULL, NULL, NULL, NULL),
('jobtitles/index', 1, 'View Jobtitles', NULL, NULL, NULL, NULL),
('languages/index', 1, 'View Languages', NULL, NULL, NULL, NULL),
('licenses/index', 1, 'View Licenses', NULL, NULL, NULL, NULL),
('memberships/index', 1, 'View Memberships', NULL, NULL, NULL, NULL),
('nationalities/index', 1, 'View Nationalities', NULL, NULL, NULL, NULL),
('paygrades/index', 1, 'View Paygrades', NULL, NULL, NULL, NULL),
('peace', 1, NULL, NULL, NULL, 1596184030, 1596184030),
('skills/index', 1, 'View Skills', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('author', 'employee/create'),
('author', 'employee/index'),
('author', 'employee/view'),
('peace', 'assignment/update'),
('peace', 'author'),
('peace', 'company/index'),
('peace', 'companybranch/index'),
('peace', 'companyinformation/index'),
('peace', 'currencies-view'),
('peace', 'department/index'),
('peace', 'education/index'),
('peace', 'employee/delete'),
('peace', 'employee/update'),
('peace', 'employeedependant/index'),
('peace', 'employeedetails/index'),
('peace', 'employeeeducation/index'),
('peace', 'employeeemergenciescontact/view'),
('peace', 'employeeimmigration/view'),
('peace', 'employeejob/index'),
('peace', 'employeelanguage/index'),
('peace', 'employeelicense/index'),
('peace', 'employeememberships/index'),
('peace', 'employeesalary/index'),
('peace', 'employeeskill/index'),
('peace', 'employeesubordinates/index'),
('peace', 'employeesupervisors/index'),
('peace', 'employeeworkexperience/index'),
('peace', 'employmentstatus/index'),
('peace', 'jobcategories/index'),
('peace', 'jobtitles/index'),
('peace', 'languages/index'),
('peace', 'licenses/index'),
('peace', 'memberships/index'),
('peace', 'nationalities/index'),
('peace', 'paygrades/index'),
('peace', 'skills/index');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(20) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_email` varchar(50) NOT NULL,
  `company_address` varchar(50) NOT NULL,
  `company_created_date` datetime NOT NULL,
  `company_modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company_name`, `company_email`, `company_address`, `company_created_date`, `company_modified_date`) VALUES
(1, 'abc', 'abc@gmail.com', 'Ikota Shopping Complex', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'prior', 'prior@gmail.com', 'Ikota Shopping Complex', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `company_branch`
--

CREATE TABLE `company_branch` (
  `id` int(20) NOT NULL,
  `location_name` varchar(70) NOT NULL,
  `city` text NOT NULL,
  `country` text NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_branch`
--

INSERT INTO `company_branch` (`id`, `location_name`, `city`, `country`, `date_created`, `date_modified`, `user_id`) VALUES
(1, 'Ikota Shopping Complex', 'Lagos', 'Nigeria', '2020-07-28', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_information`
--

CREATE TABLE `company_information` (
  `id` int(20) NOT NULL,
  `organization_name` varchar(50) NOT NULL,
  `tax_id` varchar(50) NOT NULL,
  `number_of_employees` int(50) NOT NULL,
  `registration_number` varchar(60) NOT NULL,
  `phone` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(60) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `postal_code` int(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_information`
--

INSERT INTO `company_information` (`id`, `organization_name`, `tax_id`, `number_of_employees`, `registration_number`, `phone`, `fax`, `email`, `address`, `city`, `state`, `postal_code`, `country`, `date_created`, `date_modified`, `user_id`) VALUES
(1, 'Sun Technology', '24A001482', 7, '09ZA2020-14', 2147483647, 317061480, 'admin@suntech.com', 'Ikota Shopping Complex', 'Lagos', 'Lagos', 100001, 'Nigeria', '2020-07-27', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `currency_code`, `date_created`, `date_modified`, `user_id`) VALUES
(1, 'Afghani', 'AFN', '2020-07-28', '0000-00-00', 1),
(2, 'US Dollar', 'USD', '2020-07-28', '0000-00-00', 1),
(3, 'Euro', 'EUR', '2020-07-28', '0000-00-00', 1),
(4, 'East Caribean Dollar', 'XCD', '2020-07-28', '0000-00-00', 1),
(5, 'Australian Dollar', 'AUD', '2020-07-28', '0000-00-00', 1),
(6, 'CFA Franc', 'XOF', '2020-07-28', '0000-00-00', 1),
(7, 'Indian Rupee', 'INR', '2020-07-28', '0000-00-00', 1),
(8, 'Yuan Renminbi', 'CNY', '2020-07-28', '0000-00-00', 1),
(9, 'Ghana Cedi', 'GHS', '2020-07-28', '0000-00-00', 1),
(10, 'Pound Sterling', 'GBP', '2020-07-28', '0000-00-00', 1),
(11, 'Yen', 'JPY', '2020-07-28', '0000-00-00', 1),
(12, 'Rand', 'ZAR', '2020-07-28', '0000-00-00', 1),
(13, 'Naira', 'NGN', '2020-07-28', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `date_created`, `date_modified`, `user_id`) VALUES
(1, 'Accounts and Finance', '2020-07-27', '0000-00-00', 1),
(2, 'HR', '2020-07-27', '0000-00-00', 1),
(3, 'Business Development(Sales and Marketing)', '2020-07-27', '0000-00-00', 1),
(4, 'Research and Development', '2020-07-27', '0000-00-00', 1),
(5, 'IT Services', '2020-07-27', '0000-00-00', 1),
(6, 'Admin Department', '2020-07-27', '0000-00-00', 1),
(7, 'Product Development', '2020-07-27', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(20) NOT NULL,
  `employee_id` int(20) NOT NULL,
  `first_name` text NOT NULL,
  `middle_name` text NOT NULL,
  `last_name` text NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `nationality` text NOT NULL,
  `marital_status` enum('single','married') NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employee_id`, `first_name`, `middle_name`, `last_name`, `gender`, `nationality`, `marital_status`, `date_of_birth`, `date_created`, `date_modified`, `user_id`, `logo`) VALUES
(1, 1, 'David', 'Mitchel', 'Tom', 'male', 'Nigerian', 'single', '1990-02-11', '2020-07-28', '0000-00-00', 1, ''),
(2, 2, 'Gary', 'Jennifer', 'White', 'female', 'American', 'married', '1992-09-13', '2020-07-28', '0000-00-00', 1, ''),
(3, 3, 'Ahmed', 'Silas', 'Usman', 'male', 'Nigerian', 'married', '1989-01-21', '2020-07-28', '0000-00-00', 1, ''),
(4, 4, 'Suleiman', 'Ahmed', 'Yusuf', 'male', 'Nigerian', 'single', '1989-01-21', '2020-07-28', '0000-00-00', 1, ''),
(5, 5, 'Moshood', 'Adenike', 'Remmy', 'female', 'Nigerian', 'married', '1992-09-13', '2020-07-28', '0000-00-00', 1, 'uploads/Moshood.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `employee_dependant`
--

CREATE TABLE `employee_dependant` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `relationship` enum('brother','sister','husband','wife','father','mother','children') NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_dependant`
--

INSERT INTO `employee_dependant` (`id`, `name`, `relationship`, `date_of_birth`, `date_created`, `date_modified`, `user_id`, `logo`) VALUES
(1, 'Joan Maris Tom', 'brother', '1997-01-16', '2020-07-29', '0000-00-00', 1, 'uploads/Joan Maris T');

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `id` int(20) NOT NULL,
  `employee_employee_id` int(20) NOT NULL,
  `home_telephone` int(20) NOT NULL,
  `work_telephone` int(20) NOT NULL,
  `work_email` varchar(50) NOT NULL,
  `other_email` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `mobile` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(60) NOT NULL,
  `city` text NOT NULL,
  `state_or_province` text NOT NULL,
  `zip_or_postal_code` int(20) NOT NULL,
  `country` text NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`id`, `employee_employee_id`, `home_telephone`, `work_telephone`, `work_email`, `other_email`, `phone`, `fax`, `mobile`, `email`, `address`, `city`, `state_or_province`, `zip_or_postal_code`, `country`, `date_created`, `date_modified`, `user_id`, `logo`) VALUES
(1, 1, 2147483647, 2147483647, 'david@suntech.com', 'david2010@gmail.com', 2147483647, 254710002, 2147483647, 'david2010@gmail.com', 'Madiba Estate', 'Lagos', 'Lagos', 100001, 'Nigeria', '2020-07-28', '0000-00-00', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_education`
--

CREATE TABLE `employee_education` (
  `id` int(20) NOT NULL,
  `level` enum('postgraduate','undergraduate','secondary school') NOT NULL,
  `institute` varchar(60) NOT NULL,
  `major_or_specialization` text NOT NULL,
  `year` year(4) NOT NULL,
  `gpa_or_score` int(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `comment` text NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_emergencies_contact`
--

CREATE TABLE `employee_emergencies_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `relationship` enum('brother','sister','wife','husband','father','mother','uncle','aunt','cousin','sponsor') NOT NULL,
  `home_telephone` int(20) NOT NULL,
  `mobile` int(20) NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_immigration`
--

CREATE TABLE `employee_immigration` (
  `id` int(20) NOT NULL,
  `document_type` enum('passport','visa') NOT NULL,
  `number` varchar(50) NOT NULL,
  `issued_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `eligible_status` enum('active','inactive') NOT NULL,
  `issued_by` text NOT NULL,
  `eligible_review_date` date NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_job`
--

CREATE TABLE `employee_job` (
  `id` int(50) NOT NULL,
  `job_title_name` int(50) NOT NULL,
  `employment_status_id` int(50) NOT NULL,
  `job_category_id` int(50) NOT NULL,
  `joined_date` date NOT NULL,
  `department_id` int(20) NOT NULL,
  `company_branch_id` int(20) NOT NULL,
  `contract_start_date` date NOT NULL,
  `contract_end_date` date NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_language`
--

CREATE TABLE `employee_language` (
  `id` int(20) NOT NULL,
  `language_id` int(20) NOT NULL,
  `fluency` enum('writing','speaking','reading') NOT NULL,
  `competency` enum('poor','basic','good','excellent') NOT NULL,
  `comments` text NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_license`
--

CREATE TABLE `employee_license` (
  `id` int(20) NOT NULL,
  `license_id` int(20) NOT NULL,
  `license_number` int(50) NOT NULL,
  `issued_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `comments` text NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_memberships`
--

CREATE TABLE `employee_memberships` (
  `id` int(20) NOT NULL,
  `name` int(50) NOT NULL,
  `reporting_method` enum('direct','indirect','others') NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(50) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE `employee_salary` (
  `id` int(20) NOT NULL,
  `pay_grade_id` int(20) NOT NULL,
  `pay_frequency` enum('bi-weekly','hourly','monthly','semi-monthly','weekly') NOT NULL,
  `currency` enum('£','¥','€','$','N') NOT NULL,
  `amount` int(50) NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_skill`
--

CREATE TABLE `employee_skill` (
  `id` int(20) NOT NULL,
  `skill_id` int(20) NOT NULL,
  `years_of_experience` int(20) NOT NULL,
  `comments` text NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_subordinates`
--

CREATE TABLE `employee_subordinates` (
  `id` int(20) NOT NULL,
  `name` int(20) NOT NULL,
  `reporting_method` enum('direct','indirect','others') NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_supervisors`
--

CREATE TABLE `employee_supervisors` (
  `id` int(20) NOT NULL,
  `name` int(20) NOT NULL,
  `reporting_method` enum('direct','indirect','others') NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_work_experience`
--

CREATE TABLE `employee_work_experience` (
  `id` int(20) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `from_start_date` date NOT NULL,
  `to_end_date` date NOT NULL,
  `comment` text NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_work_experience`
--

INSERT INTO `employee_work_experience` (`id`, `company_name`, `job_title`, `from_start_date`, `to_end_date`, `comment`, `date_created`, `date_modified`, `user_id`, `logo`) VALUES
(1, 'Global resources', 'Consultant', '2014-02-13', '2016-04-28', 'Impressive', '2020-07-28', '0000-00-00', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `employment_status`
--

CREATE TABLE `employment_status` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employment_status`
--

INSERT INTO `employment_status` (`id`, `name`, `date_created`, `date_modified`, `user_id`) VALUES
(1, 'Permanent', '2020-07-29', '2020-07-29', 1),
(2, 'Casual', '2020-07-29', '2020-07-29', 1),
(3, 'Trainees', '2020-07-29', '0000-00-00', 1),
(4, 'Employment agency staff', '2020-07-29', '0000-00-00', 1),
(5, 'Contractors', '2020-07-29', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `name`, `date_created`, `date_modified`, `user_id`) VALUES
(1, 'Officials and Managers', '2020-07-29', '0000-00-00', 1),
(2, 'Professionals', '2020-07-29', '0000-00-00', 1),
(3, 'Technicians', '2020-07-29', '0000-00-00', 1),
(4, 'Sales Workers', '2020-07-29', '0000-00-00', 1),
(5, 'Office and Clerical Workers', '2020-07-29', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_titles`
--

CREATE TABLE `job_titles` (
  `id` int(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_titles`
--

INSERT INTO `job_titles` (`id`, `title`, `description`, `date_created`, `date_modified`, `user_id`) VALUES
(2, 'Human Resource Manager', 'Manages human resources', '2020-07-28', '2020-07-28', 1),
(3, 'Administrator', 'Supervises day-to-day activities', '2020-07-28', '0000-00-00', 1),
(4, 'Software developer', 'Creates software programs that allow users to perform specific tasks on various devices', '2020-07-29', '2020-07-30', 1),
(5, 'Consultants', 'Analyze the company\'s performance, discuss needs and formulate plans for future development', '2020-07-29', '0000-00-00', 1),
(6, 'Administrative Assistant', 'Covers the day-to-day running of a business including filing paperwork, making phone calls.', '2020-07-29', '0000-00-00', 1),
(7, 'Sales Agent', 'Represents the company, selling products and services on its behalf.', '2020-07-29', '0000-00-00', 1),
(8, 'Database administrators', 'Develop and improve the data resources used to store critical information', '2020-07-29', '0000-00-00', 1),
(9, 'Web developers', 'Create the technical structure for websites and access the needs of users for information resources', '2020-07-29', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `name`, `date_created`, `date_modified`, `user_id`) VALUES
(1, 'Global Membership', '2020-07-28', '2020-07-30', 1),
(2, 'Member', '2020-07-28', '2020-07-30', 1),
(3, 'Associate Member\r\n', '2020-07-28', '2020-07-30', 1),
(4, 'Fellow', '2020-07-28', '2020-07-30', 1),
(5, 'Honorary Fellow', '2020-07-28', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1595791413),
('m130524_201442_init', 1595791421),
('m140506_102106_rbac_init', 1596179164),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1596179165),
('m180523_151638_rbac_updates_indexes_without_prefix', 1596179166),
('m190124_110200_add_verification_token_column_to_user_table', 1595791421),
('m200409_110543_rbac_update_mssql_trigger', 1596179167),
('m200731_074625_init_rbac', 1596184030);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `name`, `date_created`, `date_modified`, `user_id`) VALUES
(1, 'Nigerian', '2020-07-28', '0000-00-00', 1),
(2, 'Chinese', '2020-07-28', '0000-00-00', 1),
(3, 'American', '2020-07-28', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paygrades`
--

CREATE TABLE `paygrades` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `currency` enum('Naira','Dollars','Pounds','Yen','Euro') NOT NULL,
  `minimum_salary` varchar(50) NOT NULL,
  `maximum_salary` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paygrades`
--

INSERT INTO `paygrades` (`id`, `name`, `currency`, `minimum_salary`, `maximum_salary`, `date_created`, `date_modified`, `user_id`) VALUES
(1, 'Human Resource Management', 'Naira', '70,0000', '150,000', '2020-07-29', '0000-00-00', 1),
(2, 'Administrator', 'Naira', '70,0000', '150,000', '2020-07-29', '0000-00-00', 1),
(3, 'Software Developer', 'Naira', '70,0000', '170,000', '2020-07-29', '0000-00-00', 1),
(4, 'Consultants', 'Naira', '70,0000', '150,000', '2020-07-29', '0000-00-00', 1),
(5, 'Administrative assistants', 'Naira', '50,0000', '100,000', '2020-07-29', '0000-00-00', 1),
(6, 'Sales Agents', 'Naira', '50,0000', '70,000', '2020-07-29', '0000-00-00', 1),
(7, 'Database Administrator', 'Naira', '50,0000', '80,000', '2020-07-29', '0000-00-00', 1),
(8, 'Web Developer', 'Naira', '70,0000', '150,000', '2020-07-29', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `date_created`, `date_modified`, `user_id`) VALUES
(1, 'Communication skills', '2020-07-27', '0000-00-00', 1),
(2, 'Organizational Skills', '2020-07-27', '0000-00-00', 1),
(3, 'Decision-making skills', '2020-07-27', '0000-00-00', 1),
(4, 'Budgeting skills', '2020-07-27', '0000-00-00', 1),
(5, 'Empathetic skills', '2020-07-27', '0000-00-00', 1),
(6, 'Problem-solving skills', '2020-07-27', '0000-00-00', 1),
(7, 'Creativity skills', '2020-07-27', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'peace', 'MCH3o0aAe5atAdwY5ndvuatkRsa-tde2', '$2y$13$ZXy9heo9xzbmJ4PheJWpO.7ShjKBmUpqxLzaq1PPhFvQ5l6kIe1Zm', NULL, 'peace@gmail.com', 10, 1595792662, 1595798937, 'gT1gO-1MBgUqOe0SalqGuuy-lamqdHsC_1595792662'),
(3, 'employee', 'aDzIcVBsyT5969vR74I9KIXRdG-A2TkJ', '$2y$13$Y7fCP4tqrfxKEDASu04mV.BQDebcV7XtGsL2gFnjPxVu32cUExj4W', NULL, 'stack@gmail.com', 10, 1595800062, 1595800160, 'qM3V1cYxl0-lMPZ97xu909gYATTLpxLR_1595800061'),
(4, 'maro', '855LJIRd7HmjSY_0A7CGnhRYvK6GEVJM', '$2y$13$.ixNyL/IQVep1/v2JBYZhuNczOSjDsxSABK08pEMMiyt6J2ga/Jra', NULL, 'maro@gmail.com', 10, 1596190596, 1596190660, 'UhWlJBQ_isgr4gX9K4ohIoWLwe0DE2_d_1596190596');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `company_branch`
--
ALTER TABLE `company_branch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `company_information`
--
ALTER TABLE `company_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `employee_dependant`
--
ALTER TABLE `employee_dependant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_employee_id` (`employee_employee_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `employee_education`
--
ALTER TABLE `employee_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `employee_emergencies_contact`
--
ALTER TABLE `employee_emergencies_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `employee_immigration`
--
ALTER TABLE `employee_immigration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `employee_job`
--
ALTER TABLE `employee_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_title_name` (`job_title_name`,`employment_status_id`,`job_category_id`,`company_branch_id`,`user_id`),
  ADD KEY `employment_status_id` (`employment_status_id`),
  ADD KEY `job_category_id` (`job_category_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `company_branch_id` (`company_branch_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `employee_language`
--
ALTER TABLE `employee_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_2` (`id`,`language_id`,`user_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `employee_license`
--
ALTER TABLE `employee_license`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_2` (`id`,`license_id`,`user_id`),
  ADD KEY `license_id` (`license_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `employee_memberships`
--
ALTER TABLE `employee_memberships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_2` (`id`,`pay_grade_id`,`user_id`),
  ADD KEY `pay_grade_id` (`pay_grade_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `employee_skill`
--
ALTER TABLE `employee_skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `skill_id` (`skill_id`);

--
-- Indexes for table `employee_subordinates`
--
ALTER TABLE `employee_subordinates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `employee_supervisors`
--
ALTER TABLE `employee_supervisors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `employee_work_experience`
--
ALTER TABLE `employee_work_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `employment_status`
--
ALTER TABLE `employment_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `job_titles`
--
ALTER TABLE `job_titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_2` (`name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `paygrades`
--
ALTER TABLE `paygrades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company_information`
--
ALTER TABLE `company_information`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee_dependant`
--
ALTER TABLE `employee_dependant`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_education`
--
ALTER TABLE `employee_education`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_emergencies_contact`
--
ALTER TABLE `employee_emergencies_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_immigration`
--
ALTER TABLE `employee_immigration`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_job`
--
ALTER TABLE `employee_job`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_language`
--
ALTER TABLE `employee_language`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_license`
--
ALTER TABLE `employee_license`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_memberships`
--
ALTER TABLE `employee_memberships`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_skill`
--
ALTER TABLE `employee_skill`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_subordinates`
--
ALTER TABLE `employee_subordinates`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_supervisors`
--
ALTER TABLE `employee_supervisors`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_work_experience`
--
ALTER TABLE `employee_work_experience`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employment_status`
--
ALTER TABLE `employment_status`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_titles`
--
ALTER TABLE `job_titles`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paygrades`
--
ALTER TABLE `paygrades`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `company_branch`
--
ALTER TABLE `company_branch`
  ADD CONSTRAINT `company_branch_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `company_information`
--
ALTER TABLE `company_information`
  ADD CONSTRAINT `company_information_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `currencies`
--
ALTER TABLE `currencies`
  ADD CONSTRAINT `currencies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `employee_dependant`
--
ALTER TABLE `employee_dependant`
  ADD CONSTRAINT `employee_dependant_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `employee_dependant_ibfk_2` FOREIGN KEY (`id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD CONSTRAINT `employee_details_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `employee_details_ibfk_3` FOREIGN KEY (`employee_employee_id`) REFERENCES `employee` (`user_id`);

--
-- Constraints for table `employee_education`
--
ALTER TABLE `employee_education`
  ADD CONSTRAINT `employee_education_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `employee_education_ibfk_2` FOREIGN KEY (`id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `employee_emergencies_contact`
--
ALTER TABLE `employee_emergencies_contact`
  ADD CONSTRAINT `employee_emergencies_contact_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `employee_emergencies_contact_ibfk_2` FOREIGN KEY (`id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `employee_immigration`
--
ALTER TABLE `employee_immigration`
  ADD CONSTRAINT `employee_immigration_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `employee_immigration_ibfk_2` FOREIGN KEY (`id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `employee_job`
--
ALTER TABLE `employee_job`
  ADD CONSTRAINT `employee_job_ibfk_1` FOREIGN KEY (`employment_status_id`) REFERENCES `employment_status` (`id`),
  ADD CONSTRAINT `employee_job_ibfk_2` FOREIGN KEY (`job_category_id`) REFERENCES `job_categories` (`id`),
  ADD CONSTRAINT `employee_job_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `employee_job_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `employee_job_ibfk_6` FOREIGN KEY (`id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `employee_language`
--
ALTER TABLE `employee_language`
  ADD CONSTRAINT `employee_language_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `employee_language_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `employee_language_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `employee_license`
--
ALTER TABLE `employee_license`
  ADD CONSTRAINT `employee_license_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `employee_license_ibfk_2` FOREIGN KEY (`license_id`) REFERENCES `licenses` (`id`),
  ADD CONSTRAINT `employee_license_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `employee_memberships`
--
ALTER TABLE `employee_memberships`
  ADD CONSTRAINT `employee_memberships_ibfk_1` FOREIGN KEY (`name`) REFERENCES `memberships` (`id`),
  ADD CONSTRAINT `employee_memberships_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `employee_memberships_ibfk_3` FOREIGN KEY (`id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD CONSTRAINT `employee_salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `employee_salary_ibfk_2` FOREIGN KEY (`pay_grade_id`) REFERENCES `paygrades` (`id`),
  ADD CONSTRAINT `employee_salary_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `employee_skill`
--
ALTER TABLE `employee_skill`
  ADD CONSTRAINT `employee_skill_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `employee_skill_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `employee_skill_ibfk_4` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`);

--
-- Constraints for table `employee_subordinates`
--
ALTER TABLE `employee_subordinates`
  ADD CONSTRAINT `employee_subordinates_ibfk_1` FOREIGN KEY (`name`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `employee_subordinates_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `employee_supervisors`
--
ALTER TABLE `employee_supervisors`
  ADD CONSTRAINT `employee_supervisors_ibfk_1` FOREIGN KEY (`name`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `employee_supervisors_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `employee_work_experience`
--
ALTER TABLE `employee_work_experience`
  ADD CONSTRAINT `employee_work_experience_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `employee_work_experience_ibfk_2` FOREIGN KEY (`id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `employment_status`
--
ALTER TABLE `employment_status`
  ADD CONSTRAINT `employment_status_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD CONSTRAINT `job_categories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `job_titles`
--
ALTER TABLE `job_titles`
  ADD CONSTRAINT `job_titles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `licenses`
--
ALTER TABLE `licenses`
  ADD CONSTRAINT `licenses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `memberships`
--
ALTER TABLE `memberships`
  ADD CONSTRAINT `memberships_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD CONSTRAINT `nationalities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `paygrades`
--
ALTER TABLE `paygrades`
  ADD CONSTRAINT `paygrades_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
