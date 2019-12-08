-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.26 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 exam 的数据库结构
CREATE DATABASE IF NOT EXISTS `exam` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `exam`;

-- 导出  表 exam.a 结构
CREATE TABLE IF NOT EXISTS `a` (
  `num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 数据导出被取消选择。
-- 导出  表 exam.b 结构
CREATE TABLE IF NOT EXISTS `b` (
  `num` int(11) NOT NULL,
  `timu` varchar(200) COLLATE utf8_bin NOT NULL,
  `A` varchar(200) COLLATE utf8_bin NOT NULL,
  `B` varchar(200) COLLATE utf8_bin NOT NULL,
  `C` varchar(200) COLLATE utf8_bin NOT NULL,
  `D` varchar(200) COLLATE utf8_bin NOT NULL,
  `right` varchar(200) COLLATE utf8_bin NOT NULL,
  `selection` varchar(200) COLLATE utf8_bin NOT NULL,
  `account` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 数据导出被取消选择。
-- 导出  表 exam.stu+test 结构
CREATE TABLE IF NOT EXISTS `stu+test` (
  `sno` int(11) NOT NULL,
  `testname` varchar(200) COLLATE utf8_bin NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 数据导出被取消选择。
-- 导出  表 exam.student 结构
CREATE TABLE IF NOT EXISTS `student` (
  `sno` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_bin NOT NULL,
  `password` varchar(200) COLLATE utf8_bin NOT NULL,
  `dept` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 数据导出被取消选择。
-- 导出  表 exam.test 结构
CREATE TABLE IF NOT EXISTS `test` (
  `testname` varchar(200) COLLATE utf8_bin NOT NULL,
  `tapper` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 数据导出被取消选择。
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
