/*
SQLyog Community Edition- MySQL GUI v5.21
Host - 5.0.82-community-nt : Database - jygame_log
*********************************************************************
Server version : 5.0.82-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `jygame_log`;

USE `jygame_log`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `exception_user_log` */

DROP TABLE IF EXISTS `exception_user_log`;

CREATE TABLE `exception_user_log` (
  `id` int(11) NOT NULL auto_increment,
  `u_pk` int(11) default NULL,
  `p_pk` int(11) default NULL,
  `exception_ip` varchar(20) default NULL,
  `time_space` int(11) default NULL,
  `log_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=8170 DEFAULT CHARSET=gbk;

/*Table structure for table `u_log_exp` */

DROP TABLE IF EXISTS `u_log_exp`;

CREATE TABLE `u_log_exp` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `p_name` varchar(20) default NULL,
  `old_num` bigint(20) default NULL,
  `new_num` bigint(20) default NULL,
  `content` varchar(200) default NULL,
  `createtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=gbk;

/*Table structure for table `u_log_money` */

DROP TABLE IF EXISTS `u_log_money`;

CREATE TABLE `u_log_money` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `p_name` varchar(20) default NULL,
  `old_num` bigint(20) default NULL,
  `new_num` bigint(20) default NULL,
  `content` varchar(200) default NULL,
  `createtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1855 DEFAULT CHARSET=gbk;

/*Table structure for table `u_log_player` */

DROP TABLE IF EXISTS `u_log_player`;

CREATE TABLE `u_log_player` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `p_name` varchar(20) default NULL,
  `old_num` bigint(20) default NULL,
  `new_num` bigint(20) default NULL,
  `content` varchar(200) default NULL,
  `createtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1353 DEFAULT CHARSET=gbk;

/*Table structure for table `u_log_yb` */

DROP TABLE IF EXISTS `u_log_yb`;

CREATE TABLE `u_log_yb` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `p_name` varchar(20) default NULL,
  `old_num` bigint(20) default NULL,
  `new_num` bigint(20) default NULL,
  `content` varchar(200) default NULL,
  `createtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=gbk;

/*Table structure for table `u_upgrade_log` */

DROP TABLE IF EXISTS `u_upgrade_log`;

CREATE TABLE `u_upgrade_log` (
  `p_pk` int(11) default NULL,
  `role_name` varchar(20) default NULL,
  `content` varchar(100) default NULL,
  `createtime` datetime default NULL,
  KEY `Index1` (`p_pk`),
  KEY `Index2` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
