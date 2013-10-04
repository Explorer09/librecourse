-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 03, 2013 at 10:36 AM
-- Server version: 5.5.32-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `librecourse`
--
CREATE DATABASE `librecourse` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `librecourse`;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `class_id` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT '班別代號',
  `name_zh` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dept_id` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '所屬的系所',
  `year` int(11) NOT NULL COMMENT '年級',
  PRIMARY KEY (`class_id`),
  UNIQUE KEY `name_zh` (`name_zh`),
  KEY `dept_id` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `name_zh`, `dept_id`, `year`) VALUES
('AAR110', '美一甲', 'AAR', 1),
('AAR210', '美二甲', 'AAR', 2),
('AAR310', '美三甲', 'AAR', 3),
('AAR410', '美四甲', 'AAR', 4),
('ACA110', '諮一甲', 'ACA', 1),
('ACA210', '諮二甲', 'ACA', 2),
('ACA310', '諮三甲', 'ACA', 3),
('ACA410', '諮四甲', 'ACA', 4),
('ACC110', '文創一甲', 'ACC', 1),
('ACC210', '文創二甲', 'ACC', 2),
('ACC310', '文創三甲', 'ACC', 3),
('ACC410', '文創四甲', 'ACC', 4),
('ACS110', '資一甲', 'ACS', 1),
('ACS210', '資二甲', 'ACS', 2),
('ACS310', '資三甲', 'ACS', 3),
('ACS410', '資四甲', 'ACS', 4),
('ADT110', '數位一甲', 'ADT', 1),
('ADT210', '數位二甲', 'ADT', 2),
('ADT310', '數位三甲', 'ADT', 3),
('ADT410', '數位四甲', 'ADT', 4),
('AEC110', '幼一甲', 'AEC', 1),
('AEC120', '幼一乙', 'AEC', 1),
('AEC210', '幼二甲', 'AEC', 2),
('AEC220', '幼二乙', 'AEC', 2),
('AEC310', '幼三甲', 'AEC', 3),
('AEC320', '幼三乙', 'AEC', 3),
('AEC410', '幼四甲', 'AEC', 4),
('AEC420', '幼四乙', 'AEC', 4),
('AED140', '大一卓越師培專班', 'AED', 1),
('AED210', '教育專業-語文', 'AED', 2),
('AED211', '教育專業學群一', 'AED', 2),
('AED212', '教育專業學群二', 'AED', 2),
('AED213', '大二教育學群一', 'AED', 2),
('AED214', '大二教育學群二', 'AED', 2),
('AED220', '教育專業-其他', 'AED', 2),
('AED230', '卓越師培專班', 'AED', 2),
('AED240', '大二卓越師培專班', 'AED', 2),
('AED310', '教育專業選三', 'AED', 3),
('AED313', '大三教育學群一', 'AED', 3),
('AED314', '大三教育學群二', 'AED', 3),
('AED340', '大三卓越師培專班', 'AED', 3),
('AED410', '教育專業選四', 'AED', 4),
('AED413', '大四教育學群一', 'AED', 4),
('AED414', '大四教育學群二', 'AED', 4),
('AED440', '大四卓越師培專班', 'AED', 4),
('AEL110', '教一甲', 'AEL', 1),
('AEL120', '教一乙', 'AEL', 1),
('AEL130', '教一丙', 'AEL', 1),
('AEL210', '教二甲', 'AEL', 2),
('AEL220', '教二乙', 'AEL', 2),
('AEL230', '教二丙', 'AEL', 2),
('AEL310', '教三甲', 'AEL', 3),
('AEL320', '教三乙', 'AEL', 3),
('AEL330', '教三丙', 'AEL', 3),
('AEL410', '教四甲', 'AEL', 4),
('AEL420', '教四乙', 'AEL', 4),
('AEL430', '教四丙', 'AEL', 4),
('AEN110', '英語一甲', 'AEN', 1),
('AEN210', '英語二甲', 'AEN', 2),
('AEN310', '英語三甲', 'AEN', 3),
('AEN410', '英語四甲', 'AEN', 4),
('AEX110', '交流班級', 'AEX', 1),
('AIB110', '國企一甲', 'AIB', 1),
('AIB210', '國企二甲', 'AIB', 2),
('AIB310', '國企三甲', 'AIB', 3),
('AIB410', '國企四甲', 'AIB', 4),
('ALA110', '語一甲', 'ALA', 1),
('ALA120', '語一乙', 'ALA', 1),
('ALA210', '語二甲', 'ALA', 2),
('ALA220', '語二乙', 'ALA', 2),
('ALA310', '語三甲', 'ALA', 3),
('ALA320', '語三乙', 'ALA', 3),
('ALA410', '語四甲', 'ALA', 4),
('ALA420', '語四乙', 'ALA', 4),
('AMA110', '數一甲', 'AMA', 1),
('AMA210', '數二甲', 'AMA', 2),
('AMA310', '數三甲', 'AMA', 3),
('AMA410', '數四甲', 'AMA', 4),
('AMU110', '音一甲', 'AMU', 1),
('AMU210', '音二甲', 'AMU', 2),
('AMU310', '音三甲', 'AMU', 3),
('AMU410', '音四甲', 'AMU', 4),
('AOS111', '校際選課', 'AOS', 1),
('APE110', '體一甲', 'APE', 1),
('APE210', '體二甲', 'APE', 2),
('APE310', '體三甲', 'APE', 3),
('APE410', '體四甲', 'APE', 4),
('ASC110', '科一甲', 'ASC', 1),
('ASC210', '科二甲', 'ASC', 2),
('ASC310', '科三甲', 'ASC', 3),
('ASC410', '科四甲', 'ASC', 4),
('ASO110', '區社一甲', 'ASO', 1),
('ASO120', '區社一乙', 'ASO', 1),
('ASO210', '區社二甲', 'ASO', 2),
('ASO220', '區社二乙', 'ASO', 2),
('ASO310', '區社三甲', 'ASO', 3),
('ASO320', '區社三乙', 'ASO', 3),
('ASO410', '區社四甲', 'ASO', 4),
('ASO420', '區社四乙', 'ASO', 4),
('ASP110', '特一甲', 'ASP', 1),
('ASP120', '特一乙', 'ASP', 1),
('ASP210', '特二甲', 'ASP', 2),
('ASP220', '特二乙', 'ASP', 2),
('ASP310', '特三甲', 'ASP', 3),
('ASP320', '特三乙', 'ASP', 3),
('ASP410', '特四甲', 'ASP', 4),
('ASP420', '特四乙', 'ASP', 4),
('ATA110', '台一甲', 'ATA', 1),
('ATA210', '台二甲', 'ATA', 2),
('ATA310', '台三甲', 'ATA', 3),
('ATA410', '台四甲', 'ATA', 4),
('BAR110', '美研一甲', 'BAR', 1),
('BAR210', '美研二甲', 'BAR', 2),
('BAR310', '美研三甲', 'BAR', 3),
('BAR410', '美研四甲', 'BAR', 4),
('BBM110', '事經一甲', 'BBM', 1),
('BBM210', '事經二甲', 'BBM', 2),
('BBM310', '事經三甲', 'BBM', 3),
('BBM410', '事經四甲', 'BBM', 4),
('BCE110', '諮研一甲', 'BCE', 1),
('BCE210', '諮研二甲', 'BCE', 2),
('BCE310', '諮研三甲', 'BCE', 3),
('BCE410', '諮研四甲', 'BCE', 4),
('BCI110', '課程一甲', 'BCI', 1),
('BCI210', '課程二甲', 'BCI', 2),
('BCI310', '課程三甲', 'BCI', 3),
('BCI410', '課程四甲', 'BCI', 4),
('BCS110', '資研一甲', 'BCS', 1),
('BCS210', '資研二甲', 'BCS', 2),
('BCS310', '資研三甲', 'BCS', 3),
('BCS410', '資研四甲', 'BCS', 4),
('BEC110', '幼研一甲', 'BEC', 1),
('BEC210', '幼研二甲', 'BEC', 2),
('BEC310', '幼研三甲', 'BEC', 3),
('BEC410', '幼研四甲', 'BEC', 4),
('BEE110', '環教一甲', 'BEE', 1),
('BEE210', '環教二甲', 'BEE', 2),
('BEE310', '環教三甲', 'BEE', 3),
('BEE410', '環教四甲', 'BEE', 4),
('BEI110', '早療一甲', 'BEI', 1),
('BEI210', '早療二甲', 'BEI', 2),
('BEI310', '早療三甲', 'BEI', 3),
('BEI410', '早療四甲', 'BEI', 4),
('BER110', '教研一甲', 'BER', 1),
('BER210', '教研二甲', 'BER', 2),
('BER310', '教研三甲', 'BER', 3),
('BER410', '教研四甲', 'BER', 4),
('BHE110', '高教一甲', 'BHE', 1),
('BHE210', '高教二甲', 'BHE', 2),
('BHE310', '高教三甲', 'BHE', 3),
('BHE410', '高教四甲', 'BHE', 4),
('BIT110', '數位所一甲', 'BIT', 1),
('BIT210', '數位所二甲', 'BIT', 2),
('BIT310', '數位所三甲', 'BIT', 3),
('BIT410', '數位所四甲', 'BIT', 4),
('BLA110', '語研一甲', 'BLA', 1),
('BLA210', '語研二甲', 'BLA', 2),
('BLA310', '語研三甲', 'BLA', 3),
('BLA410', '語研四甲', 'BLA', 4),
('BMA110', '數研一甲', 'BMA', 1),
('BMA210', '數研二甲', 'BMA', 2),
('BMA310', '數研三甲', 'BMA', 3),
('BMA410', '數研四甲', 'BMA', 4),
('BMS110', '測統一甲', 'BMS', 1),
('BMS210', '測統二甲', 'BMS', 2),
('BMS310', '測統三甲', 'BMS', 3),
('BMS410', '測統四甲', 'BMS', 4),
('BMU110', '音研一甲', 'BMU', 1),
('BMU210', '音研二甲', 'BMU', 2),
('BMU310', '音研三甲', 'BMU', 3),
('BMU410', '音研四甲', 'BMU', 4),
('BPE110', '體研一甲', 'BPE', 1),
('BPE210', '體研二甲', 'BPE', 2),
('BPE310', '體研三甲', 'BPE', 3),
('BPE410', '體研四甲', 'BPE', 4),
('BSC110', '科研一甲', 'BSC', 1),
('BSC210', '科研二甲', 'BSC', 2),
('BSC310', '科研三甲', 'BSC', 3),
('BSC410', '科研四甲', 'BSC', 4),
('BSO110', '區社研一甲', 'BSO', 1),
('BSO210', '區社研二甲', 'BSO', 2),
('BSO310', '區社研三甲', 'BSO', 3),
('BSO410', '區社研四甲', 'BSO', 4),
('BST110', '特教所一甲', 'BST', 1),
('BST210', '特教所二甲', 'BST', 2),
('BST310', '特教所三甲', 'BST', 3),
('BST410', '特教所四甲', 'BST', 4),
('BTC110', '華碩班一甲', 'BTC', 1),
('BTC210', '華碩班二甲', 'BTC', 2),
('BTC310', '華碩班三甲', 'BTC', 3),
('BTC410', '華碩班四甲', 'BTC', 4),
('BTP110', '教專一甲', 'BTP', 1),
('BTP210', '教專二甲', 'BTP', 2),
('BTR110', '觀光一甲', 'BTR', 1),
('BTR210', '觀光二甲', 'BTR', 2),
('BTR310', '觀光三甲', 'BTR', 3),
('BTR410', '觀光四甲', 'BTR', 4),
('CER110', '教博一甲', 'CER', 1),
('CER210', '教博二甲', 'CER', 2),
('CER310', '教博三甲', 'CER', 3),
('CER410', '教博四甲', 'CER', 4),
('CER510', '教博五甲', 'CER', 5),
('CER610', '教博六甲', 'CER', 6),
('CER710', '教博七甲', 'CER', 7),
('CLA110', '語博一甲', 'CLA', 1),
('CLA210', '語博二甲', 'CLA', 2),
('CLA310', '語博三甲', 'CLA', 3),
('CLA410', '語博四甲', 'CLA', 4),
('CLA510', '語博五甲', 'CLA', 5),
('CLA610', '語博六甲', 'CLA', 6),
('CLA710', '語博七甲', 'CLA', 7),
('CMS110', '測博一甲', 'CMS', 1),
('CMS210', '測博二甲', 'CMS', 2),
('CMS310', '測博三甲', 'CMS', 3),
('CMS410', '測博四甲', 'CMS', 4),
('CMS510', '測博五甲', 'CMS', 5),
('CMS610', '測博六甲', 'CMS', 6),
('CMS710', '測博七甲', 'CMS', 7),
('ZAB110', '體育特別班', 'ZAB', 1),
('ZAB120', '國文特別班', 'ZAB', 1),
('ZAB130', '英文特別班', 'ZAB', 1),
('ZAB140', '小教加註專長課程專班', 'ZAB', 1),
('ZAB222', '大二體育', 'ZAB', 2),
('ZAB310', '大三共選Ａ組', 'ZAB', 3),
('ZAB320', '大三共選Ｂ組', 'ZAB', 3),
('ZAB410', '大四共選Ａ組', 'ZAB', 4),
('ZEA110', '大一專業-A群', 'ZEA', 1),
('ZEB110', '大一專業-B群', 'ZEB', 1),
('ZEC110', '大一專業-AB', 'ZEC', 1),
('ZED210', '大二專業選修', 'ZED', 2),
('ZED310', '大三專業選修', 'ZED', 3),
('ZED410', '大四教育學程', 'ZED', 4),
('ZED510', '研究生教育學程', 'ZED', 5),
('ZGE110', '大一通識', 'ZGE', 1),
('ZGE210', '大二通識', 'ZGE', 2),
('ZGE310', '大三通識', 'ZGE', 3),
('ZGF210', '大二輔系', 'ZGF', 2),
('ZGF310', '大三輔系', 'ZGF', 3),
('ZGF410', '大四輔系', 'ZGF', 4),
('ZGG210', '英語學程二年級', 'ZGG', 2),
('ZGG310', '英語學程三年級', 'ZGG', 3),
('ZGM110', '音一副修', 'ZGM', 1),
('ZGM210', '音二副修', 'ZGM', 2),
('ZGM310', '音三副修', 'ZGM', 3),
('ZGM410', '音四副修', 'ZGM', 4),
('ZSP210', '增能學程二年級', 'ZSP', 2),
('ZSP310', '增能學程三年級', 'ZSP', 3),
('ZSP410', '增能學程四年級', 'ZSP', 4),
('ZZZ000', '', 'ZZZ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE IF NOT EXISTS `colleges` (
  `college_id` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `name_zh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`college_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`college_id`, `name_zh`, `name_en`) VALUES
('CE', '教育學院', 'College of Education'),
('CHLA', '人文學院', 'College of Humanities and Liberal Arts'),
('CM', '管理學院', 'College of Management'),
('COS', '理學院', 'College of Science');

-- --------------------------------------------------------

--
-- Table structure for table `course_dept_condition`
--

CREATE TABLE IF NOT EXISTS `course_dept_condition` (
  `course_id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `dept_id` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `condition` enum('required','forbidden') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'forbidden' COMMENT '限修',
  PRIMARY KEY (`course_id`,`dept_id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_prereqs`
--

CREATE TABLE IF NOT EXISTS `course_prereqs` (
  `course` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `prerequisite` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `condition` enum('required','forbidden') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'required',
  KEY `course` (`course`),
  KEY `prerequisite` (`prerequisite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `course_id` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT '科目代碼',
  `name_zh` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '課程名稱',
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '課程名稱 (英文)',
  `credit_type` tinyint(3) NOT NULL,
  `credit_quantity` int(11) NOT NULL,
  `terms` int(11) NOT NULL COMMENT '1:全學年, 2:半學年',
  `remark` int(11) NOT NULL COMMENT '備註',
  PRIMARY KEY (`course_id`),
  KEY `credit_type` (`credit_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_types`
--

CREATE TABLE IF NOT EXISTS `credit_types` (
  `credit_id` tinyint(3) NOT NULL AUTO_INCREMENT COMMENT '代號',
  `is_required` tinyint(1) NOT NULL DEFAULT '0' COMMENT '必修/選修',
  `category` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '學分種類',
  PRIMARY KEY (`credit_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `credit_types`
--

INSERT INTO `credit_types` (`credit_id`, `is_required`, `category`) VALUES
(1, 1, '共同必修'),
(2, 1, '院共同課程'),
(3, 1, '專業科目必修'),
(4, 0, '專業科目選修'),
(5, 0, '自由選修'),
(11, 0, '通識 - 語言文學領域 (舊制)'),
(12, 0, '通識 - 藝術陶冶領域 (舊制)'),
(13, 0, '通識 - 社會人文領域 (舊制)'),
(14, 0, '通識 - 數理科技領域 (舊制)'),
(15, 0, '通識 - 體育保健領域 (舊制)'),
(16, 0, '通識 - 綜合領域 (舊制)'),
(20, 1, '大二體育'),
(21, 0, '通識 - 數理科技核心課程'),
(22, 0, '通識 - 數理科技選修課程'),
(23, 0, '通識 - 社會人文核心課程'),
(24, 0, '通識 - 社會人文選修課程'),
(25, 0, '通識 - 藝術陶冶核心課程'),
(26, 0, '通識 - 藝術陶冶選修課程'),
(27, 0, '通識 - 博雅講堂');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `dept_id` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `name_zh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '系所的英文名稱',
  `degree` enum('Bachelor','Master','Doctorate','Other') COLLATE utf8_unicode_ci DEFAULT 'Bachelor',
  `college_id` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '屬於哪個學院',
  PRIMARY KEY (`dept_id`),
  KEY `college_id` (`college_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `name_zh`, `name_en`, `degree`, `college_id`) VALUES
('AAR', '美術學系', 'Department of Fine Arts', 'Bachelor', 'CHLA'),
('ACA', '諮商與應用心理學系', 'Counseling and Applied psycology', 'Bachelor', 'CHLA'),
('ACC', '文化創意產業發展學位學程', 'Department of Cultural and Creative Industries', 'Bachelor', 'CM'),
('ACS', '資訊科學學系', 'Departmant of Computer and Information Science', 'Bachelor', 'COS'),
('ADT', '數位內容科技學系', 'Department of Digital Content Technology', 'Bachelor', 'COS'),
('AEC', '幼兒教育學系', 'Department of Eatly Childhood Education', 'Bachelor', 'CE'),
('AED', '', NULL, 'Bachelor', NULL),
('AEL', '教育學系', 'Department of Education', 'Bachelor', 'CE'),
('AEN', '英語學系', 'Department of English', 'Bachelor', 'CHLA'),
('AEX', '', NULL, 'Bachelor', NULL),
('AIB', '國際企業學系', 'Department of International Business', 'Bachelor', 'CM'),
('ALA', '語文教育學系', 'Department of Language and Literacy Education', 'Bachelor', 'CHLA'),
('AMA', '數學教育學系', 'Department of Mathematics Education', 'Bachelor', 'COS'),
('AMU', '音樂學系', 'Department of Music', 'Bachelor', 'CHLA'),
('AOS', '', NULL, 'Bachelor', NULL),
('APE', '體育學系', 'Deparrtment of Physical Education', 'Bachelor', 'CE'),
('ASC', '科學應用與推廣學系', 'Department of Science Application and Dissemination', 'Bachelor', 'COS'),
('ASO', '區域與社會發展學系', 'Department of Regional and Social Development', 'Bachelor', 'CHLA'),
('ASP', '特殊教育學系', 'Department of Special Education', 'Bachelor', 'CE'),
('ATA', '臺灣語文學系', 'Department of Taiwanese Languages and Literature', 'Bachelor', 'CHLA'),
('BAR', '美術學系碩士班', NULL, 'Master', 'CHLA'),
('BBM', '事業經營碩士學位學程', 'Master Program of Business Administration', 'Master', 'CM'),
('BCE', '諮商與應用心理學系碩士班', NULL, 'Master', 'CHLA'),
('BCI', '課程與教學研究所', 'Graduate Institute of Curriculum and Instruction', 'Master', 'CE'),
('BCS', '資訊科學學系碩士班', NULL, 'Master', 'COS'),
('BEC', '幼兒教育學系碩士班', NULL, 'Master', 'CE'),
('BEE', '環境教育及管理研究所', NULL, 'Master', 'COS'),
('BEI', '早期療育研究所', 'Graduate Institute of Early Intervention', 'Master', 'CE'),
('BER', '教育學系碩士班', NULL, 'Master', 'CE'),
('BHE', '高等教育經營管理碩士學位學程', 'Master Degree Program of Management of Higher Education', 'Master', 'CM'),
('BIT', '數位內容科技學系碩士班', NULL, 'Master', 'COS'),
('BLA', '語文教育學系碩士班', NULL, 'Master', 'CHLA'),
('BMA', '數學教育學系碩士班', NULL, 'Master', 'COS'),
('BMS', '教育測驗統計研究所', 'Graduate Institute of Educational Measurement and Statistics', 'Master', 'CE'),
('BMU', '音樂學系碩士班', NULL, 'Master', 'CHLA'),
('BPE', '體育學系碩士班', NULL, 'Master', 'CE'),
('BSC', '科學教育碩士班', NULL, 'Master', 'COS'),
('BSO', '區域與社會發展學系碩士班', NULL, 'Master', 'CHLA'),
('BST', ' 特殊教育學系碩士班', NULL, 'Master', 'CE'),
('BTC', '(華碩班)', NULL, 'Master', NULL),
('BTP', '教師專業碩士學位學程', NULL, 'Master', 'CE'),
('BTR', '永續觀光暨遊憩管理碩士學位學程', 'Graduate Program of Sustainable Tourism and Recreation Management', 'Master', 'CM'),
('CER', '教育學系博士班', NULL, 'Doctorate', 'CE'),
('CLA', '語文教育學系博士班', NULL, 'Doctorate', 'CHLA'),
('CMS', '教育測驗統計研究所博士班', NULL, 'Doctorate', 'CE'),
('ZAB', '', NULL, 'Bachelor', NULL),
('ZEA', '', NULL, 'Bachelor', NULL),
('ZEB', '', NULL, 'Bachelor', NULL),
('ZEC', '', NULL, 'Bachelor', NULL),
('ZED', '', NULL, 'Bachelor', NULL),
('ZGE', '', NULL, 'Bachelor', NULL),
('ZGF', '', NULL, 'Bachelor', NULL),
('ZGG', '', NULL, 'Bachelor', NULL),
('ZGM', '', NULL, 'Bachelor', NULL),
('ZSP', '', NULL, 'Bachelor', NULL),
('ZZZ', '', NULL, 'Bachelor', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `graduation_reqs`
--

CREATE TABLE IF NOT EXISTS `graduation_reqs` (
  `dept_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `credit_type` tinyint(3) NOT NULL,
  `credit_quantity` int(11) NOT NULL,
  PRIMARY KEY (`dept_id`,`year`),
  KEY `credit_type` (`credit_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE IF NOT EXISTS `instructors` (
  `instructor_id` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT '教師代碼',
  `name` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT '教師姓名',
  `department` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`instructor_id`),
  KEY `department` (`department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section_instruct`
--

CREATE TABLE IF NOT EXISTS `section_instruct` (
  `section_id` int(11) NOT NULL,
  `instructor_id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`section_id`,`instructor_id`),
  KEY `instructor_id` (`instructor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section_time`
--

CREATE TABLE IF NOT EXISTS `section_time` (
  `section_id` int(11) NOT NULL,
  `weekday` enum('0','1','2','3','4','5','6') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0: Sunday, 6: Saturday',
  `time_slot_id` tinyint(4) NOT NULL,
  `length` tinyint(4) NOT NULL,
  PRIMARY KEY (`section_id`,`weekday`,`time_slot_id`),
  KEY `time_slot_id` (`time_slot_id`),
  KEY `weekday` (`weekday`,`time_slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `year` int(11) NOT NULL COMMENT '學年度',
  `term` int(11) NOT NULL COMMENT '學期',
  `class_id` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '開課班別',
  `section_id` int(11) NOT NULL COMMENT '開課序號',
  `course_id` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT '科目代碼',
  `place` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT '上課地點',
  `limit` int(11) NOT NULL COMMENT '限額',
  `remark` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '備註',
  PRIMARY KEY (`section_id`),
  KEY `course_id` (`course_id`,`term`),
  KEY `class_id` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `student_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT '學號',
  `national_id_num` varchar(16) CHARACTER SET ascii NOT NULL COMMENT '身分證字號/護照號碼',
  `name_zh` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `name_en` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '英文姓名',
  `department` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `admission_year` year(4) NOT NULL,
  `email` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `national_id_num` (`national_id_num`),
  KEY `department` (`department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `syllabuses`
--

CREATE TABLE IF NOT EXISTS `syllabuses` (
  `section_id` int(11) NOT NULL,
  `syllabus_text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `takes_course`
--

CREATE TABLE IF NOT EXISTS `takes_course` (
  `student_id` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL COMMENT '成績',
  PRIMARY KEY (`student_id`,`section_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE IF NOT EXISTS `time_slots` (
  `time_slot_id` tinyint(4) NOT NULL,
  `start_hour` time NOT NULL,
  `end_hour` time NOT NULL,
  PRIMARY KEY (`time_slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='每一"節"表示的時間';

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`time_slot_id`, `start_hour`, `end_hour`) VALUES
(1, '08:10:00', '09:00:00'),
(2, '09:10:00', '10:00:00'),
(3, '10:10:00', '11:00:00'),
(4, '11:10:00', '12:00:00'),
(5, '12:10:00', '13:00:00'),
(6, '13:30:00', '14:20:00'),
(7, '14:30:00', '15:20:00'),
(8, '15:30:00', '16:20:00'),
(9, '16:30:00', '17:20:00'),
(10, '17:30:00', '18:20:00'),
(11, '18:30:00', '19:15:00'),
(12, '19:15:00', '20:00:00'),
(13, '20:15:00', '21:00:00'),
(14, '21:00:00', '21:45:00'),
(15, '21:45:00', '22:30:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`) ON UPDATE CASCADE;

--
-- Constraints for table `course_dept_condition`
--
ALTER TABLE `course_dept_condition`
  ADD CONSTRAINT `course_dept_condition_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_dept_condition_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_prereqs`
--
ALTER TABLE `course_prereqs`
  ADD CONSTRAINT `course_prereqs_ibfk_1` FOREIGN KEY (`course`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_prereqs_ibfk_2` FOREIGN KEY (`prerequisite`) REFERENCES `courses` (`course_id`) ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`credit_type`) REFERENCES `credit_types` (`credit_id`) ON UPDATE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`college_id`) ON UPDATE CASCADE;

--
-- Constraints for table `graduation_reqs`
--
ALTER TABLE `graduation_reqs`
  ADD CONSTRAINT `graduation_reqs_ibfk_1` FOREIGN KEY (`credit_type`) REFERENCES `credit_types` (`credit_id`) ON UPDATE CASCADE;

--
-- Constraints for table `section_instruct`
--
ALTER TABLE `section_instruct`
  ADD CONSTRAINT `section_instruct_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `section_instruct_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`instructor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `section_time`
--
ALTER TABLE `section_time`
  ADD CONSTRAINT `section_time_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `section_time_ibfk_2` FOREIGN KEY (`time_slot_id`) REFERENCES `time_slots` (`time_slot_id`) ON UPDATE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sections_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`department`) REFERENCES `departments` (`dept_id`) ON UPDATE CASCADE;

--
-- Constraints for table `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD CONSTRAINT `syllabuses_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON UPDATE CASCADE;

--
-- Constraints for table `takes_course`
--
ALTER TABLE `takes_course`
  ADD CONSTRAINT `takes_course_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `takes_course_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
