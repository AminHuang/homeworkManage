-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- 主机: w.rdc.sae.sina.com.cn:3307
-- 生成日期: 2015 年 02 月 26 日 17:24
-- 服务器版本: 5.5.23
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `app_amintest`
--
-- CREATE DATABASE `app_amintest` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `app_amintest`;

-- --------------------------------------------------------

--
-- 表的结构 `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `courseId` int(11) NOT NULL AUTO_INCREMENT,
  `courseName` varchar(20) DEFAULT NULL,
  `teaName` varchar(20) DEFAULT NULL,
  `hwNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`courseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `courses`
--


-- --------------------------------------------------------

--
-- 表的结构 `doHomework`
--

CREATE TABLE IF NOT EXISTS `doHomework` (
  `stuId` varchar(8) DEFAULT NULL,
  `hwId` int(11) DEFAULT NULL,
  `situation` varchar(20) DEFAULT NULL,
  UNIQUE KEY `stuId` (`stuId`,`hwId`),
  KEY `hwId` (`hwId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `doHomework`
--


-- --------------------------------------------------------

--
-- 表的结构 `haveCourse`
--

CREATE TABLE IF NOT EXISTS `haveCourse` (
  `stuId` varchar(20) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  UNIQUE KEY `stuId` (`stuId`,`courseId`),
  KEY `courseId` (`courseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `haveCourse`
--


-- --------------------------------------------------------

--
-- 表的结构 `homeworks`
--

CREATE TABLE IF NOT EXISTS `homeworks` (
  `hwId` int(11) NOT NULL AUTO_INCREMENT,
  `hwContent` varchar(20) DEFAULT NULL,
  `beginTime` varchar(20) DEFAULT NULL,
  `deadline` varchar(16) DEFAULT NULL,
  `noHandinStu` int(11) DEFAULT NULL,
  `belongCourse` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`hwId`),
  KEY `belongCourse` (`belongCourse`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `homeworks`
--


-- --------------------------------------------------------

--
-- 表的结构 `major`
--

CREATE TABLE IF NOT EXISTS `major` (
  `majorId` int(11) NOT NULL AUTO_INCREMENT,
  `majorName` varchar(20) DEFAULT NULL,
  `detail` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`majorId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `major`
--

INSERT INTO `major` (`majorId`, `majorName`, `detail`) VALUES
(1, '计算机应用', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `majorIn`
--

CREATE TABLE IF NOT EXISTS `majorIn` (
  `courseId` int(20) DEFAULT NULL,
  `majorId` int(11) DEFAULT NULL,
  UNIQUE KEY `courseId` (`courseId`,`majorId`),
  KEY `majorId` (`majorId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `majorIn`
--


-- --------------------------------------------------------

--
-- 表的结构 `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `stuId` varchar(8) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL,
  `stuName` varchar(20) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `belongMajor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`stuId`),
  KEY `belongMajor` (`belongMajor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `students`
--

INSERT INTO `students` (`stuId`, `password`, `stuName`, `admin`, `email`, `belongMajor`) VALUES
('test', 'test', NULL, NULL, NULL, NULL),
('12330122', '06044322', NULL, NULL, '532514900@qq.com', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `test` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `test`
--

INSERT INTO `test` (`uid`, `test`) VALUES
(1, 'tttt'),
(11, '444'),
(12, 'aaaaa');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` char(64) NOT NULL,
  `password` char(120) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `userid`, `password`) VALUES
(10, '123', '123'),
(9, 'tt', 'ttt'),
(8, 'aa', 'aaa'),
(4, 'test', 't'),
(5, 'rrr', 'r'),
(11, '111', '111'),
(7, 'nimei', 'hh'),
(12, '22', '22'),
(13, '00', '0');
