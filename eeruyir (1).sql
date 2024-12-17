-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 05:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eeruyir`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `alert_message` text NOT NULL,
  `tests_required` text NOT NULL,
  `scan_required` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `month`, `alert_message`, `tests_required`, `scan_required`) VALUES
(1, 1, 'Please do blood tests and NT scan.', 'HB, HIV, HbSAg, VDRL, THYROID', 'NT SCAN'),
(2, 2, 'Please do blood tests and NT scan.', 'HB, HIV, HbSAg, VDRL, THYROID', 'NT SCAN'),
(3, 3, 'Please do blood tests and NT scan.', 'HB, HIV, HbSAg, VDRL, THYROID', 'NT SCAN'),
(4, 4, 'Please do blood tests.', 'HB, GCT', 'NT SCAN'),
(5, 5, 'Please do blood tests and ANOMALY SCAN.', 'HB', 'ANOMALY SCAN'),
(6, 6, 'Please do blood tests.', 'HB, GCT', 'NT SCAN'),
(7, 7, 'Please do blood tests and GROWTH SCAN.', 'HB', 'GROWTH SCAN'),
(8, 8, 'Please do blood tests.', 'HB, GCT', 'NO SCAN'),
(9, 9, 'Please do blood tests and GROWTH SCAN.', 'HB', 'GROWTH SCAN');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Present obstetric history'),
(2, 'Medical History'),
(3, 'Surgical History'),
(4, 'Trauma');

-- --------------------------------------------------------

--
-- Table structure for table `daily_video_completions`
--

CREATE TABLE `daily_video_completions` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(10) NOT NULL,
  `completion_date` date NOT NULL,
  `trimester` varchar(255) DEFAULT NULL,
  `total_videos_completed` int(11) NOT NULL,
  `total_videos` int(11) DEFAULT NULL,
  `monthly_exercise_days` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_video_completions`
--

INSERT INTO `daily_video_completions` (`id`, `patient_id`, `completion_date`, `trimester`, `total_videos_completed`, `total_videos`, `monthly_exercise_days`) VALUES
(1, 'PSJM0008', '2024-10-07', '1st Trimester', 7, 10, 4),
(5, 'PSJM0008', '2024-10-08', '1st Trimester', 6, 10, 4),
(18, 'PSJM0002', '2024-10-24', '1st Trimester', 3, 10, 4),
(21, 'PSJM0008', '2024-10-25', '1st Trimester', 7, 10, 1),
(28, 'PSJM0002', '2024-10-26', '1st Trimester', 4, 10, 4),
(32, 'PSJM0008', '2024-10-26', '1st Trimester', 5, 14, 1),
(42, 'PSJM0008', '2024-11-17', '1st Trimester', 5, 10, 1),
(47, 'PSJM0002', '2024-11-17', '2nd Trimester', 2, 14, 2),
(48, 'PSJM0002', '2024-11-19', '2nd Trimester', 13, 14, 2),
(61, 'PSJM0001', '2024-11-19', '2nd Trimester', 7, 14, 1),
(68, 'PSJM0010', '2024-11-19', '1st Trimester', 2, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `defaulters`
--

CREATE TABLE `defaulters` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `defaulters`
--

INSERT INTO `defaulters` (`id`, `patient_id`, `created_at`) VALUES
(26, 'PSJM0001', '2024-11-16 10:17:14'),
(27, 'PSJM0002', '2024-11-16 10:17:28'),
(28, 'PSJM0003', '2024-11-16 10:17:28'),
(29, 'PSJM0004', '2024-11-16 10:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `defaulters_list`
--

CREATE TABLE `defaulters_list` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `defaulters_list`
--

INSERT INTO `defaulters_list` (`id`, `patient_id`, `added_date`) VALUES
(1, 'PSJM0001', '2024-10-05 04:19:20'),
(2, 'PSJM0002', '2024-10-05 04:19:20'),
(3, 'PSJM0003', '2024-10-05 04:19:20'),
(4, 'PSJM0004', '2024-10-05 04:19:20'),
(5, 'PSJM0005', '2024-10-05 04:19:20');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_outcomes`
--

CREATE TABLE `delivery_outcomes` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `delivery_method` varchar(255) NOT NULL,
  `difficulty` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_outcomes`
--

INSERT INTO `delivery_outcomes` (`id`, `patient_id`, `delivery_method`, `difficulty`, `created_at`) VALUES
(17, 'PSJM0008', 'Normal', 'Yes', '2024-11-17 12:25:25'),
(27, 'PSJM0002', 'C-Section', '', '2024-11-17 18:03:26'),
(28, 'PSJM0010', 'Normal', 'Yes', '2024-11-19 18:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `doctorlogin`
--

CREATE TABLE `doctorlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `re_enter_password` varchar(255) NOT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctorlogin`
--

INSERT INTO `doctorlogin` (`id`, `username`, `password`, `re_enter_password`, `phonenumber`, `specialization`, `experience`, `name`, `email`) VALUES
(1, 'doctor123', '$2y$10$Ca1AAsyturGte8pTgSHNi.3bB4bxP5LhRdwEG4SWaH.OTZgMiGTFC', '$2y$10$SKHwnqffJvszNrDbXvQbs.oW.O4vV8ZAh33JjCEmwBeBtTWY4R3He', '1234567890', 'Cardiology', 10, 'Dr. John Doe', 'john.doe@example.com'),
(2, 'doctor121', '$2y$10$AjKVNfoXExf2ltFrVTWyS.8jeXtB9Rgq8ojvtZcubRv2fgPqA4O0m', '$2y$10$Rw0pFxmwGxYQjvTRW79JxunkCQcpJpEpqF4WzD9rXcKfldS5ns53m', '1234567890', 'Cardiology', 10, 'Dr. John Doe', 'john.doe@example.com'),
(3, 'doctor129', '$2y$10$9NMnAeZxy2j95US6faUAyewX7SBwO9yDbGsOlogKzWUTkpvys3RR2', '$2y$10$oXqgtXN8KlzUNPB5S7NAIevKvcRf5oBGnUm/1Yoww6AjaHdeuk6em', '1234567890', 'Cardiology', 10, 'Dr. John Doe', 'john.doe@example.com'),
(4, 'doctor129', '$2y$10$pMMztvvKcbRMvDbWyqsr8.jV.aYgXAUdpV2YFKdX1JrABZsE1jSyC', '$2y$10$0kIQbjxlvNb6eu2ggWNRKO9nH77Aebr20qhYrx2oB28Op/sWEEAL6', '1234567890', 'Cardiology', 10, 'Dr. John Doe', 'john.doe@example.com'),
(5, 'doctor29', '$2y$10$SDt8BODLR20T/alBIa7P..h9iXlSHxbYpBbrhpkJBlhoqFNpx9nBC', '$2y$10$.thlzjLFfN0gAvLzOqc05.5rq9ZuHtu3b0DSrWxbIX4NOkb9yJ6nu', '1234567890', 'Cardiology', 10, 'Dr. John Doe', 'john.doe@example.com'),
(6, 'D', '$2y$10$pujwMBca2b0idjijwRLrEObhQZOtSIzNuh2gzPzTVb88wqOpughMu', '$2y$10$3E//warT4c56SC2/pIynhuYyf.VFBS7Ia3oMw5DwNq6Sv2z00GrCu', '7891234567', 'Hdj', 2, 'Jdj', 'naidujyoshna@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `exercise_data`
--

CREATE TABLE `exercise_data` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `exercise_name` varchar(100) DEFAULT NULL,
  `completion_percentage` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kick_counts`
--

CREATE TABLE `kick_counts` (
  `patient_id` varchar(255) NOT NULL,
  `kick_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kick_counts`
--

INSERT INTO `kick_counts` (`patient_id`, `kick_count`) VALUES
('PSJM0001', 5),
('PSJM0002', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mental_health_data`
--

CREATE TABLE `mental_health_data` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `response` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mental_health_data`
--

INSERT INTO `mental_health_data` (`id`, `patient_id`, `response`, `date`) VALUES
(4, 'PSJM0001', 'MORE RELAXED', '2024-09-18'),
(5, 'PSJM0001', 'HAPPY', '2024-09-21'),
(6, 'PSJM0002', 'LESS ANXIOUS', '2024-09-18'),
(7, 'PSJM0002', 'MORE RELAXED', '2024-10-07'),
(8, 'PSJM0002', 'MORE RELAXED', '2024-10-07'),
(9, 'PSJM0002', 'MORE RELAXED', '2024-10-07'),
(10, 'PSJM0002', 'MORE RELAXED', '2024-10-07'),
(11, 'PSJM0002', 'LESS ANXIOUS', '2024-10-07'),
(12, 'PSJM0002', 'LESS ANXIOUS', '2024-10-07'),
(13, 'PSJM0002', 'LESS ANXIOUS', '2024-10-07'),
(15, 'PSJM0002', 'GOOD', '2024-10-14'),
(16, 'PSJM0002', 'NO CHANGE', '2024-11-19'),
(17, 'PSJM0002', 'HAPPY', '2024-11-19'),
(18, 'PSJM0002', 'HAPPY', '2024-11-19'),
(19, 'PSJM0002', 'LESS ANXIOUS', '2024-11-19'),
(20, 'PSJM0002', 'LESS ANXIOUS', '2024-11-19'),
(21, 'PSJM0002', 'LESS ANXIOUS', '2024-11-19'),
(22, 'PSJM0002', 'LESS ANXIOUS', '2024-11-19'),
(23, 'PSJM0002', 'LESS ANXIOUS', '2024-11-19'),
(24, 'PSJM0002', 'LESS ANXIOUS', '2024-11-19'),
(25, 'PSJM0002', 'LESS ANXIOUS', '2024-11-19'),
(26, 'PSJM0002', 'MORE RELAXED', '2024-11-19'),
(27, 'PSJM0002', 'MORE RELAXED', '2024-11-19'),
(28, 'PSJM0002', 'MORE RELAXED', '2024-11-19'),
(29, 'PSJM0002', 'MORE RELAXED', '2024-11-19'),
(30, 'PSJM0001', 'HAPPY', '2024-11-19'),
(31, 'PSJM0001', 'HAPPY', '2024-11-19'),
(32, 'PSJM0001', 'LESS ANXIOUS', '2024-11-19'),
(33, 'PSJM0001', 'LESS ANXIOUS', '2024-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `patientsignup`
--

CREATE TABLE `patientsignup` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `blocked` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientsignup`
--

INSERT INTO `patientsignup` (`id`, `patient_id`, `username`, `password`, `phonenumber`, `created_at`, `blocked`) VALUES
(1, 'PSJM0001', 'J', '$2y$10$bQ6f7qWN302jBfQBkWSANuTCzYMiSMMUt512rANiGSg5XVoJAeaYW', '7337268218', '2024-09-01 03:51:44', 0),
(2, 'PSJM0002', 'A', '$2y$10$BGjnF4kJEbSV/siF4Ns9Q.TyIcvH29.SlOUH/BrbcACWOiny0Zpqa', '6563695809', '2024-09-18 06:11:33', 0),
(3, 'PSJM0003', 'P', '$2y$10$cQrlhIpSTafsd/vWtdsqk.EWw.zgUbKqTyBFEzftbhB7.1W9X1.tq', '1234567891', '2024-10-18 19:15:27', 1),
(5, 'PSJM0004', 'R', '$2y$10$VRpH7dRVZIWjIiINa4uP4Ohfm7dhmlCVmjbKTmJiLmSa05x4oT/0G', '1122334455', '2024-10-18 19:27:53', 1),
(7, 'PSJM0005', 'Q', '$2y$10$5NEujsMiXmLuGfbIpbY0heqrGdtcKoJ2zXBjyBFP2FkhGPFLvexsC', '1144772255', '2024-10-18 19:53:38', 0),
(8, 'PSJM0006', 'W', '$2y$10$0XRqdfU/mY/mGZzRAK6DZ.qysIdigd/jK9I/Ok.u4Ifx27mCNwo4.', '9909556425', '2024-10-25 18:28:55', 1),
(9, 'PSJM0007', 'testuser', '$2y$10$ZFjPvpC5wH9EQM7HrG6mk.6MVgmuiEw5SXHtwA/i/y98W2Marbhcm', '0101010101', '2024-10-30 10:00:59', 1),
(10, 'PSJM0008', 'M', '$2y$10$iZnKOl0aQWsBUhZJSPXL.u1yIYeeicCya/ij.k7SUAtMZfrChiqEC', '3547253568', '2024-11-12 05:29:59', 1),
(12, 'PSJM0009', 'Subhashini', '$2y$10$beQMThDJ5Bs67SDjhFPaheJ6sXRlpQbQKzwuguheunXo9b1U23u6q', '3625475869', '2024-11-19 10:34:58', 1),
(13, 'PSJM0010', 'Ram', '$2y$10$1nslbzKE07wLuF6mkeHi9udFwC51ZjwXn/p5x/vKjryAL9hljRvV6', '2222222221', '2024-11-19 17:34:33', 1);

--
-- Triggers `patientsignup`
--
DELIMITER $$
CREATE TRIGGER `after_patient_signup` AFTER INSERT ON `patientsignup` FOR EACH ROW BEGIN
    DECLARE update_attempts INT DEFAULT 0;
    DECLARE update_success INT DEFAULT 0;

    -- Attempt to update patients_details using phoneNumber
    UPDATE patients_details
    SET patient_id = NEW.patient_id
    WHERE phoneNumber = NEW.phoneNumber;

    SET update_attempts = ROW_COUNT();

    -- Check if the update was successful
    IF update_attempts > 0 THEN
        SET update_success = 1;
    END IF;

    -- Log the attempt (optional for debugging)
    INSERT INTO trigger_debug_log (new_patient_id, new_phoneNumber, update_attempts, update_success)
    VALUES (NEW.patient_id, NEW.phoneNumber, update_attempts, update_success);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `patients_details`
--

CREATE TABLE `patients_details` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `education` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `bloodGroup` varchar(10) DEFAULT NULL,
  `lmpDate` date DEFAULT NULL,
  `dueDate` date DEFAULT NULL,
  `abortionHistory` varchar(255) DEFAULT NULL,
  `relativeToHusband` varchar(255) DEFAULT NULL,
  `confirmationOfPregnancy` varchar(50) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `obstetricScore` int(11) DEFAULT NULL,
  `maritalStatus` varchar(50) DEFAULT NULL,
  `Height` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients_details`
--

INSERT INTO `patients_details` (`id`, `patient_id`, `firstName`, `lastName`, `age`, `education`, `occupation`, `phoneNumber`, `bloodGroup`, `lmpDate`, `dueDate`, `abortionHistory`, `relativeToHusband`, `confirmationOfPregnancy`, `weight`, `obstetricScore`, `maritalStatus`, `Height`) VALUES
(17, 'PSJM0001', 'Jo', 'J', 27, 'Hx', 'Hdh', '7337268218', 'B-', '2024-10-17', '2025-03-08', 'No', 'Yes', 'Yes', 36, 1, 'Married', 149),
(18, 'PSJM0002', 'Ramya', 'J', 25, 'B.E', 'Software', '6563695809', 'B+', '2024-08-12', '2025-05-13', 'No', 'Yes', 'Yes', 25, 1, 'Married', 145),
(20, 'P_02', 'Ma', 'Ma', 28, 'Hdj', 'Hdj', '1212121212', 'O+', '2024-09-08', '2025-06-15', 'No', 'Yes', 'Yes', 23, 1, 'Married', 149),
(22, 'P_03', 'Ma', 'Ma', 28, 'Hdj', 'Hdj', '1212121210', 'O+', '2024-09-08', '2025-06-15', 'No', 'Yes', 'Yes', 23, 1, 'Married', 149),
(23, 'P_04', 'John', 'Doe', 29, 'Graduate', 'Engineer', '1234567890', 'O+', '2023-05-01', '2024-01-01', 'No', 'Yes', 'Yes', 65.5, 2, 'Married', 149),
(31, 'P_05', 'P', 'Gz', 19, 'Gz', 'Vzh', '3366993366', 'O+', '2024-09-30', '2025-07-07', 'No', 'Yes', 'Yes', 23, 1, 'Married', 149),
(33, 'P_06', 'R', 'R', 24, 'Gdg', 'Gdh', '1122336655', 'B+', '2024-09-30', '2025-07-07', 'No', 'Yes', 'Yes', 36, 1, 'Married', 149),
(35, 'PSJM0005', 'Q', 'Q', 22, 'Cxv', 'Vzh', '1144772255', 'B-', '2024-06-21', '2025-07-07', 'No', 'Yes', 'Yes', 97, 1, 'Married', 149),
(39, 'P_07', 'P', 'P', 19, 'Vxh', 'Gdh', '1111111111', 'B+', '2024-09-30', '2025-07-07', 'No', 'No', 'Yes', 22, 1, 'Married', 149),
(54, 'P_08', 'Hdh', 'Hg', 19, 'Vdh', 'Nhd', '3737373737', 'O+', '2024-10-01', '2025-07-08', 'No', 'No', 'Yes', 23, 1, 'Married', 149),
(56, 'P_09', 'Hdh', 'Hg', 19, 'Vdh', 'Nhd', '3737373730', 'O+', '2024-10-01', '2025-07-08', 'No', 'No', 'Yes', 23, 1, 'Married', 149),
(62, 'P_10', 'L', 'L', 19, 'Bxh', 'Hdj', '3322332211', 'B-', '2024-10-01', '2025-07-08', 'No', 'Yes', 'Yes', 12, 1, 'Married', 145),
(64, 'P_11', 'P', 'K', 19, 'Gdh', 'Hdh', '1111111110', 'B-', '2024-10-01', '2025-07-08', 'No', 'Yes', 'Yes', 23, 1, 'Married', 145),
(65, 'PSJM0007', 'Gdh', 'Gd', 21, 'Gsh', 'Hhs', '0101010101', 'O+', '2024-10-01', '2025-07-08', 'No', 'Yes', 'Yes', 23, 1, 'Married', 147),
(66, 'PSJM0006', 'P', 'P', 21, 'Pp', 'Pp', '9909556425', 'O+', '2024-09-25', '2025-07-08', 'No', 'Yes', 'Yes', 23, 1, 'Married', 146),
(67, 'P_12', 'Joshi', 'k', 25, 'bdjd', 'bsb', '1212365645', 'A+', '2024-11-01', '2025-08-08', 'No', 'Yes', 'Yes', 25, 1, 'Single', 0),
(68, 'P_13', 'hdh', 'gsh', 23, 'bdb', 'vdb', '2214362512', 'A-', '2024-11-08', '2025-08-15', 'No', 'Yes', 'Yes', 23, 1, 'Single', 0),
(69, 'P_14', 'Mom', 'Doe', 24, 'Bachelor&#039;s Degree', 'Engineer', '0000001234', 'A+', '2024-01-01', '2024-10-01', 'No', 'No', 'Yes', 70.5, 2, 'Married', 149),
(120, 'P_15', 'jac', 'p', 23, 'gdh', 'bxb', '3633231423', 'A+', '2024-11-12', '2025-08-19', 'No', 'Yes', 'Yes', 22, 1, 'Single', 149),
(121, 'PSJM0008', 'ufi', 'hdu', 20, 'gxu', 'gdh', '3547253568', 'A+', '2024-11-09', '2025-08-19', 'No', 'Yes', 'Yes', 22, 1, 'Single', 149),
(122, 'P_16', 'hfj', 'dj', 22, 'hfj', 'hdj', '3636363636', 'A-', '2024-11-19', '2025-08-26', 'No', 'Yes', 'Yes', 22, 1, 'Married', 149),
(123, 'PSJM0009', 'hdj', 'hdh', 22, 'vxh', 'hdj', '3625475869', 'A-', '2024-11-03', '2025-08-10', 'No', 'Yes', 'Yes', 22, 1, 'Married', 149),
(124, 'P_17', 'jxjj', 'Appa', 23, 'gfh', 'hxh', '2323232323', 'A+', '2024-11-19', '2025-08-26', 'No', 'Yes', 'Yes', 22, 1, 'Married', 149),
(125, 'P_18', 'hdh', 'hfj', 22, 'gdh', 'hdh', '1236586945', 'A-', '2024-08-01', '2025-05-08', 'No', 'Yes', 'Yes', 36, 1, 'Married', 149),
(126, 'P_19', 'hdh', 'hfj', 22, 'gdh', 'hdh', '1236586949', 'A-', '2024-08-01', '2025-05-08', 'No', 'Yes', 'Yes', 36, 1, 'Married', 149),
(127, 'P_20', 'bdb', 'jdj', 22, 'hdj', 'hdh', '2222222222', 'A-', '2024-11-19', '2025-08-26', 'No', 'Yes', 'Yes', 22, 1, 'Married', 149),
(128, 'PSJM0010', 'bdb', 'jdj', 22, 'hdj', 'hdh', '2222222221', 'A-', '2024-11-19', '2025-08-26', 'No', 'Yes', 'Yes', 22, 1, 'Married', 149);

-- --------------------------------------------------------

--
-- Table structure for table `patient_alerting`
--

CREATE TABLE `patient_alerting` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `alert_message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_acknowledged` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_alerting`
--

INSERT INTO `patient_alerting` (`id`, `patient_id`, `alert_message`, `created_at`, `is_acknowledged`) VALUES
(1, 'PSJM0001', 'This is a test alert message.', '2024-10-05 08:15:25', 1),
(2, 'PSJM0003', 'Do it', '2024-10-05 08:15:38', 1),
(3, 'PSJM0002', 'Do', '2024-10-05 08:15:52', 1),
(4, 'PSJM0002', 'Do exercise', '2024-10-07 03:58:04', 1),
(5, 'PSJM0005', 'Do exercise ', '2024-10-20 18:03:54', 1),
(6, 'PSJM0001', 'Do questions', '2024-10-23 20:35:59', 1),
(7, 'PSJM0001', 'Pl', '2024-10-23 20:41:35', 1),
(8, 'PSJM0001', 'Hw', '2024-10-23 20:42:44', 1),
(9, 'PSJM0001', 'F', '2024-10-23 20:43:52', 1),
(10, 'PSJM0005', 'Do exwrcise', '2024-10-24 08:57:46', 0),
(11, 'PSJM0006', 'Kindly doo exercise regularly', '2024-10-25 19:55:59', 0),
(12, 'PSJM0006', 'Kindly do exercise daily', '2024-10-26 04:45:19', 0),
(13, 'PSJM0001', 'Please do Blood tests and submit reports', '2024-11-03 10:01:17', 1),
(14, 'PSJM0001', 'Do exercise oa', '2024-11-04 20:13:02', 1),
(15, 'PSJM0002', 'Please do exercise', '2024-11-05 05:54:23', 1),
(16, 'PSJM0002', 'do exercise', '2024-11-16 10:39:57', 1),
(17, 'PSJM0001', 'do exercise ', '2024-11-16 18:41:08', 0),
(18, 'PSJM0001', 'do ', '2024-11-16 18:41:20', 0),
(19, 'PSJM0001', 'Please Do exercise daily', '2024-11-17 23:42:57', 0),
(20, 'PSJM0001', 'do exercise', '2024-11-17 23:43:45', 0),
(21, 'PSJM0001', 'do exercise,hrjsknsnsb', '2024-11-17 23:44:05', 0),
(22, 'PSJM0001', 'do exercise,hrjsknsnsbbdjskms xbe', '2024-11-17 23:44:10', 0),
(23, 'PSJM0001', 'do exercise', '2024-11-17 23:45:47', 0),
(24, 'PSJM0001', 'jdj', '2024-11-17 23:46:34', 0),
(25, 'PSJM0010', 'Please do exercise', '2024-11-19 19:38:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient_alerts`
--

CREATE TABLE `patient_alerts` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `alert_id` int(11) NOT NULL,
  `is_acknowledged` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_alerts`
--

INSERT INTO `patient_alerts` (`id`, `patient_id`, `alert_id`, `is_acknowledged`) VALUES
(3, 'PSJM0002', 2, 1),
(4, 'PSJM0001', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_answers`
--

CREATE TABLE `patient_answers` (
  `answer_id` int(11) NOT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text DEFAULT NULL,
  `answer_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_answers`
--

INSERT INTO `patient_answers` (`answer_id`, `patient_id`, `question_id`, `answer`, `answer_date`) VALUES
(1, 'PSJM0002', 1, 'no', '2024-11-16'),
(2, 'PSJM0002', 2, 'no', '2024-11-16'),
(3, 'PSJM0002', 7, 'no', '2024-11-16'),
(4, 'PSJM0002', 9, 'no', '2024-11-16'),
(5, 'PSJM0002', 10, 'no', '2024-11-16'),
(6, 'PSJM0002', 13, 'no', '2024-11-16'),
(7, 'PSJM0002', 14, 'no', '2024-11-16'),
(8, 'PSJM0002', 15, 'no', '2024-11-16'),
(9, 'PSJM0002', 16, 'no', '2024-11-16'),
(10, 'PSJM0002', 17, 'no', '2024-11-16'),
(11, 'PSJM0002', 12, 'no', '2024-11-16'),
(12, 'PSJM0002', 5, 'no', '2024-11-16'),
(13, 'PSJM0002', 6, 'no', '2024-11-16'),
(14, 'PSJM0002', 8, 'no', '2024-11-16'),
(15, 'PSJM0002', 19, 'no', '2024-11-16'),
(16, 'PSJM0002', 1, 'no', '2024-11-16'),
(17, 'PSJM0002', 2, 'no', '2024-11-16'),
(18, 'PSJM0002', 7, 'no', '2024-11-16'),
(19, 'PSJM0002', 9, 'no', '2024-11-16'),
(20, 'PSJM0002', 10, 'no', '2024-11-16'),
(21, 'PSJM0002', 13, 'no', '2024-11-16'),
(22, 'PSJM0002', 14, 'no', '2024-11-16'),
(23, 'PSJM0002', 15, 'no', '2024-11-16'),
(24, 'PSJM0002', 16, 'no', '2024-11-16'),
(25, 'PSJM0002', 17, 'no', '2024-11-16'),
(26, 'PSJM0002', 12, 'no', '2024-11-16'),
(27, 'PSJM0002', 5, 'no', '2024-11-16'),
(28, 'PSJM0002', 6, 'no', '2024-11-16'),
(29, 'PSJM0002', 8, 'no', '2024-11-16'),
(30, 'PSJM0002', 19, 'no', '2024-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `patient_monthly_exercise`
--

CREATE TABLE `patient_monthly_exercise` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(10) NOT NULL,
  `lmp_date` date NOT NULL,
  `exercise_year` int(11) NOT NULL,
  `exercise_month` int(11) NOT NULL,
  `exercise_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_monthly_exercise`
--

INSERT INTO `patient_monthly_exercise` (`id`, `patient_id`, `lmp_date`, `exercise_year`, `exercise_month`, `exercise_days`) VALUES
(1, 'PSJM0002', '2024-08-05', 2024, 10, 4),
(3, 'PSJM0002', '2024-08-05', 2024, 9, 20),
(4, 'PSJM0005', '2024-06-21', 2024, 7, 9),
(21, 'PSJM0002', '2024-08-05', 2024, 8, 20),
(31, 'PSJM0006', '2024-09-25', 2024, 10, 1),
(32, 'PSJM0001', '2024-06-26', 2024, 10, 1),
(44, 'PSJM0008', '2024-11-09', 2024, 11, 1),
(49, 'PSJM0002', '2024-08-12', 2024, 11, 2),
(64, 'PSJM0001', '2024-08-17', 2024, 11, 1),
(73, 'PSJM0010', '2024-11-19', 2024, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_profiles`
--

CREATE TABLE `patient_profiles` (
  `patient_id` varchar(50) NOT NULL,
  `profile_photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_profiles`
--

INSERT INTO `patient_profiles` (`patient_id`, `profile_photo`, `created_at`) VALUES
('PSJM0001', 'http://192.168.143.248/eeruyir/uploads/profile/PSJM0001.jpg', '2024-11-17 23:14:09'),
('PSJM0002', 'http://192.168.143.248/eeruyir/uploads/profile/PSJM0002.jpg', '2024-11-19 10:54:55'),
('PSJM0003', 'uploads/profile/PSJM0003.png', '2024-11-17 21:38:30'),
('PSJM0006', 'uploads/profile/PSJM0006.png', '2024-11-17 20:44:48'),
('PSJM0008', 'http://192.168.143.248/eeruyir/uploads/profile/PSJM0008.jpg', '2024-11-19 10:54:12'),
('PSJM0009', 'uploads/profile/PSJM0009.png', '2024-11-17 20:42:37'),
('PSJM0010', 'http://192.168.143.248/eeruyir/uploads/profile/PSJM0010.jpg', '2024-11-19 18:15:31'),
('PSJM0011', 'uploads/profile/PSJM0011.png', '2024-11-17 20:42:51'),
('PSJM0019', 'http://192.168.143.248/eeruyir/uploads/profile/PSJM0019.png', '2024-11-18 09:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `patient_responses`
--

CREATE TABLE `patient_responses` (
  `id` int(11) NOT NULL,
  `patientId` varchar(100) DEFAULT NULL,
  `questionId` int(11) NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `categoryId` int(11) DEFAULT NULL,
  `eligibleStatus` enum('Eligible','Not Eligible') DEFAULT 'Not Eligible'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_responses`
--

INSERT INTO `patient_responses` (`id`, `patientId`, `questionId`, `answer`, `created_at`, `categoryId`, `eligibleStatus`) VALUES
(1, 'P_54', 1, 'no', '2024-11-12 04:50:07', 1, 'Not Eligible'),
(2, 'P_54', 2, 'p', '2024-11-12 04:50:07', 1, 'Not Eligible'),
(3, 'P_54', 3, 'no', '2024-11-12 04:50:07', 1, 'Not Eligible'),
(4, 'P_54', 4, 'no', '2024-11-12 04:50:07', 1, 'Not Eligible'),
(5, 'P_54', 5, 'no', '2024-11-12 04:50:07', 1, 'Not Eligible'),
(6, 'P_54', 6, 'no', '2024-11-12 04:50:07', 1, 'Not Eligible'),
(7, 'P_54', 7, 'mk', '2024-11-12 04:50:11', 1, 'Not Eligible'),
(8, 'P_54', 8, 'no', '2024-11-12 04:50:11', 1, 'Not Eligible'),
(9, 'P_54', 9, 'no', '2024-11-12 04:50:11', 1, 'Not Eligible'),
(10, 'P_54', 10, 'no', '2024-11-12 04:50:11', 1, 'Not Eligible'),
(11, 'P_54', 11, 'no', '2024-11-12 04:50:11', 1, 'Not Eligible'),
(12, 'P_54', 12, 'jxk', '2024-11-12 04:50:11', 1, 'Not Eligible'),
(13, 'P_54', 13, 'no', '2024-11-12 04:50:18', 1, 'Not Eligible'),
(14, 'P_54', 14, 'no', '2024-11-12 04:50:18', 1, 'Not Eligible'),
(15, 'P_54', 15, 'no', '2024-11-12 04:50:18', 1, 'Not Eligible'),
(16, 'P_54', 16, 'no', '2024-11-12 04:50:18', 1, 'Not Eligible'),
(17, 'P_54', 17, 'no', '2024-11-12 04:50:18', 1, 'Not Eligible'),
(18, 'P_54', 18, 'no', '2024-11-12 04:50:18', 1, 'Not Eligible'),
(19, 'P_54', 19, 'jxj', '2024-11-12 04:50:18', 1, 'Not Eligible'),
(20, 'P_54', 20, 'no', '2024-11-12 04:50:22', 2, 'Not Eligible'),
(21, 'P_54', 21, 'no', '2024-11-12 04:50:22', 2, 'Not Eligible'),
(22, 'P_54', 22, 'no', '2024-11-12 04:50:22', 2, 'Not Eligible'),
(23, 'P_54', 23, 'no', '2024-11-12 04:50:22', 2, 'Not Eligible'),
(24, 'P_54', 24, 'no', '2024-11-12 04:50:22', 2, 'Not Eligible'),
(25, 'P_54', 25, 'no', '2024-11-12 04:50:22', 2, 'Not Eligible'),
(26, 'P_54', 26, 'no', '2024-11-12 04:50:28', 2, 'Not Eligible'),
(27, 'P_54', 27, 'no', '2024-11-12 04:50:28', 2, 'Not Eligible'),
(28, 'P_54', 28, 'no', '2024-11-12 04:50:28', 2, 'Not Eligible'),
(29, 'P_54', 29, 'no', '2024-11-12 04:50:28', 2, 'Not Eligible'),
(30, 'P_54', 30, 'no', '2024-11-12 04:50:28', 2, 'Not Eligible'),
(31, 'P_54', 31, 'jxk', '2024-11-12 04:50:28', 2, 'Not Eligible'),
(32, 'P_54', 32, 'no', '2024-11-12 04:50:35', 3, 'Not Eligible'),
(33, 'P_54', 33, 'no', '2024-11-12 04:50:35', 3, 'Not Eligible'),
(34, 'P_54', 34, 'no', '2024-11-12 04:50:35', 3, 'Not Eligible'),
(35, 'P_54', 35, 'no', '2024-11-12 04:50:35', 3, 'Not Eligible'),
(36, 'P_54', 36, 'no', '2024-11-12 04:50:35', 3, 'Not Eligible'),
(37, 'P_54', 37, 'no', '2024-11-12 04:50:35', 3, 'Not Eligible'),
(38, 'P_54', 38, 'mk', '2024-11-12 04:50:35', 3, 'Not Eligible'),
(39, 'P_54', 39, 'no', '2024-11-12 04:50:38', 4, 'Not Eligible'),
(40, 'P_54', 40, 'p', '2024-11-12 04:50:38', 4, 'Not Eligible'),
(41, 'P_15', 1, 'no', '2024-11-12 05:07:04', 1, 'Not Eligible'),
(42, 'P_15', 2, 'p', '2024-11-12 05:07:04', 1, 'Not Eligible'),
(43, 'P_15', 3, 'no', '2024-11-12 05:07:04', 1, 'Not Eligible'),
(44, 'P_15', 4, 'no', '2024-11-12 05:07:04', 1, 'Not Eligible'),
(45, 'P_15', 5, 'no', '2024-11-12 05:07:04', 1, 'Not Eligible'),
(46, 'P_15', 6, 'no', '2024-11-12 05:07:04', 1, 'Not Eligible'),
(47, 'P_15', 7, 'fun', '2024-11-12 05:07:14', 1, 'Not Eligible'),
(48, 'P_15', 8, 'no', '2024-11-12 05:07:14', 1, 'Not Eligible'),
(49, 'P_15', 9, 'no', '2024-11-12 05:07:14', 1, 'Not Eligible'),
(50, 'P_15', 10, 'no', '2024-11-12 05:07:14', 1, 'Not Eligible'),
(51, 'P_15', 11, 'no', '2024-11-12 05:07:14', 1, 'Not Eligible'),
(52, 'P_15', 12, 'mak', '2024-11-12 05:07:14', 1, 'Not Eligible'),
(53, 'P_15', 13, 'no', '2024-11-12 05:07:21', 1, 'Not Eligible'),
(54, 'P_15', 14, 'no', '2024-11-12 05:07:21', 1, 'Not Eligible'),
(55, 'P_15', 15, 'no', '2024-11-12 05:07:21', 1, 'Not Eligible'),
(56, 'P_15', 16, 'no', '2024-11-12 05:07:21', 1, 'Not Eligible'),
(57, 'P_15', 17, 'no', '2024-11-12 05:07:21', 1, 'Not Eligible'),
(58, 'P_15', 18, 'no', '2024-11-12 05:07:21', 1, 'Not Eligible'),
(59, 'P_15', 19, 'ndj', '2024-11-12 05:07:21', 1, 'Not Eligible'),
(60, 'P_15', 20, 'no', '2024-11-12 05:07:25', 2, 'Not Eligible'),
(61, 'P_15', 21, 'no', '2024-11-12 05:07:25', 2, 'Not Eligible'),
(62, 'P_15', 22, 'no', '2024-11-12 05:07:25', 2, 'Not Eligible'),
(63, 'P_15', 23, 'no', '2024-11-12 05:07:25', 2, 'Not Eligible'),
(64, 'P_15', 24, 'no', '2024-11-12 05:07:25', 2, 'Not Eligible'),
(65, 'P_15', 25, 'no', '2024-11-12 05:07:25', 2, 'Not Eligible'),
(66, 'P_15', 26, 'no', '2024-11-12 05:07:39', 2, 'Not Eligible'),
(67, 'P_15', 27, 'no', '2024-11-12 05:07:39', 2, 'Not Eligible'),
(68, 'P_15', 28, 'no', '2024-11-12 05:07:39', 2, 'Not Eligible'),
(69, 'P_15', 29, 'no', '2024-11-12 05:07:39', 2, 'Not Eligible'),
(70, 'P_15', 30, 'no', '2024-11-12 05:07:39', 2, 'Not Eligible'),
(71, 'P_15', 31, 'mak', '2024-11-12 05:07:39', 2, 'Not Eligible'),
(72, 'P_15', 32, 'no', '2024-11-12 05:07:46', 3, 'Not Eligible'),
(73, 'P_15', 33, 'no', '2024-11-12 05:07:46', 3, 'Not Eligible'),
(74, 'P_15', 34, 'no', '2024-11-12 05:07:46', 3, 'Not Eligible'),
(75, 'P_15', 35, 'no', '2024-11-12 05:07:46', 3, 'Not Eligible'),
(76, 'P_15', 36, 'no', '2024-11-12 05:07:46', 3, 'Not Eligible'),
(77, 'P_15', 37, 'no', '2024-11-12 05:07:46', 3, 'Not Eligible'),
(78, 'P_15', 38, 'fun', '2024-11-12 05:07:46', 3, 'Not Eligible'),
(79, 'P_15', 39, 'no', '2024-11-12 05:07:49', 4, 'Not Eligible'),
(80, 'P_15', 40, 'p', '2024-11-12 05:07:49', 4, 'Not Eligible'),
(81, 'P_16', 1, 'no', '2024-11-12 05:28:23', 1, 'Not Eligible'),
(82, 'P_16', 2, 'no', '2024-11-12 05:28:23', 1, 'Not Eligible'),
(83, 'P_16', 3, 'no', '2024-11-12 05:28:23', 1, 'Not Eligible'),
(84, 'P_16', 4, 'no', '2024-11-12 05:28:23', 1, 'Not Eligible'),
(85, 'P_16', 5, 'no', '2024-11-12 05:28:23', 1, 'Not Eligible'),
(86, 'P_16', 6, 'no', '2024-11-12 05:28:23', 1, 'Not Eligible'),
(87, 'P_16', 7, 'no', '2024-11-12 05:28:27', 1, 'Not Eligible'),
(88, 'P_16', 8, 'no', '2024-11-12 05:28:27', 1, 'Not Eligible'),
(89, 'P_16', 9, 'no', '2024-11-12 05:28:27', 1, 'Not Eligible'),
(90, 'P_16', 10, 'no', '2024-11-12 05:28:27', 1, 'Not Eligible'),
(91, 'P_16', 11, 'no', '2024-11-12 05:28:27', 1, 'Not Eligible'),
(92, 'P_16', 12, 'cnj', '2024-11-12 05:28:27', 1, 'Not Eligible'),
(93, 'P_16', 13, 'no', '2024-11-12 05:28:35', 1, 'Not Eligible'),
(94, 'P_16', 14, 'no', '2024-11-12 05:28:35', 1, 'Not Eligible'),
(95, 'P_16', 15, 'no', '2024-11-12 05:28:35', 1, 'Not Eligible'),
(96, 'P_16', 16, 'no', '2024-11-12 05:28:35', 1, 'Not Eligible'),
(97, 'P_16', 17, 'no', '2024-11-12 05:28:35', 1, 'Not Eligible'),
(98, 'P_16', 18, 'no', '2024-11-12 05:28:35', 1, 'Not Eligible'),
(99, 'P_16', 19, 'no', '2024-11-12 05:28:35', 1, 'Not Eligible'),
(100, 'P_16', 20, 'no', '2024-11-12 05:28:39', 2, 'Not Eligible'),
(101, 'P_16', 21, 'no', '2024-11-12 05:28:39', 2, 'Not Eligible'),
(102, 'P_16', 22, 'no', '2024-11-12 05:28:39', 2, 'Not Eligible'),
(103, 'P_16', 23, 'no', '2024-11-12 05:28:39', 2, 'Not Eligible'),
(104, 'P_16', 24, 'no', '2024-11-12 05:28:39', 2, 'Not Eligible'),
(105, 'P_16', 25, 'no', '2024-11-12 05:28:39', 2, 'Not Eligible'),
(106, 'P_16', 26, 'no', '2024-11-12 05:28:45', 2, 'Not Eligible'),
(107, 'P_16', 27, 'no', '2024-11-12 05:28:45', 2, 'Not Eligible'),
(108, 'P_16', 28, 'no', '2024-11-12 05:28:45', 2, 'Not Eligible'),
(109, 'P_16', 29, 'no', '2024-11-12 05:28:45', 2, 'Not Eligible'),
(110, 'P_16', 30, 'no', '2024-11-12 05:28:45', 2, 'Not Eligible'),
(111, 'P_16', 31, 'cnj', '2024-11-12 05:28:45', 2, 'Not Eligible'),
(112, 'P_16', 32, 'no', '2024-11-12 05:28:52', 3, 'Not Eligible'),
(113, 'P_16', 33, 'no', '2024-11-12 05:28:52', 3, 'Not Eligible'),
(114, 'P_16', 34, 'no', '2024-11-12 05:28:52', 3, 'Not Eligible'),
(115, 'P_16', 35, 'no', '2024-11-12 05:28:52', 3, 'Not Eligible'),
(116, 'P_16', 36, 'no', '2024-11-12 05:28:52', 3, 'Not Eligible'),
(117, 'P_16', 37, 'no', '2024-11-12 05:28:52', 3, 'Not Eligible'),
(118, 'P_16', 38, 'no', '2024-11-12 05:28:52', 3, 'Not Eligible'),
(119, 'P_16', 39, 'no', '2024-11-12 05:28:55', 4, 'Not Eligible'),
(120, 'P_16', 40, 'no', '2024-11-12 05:28:55', 4, 'Not Eligible'),
(121, 'P_17', 1, 'no', '2024-11-19 10:19:56', 1, 'Not Eligible'),
(122, 'P_17', 2, 'no', '2024-11-19 10:19:56', 1, 'Not Eligible'),
(123, 'P_17', 3, 'no', '2024-11-19 10:19:56', 1, 'Not Eligible'),
(124, 'P_17', 4, 'no', '2024-11-19 10:19:56', 1, 'Not Eligible'),
(125, 'P_17', 5, 'no', '2024-11-19 10:19:56', 1, 'Not Eligible'),
(126, 'P_17', 6, 'no', '2024-11-19 10:19:56', 1, 'Not Eligible'),
(127, 'P_17', 7, 'no', '2024-11-19 10:20:00', 1, 'Not Eligible'),
(128, 'P_17', 8, 'no', '2024-11-19 10:20:00', 1, 'Not Eligible'),
(129, 'P_17', 9, 'no', '2024-11-19 10:20:00', 1, 'Not Eligible'),
(130, 'P_17', 10, 'no', '2024-11-19 10:20:00', 1, 'Not Eligible'),
(131, 'P_17', 11, 'no', '2024-11-19 10:20:00', 1, 'Not Eligible'),
(132, 'P_17', 12, 'no', '2024-11-19 10:20:00', 1, 'Not Eligible'),
(133, 'P_17', 13, 'no', '2024-11-19 10:20:06', 1, 'Not Eligible'),
(134, 'P_17', 14, 'no', '2024-11-19 10:20:06', 1, 'Not Eligible'),
(135, 'P_17', 15, 'no', '2024-11-19 10:20:06', 1, 'Not Eligible'),
(136, 'P_17', 16, 'no', '2024-11-19 10:20:06', 1, 'Not Eligible'),
(137, 'P_17', 17, 'no', '2024-11-19 10:20:06', 1, 'Not Eligible'),
(138, 'P_17', 18, 'no', '2024-11-19 10:20:06', 1, 'Not Eligible'),
(139, 'P_17', 19, 'no', '2024-11-19 10:20:06', 1, 'Not Eligible'),
(140, 'P_17', 20, 'no', '2024-11-19 10:20:09', 2, 'Not Eligible'),
(141, 'P_17', 21, 'no', '2024-11-19 10:20:09', 2, 'Not Eligible'),
(142, 'P_17', 22, 'no', '2024-11-19 10:20:09', 2, 'Not Eligible'),
(143, 'P_17', 23, 'no', '2024-11-19 10:20:09', 2, 'Not Eligible'),
(144, 'P_17', 24, 'no', '2024-11-19 10:20:09', 2, 'Not Eligible'),
(145, 'P_17', 25, 'no', '2024-11-19 10:20:09', 2, 'Not Eligible'),
(146, 'P_17', 26, 'no', '2024-11-19 10:20:13', 2, 'Not Eligible'),
(147, 'P_17', 27, 'no', '2024-11-19 10:20:13', 2, 'Not Eligible'),
(148, 'P_17', 28, 'no', '2024-11-19 10:20:13', 2, 'Not Eligible'),
(149, 'P_17', 29, 'no', '2024-11-19 10:20:13', 2, 'Not Eligible'),
(150, 'P_17', 30, 'no', '2024-11-19 10:20:13', 2, 'Not Eligible'),
(151, 'P_17', 31, 'no', '2024-11-19 10:20:13', 2, 'Not Eligible'),
(152, 'P_17', 32, 'no', '2024-11-19 10:20:19', 3, 'Not Eligible'),
(153, 'P_17', 33, 'no', '2024-11-19 10:20:19', 3, 'Not Eligible'),
(154, 'P_17', 34, 'no', '2024-11-19 10:20:19', 3, 'Not Eligible'),
(155, 'P_17', 35, 'no', '2024-11-19 10:20:19', 3, 'Not Eligible'),
(156, 'P_17', 36, 'no', '2024-11-19 10:20:19', 3, 'Not Eligible'),
(157, 'P_17', 37, 'no', '2024-11-19 10:20:19', 3, 'Not Eligible'),
(158, 'P_17', 38, 'no', '2024-11-19 10:20:19', 3, 'Not Eligible'),
(159, 'P_17', 39, 'no', '2024-11-19 10:20:22', 4, 'Not Eligible'),
(160, 'P_17', 40, 'no', '2024-11-19 10:20:22', 4, 'Not Eligible'),
(161, 'P_20', 1, 'no', '2024-11-19 17:18:06', 1, 'Not Eligible'),
(162, 'P_20', 2, 'no', '2024-11-19 17:18:06', 1, 'Not Eligible'),
(163, 'P_20', 3, 'no', '2024-11-19 17:18:06', 1, 'Not Eligible'),
(164, 'P_20', 4, 'no', '2024-11-19 17:18:06', 1, 'Not Eligible'),
(165, 'P_20', 5, 'no', '2024-11-19 17:18:06', 1, 'Not Eligible'),
(166, 'P_20', 6, 'no', '2024-11-19 17:18:06', 1, 'Not Eligible'),
(167, 'P_21', 1, 'no', '2024-11-19 17:18:40', 1, 'Not Eligible'),
(168, 'P_21', 2, 'hud', '2024-11-19 17:18:40', 1, 'Not Eligible'),
(169, 'P_21', 3, 'no', '2024-11-19 17:18:40', 1, 'Not Eligible'),
(170, 'P_21', 4, 'no', '2024-11-19 17:18:40', 1, 'Not Eligible'),
(171, 'P_21', 5, 'no', '2024-11-19 17:18:40', 1, 'Not Eligible'),
(172, 'P_21', 6, 'no', '2024-11-19 17:18:40', 1, 'Not Eligible'),
(173, 'P_21', 7, 'jck', '2024-11-19 17:18:45', 1, 'Not Eligible'),
(174, 'P_21', 8, 'no', '2024-11-19 17:18:45', 1, 'Not Eligible'),
(175, 'P_21', 9, 'no', '2024-11-19 17:18:45', 1, 'Not Eligible'),
(176, 'P_21', 10, 'no', '2024-11-19 17:18:45', 1, 'Not Eligible'),
(177, 'P_21', 11, 'no', '2024-11-19 17:18:45', 1, 'Not Eligible'),
(178, 'P_21', 12, 'bcj', '2024-11-19 17:18:45', 1, 'Not Eligible'),
(179, 'P_21', 13, 'no', '2024-11-19 17:18:52', 1, 'Not Eligible'),
(180, 'P_21', 14, 'no', '2024-11-19 17:18:52', 1, 'Not Eligible'),
(181, 'P_21', 15, 'no', '2024-11-19 17:18:52', 1, 'Not Eligible'),
(182, 'P_21', 16, 'no', '2024-11-19 17:18:52', 1, 'Not Eligible'),
(183, 'P_21', 17, 'no', '2024-11-19 17:18:52', 1, 'Not Eligible'),
(184, 'P_21', 18, 'no', '2024-11-19 17:18:52', 1, 'Not Eligible'),
(185, 'P_21', 19, 'jxj', '2024-11-19 17:18:52', 1, 'Not Eligible'),
(186, 'P_21', 20, 'no', '2024-11-19 17:18:55', 2, 'Not Eligible'),
(187, 'P_21', 21, 'no', '2024-11-19 17:18:55', 2, 'Not Eligible'),
(188, 'P_21', 22, 'no', '2024-11-19 17:18:55', 2, 'Not Eligible'),
(189, 'P_21', 23, 'no', '2024-11-19 17:18:55', 2, 'Not Eligible'),
(190, 'P_21', 24, 'no', '2024-11-19 17:18:55', 2, 'Not Eligible'),
(191, 'P_21', 25, 'no', '2024-11-19 17:18:55', 2, 'Not Eligible'),
(192, 'P_21', 26, 'no', '2024-11-19 17:19:03', 2, 'Not Eligible'),
(193, 'P_21', 27, 'no', '2024-11-19 17:19:03', 2, 'Not Eligible'),
(194, 'P_21', 28, 'no', '2024-11-19 17:19:03', 2, 'Not Eligible'),
(195, 'P_21', 29, 'no', '2024-11-19 17:19:03', 2, 'Not Eligible'),
(196, 'P_21', 30, 'no', '2024-11-19 17:19:03', 2, 'Not Eligible'),
(197, 'P_21', 31, 'bcj', '2024-11-19 17:19:03', 2, 'Not Eligible'),
(198, 'P_21', 32, 'no', '2024-11-19 17:19:09', 3, 'Not Eligible'),
(199, 'P_21', 33, 'no', '2024-11-19 17:19:09', 3, 'Not Eligible'),
(200, 'P_21', 34, 'no', '2024-11-19 17:19:09', 3, 'Not Eligible'),
(201, 'P_21', 35, 'no', '2024-11-19 17:19:09', 3, 'Not Eligible'),
(202, 'P_21', 36, 'no', '2024-11-19 17:19:09', 3, 'Not Eligible'),
(203, 'P_21', 37, 'no', '2024-11-19 17:19:09', 3, 'Not Eligible'),
(204, 'P_21', 38, 'jck', '2024-11-19 17:19:09', 3, 'Not Eligible'),
(205, 'P_21', 39, 'no', '2024-11-19 17:19:12', 4, 'Not Eligible'),
(206, 'P_21', 40, 'hud', '2024-11-19 17:19:12', 4, 'Not Eligible');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `question` text NOT NULL,
  `sub_question` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `category_id`, `question`, `sub_question`) VALUES
(0, 1, 'Enter the Height', NULL),
(1, 1, 'Have you had /Are you experiencing APH in current pregnancy?', 'Bleeding from the vagina after 20 weeks and before labour'),
(2, 1, 'Have your doctor told you/does your ECHO findings suggests Heart disease in current pregnancy?', NULL),
(3, 1, 'Is this a Multiple pregnancy (e.g., twins, etc)', NULL),
(4, 1, 'Diabetes complicating pregnancy (first time diagnosed with increased sugar level or currently on any medication for diabetes)', NULL),
(5, 1, 'Do you have Hypertension(increased bp) in current pregnancy', NULL),
(6, 1, 'Have you had C section in your previous pregnancy?', NULL),
(7, 1, 'Have your doctor told you that you are having Anemia/does your blood tests suggest that you have anemia? (decreased hemoglobin)', NULL),
(8, 1, 'Do you have Seizure disorder (i.e., fits) in current pregnancy?', NULL),
(9, 1, 'Do you have Hypothyroid in current pregnancy?', NULL),
(10, 1, 'Do you have Hyperthyroid in current pregnancy?', NULL),
(11, 1, 'Did you doctor say the length of your cervix is short? (cervical incompetence)', NULL),
(12, 1, 'Have they put a stitch in cervix in current pregnancy?', NULL),
(13, 1, 'Confirm whether your scan findings mentioned or if your doctor informed you about the possibility of your baby being an anomalous fetus (abnormal baby):', NULL),
(14, 1, 'Do you have Jaundice in current pregnancy?', NULL),
(15, 1, 'Do you have Active TB infection in current pregnancy?', NULL),
(16, 1, 'Do you have ANY LIVER DISEASE in current pregnancy?', NULL),
(17, 1, 'Do you have ANY AUTO IMMUNE DISORDER (Eg: SLE, APLA, Rheumatoid arthritis, etc) in current pregnancy?', NULL),
(18, 1, 'Has your doctor told that your water level has increased or decreased?', NULL),
(19, 1, 'Others, specify any other disease that has not been mentioned above:', NULL),
(20, 2, 'Do you have Diabetes?', NULL),
(21, 2, 'Do you have Hypertension?', NULL),
(22, 2, 'Do you have Heart disease?', NULL),
(23, 2, 'Do you have Thyroid disorder?', NULL),
(24, 2, 'Do you have Seizure disorder?', NULL),
(25, 2, 'Do you have ASTHMA?', NULL),
(26, 2, 'Do you have Psychiatric disorder?', NULL),
(27, 2, 'Do you have HISTORY OF TB infection?', NULL),
(28, 2, 'Do you have ANY AUTOIMMUNE DISORDER (Eg: SLE, APLA, Rheumatoid arthritis, etc)?', NULL),
(29, 2, 'Any history of polio attack? If yes, mention if there is any weakness in lower limb?', NULL),
(30, 2, 'Do you have any weakness in the lower limb? If yes, do not show videos', NULL),
(31, 2, 'Others, specify any other disease that has not been mentioned above:', NULL),
(32, 3, 'Any surgery done in the lungs or heart?', NULL),
(33, 3, 'Any abdominal surgeries done in the past?', NULL),
(34, 3, 'Any pelvic surgeries done in the past?', NULL),
(35, 3, 'Any history of spine surgeries done in the past?', NULL),
(36, 3, 'Any history of any surgeries in the knee, leg (which may cause difficulty during delivery)?', NULL),
(37, 3, 'Have they put a stitch in cervix? Yes or no', NULL),
(38, 3, 'Others, specify any other disease that has not been mentioned above:', NULL),
(39, 4, 'Any trauma to the pelvic region, abdomen, leg in this pregnancy?', NULL),
(40, 4, 'Any other disease out of this?', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_schedule`
--

CREATE TABLE `question_schedule` (
  `schedule_id` int(11) NOT NULL,
  `patient_id` varchar(10) NOT NULL,
  `question_id` int(11) NOT NULL,
  `scheduled_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_schedule`
--

INSERT INTO `question_schedule` (`schedule_id`, `patient_id`, `question_id`, `scheduled_date`) VALUES
(0, 'PSJM0002', 0, '2024-03-24'),
(0, 'PSJM0002', 0, '2024-04-24'),
(0, 'PSJM0002', 0, '2024-05-24'),
(0, 'PSJM0002', 0, '2024-06-24'),
(0, 'PSJM0002', 0, '2024-07-24'),
(0, 'PSJM0002', 0, '2024-08-24'),
(0, 'PSJM0002', 0, '2024-09-24'),
(0, 'PSJM0002', 0, '2024-10-24'),
(0, 'PSJM0002', 0, '2024-11-24'),
(0, 'PSJM0002', 0, '2024-12-24'),
(0, 'PSJM0002', 0, '2025-01-24'),
(0, 'PSJM0002', 0, '2025-02-24'),
(0, 'PSJM0002', 2, '2024-03-24'),
(0, 'PSJM0002', 2, '2024-04-24'),
(0, 'PSJM0002', 2, '2024-05-24'),
(0, 'PSJM0002', 2, '2024-06-24'),
(0, 'PSJM0002', 2, '2024-07-24'),
(0, 'PSJM0002', 2, '2024-08-24'),
(0, 'PSJM0002', 2, '2024-09-24'),
(0, 'PSJM0002', 2, '2024-10-24'),
(0, 'PSJM0002', 2, '2024-11-24'),
(0, 'PSJM0002', 2, '2024-12-24'),
(0, 'PSJM0002', 2, '2025-01-24'),
(0, 'PSJM0002', 2, '2025-02-24'),
(0, 'PSJM0002', 4, '2024-03-24'),
(0, 'PSJM0002', 4, '2024-04-24'),
(0, 'PSJM0002', 4, '2024-05-24'),
(0, 'PSJM0002', 4, '2024-06-24'),
(0, 'PSJM0002', 4, '2024-07-24'),
(0, 'PSJM0002', 4, '2024-08-24'),
(0, 'PSJM0002', 4, '2024-09-24'),
(0, 'PSJM0002', 4, '2024-10-24'),
(0, 'PSJM0002', 4, '2024-11-24'),
(0, 'PSJM0002', 4, '2024-12-24'),
(0, 'PSJM0002', 4, '2025-01-24'),
(0, 'PSJM0002', 4, '2025-02-24'),
(0, 'PSJM0002', 7, '2024-03-24'),
(0, 'PSJM0002', 7, '2024-04-24'),
(0, 'PSJM0002', 7, '2024-05-24'),
(0, 'PSJM0002', 7, '2024-06-24'),
(0, 'PSJM0002', 7, '2024-07-24'),
(0, 'PSJM0002', 7, '2024-08-24'),
(0, 'PSJM0002', 7, '2024-09-24'),
(0, 'PSJM0002', 7, '2024-10-24'),
(0, 'PSJM0002', 7, '2024-11-24'),
(0, 'PSJM0002', 7, '2024-12-24'),
(0, 'PSJM0002', 7, '2025-01-24'),
(0, 'PSJM0002', 7, '2025-02-24'),
(0, 'PSJM0002', 9, '2024-03-24'),
(0, 'PSJM0002', 9, '2024-04-24'),
(0, 'PSJM0002', 9, '2024-05-24'),
(0, 'PSJM0002', 9, '2024-06-24'),
(0, 'PSJM0002', 9, '2024-07-24'),
(0, 'PSJM0002', 9, '2024-08-24'),
(0, 'PSJM0002', 9, '2024-09-24'),
(0, 'PSJM0002', 9, '2024-10-24'),
(0, 'PSJM0002', 9, '2024-11-24'),
(0, 'PSJM0002', 9, '2024-12-24'),
(0, 'PSJM0002', 9, '2025-01-24'),
(0, 'PSJM0002', 9, '2025-02-24'),
(0, 'PSJM0002', 10, '2024-03-24'),
(0, 'PSJM0002', 10, '2024-04-24'),
(0, 'PSJM0002', 10, '2024-05-24'),
(0, 'PSJM0002', 10, '2024-06-24'),
(0, 'PSJM0002', 10, '2024-07-24'),
(0, 'PSJM0002', 10, '2024-08-24'),
(0, 'PSJM0002', 10, '2024-09-24'),
(0, 'PSJM0002', 10, '2024-10-24'),
(0, 'PSJM0002', 10, '2024-11-24'),
(0, 'PSJM0002', 10, '2024-12-24'),
(0, 'PSJM0002', 10, '2025-01-24'),
(0, 'PSJM0002', 10, '2025-02-24'),
(0, 'PSJM0002', 13, '2024-03-24'),
(0, 'PSJM0002', 13, '2024-04-24'),
(0, 'PSJM0002', 13, '2024-05-24'),
(0, 'PSJM0002', 13, '2024-06-24'),
(0, 'PSJM0002', 13, '2024-07-24'),
(0, 'PSJM0002', 13, '2024-08-24'),
(0, 'PSJM0002', 13, '2024-09-24'),
(0, 'PSJM0002', 13, '2024-10-24'),
(0, 'PSJM0002', 13, '2024-11-24'),
(0, 'PSJM0002', 13, '2024-12-24'),
(0, 'PSJM0002', 13, '2025-01-24'),
(0, 'PSJM0002', 13, '2025-02-24'),
(0, 'PSJM0002', 14, '2024-03-24'),
(0, 'PSJM0002', 14, '2024-04-24'),
(0, 'PSJM0002', 14, '2024-05-24'),
(0, 'PSJM0002', 14, '2024-06-24'),
(0, 'PSJM0002', 14, '2024-07-24'),
(0, 'PSJM0002', 14, '2024-08-24'),
(0, 'PSJM0002', 14, '2024-09-24'),
(0, 'PSJM0002', 14, '2024-10-24'),
(0, 'PSJM0002', 14, '2024-11-24'),
(0, 'PSJM0002', 14, '2024-12-24'),
(0, 'PSJM0002', 14, '2025-01-24'),
(0, 'PSJM0002', 14, '2025-02-24'),
(0, 'PSJM0002', 15, '2024-03-24'),
(0, 'PSJM0002', 15, '2024-04-24'),
(0, 'PSJM0002', 15, '2024-05-24'),
(0, 'PSJM0002', 15, '2024-06-24'),
(0, 'PSJM0002', 15, '2024-07-24'),
(0, 'PSJM0002', 15, '2024-08-24'),
(0, 'PSJM0002', 15, '2024-09-24'),
(0, 'PSJM0002', 15, '2024-10-24'),
(0, 'PSJM0002', 15, '2024-11-24'),
(0, 'PSJM0002', 15, '2024-12-24'),
(0, 'PSJM0002', 15, '2025-01-24'),
(0, 'PSJM0002', 15, '2025-02-24'),
(0, 'PSJM0002', 16, '2024-03-24'),
(0, 'PSJM0002', 16, '2024-04-24'),
(0, 'PSJM0002', 16, '2024-05-24'),
(0, 'PSJM0002', 16, '2024-06-24'),
(0, 'PSJM0002', 16, '2024-07-24'),
(0, 'PSJM0002', 16, '2024-08-24'),
(0, 'PSJM0002', 16, '2024-09-24'),
(0, 'PSJM0002', 16, '2024-10-24'),
(0, 'PSJM0002', 16, '2024-11-24'),
(0, 'PSJM0002', 16, '2024-12-24'),
(0, 'PSJM0002', 16, '2025-01-24'),
(0, 'PSJM0002', 16, '2025-02-24'),
(0, 'PSJM0002', 17, '2024-03-24'),
(0, 'PSJM0002', 17, '2024-04-24'),
(0, 'PSJM0002', 17, '2024-05-24'),
(0, 'PSJM0002', 17, '2024-06-24'),
(0, 'PSJM0002', 17, '2024-07-24'),
(0, 'PSJM0002', 17, '2024-08-24'),
(0, 'PSJM0002', 17, '2024-09-24'),
(0, 'PSJM0002', 17, '2024-10-24'),
(0, 'PSJM0002', 17, '2024-11-24'),
(0, 'PSJM0002', 17, '2024-12-24'),
(0, 'PSJM0002', 17, '2025-01-24'),
(0, 'PSJM0002', 17, '2025-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `scans`
--

CREATE TABLE `scans` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `alert_id` int(11) DEFAULT NULL,
  `months` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scans`
--

INSERT INTO `scans` (`id`, `patient_id`, `file_path`, `created_at`, `alert_id`, `months`) VALUES
(1, 'PSJM0002', 'uploads/a41494f2-fcde-47c5-bb6a-c8ee43aa43288460042827639587747.jpg', '2024-11-08 08:05:28', 0, 2),
(2, 'PSJM0002', 'uploads/45ddbb72-90cc-437e-8a8a-549cf7d113672493369900028281342.jpg', '2024-11-08 08:56:57', 0, 2),
(3, 'PSJM0002', 'uploads/8b58b9ba-4c84-41bb-b3ae-9608df8cfca16649009366614592838.jpg', '2024-11-12 18:02:09', 0, 3),
(4, 'PSJM0002', 'uploads/f25a460d-b26d-4787-b1ea-ada25a8d32e22613962009070351188.jpg', '2024-11-14 05:17:05', 0, 3),
(5, 'PSJM0002', 'uploads/111cb5e4-2d1b-4fdd-bf3e-fcff28224a0f7049903192588596023.jpg', '2024-11-14 05:17:46', 0, 3),
(6, 'PSJM0002', 'uploads/594b73c8-8baf-4735-bfd0-9db62e5e2cfa4837199204518259943.jpg', '2024-11-14 05:33:30', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `test_results`
--

CREATE TABLE `test_results` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(10) NOT NULL,
  `test_type` varchar(50) NOT NULL,
  `result` varchar(50) NOT NULL,
  `scan_image` blob DEFAULT NULL,
  `consulted_doctor` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trigger_debug_log`
--

CREATE TABLE `trigger_debug_log` (
  `id` int(11) NOT NULL,
  `new_patient_id` varchar(255) DEFAULT NULL,
  `new_phoneNumber` varchar(255) DEFAULT NULL,
  `update_attempts` int(11) DEFAULT NULL,
  `update_success` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trigger_debug_log`
--

INSERT INTO `trigger_debug_log` (`id`, `new_patient_id`, `new_phoneNumber`, `update_attempts`, `update_success`, `created_at`) VALUES
(1, 'PSJM0001', '7337268218', 1, 1, '2024-09-01 03:51:44'),
(2, 'PSJM0002', '6563695809', 1, 1, '2024-09-18 06:11:33'),
(3, 'PSJM0003', '1234567891', 0, 0, '2024-10-18 19:15:27'),
(4, 'P_06', '1122334455', 0, 0, '2024-10-18 19:23:29'),
(5, 'PSJM0004', '1122334455', 0, 0, '2024-10-18 19:27:53'),
(6, 'PSJM0005', '1144772255', 1, 1, '2024-10-18 19:39:10'),
(7, 'PSJM0005', '1144772255', 1, 1, '2024-10-18 19:53:38'),
(8, 'PSJM0006', '9909556425', 1, 1, '2024-10-25 18:28:55'),
(9, 'PSJM0007', '0101010101', 1, 1, '2024-10-30 10:00:59'),
(10, 'PSJM0008', '3547253568', 1, 1, '2024-11-12 05:29:59'),
(11, 'PSJM0009', '3625475869', 1, 1, '2024-11-19 10:32:26'),
(12, 'PSJM0009', '3625475869', 0, 0, '2024-11-19 10:34:58'),
(13, 'PSJM0010', '2222222221', 1, 1, '2024-11-19 17:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `trimesters`
--

CREATE TABLE `trimesters` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `total_videos` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trimesters`
--

INSERT INTO `trimesters` (`id`, `name`, `total_videos`) VALUES
(1, '1st Trimester', 10),
(2, '2nd Trimester', 14),
(3, '3rd Trimester', 1);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `video_path` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `trimester` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_name`, `video_path`, `thumbnail`, `trimester`, `created_at`) VALUES
(1, 'Head & neck stretches', 'videos/T1-1.mp4', 'videos/thumbnails/e1.jpg', '1st Trimester', '2024-11-23 09:20:36'),
(2, 'Tadasana', 'videos/T1-2.mp4', 'videos/thumbnails/e2.jpg', '1st Trimester', '2024-11-23 09:20:36'),
(3, 'Goddess pose', 'videos/T1-3.mp4', 'videos/thumbnails/e3.png', '1st Trimester', '2024-11-23 09:20:36'),
(4, 'Cat & Cow pose', 'videos/T1-4.mp4', 'videos/thumbnails/e4.png', '1st Trimester', '2024-11-23 09:20:36'),
(5, 'Badhakonasana', 'videos/T1-5.mp4', 'videos/thumbnails/e5.jpg', '1st Trimester', '2024-11-23 09:20:36'),
(6, 'Butterfly pose', 'videos/T1-6.mp4', 'videos/thumbnails/e6.png', '1st Trimester', '2024-11-23 09:20:36'),
(7, 'Bridge pose', 'videos/T1-7.mp4', 'videos/thumbnails/e7.jpg', '1st Trimester', '2024-11-23 09:20:36'),
(8, 'Naadishodhana', 'videos/T1-8.mp4', 'videos/thumbnails/e8.png', '1st Trimester', '2024-11-23 09:20:36'),
(9, 'Brahmari', 'videos/T1-9.mp4', 'videos/thumbnails/e9.jpg', '1st Trimester', '2024-11-23 09:20:36'),
(10, 'Yoga Nidra', 'videos/T1-10.mp4', 'videos/thumbnails/e10.png', '1st Trimester', '2024-11-23 09:20:36'),
(11, 'Head & neck stretches', 'videos/T1-1.mp4', 'videos/thumbnails/e1.jpg', '2nd Trimester', '2024-11-23 09:20:48'),
(12, 'Tadasana', 'videos/T1-2.mp4', 'videos/thumbnails/e2.jpg', '2nd Trimester', '2024-11-23 09:20:48'),
(13, 'Goddess pose', 'videos/T1-3.mp4', 'videos/thumbnails/e3.png', '2nd Trimester', '2024-11-23 09:20:48'),
(14, 'Cat & Cow pose', 'videos/T1-4.mp4', 'videos/thumbnails/e4.png', '2nd Trimester', '2024-11-23 09:20:48'),
(15, 'Badhakonasana', 'videos/T1-5.mp4', 'videos/thumbnails/e5.jpg', '2nd Trimester', '2024-11-23 09:20:48'),
(16, 'Butterfly pose', 'videos/T1-6.mp4', 'videos/thumbnails/e6.png', '2nd Trimester', '2024-11-23 09:20:48'),
(17, 'Frog pose', 'videos/T2-7.mp4', 'videos/thumbnails/e11.png', '2nd Trimester', '2024-11-23 09:20:48'),
(18, 'Bridge pose', 'videos/T1-7.mp4', 'videos/thumbnails/e7.jpg', '2nd Trimester', '2024-11-23 09:20:48'),
(19, 'Child pose', 'videos/T2-9.mp4', 'videos/thumbnails/e12.png', '2nd Trimester', '2024-11-23 09:20:48'),
(20, 'Vishnu asana', 'videos/T2-10.mp4', 'videos/thumbnails/e13.png', '2nd Trimester', '2024-11-23 09:20:48'),
(21, 'Naadishodhana', 'videos/T1-8.mp4', 'videos/thumbnails/e8.png', '2nd Trimester', '2024-11-23 09:20:48'),
(22, 'Brahmari', 'videos/T1-9.mp4', 'videos/thumbnails/e9.jpg', '2nd Trimester', '2024-11-23 09:20:48'),
(23, 'Floor Stretches', 'videos/T2-13.mp4', 'videos/thumbnails/e14.png', '2nd Trimester', '2024-11-23 09:20:48'),
(24, 'Yoga Nidra', 'videos/T1-10.mp4', 'videos/thumbnails/e10.png', '2nd Trimester', '2024-11-23 09:20:48'),
(25, 'Garland pose', 'videos/T3-1.mp4', 'videos/thumbnails/e15.png', '3rd Trimester', '2024-11-23 09:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `video_completions`
--

CREATE TABLE `video_completions` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(10) NOT NULL,
  `trimester` varchar(255) DEFAULT NULL,
  `video_id` int(11) NOT NULL,
  `completion_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video_completions`
--

INSERT INTO `video_completions` (`id`, `patient_id`, `trimester`, `video_id`, `completion_date`) VALUES
(1, 'PSJM0002', '1st Trimester', 1, '2024-11-14'),
(2, 'PSJM0002', '1st Trimester', 2, '2024-11-14'),
(3, 'PSJM0002', '1st Trimester', 3, '2024-11-14'),
(6, 'PSJM0002', '1st Trimester', 4, '2024-11-14'),
(8, 'PSJM0002', '1st Trimester', 6, '2024-11-14'),
(10, 'PSJM0001', '2nd Trimester', 11, '2024-11-14'),
(14, 'PSJM0002', '1st Trimester', 7, '2024-11-14'),
(16, 'PSJM0001', '2nd Trimester', 13, '2024-11-14'),
(18, 'PSJM0008', '1st Trimester', 1, '2024-11-14'),
(33, 'PSJM0002', '1st Trimester', 2, '2024-11-15'),
(35, 'PSJM0002', '1st Trimester', 1, '2024-11-15'),
(39, 'PSJM0002', '1st Trimester', 3, '2024-11-15'),
(40, 'PSJM0002', '1st Trimester', 2, '2024-11-08'),
(42, 'PSJM0002', '1st Trimester', 3, '2024-11-08'),
(46, 'PSJM0002', '1st Trimester', 1, '2024-11-08'),
(48, 'PSJM0002', '2nd Trimester', 11, '2024-11-17'),
(74, 'PSJM0008', '1st Trimester', 1, '2024-11-17'),
(76, 'PSJM0008', '1st Trimester', 2, '2024-11-17'),
(78, 'PSJM0008', '1st Trimester', 3, '2024-11-17'),
(80, 'PSJM0008', '1st Trimester', 4, '2024-11-17'),
(82, 'PSJM0008', '1st Trimester', 5, '2024-11-17'),
(84, 'PSJM0002', '2nd Trimester', 13, '2024-11-17'),
(85, 'PSJM0002', '2nd Trimester', 17, '2024-11-19'),
(87, 'PSJM0002', '2nd Trimester', 13, '2024-11-19'),
(89, 'PSJM0002', '2nd Trimester', 11, '2024-11-19'),
(91, 'PSJM0002', '2nd Trimester', 14, '2024-11-19'),
(93, 'PSJM0002', '2nd Trimester', 15, '2024-11-19'),
(95, 'PSJM0002', '2nd Trimester', 16, '2024-11-19'),
(97, 'PSJM0002', '2nd Trimester', 21, '2024-11-19'),
(99, 'PSJM0002', '2nd Trimester', 22, '2024-11-19'),
(104, 'PSJM0002', '2nd Trimester', 24, '2024-11-19'),
(106, 'PSJM0002', '2nd Trimester', 18, '2024-11-19'),
(108, 'PSJM0002', '2nd Trimester', 20, '2024-11-19'),
(110, 'PSJM0002', '2nd Trimester', 19, '2024-11-19'),
(112, 'PSJM0002', '2nd Trimester', 23, '2024-11-19'),
(127, 'PSJM0001', '2nd Trimester', 13, '2024-11-19'),
(129, 'PSJM0001', '2nd Trimester', 14, '2024-11-19'),
(131, 'PSJM0001', '2nd Trimester', 16, '2024-11-19'),
(133, 'PSJM0001', '2nd Trimester', 15, '2024-11-19'),
(135, 'PSJM0001', '2nd Trimester', 17, '2024-11-19'),
(137, 'PSJM0001', '2nd Trimester', 11, '2024-11-19'),
(139, 'PSJM0001', '2nd Trimester', 19, '2024-11-19'),
(141, 'PSJM0010', '1st Trimester', 1, '2024-11-19'),
(143, 'PSJM0010', '1st Trimester', 2, '2024-11-19'),
(145, 'PSJM0002', '2nd Trimester', 11, '2024-12-11'),
(146, 'PSJM0002', '2nd Trimester', 12, '2024-12-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_video_completions`
--
ALTER TABLE `daily_video_completions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_patient_completion` (`patient_id`,`completion_date`);

--
-- Indexes for table `defaulters`
--
ALTER TABLE `defaulters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_patient_id` (`patient_id`);

--
-- Indexes for table `defaulters_list`
--
ALTER TABLE `defaulters_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_outcomes`
--
ALTER TABLE `delivery_outcomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorlogin`
--
ALTER TABLE `doctorlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercise_data`
--
ALTER TABLE `exercise_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kick_counts`
--
ALTER TABLE `kick_counts`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `mental_health_data`
--
ALTER TABLE `mental_health_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `patientsignup`
--
ALTER TABLE `patientsignup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patient_id` (`patient_id`);

--
-- Indexes for table `patients_details`
--
ALTER TABLE `patients_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patient_id` (`patient_id`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`);

--
-- Indexes for table `patient_alerting`
--
ALTER TABLE `patient_alerting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_alerts`
--
ALTER TABLE `patient_alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alert_id` (`alert_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `patient_answers`
--
ALTER TABLE `patient_answers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `patient_monthly_exercise`
--
ALTER TABLE `patient_monthly_exercise`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_summary` (`patient_id`,`exercise_year`,`exercise_month`);

--
-- Indexes for table `patient_profiles`
--
ALTER TABLE `patient_profiles`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_responses`
--
ALTER TABLE `patient_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category` (`categoryId`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `question_schedule`
--
ALTER TABLE `question_schedule`
  ADD UNIQUE KEY `unique_patient_question` (`patient_id`,`question_id`,`scheduled_date`);

--
-- Indexes for table `scans`
--
ALTER TABLE `scans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_results`
--
ALTER TABLE `test_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `trigger_debug_log`
--
ALTER TABLE `trigger_debug_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trimesters`
--
ALTER TABLE `trimesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_completions`
--
ALTER TABLE `video_completions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_video_completion` (`patient_id`,`video_id`,`completion_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `daily_video_completions`
--
ALTER TABLE `daily_video_completions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `defaulters`
--
ALTER TABLE `defaulters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `defaulters_list`
--
ALTER TABLE `defaulters_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_outcomes`
--
ALTER TABLE `delivery_outcomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `doctorlogin`
--
ALTER TABLE `doctorlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exercise_data`
--
ALTER TABLE `exercise_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mental_health_data`
--
ALTER TABLE `mental_health_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `patientsignup`
--
ALTER TABLE `patientsignup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patients_details`
--
ALTER TABLE `patients_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `patient_alerting`
--
ALTER TABLE `patient_alerting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `patient_alerts`
--
ALTER TABLE `patient_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient_answers`
--
ALTER TABLE `patient_answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `patient_monthly_exercise`
--
ALTER TABLE `patient_monthly_exercise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `patient_responses`
--
ALTER TABLE `patient_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `scans`
--
ALTER TABLE `scans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `test_results`
--
ALTER TABLE `test_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trigger_debug_log`
--
ALTER TABLE `trigger_debug_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `trimesters`
--
ALTER TABLE `trimesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `video_completions`
--
ALTER TABLE `video_completions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mental_health_data`
--
ALTER TABLE `mental_health_data`
  ADD CONSTRAINT `mental_health_data_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients_details` (`patient_id`);

--
-- Constraints for table `patient_alerts`
--
ALTER TABLE `patient_alerts`
  ADD CONSTRAINT `patient_alerts_ibfk_1` FOREIGN KEY (`alert_id`) REFERENCES `alerts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patient_alerts_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients_details` (`patient_id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_answers`
--
ALTER TABLE `patient_answers`
  ADD CONSTRAINT `patient_answers_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients_details` (`patient_id`),
  ADD CONSTRAINT `patient_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `patient_monthly_exercise`
--
ALTER TABLE `patient_monthly_exercise`
  ADD CONSTRAINT `patient_monthly_exercise_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients_details` (`patient_id`);

--
-- Constraints for table `patient_responses`
--
ALTER TABLE `patient_responses`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `test_results`
--
ALTER TABLE `test_results`
  ADD CONSTRAINT `test_results_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients_details` (`patient_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
