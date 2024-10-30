/*
SQLyog Community Edition- MySQL GUI v5.21
Host - 5.0.82-community-nt : Database - jygame_user_bak
*********************************************************************
Server version : 5.0.82-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `jygame_user_bak`;

USE `jygame_user_bak`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `active_leitai_role` */

DROP TABLE IF EXISTS `active_leitai_role`;

CREATE TABLE `active_leitai_role` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `ppk` int(16) NOT NULL default '0',
  `pname` varchar(50) NOT NULL,
  `scene_id` int(11) default '0' COMMENT '进入场景',
  `round1` int(1) default '0' COMMENT '第一轮PK状态',
  `round2` int(1) default '0' COMMENT '第二轮PK状态',
  `round3` int(1) default '0' COMMENT '第三轮PK状态',
  `into_time` datetime default NULL COMMENT '进入擂台时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `auto` */

DROP TABLE IF EXISTS `auto`;

CREATE TABLE `auto` (
  `id` int(64) NOT NULL auto_increment,
  `p_pk` int(32) NOT NULL,
  `ogre` int(32) NOT NULL,
  `time` int(2) NOT NULL,
  `begin_time` varchar(50) NOT NULL,
  `end_time` varchar(50) default '',
  `operate` varchar(255) default '',
  `level` int(11) default NULL COMMENT '品质',
  `guaji_type` int(2) NOT NULL COMMENT '挂机类型',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `channel` */

DROP TABLE IF EXISTS `channel`;

CREATE TABLE `channel` (
  `id` int(11) NOT NULL auto_increment,
  `user_name` varchar(20) default NULL,
  `user_paw` varchar(20) default NULL,
  `channel` varchar(20) default NULL,
  `log_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `channel_id_info` */

DROP TABLE IF EXISTS `channel_id_info`;

CREATE TABLE `channel_id_info` (
  `id` int(11) NOT NULL auto_increment,
  `channel_id` varchar(20) default NULL,
  `channel_id_sec` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `channel_id_num` */

DROP TABLE IF EXISTS `channel_id_num`;

CREATE TABLE `channel_id_num` (
  `id` int(11) NOT NULL auto_increment,
  `channel_id_sec` varchar(20) default NULL,
  `sta_num` int(11) default NULL,
  `sta_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=gbk;

/*Table structure for table `f_apply_info` */

DROP TABLE IF EXISTS `f_apply_info`;

CREATE TABLE `f_apply_info` (
  `id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`f_id`,`p_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=gbk;

/*Table structure for table `f_build` */

DROP TABLE IF EXISTS `f_build`;

CREATE TABLE `f_build` (
  `f_id` int(11) NOT NULL COMMENT '帮派id',
  `b_id` int(11) NOT NULL COMMENT '当前建筑id',
  `b_1_grade_id` int(11) default NULL COMMENT '该建筑的一级建筑的id',
  KEY `Index1` (`f_id`,`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `f_faction` */

DROP TABLE IF EXISTS `f_faction`;

CREATE TABLE `f_faction` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(10) default NULL,
  `race` int(11) default NULL,
  `grade` int(11) default '1',
  `memberNum` int(11) default '1',
  `prestige` int(11) default '0',
  `citangGrade` int(11) default '1',
  `createTime` datetime default NULL,
  `isDisband` tinyint(1) default '0' COMMENT '是否处在解散缓冲期，到次日凌晨3时才真正解散',
  `mGradeTotal` int(11) default '30' COMMENT '成员等级总和(排行榜用)',
  `storageStr` varchar(150) default NULL COMMENT '帮派材料仓库字符串',
  `materialNum` int(11) default '0' COMMENT '帮派材料总数量(排行榜用)',
  `changeZZHTime` datetime default NULL COMMENT '上次转让族长的时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

/*Table structure for table `f_notice` */

DROP TABLE IF EXISTS `f_notice`;

CREATE TABLE `f_notice` (
  `id` int(11) NOT NULL auto_increment,
  `f_id` int(11) NOT NULL,
  `content` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=gbk;

/*Table structure for table `game_notify` */

DROP TABLE IF EXISTS `game_notify`;

CREATE TABLE `game_notify` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `content` varchar(2000) default NULL,
  `ordernum` int(11) default NULL,
  `isonline` int(11) default '0',
  `create_time` datetime default NULL,
  `type` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `game_player_statistics_info` */

DROP TABLE IF EXISTS `game_player_statistics_info`;

CREATE TABLE `game_player_statistics_info` (
  `id` int(11) NOT NULL auto_increment,
  `u_pk` int(11) default NULL,
  `p_pk` int(11) default NULL,
  `p_grade` int(11) default NULL,
  `p_onlinetime` int(11) default NULL,
  `p_date` varchar(50) default NULL,
  `p_time` varchar(10) default NULL,
  `p_login_time_old` datetime default NULL,
  `p_login_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`u_pk`,`p_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=gbk;

/*Table structure for table `game_prize` */

DROP TABLE IF EXISTS `game_prize`;

CREATE TABLE `game_prize` (
  `id` int(11) NOT NULL auto_increment,
  `prize_type` varchar(100) default NULL,
  `prize_display` varchar(200) default NULL,
  `u_passprot` varchar(50) default NULL,
  `u_pk` int(11) default '0',
  `u_name` varchar(50) default NULL,
  `p_pk` int(11) default '0',
  `state` int(11) default '0',
  `prop` varchar(100) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

/*Table structure for table `game_prize_info` */

DROP TABLE IF EXISTS `game_prize_info`;

CREATE TABLE `game_prize_info` (
  `id` int(11) NOT NULL auto_increment,
  `u_pk` int(11) default NULL,
  `p_pk` int(11) default NULL,
  `content` varchar(100) default NULL,
  `creat_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

/*Table structure for table `game_sellinfo_record` */

DROP TABLE IF EXISTS `game_sellinfo_record`;

CREATE TABLE `game_sellinfo_record` (
  `s_pk` int(11) NOT NULL auto_increment,
  `p_pk_give` int(11) default NULL,
  `p_pk_have` int(11) default NULL,
  `prop_type` int(11) default NULL,
  `prop_id` int(11) default NULL,
  `s_num` int(11) default NULL,
  `money` varchar(15) default NULL,
  `s_date` varchar(30) default NULL,
  PRIMARY KEY  (`s_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=13627 DEFAULT CHARSET=gbk;

/*Table structure for table `game_statistics` */

DROP TABLE IF EXISTS `game_statistics`;

CREATE TABLE `game_statistics` (
  `gs_id` int(11) NOT NULL auto_increment,
  `prop_id` int(11) default NULL,
  `prop_type` int(11) default NULL,
  `prop_num` int(11) default NULL,
  `prop_approach_type` varchar(20) default NULL,
  `prop_approach` varchar(20) default NULL,
  `date` varchar(20) default NULL,
  `time` varchar(20) default NULL,
  PRIMARY KEY  (`gs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=172966 DEFAULT CHARSET=gbk;

/*Table structure for table `game_statistics_prop` */

DROP TABLE IF EXISTS `game_statistics_prop`;

CREATE TABLE `game_statistics_prop` (
  `gsp_id` int(11) NOT NULL auto_increment,
  `prop_id` int(11) default NULL,
  `prop_type` int(11) default NULL,
  `date` varchar(20) default NULL,
  `time` varchar(20) default NULL,
  PRIMARY KEY  (`gsp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `help` */

DROP TABLE IF EXISTS `help`;

CREATE TABLE `help` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `super_id` int(11) default '0',
  `name` varchar(100) NOT NULL,
  `des` text,
  `shunxu` int(11) default '0',
  `scene_id` int(12) default '0',
  `level_limit` int(2) default '0',
  `type` int(2) default '0',
  `link_name` varchar(50) default NULL,
  `task_men` int(2) default '0',
  `task_zu` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `injure_recond_info` */

DROP TABLE IF EXISTS `injure_recond_info`;

CREATE TABLE `injure_recond_info` (
  `injure_id` int(10) unsigned NOT NULL auto_increment,
  `tong_id` int(11) default NULL,
  `injure_number` int(50) default NULL,
  `npc_ID` int(11) default NULL,
  `npc_Type` smallint(6) default NULL,
  PRIMARY KEY  (`injure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `instance_archive` */

DROP TABLE IF EXISTS `instance_archive`;

CREATE TABLE `instance_archive` (
  `p_pk` int(11) default NULL,
  `map_id` int(11) default NULL,
  `dead_boss_record` varchar(200) default NULL,
  `create_time` datetime default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `leitai_role` */

DROP TABLE IF EXISTS `leitai_role`;

CREATE TABLE `leitai_role` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lei_id` int(12) NOT NULL default '0',
  `ppk` int(12) NOT NULL default '0',
  `killman` int(12) NOT NULL default '0',
  `dead` int(12) NOT NULL default '0',
  `pname` varchar(50) NOT NULL,
  `killtime` datetime default NULL COMMENT '杀人事件',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `leitaibaoming` */

DROP TABLE IF EXISTS `leitaibaoming`;

CREATE TABLE `leitaibaoming` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `ppk` int(16) NOT NULL default '0',
  `zu` int(1) NOT NULL default '0' COMMENT '报名的组：青龙（0），朱雀（1），白虎（2），玄武（3）',
  `win` int(2) default '0',
  `dead` int(2) default '0',
  `isComein` int(2) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `n_dropgoods_pk` */

DROP TABLE IF EXISTS `n_dropgoods_pk`;

CREATE TABLE `n_dropgoods_pk` (
  `dp_pk` int(11) NOT NULL auto_increment,
  `a_p_pk` int(11) default NULL,
  `b_p_pk` int(11) default NULL,
  `drop_num` int(11) default NULL,
  `goods_id` int(11) default NULL,
  `goods_name` varchar(20) default NULL,
  `goods_type` int(11) default NULL,
  `goods_quality` int(11) default '0',
  PRIMARY KEY  (`dp_pk`),
  KEY `Index1` (`a_p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `npc_dead_record` */

DROP TABLE IF EXISTS `npc_dead_record`;

CREATE TABLE `npc_dead_record` (
  `id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `npc_id` int(11) default NULL,
  `scene_id` int(11) default NULL,
  `map_id` int(11) default NULL,
  `npc_deadtime` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`p_pk`,`scene_id`,`npc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `p_credit_relation` */

DROP TABLE IF EXISTS `p_credit_relation`;

CREATE TABLE `p_credit_relation` (
  `pcid` int(11) NOT NULL auto_increment,
  `ppk` int(11) default NULL,
  `cid` int(11) default NULL,
  `pcount` int(11) default '0',
  PRIMARY KEY  (`pcid`)
) ENGINE=MyISAM AUTO_INCREMENT=13297 DEFAULT CHARSET=gbk;

/*Table structure for table `p_menpaicontest` */

DROP TABLE IF EXISTS `p_menpaicontest`;

CREATE TABLE `p_menpaicontest` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `p_name` varchar(10) default NULL,
  `p_type` int(11) default NULL,
  `into_state` int(11) default '0',
  `into_time` datetime default NULL,
  `out_time` datetime default NULL,
  `win_state` int(11) default '0',
  `win_time` datetime default NULL,
  `kill_num` int(11) default '0',
  `old_kill_num` int(11) default '0',
  `kill_time` datetime default NULL,
  `win_num` int(11) default '0',
  `win_num_time` datetime default '0000-00-00 00:00:00',
  `kill_p_pk` int(11) default NULL,
  `kill_p_pk_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `p_pet_info` */

DROP TABLE IF EXISTS `p_pet_info`;

CREATE TABLE `p_pet_info` (
  `pet_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `pet_id` int(11) default NULL,
  `pet_name` varchar(20) default NULL,
  `pet_nickname` varchar(20) default NULL,
  `pet_grade` int(11) default NULL,
  `pet_exp` int(11) default NULL,
  `pet_ben_exp` int(11) default '0',
  `pet_xia_exp` int(11) default NULL,
  `pet_gj_xiao` int(11) default NULL,
  `pet_gj_da` int(11) default NULL,
  `pet_sale` int(11) default NULL,
  `pet_img` varchar(50) default NULL,
  `pet_grow` double default NULL,
  `pet_wx` int(11) default NULL,
  `pet_wx_value` int(11) default NULL,
  `pet_skill_one` int(11) default NULL,
  `pet_skill_two` int(11) default NULL,
  `pet_skill_three` int(11) default NULL,
  `pet_skill_four` int(11) default NULL,
  `pet_skill_five` int(11) default NULL,
  `pet_life` int(11) default NULL,
  `pet_isAutoGrow` int(11) default NULL,
  `pet_isBring` int(11) default NULL,
  `pet_fatigue` int(11) default NULL,
  `pet_longe` int(11) default NULL,
  `longe_number` int(11) default NULL,
  `longe_number_ok` int(11) default NULL,
  `skill_control` int(11) default NULL,
  `pet_type` int(11) default NULL,
  `pet_init_num` int(11) default '0',
  `pet_violence_drop` double default NULL,
  PRIMARY KEY  (`pet_pk`),
  KEY `Index1` (`pet_pk`,`p_pk`,`pet_id`),
  KEY `Index2` (`p_pk`,`pet_isBring`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `p_record_login` */

DROP TABLE IF EXISTS `p_record_login`;

CREATE TABLE `p_record_login` (
  `id` int(11) NOT NULL auto_increment,
  `u_pk` int(11) default NULL,
  `loginStatus` mediumint(9) default NULL,
  `loginTime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `p_unchartedroom` */

DROP TABLE IF EXISTS `p_unchartedroom`;

CREATE TABLE `p_unchartedroom` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `into_state` int(11) default '0',
  `into_num` int(11) default '0',
  `into_time` datetime default NULL,
  `out_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `p_wishingtree` */

DROP TABLE IF EXISTS `p_wishingtree`;

CREATE TABLE `p_wishingtree` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `p_name` varchar(10) default NULL,
  `wishing` varchar(100) default NULL,
  `top` int(11) default '0',
  `create_time` datetime default NULL,
  `top_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `pk_active_regist` */

DROP TABLE IF EXISTS `pk_active_regist`;

CREATE TABLE `pk_active_regist` (
  `ID` int(11) NOT NULL auto_increment,
  `roleID` int(11) NOT NULL,
  `roleLevel` int(11) NOT NULL,
  `roleName` varchar(11) NOT NULL,
  `registTime` datetime NOT NULL,
  `isWin` int(11) NOT NULL default '0',
  `isEnter` int(11) NOT NULL default '1',
  `isGetPrice` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `pk_dropgoods_notify` */

DROP TABLE IF EXISTS `pk_dropgoods_notify`;

CREATE TABLE `pk_dropgoods_notify` (
  `pn_pk` int(11) NOT NULL auto_increment,
  `a_p_pk` int(11) default NULL,
  `b_p_pk` int(11) default NULL,
  `drop_num` int(11) default NULL,
  `goods_id` int(11) default NULL,
  `goods_name` varchar(20) default NULL,
  `goods_type` int(11) default NULL,
  `goods_quality` int(11) default '0',
  PRIMARY KEY  (`pn_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `pk_vs` */

DROP TABLE IF EXISTS `pk_vs`;

CREATE TABLE `pk_vs` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `roleAID` int(11) NOT NULL,
  `roleBID` int(11) NOT NULL,
  `roleAName` varchar(30) NOT NULL,
  `roleBName` varchar(30) NOT NULL,
  `winRoleID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `rank` */

DROP TABLE IF EXISTS `rank`;

CREATE TABLE `rank` (
  `id` int(16) NOT NULL auto_increment,
  `p_pk` int(16) NOT NULL,
  `p_name` varchar(50) default NULL,
  `p_menpai` varchar(50) default NULL,
  `p_level` int(2) NOT NULL default '1',
  `p_level_time` datetime default NULL COMMENT '等级修改时间',
  `p_exp` int(32) NOT NULL default '0' COMMENT '角色经验',
  `p_exp_time` datetime default NULL COMMENT '修改角色时间',
  `exp_tong` int(1) NOT NULL default '0' COMMENT '是否统计',
  `kill` int(5) NOT NULL default '0' COMMENT '杀人数',
  `kill_time` datetime default NULL COMMENT '杀人时间',
  `dear` int(7) NOT NULL default '0' COMMENT '爱情甜蜜',
  `who` varchar(50) default NULL COMMENT '和谁的爱情甜蜜',
  `dear_time` datetime default NULL COMMENT '爱情甜蜜修改时间',
  `evil` int(7) NOT NULL default '0' COMMENT '罪恶值',
  `evil_time` datetime default NULL COMMENT '罪恶修改时间',
  `glory` int(7) NOT NULL default '0' COMMENT '荣誉榜',
  `glory_time` datetime default NULL COMMENT '荣誉时间',
  `money` bigint(32) NOT NULL default '0' COMMENT '金钱',
  `money_time` datetime default NULL COMMENT '金钱时间',
  `yuanbao` int(8) NOT NULL default '0' COMMENT '元宝',
  `yuanbao_time` datetime default NULL COMMENT '元宝修改时间',
  `credit` int(8) NOT NULL default '0' COMMENT '角色声望',
  `credit_time` datetime default NULL COMMENT '角色声望修改时间',
  `open` int(8) NOT NULL default '0' COMMENT '开宝箱数量',
  `open_time` datetime default NULL COMMENT '开宝箱数量修改时间',
  `vip` int(8) NOT NULL default '0' COMMENT 'VIP等级',
  `vip_eff` int(8) NOT NULL default '0' COMMENT 'VIP作用时间',
  `vip_time` datetime default NULL COMMENT 'VIP等级修改时间',
  `bangkill` int(8) NOT NULL default '0' COMMENT '帮派杀人数（野战/帮战/攻城）数量',
  `bangkill_time` datetime default NULL COMMENT '帮派杀人数（野战/帮战/攻城）修改时间',
  `killnpc` int(8) NOT NULL default '0' COMMENT '杀怪点数（点数=怪物等级，副本怪物点数×2）',
  `killnpc_time` datetime default NULL COMMENT '杀怪点数（点数=怪物等级，副本怪物点数×2）修改时间',
  `wei_task` int(8) NOT NULL default '0' COMMENT '任务完成时获得的威望',
  `wei_other` int(8) NOT NULL default '0' COMMENT '其他活动获得威望',
  `wei_time` datetime default NULL COMMENT '威望修改时间',
  `dead` int(8) NOT NULL default '0' COMMENT '被人/怪杀死次数',
  `dead_time` datetime default NULL COMMENT '被人/怪杀死修改时间',
  `killboss` int(8) NOT NULL default '0' COMMENT '野外击杀Boss的点数（点数=Boss等级；副本Boss获得点数×',
  `killboss_time` datetime default NULL COMMENT '野外击杀Boss修改时间',
  `zhong` int(8) NOT NULL default '0' COMMENT '在线时间',
  `zhong_time` datetime default NULL COMMENT '在线时间修改时间',
  `sale` int(8) NOT NULL default '0' COMMENT '拍卖场里拍卖物品被卖掉的次数',
  `sale_time` datetime default NULL COMMENT '拍卖量修改时间',
  `yi` int(8) NOT NULL default '0' COMMENT '义气度最高的两个人',
  `yi_who` varchar(50) default NULL COMMENT '和谁的义气',
  `yi_time` datetime default NULL COMMENT '义气修改时间',
  `ans` int(8) NOT NULL default '0' COMMENT '答题正确条数',
  `ans_time` datetime default NULL COMMENT '答题正确条数修改时间',
  `meng` int(8) NOT NULL default '0' COMMENT '完成副本后的点数记录',
  `meng_time` datetime default NULL COMMENT '完成副本后的点数修改时间',
  `boyi` bigint(20) default '0' COMMENT '博弈',
  `boyi_time` datetime default NULL COMMENT '博弈修改时间',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`),
  KEY `p_pk` (`p_pk`),
  KEY `p_exp` (`p_exp`,`p_exp_time`),
  KEY `kill` (`kill`,`kill_time`),
  KEY `dear` (`dear`,`dear_time`),
  KEY `evil` (`evil`,`evil_time`),
  KEY `glory` (`glory`,`glory_time`),
  KEY `money` (`money`,`money_time`),
  KEY `yuanbao` (`yuanbao`,`yuanbao_time`),
  KEY `credit` (`credit`,`credit_time`),
  KEY `open` (`open`,`open_time`),
  KEY `vip` (`vip`,`vip_eff`,`vip_time`),
  KEY `bangkill` (`bangkill`,`bangkill_time`),
  KEY `killnpc` (`killnpc`,`killnpc_time`),
  KEY `wei_task` (`wei_task`,`wei_other`,`wei_time`),
  KEY `killboss` (`killboss`,`killboss_time`),
  KEY `zhong` (`zhong`,`zhong_time`),
  KEY `sale` (`sale`,`sale_time`),
  KEY `yi` (`yi`,`yi_time`),
  KEY `ans` (`ans`,`ans_time`),
  KEY `meng` (`meng`,`meng_time`),
  KEY `biyi` (`boyi`,`boyi_time`)
) ENGINE=InnoDB AUTO_INCREMENT=66106 DEFAULT CHARSET=gbk;

/*Table structure for table `role_be_off` */

DROP TABLE IF EXISTS `role_be_off`;

CREATE TABLE `role_be_off` (
  `off_id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `be_off_time` varchar(50) default NULL,
  `already_time` varchar(50) default '0',
  `be_off_exp` varchar(50) default '0',
  `prop_cumulate_time` varchar(50) default '0',
  PRIMARY KEY  (`off_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `role_be_off_buff` */

DROP TABLE IF EXISTS `role_be_off_buff`;

CREATE TABLE `role_be_off_buff` (
  `b_id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `be_off_time` varchar(50) default '0',
  `be_off_exp` varchar(50) default '0',
  PRIMARY KEY  (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `s_lottery_yuanbao` */

DROP TABLE IF EXISTS `s_lottery_yuanbao`;

CREATE TABLE `s_lottery_yuanbao` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lottery_date` varchar(20) default NULL,
  `lottery_all_yb` varchar(20) default NULL,
  `lottery_catch_yb` varchar(20) default NULL,
  `lottery_content` varchar(20) default NULL,
  `lottery_catch_player` varchar(20) default NULL,
  `lottery_create_time` varchar(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`lottery_date`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `s_setting_info` */

DROP TABLE IF EXISTS `s_setting_info`;

CREATE TABLE `s_setting_info` (
  `setting_id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `goods_pic` tinyint(4) default '-1',
  `person_pic` tinyint(4) default '-1',
  `npc_pic` tinyint(4) default '-1',
  `pet_pic` tinyint(4) default '-1',
  `operate_pic` tinyint(4) default '-1',
  `deal_control` tinyint(4) default '1',
  `public_comm` tinyint(4) default '1',
  `camp_comm` tinyint(4) default '1',
  `duiwu_comm` tinyint(4) default '1',
  `tong_comm` tinyint(4) default '1',
  `secret_comm` tinyint(4) default '1',
  `index_comm` tinyint(4) default '-1',
  `npc_hp_position` tinyint(4) default '-1',
  PRIMARY KEY  (`setting_id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=66015 DEFAULT CHARSET=gbk;

/*Table structure for table `s_system_info` */

DROP TABLE IF EXISTS `s_system_info`;

CREATE TABLE `s_system_info` (
  `sysInfo_id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `info_type` int(11) default NULL,
  `system_info` varchar(300) default NULL,
  `happen_time` datetime default NULL,
  PRIMARY KEY  (`sysInfo_id`),
  KEY `Index1` (`p_pk`,`info_type`),
  KEY `Index2` (`info_type`,`happen_time`)
) ENGINE=InnoDB AUTO_INCREMENT=4082557 DEFAULT CHARSET=gbk;

/*Table structure for table `s_user_info` */

DROP TABLE IF EXISTS `s_user_info`;

CREATE TABLE `s_user_info` (
  `u_pk` smallint(5) unsigned NOT NULL auto_increment,
  `u_name` varchar(200) default NULL,
  `u_nname` varchar(200) default NULL,
  `u_paw` varchar(200) default NULL,
  `a_module` varchar(200) default NULL,
  `a_admin` int(11) NOT NULL,
  `c_content` varchar(800) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`u_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `shitu` */

DROP TABLE IF EXISTS `shitu`;

CREATE TABLE `shitu` (
  `id` bigint(20) NOT NULL auto_increment,
  `te_id` bigint(20) default '0',
  `stu_id` bigint(20) default '0',
  `te_name` varchar(255) default NULL,
  `stu_name` varchar(255) default NULL,
  `te_level` bigint(20) default '0',
  `stu_level` bigint(20) default '0',
  `tim` varchar(255) default NULL,
  `chuangong` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`stu_id`,`te_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12707 DEFAULT CHARSET=gbk;

/*Table structure for table `sys_prize` */

DROP TABLE IF EXISTS `sys_prize`;

CREATE TABLE `sys_prize` (
  `id` int(11) NOT NULL auto_increment,
  `u_passport` varchar(50) default NULL,
  `prop_id` int(11) default NULL,
  `prop_num` int(11) default NULL,
  `content` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `system_hortation_info` */

DROP TABLE IF EXISTS `system_hortation_info`;

CREATE TABLE `system_hortation_info` (
  `horta_id` int(10) unsigned NOT NULL auto_increment,
  `horta_type` int(11) default NULL,
  `horta_name` varchar(100) default NULL,
  `horta_son_id` int(11) default NULL,
  `horta_son_name` varchar(100) default NULL,
  `vip_grade` varchar(10) default NULL,
  `online_time` int(30) default NULL,
  `wj_grade` varchar(10) default NULL,
  `wj_sex` enum('0','1','2') default NULL,
  `wj_menpai` enum('0','1','2','3') default NULL,
  `wj_title` varchar(100) default NULL,
  `wj_credit` varchar(10) default NULL,
  `wj_next` varchar(10) default NULL,
  `is_only_one` enum('0','1','2','3','4','5','6','7','8','9') default NULL,
  `onces` int(3) default NULL,
  `give_goods` varchar(100) default NULL,
  `isuseable` int(3) default '1',
  `horta_display` varchar(100) default NULL,
  PRIMARY KEY  (`horta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `t_online` */

DROP TABLE IF EXISTS `t_online`;

CREATE TABLE `t_online` (
  `onlineid` int(11) NOT NULL auto_increment,
  `onlinecount` int(11) default '0',
  PRIMARY KEY  (`onlineid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_account_record` */

DROP TABLE IF EXISTS `u_account_record`;

CREATE TABLE `u_account_record` (
  `id` int(11) NOT NULL auto_increment,
  `u_pk` int(11) default NULL,
  `p_pk` int(11) default NULL,
  `code` varchar(50) default NULL,
  `pwd` varchar(50) default NULL,
  `money` int(11) default NULL,
  `channel` varchar(50) default NULL,
  `account_state` varchar(50) default NULL,
  `account_time` datetime default NULL,
  `payment_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_auction` */

DROP TABLE IF EXISTS `u_auction`;

CREATE TABLE `u_auction` (
  `auction_id` int(11) NOT NULL auto_increment,
  `u_pk` int(11) default NULL,
  `p_pk` int(11) default NULL,
  `auction_type` int(11) default NULL,
  `pay_type` int(11) default '0',
  `goods_id` int(11) default NULL,
  `goods_name` varchar(20) default NULL,
  `goods_number` int(11) default NULL,
  `auction_price` varchar(50) default NULL,
  `auction_price_auction` varchar(50) default '0',
  `buy_price` varchar(50) default NULL,
  `auction_time` datetime default NULL,
  `auction_upk` int(11) default NULL,
  `auction_ppk` int(11) default NULL,
  `auction_start_time` datetime default NULL,
  `auction_failed` int(11) default NULL,
  `auction_sell` int(11) default NULL,
  `buy_name` varchar(20) default NULL,
  `prop_use_control` int(11) default NULL,
  `table_type` int(11) default NULL,
  `goods_type` int(11) default NULL,
  `w_durability` int(11) default NULL,
  `w_dura_consume` int(11) default NULL,
  `w_Bonding` int(11) default NULL,
  `w_protect` int(11) default NULL,
  `w_isReconfirm` int(11) default NULL,
  `w_price` int(11) default NULL,
  `w_fy_xiao` int(11) default '0',
  `w_fy_da` int(11) default '0',
  `w_gj_xiao` int(11) default '0',
  `w_gj_da` int(11) default '0',
  `w_hp` int(11) default '0',
  `w_mp` int(11) default '0',
  `w_jin_fy` int(11) default '0',
  `w_mu_fy` int(11) default '0',
  `w_shui_fy` int(11) default '0',
  `w_huo_fy` int(11) default '0',
  `w_tu_fy` int(11) default '0',
  `w_jin_gj` int(11) default '0',
  `w_mu_gj` int(11) default '0',
  `w_shui_gj` int(11) default '0',
  `w_huo_gj` int(11) default '0',
  `w_tu_gj` int(11) default '0',
  `w_quality` int(11) default NULL,
  `w_wx_type` int(11) default NULL,
  `suit_id` int(11) default '0',
  `w_buff_isEffected` int(11) default '0',
  `enchant_type` varchar(20) default '0',
  `enchant_value` int(11) default '0',
  `w_zj_hp` varchar(10) default NULL,
  `w_zj_mp` varchar(10) default NULL,
  `w_zj_wxgj` varchar(10) default NULL,
  `w_zj_wxfy` varchar(10) default NULL,
  `w_zb_grade` int(11) default NULL,
  `w_Bonding_Num` int(11) default '0',
  `specialcontent` int(11) default '0',
  PRIMARY KEY  (`auction_id`),
  KEY `Index1` (`auction_type`),
  KEY `Index2` (`auction_failed`,`auction_sell`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

/*Table structure for table `u_auction_info` */

DROP TABLE IF EXISTS `u_auction_info`;

CREATE TABLE `u_auction_info` (
  `auction_info_id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `auction_info` varchar(200) default NULL,
  `addInfoTime` datetime default NULL,
  PRIMARY KEY  (`auction_info_id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=55588 DEFAULT CHARSET=gbk;

/*Table structure for table `u_auction_pet` */

DROP TABLE IF EXISTS `u_auction_pet`;

CREATE TABLE `u_auction_pet` (
  `auction_id` int(11) NOT NULL auto_increment,
  `auction_status` int(11) default NULL,
  `pet_price` int(11) default NULL,
  `pet_auction_time` datetime default NULL,
  `pet_pk` int(11) default NULL,
  `p_pk` int(11) default NULL,
  `pet_id` int(11) default NULL,
  `pet_name` varchar(20) default NULL,
  `pet_nickname` varchar(20) default NULL,
  `pet_grade` int(11) default NULL,
  `pet_exp` varchar(15) default NULL,
  `pet_ben_exp` varchar(15) default '0',
  `pet_xia_exp` varchar(15) default NULL,
  `pet_gj_xiao` int(11) default NULL,
  `pet_gj_da` int(11) default NULL,
  `pet_sale` int(11) default NULL,
  `pet_img` varchar(100) default NULL,
  `pet_grow` double default NULL,
  `pet_wx` int(11) default NULL,
  `pet_wx_value` int(11) default NULL,
  `pet_skill_one` int(11) default NULL,
  `pet_skill_two` int(11) default NULL,
  `pet_skill_three` int(11) default NULL,
  `pet_skill_four` int(11) default NULL,
  `pet_skill_five` int(11) default NULL,
  `pet_life` int(11) default NULL,
  `pet_isAutoGrow` int(11) default NULL,
  `pet_type` int(11) default NULL,
  `pet_isBring` int(11) default NULL,
  `pet_fatigue` int(11) default NULL,
  `pet_longe` int(11) default NULL,
  `longe_number` int(11) default NULL,
  `longe_number_ok` int(11) default NULL,
  `skill_control` int(11) default NULL,
  `pet_init_num` int(11) default NULL,
  `pet_violence_drop` double default NULL,
  PRIMARY KEY  (`auction_id`),
  KEY `Index1` (`auction_status`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_auction_yb` */

DROP TABLE IF EXISTS `u_auction_yb`;

CREATE TABLE `u_auction_yb` (
  `uyb_id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `uyb_state` int(11) default NULL,
  `yb_num` int(11) default NULL,
  `yb_price` int(11) default NULL,
  `auction_time` datetime default NULL,
  PRIMARY KEY  (`uyb_id`),
  KEY `Index1` (`uyb_state`,`auction_time`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

/*Table structure for table `u_auctionpet_info` */

DROP TABLE IF EXISTS `u_auctionpet_info`;

CREATE TABLE `u_auctionpet_info` (
  `auctionpet_info_id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `auction_pet_info` varchar(200) default NULL,
  `addInfoTime` datetime default NULL,
  PRIMARY KEY  (`auctionpet_info_id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_auctionyb_auctioninfo` */

DROP TABLE IF EXISTS `u_auctionyb_auctioninfo`;

CREATE TABLE `u_auctionyb_auctioninfo` (
  `yb_info_id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `buy_ppk` int(11) default NULL,
  `jilu_string` varchar(200) default NULL,
  `auction_time` datetime default NULL,
  PRIMARY KEY  (`yb_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Table structure for table `u_automatism` */

DROP TABLE IF EXISTS `u_automatism`;

CREATE TABLE `u_automatism` (
  `a_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `sc_type` int(11) default NULL,
  `operate_id` int(11) default NULL,
  `object` int(11) default NULL,
  PRIMARY KEY  (`a_pk`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_avoidpkprop` */

DROP TABLE IF EXISTS `u_avoidpkprop`;

CREATE TABLE `u_avoidpkprop` (
  `a_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `begin_time` datetime default NULL,
  `end_time` datetime default NULL,
  PRIMARY KEY  (`a_pk`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_blacklist` */

DROP TABLE IF EXISTS `u_blacklist`;

CREATE TABLE `u_blacklist` (
  `b_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `bl_pk` int(11) default NULL,
  `b_name` varchar(20) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`b_pk`),
  KEY `Index1` (`p_pk`,`bl_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=1085 DEFAULT CHARSET=gbk;

/*Table structure for table `u_box_info` */

DROP TABLE IF EXISTS `u_box_info`;

CREATE TABLE `u_box_info` (
  `id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `p_grade` int(11) default NULL,
  `prop_id` int(11) default NULL,
  `prop_name` varchar(20) default NULL,
  `prop_quality` int(11) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_box_record` */

DROP TABLE IF EXISTS `u_box_record`;

CREATE TABLE `u_box_record` (
  `br_id` int(10) unsigned NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `info_type` varchar(50) default NULL,
  `content` varchar(100) default NULL,
  `createtime` datetime default NULL,
  PRIMARY KEY  (`br_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_buffeffect_info` */

DROP TABLE IF EXISTS `u_buffeffect_info`;

CREATE TABLE `u_buffeffect_info` (
  `bf_pk` int(11) NOT NULL auto_increment,
  `buff_id` int(11) default NULL,
  `buff_name` varchar(20) default NULL,
  `buff_display` varchar(80) default NULL,
  `buff_type` int(11) default NULL,
  `buff_effect_value` int(11) default NULL,
  `spare_bout` int(11) default NULL,
  `buff_bout` int(11) default '0',
  `buff_time` int(11) default '0',
  `use_time` datetime default NULL,
  `buff_use_mode` int(11) default NULL,
  `buff_bout_overlap` int(11) default '0',
  `buff_time_overlap` int(11) default '0',
  `effect_object` int(11) default NULL,
  `effect_object_type` int(11) default NULL,
  PRIMARY KEY  (`bf_pk`),
  KEY `Index1` (`buff_bout`,`effect_object`),
  KEY `Index2` (`effect_object`,`effect_object_type`,`buff_type`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=gbk;

/*Table structure for table `u_coordinate_info` */

DROP TABLE IF EXISTS `u_coordinate_info`;

CREATE TABLE `u_coordinate_info` (
  `c_pk` smallint(5) unsigned NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `coordinate_prop_id` int(11) default NULL,
  `coordinate` int(11) default NULL,
  `prop_isUse` int(11) default '0',
  PRIMARY KEY  (`c_pk`),
  KEY `Index1` (`p_pk`,`coordinate_prop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

/*Table structure for table `u_embargo` */

DROP TABLE IF EXISTS `u_embargo`;

CREATE TABLE `u_embargo` (
  `e_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `p_name` varchar(20) default NULL,
  `begin_time` datetime default NULL,
  `end_time` datetime default NULL,
  `e_time` varchar(100) default NULL,
  PRIMARY KEY  (`e_pk`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_envelop` */

DROP TABLE IF EXISTS `u_envelop`;

CREATE TABLE `u_envelop` (
  `e_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `p_name` varchar(20) default NULL,
  `begin_time` datetime default NULL,
  `end_time` datetime default NULL,
  `e_time` varchar(100) default NULL,
  `e_type` int(11) default NULL,
  `e_state` int(11) default NULL,
  `e_num` int(11) default NULL,
  PRIMARY KEY  (`e_pk`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_equip_msg` */

DROP TABLE IF EXISTS `u_equip_msg`;

CREATE TABLE `u_equip_msg` (
  `e_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `msg_type` int(11) default NULL,
  `e_msg` varchar(500) default NULL,
  PRIMARY KEY  (`e_pk`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_friend` */

DROP TABLE IF EXISTS `u_friend`;

CREATE TABLE `u_friend` (
  `f_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `fd_pk` int(11) default NULL,
  `fd_name` varchar(20) default NULL,
  `fd_online` int(11) default '0',
  `create_time` datetime default NULL,
  `relation` int(11) default '0',
  `dear` int(11) default '0',
  `exp_share` int(11) default '0',
  `love_dear` int(11) default '0',
  `tim` varchar(20) default NULL,
  PRIMARY KEY  (`f_pk`),
  KEY `Index1` (`p_pk`,`fd_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=24763 DEFAULT CHARSET=gbk;

/*Table structure for table `u_goldbox_num_info` */

DROP TABLE IF EXISTS `u_goldbox_num_info`;

CREATE TABLE `u_goldbox_num_info` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `u_pk` int(11) default NULL,
  `p_pk` int(11) default NULL,
  `goldbox_num` int(11) default '0',
  `cteate_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_groupnotify_info` */

DROP TABLE IF EXISTS `u_groupnotify_info`;

CREATE TABLE `u_groupnotify_info` (
  `n_pk` int(11) NOT NULL auto_increment,
  `notifyed_pk` int(11) default NULL,
  `create_notify_pk` int(11) default NULL,
  `notify_content` varchar(200) default NULL,
  `notify_type` int(11) default NULL,
  `create_time` datetime default NULL,
  `notify_flag` int(11) default '0',
  PRIMARY KEY  (`n_pk`),
  KEY `Index1` (`notifyed_pk`,`n_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_hp_up` */

DROP TABLE IF EXISTS `u_hp_up`;

CREATE TABLE `u_hp_up` (
  `hu_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `hp_up` int(11) default '0',
  PRIMARY KEY  (`hu_pk`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_information` */

DROP TABLE IF EXISTS `u_information`;

CREATE TABLE `u_information` (
  `u_pk` int(11) default NULL,
  `id` varchar(30) default NULL,
  `type` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_laborage` */

DROP TABLE IF EXISTS `u_laborage`;

CREATE TABLE `u_laborage` (
  `laborage_id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `laborage_this_time` int(11) default NULL,
  `laborage_old_time` int(11) default NULL,
  `laborage_catch` int(11) default NULL,
  PRIMARY KEY  (`laborage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66015 DEFAULT CHARSET=gbk;

/*Table structure for table `u_login_info` */

DROP TABLE IF EXISTS `u_login_info`;

CREATE TABLE `u_login_info` (
  `u_pk` int(11) NOT NULL auto_increment,
  `u_name` varchar(20) default NULL,
  `u_paw` varchar(50) default NULL,
  `login_state` int(11) default NULL,
  `create_time` datetime default NULL,
  `last_login_ip` varchar(20) default NULL,
  `last_login_time` datetime default NULL,
  `yuanbao` int(11) default '0',
  `jifen` int(11) default '0',
  PRIMARY KEY  (`u_pk`),
  KEY `Index1` (`login_state`)
) ENGINE=InnoDB AUTO_INCREMENT=85034 DEFAULT CHARSET=gbk;

/*Table structure for table `u_login_sift` */

DROP TABLE IF EXISTS `u_login_sift`;

CREATE TABLE `u_login_sift` (
  `s_pk` int(11) NOT NULL auto_increment,
  `u_name` varchar(20) default NULL,
  PRIMARY KEY  (`s_pk`),
  KEY `Index1` (`u_name`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_lottery_info` */

DROP TABLE IF EXISTS `u_lottery_info`;

CREATE TABLE `u_lottery_info` (
  `lottery_info_id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `lottery_num` int(11) default NULL,
  `lottery_win_num` int(11) default NULL,
  `lottery_catch_money` int(11) default NULL,
  `lottery_per_bonus` int(11) default NULL,
  `lottery_bonus_multiple` int(11) default NULL,
  `lottery_charity` int(11) default NULL,
  `lottery_all_bonus` int(11) default NULL,
  PRIMARY KEY  (`lottery_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_lottery_number` */

DROP TABLE IF EXISTS `u_lottery_number`;

CREATE TABLE `u_lottery_number` (
  `lottery_id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `lottery_number` varchar(200) default NULL,
  `lottery_type` int(11) default NULL,
  `lottery_per_money` int(11) default NULL,
  PRIMARY KEY  (`lottery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_lottery_yuanbao` */

DROP TABLE IF EXISTS `u_lottery_yuanbao`;

CREATE TABLE `u_lottery_yuanbao` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `lottery_date` varchar(20) default NULL,
  `lottery_content` varchar(20) default NULL,
  `lottery_zhu` int(11) default NULL,
  `lottery_time` datetime default NULL,
  `lottery_bonus_lv` int(11) default '0',
  `lottery_bonus` bigint(20) default '0',
  `is_have` int(11) default '0',
  `have_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`lottery_date`,`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_mail_bonus` */

DROP TABLE IF EXISTS `u_mail_bonus`;

CREATE TABLE `u_mail_bonus` (
  `id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `mail_id` int(11) default NULL,
  `bonus` varchar(100) default NULL,
  `is_have` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17327 DEFAULT CHARSET=gbk;

/*Table structure for table `u_mail_info` */

DROP TABLE IF EXISTS `u_mail_info`;

CREATE TABLE `u_mail_info` (
  `mail_id` int(11) NOT NULL auto_increment,
  `receive_pk` int(11) default NULL,
  `send_pk` int(11) default NULL,
  `mail_type` int(11) default NULL,
  `title` varchar(100) default NULL,
  `content` text,
  `unread` int(11) default NULL,
  `improtant` int(11) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`mail_id`),
  KEY `Index1` (`receive_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=2762596 DEFAULT CHARSET=gbk;

/*Table structure for table `u_mall_log` */

DROP TABLE IF EXISTS `u_mall_log`;

CREATE TABLE `u_mall_log` (
  `id` int(11) NOT NULL auto_increment,
  `u_pk` int(11) default NULL,
  `role_name` varchar(20) default NULL,
  `mall_log` varchar(100) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`u_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

/*Table structure for table `u_mounts_table` */

DROP TABLE IF EXISTS `u_mounts_table`;

CREATE TABLE `u_mounts_table` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `level` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `carryNum1` int(11) NOT NULL,
  `overPay1` int(11) NOT NULL,
  `carryNum2` int(11) default NULL,
  `overPay2` int(11) default NULL,
  `uplevelPay` int(11) NOT NULL,
  `image` varchar(20) default NULL,
  `display` varchar(50) default NULL,
  `functionDisplay` varchar(20) default NULL,
  `buff` int(11) default NULL,
  `sentPrice` int(11) default NULL,
  `nextLevelID` varchar(100) default NULL,
  `hightLevel` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_mounts_temp` */

DROP TABLE IF EXISTS `u_mounts_temp`;

CREATE TABLE `u_mounts_temp` (
  `id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) NOT NULL,
  `mountID` int(11) NOT NULL,
  `mountName` varchar(20) default NULL,
  `mountLevel` int(11) default NULL,
  `mountType` int(11) default NULL,
  `mountState` int(11) default NULL,
  `getTime` datetime default NULL,
  `nextLevelID` varchar(100) default NULL,
  `hightLevel` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=gbk;

/*Table structure for table `u_part_equip` */

DROP TABLE IF EXISTS `u_part_equip`;

CREATE TABLE `u_part_equip` (
  `pw_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `equip_id` int(11) default NULL,
  `equip_type` int(11) default NULL,
  `w_name` varchar(20) default NULL,
  `cur_endure` int(11) default NULL COMMENT '当前剩余耐久',
  `w_Bonding` int(11) default '0',
  `w_fy_xiao` int(11) default '0',
  `w_fy_da` int(11) default '0',
  `w_gj_xiao` int(11) default '0',
  `w_gj_da` int(11) default '0',
  `w_hp` int(11) default '0',
  `w_mp` int(11) default '0',
  `wxAttrisStr` varchar(50) default '' COMMENT '五行属性字符串',
  `inlayPropStr` varchar(50) default '' COMMENT '镶嵌宝石描述字符串',
  `w_type` int(11) default '0',
  `w_quality` int(11) default NULL,
  `w_zb_grade` int(11) default NULL,
  `w_level` int(11) default NULL,
  `create_time` datetime default NULL,
  `hole_num` int(11) default '-1' COMMENT '总的孔数',
  `effect_hole_num` int(11) default NULL COMMENT '有效孔数',
  `left_effect_hole_num` int(11) default '0' COMMENT '剩余有效的孔数',
  `rank_key` int(11) default '0' COMMENT '装备排行关键字',
  `protectEndTime` datetime default NULL COMMENT '装备受保护的结束时间',
  `max_endure` int(11) default '10000' COMMENT '耐久上限',
  `appendAttriDes` varchar(80) default '(NULL)' COMMENT '装备升到最高级时，附加属性的描述',
  PRIMARY KEY  (`pw_pk`),
  KEY `Index1` (`p_pk`,`equip_type`),
  KEY `Index2` (`p_pk`,`w_type`),
  KEY `Index3` (`p_pk`,`w_type`,`cur_endure`)
) ENGINE=InnoDB AUTO_INCREMENT=642 DEFAULT CHARSET=gbk;

/*Table structure for table `u_part_info` */

DROP TABLE IF EXISTS `u_part_info`;

CREATE TABLE `u_part_info` (
  `p_pk` int(11) NOT NULL auto_increment,
  `u_pk` int(11) default NULL,
  `p_name` varchar(20) default NULL,
  `p_sex` int(11) default NULL,
  `p_grade` int(11) default '1',
  `p_up_hp` int(11) default NULL,
  `p_hp` int(11) default NULL,
  `p_up_mp` int(11) default NULL,
  `p_mp` int(11) default NULL,
  `p_gj` int(11) default NULL,
  `p_fy` int(11) default NULL,
  `p_teacher_type` int(11) default '0',
  `p_teacher` int(11) default '0',
  `p_harness` int(11) default NULL,
  `p_fere` int(11) default NULL,
  `p_race` int(11) default NULL,
  `p_experience` varchar(20) default '0',
  `p_benji_experience` varchar(20) default '0',
  `p_xia_experience` varchar(20) default NULL,
  `p_copper` varchar(20) default '0',
  `p_pk_value` int(11) default '0',
  `p_pks` int(11) default '0',
  `p_drop_multiple` double default '0',
  `p_pk_changetime` datetime default NULL,
  `p_map` varchar(5) default NULL,
  `p_procession` int(11) default NULL,
  `p_procession_numner` varchar(5) default NULL,
  `p_wrap_content` int(11) default NULL,
  `create_time` datetime default NULL,
  `delete_flag` tinyint(4) default '0',
  `delete_time` datetime default NULL,
  `te_level` int(11) default '0',
  `chuangong` varchar(50) default NULL,
  `login_state` int(11) default '0',
  `p_kill_num` int(11) default '0',
  `last_shoutu_time` datetime default NULL,
  `player_state_by_new` int(11) default '0',
  `f_id` int(11) default '0' COMMENT '帮派id',
  `f_job` int(11) default '0' COMMENT '帮派职务',
  `f_contribute` int(11) default '0' COMMENT '帮派贡献',
  `f_jointime` datetime default NULL COMMENT '加入帮派的时间',
  `f_title` varchar(15) default NULL COMMENT '帮派称号',
  PRIMARY KEY  (`p_pk`),
  UNIQUE KEY `p_name` (`p_name`),
  KEY `Index1` (`p_pk`,`u_pk`),
  KEY `Index2` (`u_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=66027 DEFAULT CHARSET=gbk;

/*Table structure for table `u_passport_info` */

DROP TABLE IF EXISTS `u_passport_info`;

CREATE TABLE `u_passport_info` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(36) default NULL,
  `user_name` varchar(25) default NULL,
  `user_state` int(11) default '1',
  `channel_id` varchar(10) default NULL,
  `u_pk` int(11) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`user_id`,`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85024 DEFAULT CHARSET=gbk;

/*Table structure for table `u_pet_sell` */

DROP TABLE IF EXISTS `u_pet_sell`;

CREATE TABLE `u_pet_sell` (
  `ps_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `p_by_pk` int(11) default NULL,
  `pet_id` int(11) default NULL,
  `ps_silver_money` int(11) default NULL,
  `ps_copper_money` int(11) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`ps_pk`),
  KEY `Index1` (`p_pk`,`p_by_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_pk_hite` */

DROP TABLE IF EXISTS `u_pk_hite`;

CREATE TABLE `u_pk_hite` (
  `id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) NOT NULL,
  `enemyUpk` int(11) NOT NULL,
  `enemyPpk` int(11) NOT NULL,
  `enemyName` varchar(20) NOT NULL,
  `enemyGrade` int(11) NOT NULL,
  `hitePoint` int(11) NOT NULL,
  `generalPKcount` int(11) default NULL,
  `activePkcount` int(11) default NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;

/*Table structure for table `u_pk_notify` */

DROP TABLE IF EXISTS `u_pk_notify`;

CREATE TABLE `u_pk_notify` (
  `n_pk` int(11) NOT NULL auto_increment,
  `notifyed_pk` int(11) default NULL,
  `create_notify_pk` int(11) default NULL,
  `notify_content` varchar(200) default NULL,
  `notify_type` int(11) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`n_pk`),
  KEY `Index1` (`notifyed_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_popup_msg` */

DROP TABLE IF EXISTS `u_popup_msg`;

CREATE TABLE `u_popup_msg` (
  `id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `msg_type` int(11) default NULL,
  `msg_operate1` varchar(500) default NULL,
  `msg_operate2` varchar(100) default NULL,
  `msg_priority` int(11) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`p_pk`,`msg_priority`,`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=gbk;

/*Table structure for table `u_prelude` */

DROP TABLE IF EXISTS `u_prelude`;

CREATE TABLE `u_prelude` (
  `pr_id` int(10) unsigned NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  PRIMARY KEY  (`pr_id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=62603 DEFAULT CHARSET=gbk;

/*Table structure for table `u_propgroup_info` */

DROP TABLE IF EXISTS `u_propgroup_info`;

CREATE TABLE `u_propgroup_info` (
  `pg_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `pg_type` int(11) default NULL,
  `prop_id` int(11) default NULL,
  `prop_type` int(11) default NULL,
  `prop_bonding` int(11) default NULL,
  `prop_protect` int(11) default NULL,
  `prop_isReconfirm` int(11) default NULL,
  `prop_use_control` int(11) default '0',
  `prop_num` int(11) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`pg_pk`),
  KEY `Index1` (`p_pk`,`prop_id`),
  KEY `Index2` (`p_pk`,`prop_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2265481 DEFAULT CHARSET=gbk;

/*Table structure for table `u_quiz_info` */

DROP TABLE IF EXISTS `u_quiz_info`;

CREATE TABLE `u_quiz_info` (
  `id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `integral` int(11) default NULL,
  `conunite_win` int(11) default NULL,
  `mouth` varchar(10) default NULL,
  `conunite_day` int(11) default NULL,
  `last_time` datetime default NULL,
  `answer_flag` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_second_pass` */

DROP TABLE IF EXISTS `u_second_pass`;

CREATE TABLE `u_second_pass` (
  `pass_id` int(11) NOT NULL auto_increment,
  `u_pk` int(11) default NULL,
  `second_pass` varchar(20) default NULL,
  `pass_first_time` datetime default NULL,
  `pass_second_time` datetime default NULL,
  `pass_third_time` datetime default NULL,
  `pass_wrong_flag` mediumint(9) default NULL,
  `pass_mail_send` tinyint(4) default NULL,
  PRIMARY KEY  (`pass_id`),
  KEY `Index1` (`u_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_sell_info` */

DROP TABLE IF EXISTS `u_sell_info`;

CREATE TABLE `u_sell_info` (
  `s_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `p_by_pk` int(11) default NULL,
  `s_wuping` int(11) default NULL,
  `s_wp_type` int(11) default NULL,
  `s_wp_number` int(11) default NULL,
  `s_wp_silver_money` int(11) default NULL,
  `s_wp_copper_money` int(11) default NULL,
  `sell_mode` int(11) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`s_pk`),
  KEY `Index1` (`p_pk`,`p_by_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=gbk;

/*Table structure for table `u_shortcut_info` */

DROP TABLE IF EXISTS `u_shortcut_info`;

CREATE TABLE `u_shortcut_info` (
  `sc_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `sc_name` varchar(20) default NULL,
  `sc_display` varchar(20) default NULL,
  `sc_type` int(11) default NULL,
  `operate_id` int(11) default NULL,
  `object` int(11) default NULL,
  PRIMARY KEY  (`sc_pk`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=594127 DEFAULT CHARSET=gbk;

/*Table structure for table `u_skill_info` */

DROP TABLE IF EXISTS `u_skill_info`;

CREATE TABLE `u_skill_info` (
  `s_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `sk_id` int(11) default NULL,
  `sk_name` varchar(20) default NULL,
  `sk_sleight` int(11) default '0',
  `sk_usetime` datetime default NULL,
  `create_time` datetime default NULL,
  `sk_type` int(11) default NULL,
  `sk_gj_multiple` double default NULL,
  `sk_fy_multiple` double default NULL,
  `sk_hp_multiple` double default NULL,
  `sk_mp_multiple` double default NULL,
  `sk_bj_multiple` double default NULL,
  `sk_gj_add` int(11) default NULL,
  `sk_fy_add` int(11) default NULL,
  `sk_hp_add` int(11) default NULL,
  `sk_mp_add` int(11) default NULL,
  `sk_group` int(11) default NULL,
  PRIMARY KEY  (`s_pk`),
  KEY `Index1` (`p_pk`,`sk_id`,`sk_type`),
  KEY `Index2` (`p_pk`,`sk_group`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

/*Table structure for table `u_sky_pay_record` */

DROP TABLE IF EXISTS `u_sky_pay_record`;

CREATE TABLE `u_sky_pay_record` (
  `id` int(11) NOT NULL auto_increment,
  `billid` varchar(50) default NULL,
  `skyid` varchar(50) default NULL,
  `kbamt` varchar(15) default NULL,
  `pay_time` datetime default NULL,
  `skybillid1` varchar(50) default NULL,
  `skybillid2` varchar(50) default NULL,
  `balance` varchar(15) default NULL,
  `respones_result` varchar(5) default NULL,
  `p_pk` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

/*Table structure for table `u_soulbang` */

DROP TABLE IF EXISTS `u_soulbang`;

CREATE TABLE `u_soulbang` (
  `s_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `pw_pk` int(11) default NULL,
  `pw_name` varchar(20) default NULL,
  `s_type` int(11) default '1',
  PRIMARY KEY  (`s_pk`),
  KEY `Index1` (`p_pk`,`pw_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_special_item` */

DROP TABLE IF EXISTS `u_special_item`;

CREATE TABLE `u_special_item` (
  `sp_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `prop_id` int(11) default NULL,
  `prop_operate1` varchar(50) default NULL,
  `prop_operate2` varchar(50) default NULL,
  `prop_operate3` varchar(50) default NULL,
  `prop_time` int(11) default NULL,
  `prop_date` datetime default NULL,
  `prop_sign` int(11) default NULL,
  PRIMARY KEY  (`sp_pk`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=83448 DEFAULT CHARSET=gbk;

/*Table structure for table `u_special_prop` */

DROP TABLE IF EXISTS `u_special_prop`;

CREATE TABLE `u_special_prop` (
  `id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `sp_type` int(11) default NULL,
  `pg_pk` int(11) default NULL,
  `prop_stock` int(11) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Table structure for table `u_synthesize_info` */

DROP TABLE IF EXISTS `u_synthesize_info`;

CREATE TABLE `u_synthesize_info` (
  `us_id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `s_id` int(11) default NULL,
  PRIMARY KEY  (`us_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_task` */

DROP TABLE IF EXISTS `u_task`;

CREATE TABLE `u_task` (
  `t_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `p_name` varchar(20) default NULL,
  `t_zu` varchar(50) default NULL,
  `t_px` varchar(20) default NULL,
  `t_id` int(11) default NULL,
  `t_title` varchar(50) default NULL,
  `t_type` int(11) default NULL,
  `t_xrwnpc_id` int(11) default NULL,
  `t_next` int(11) default NULL,
  `t_point` varchar(500) default NULL,
  `t_point_no` varchar(500) default NULL,
  `t_zjdwp` varchar(500) default NULL,
  `t_zjdwp_number` int(11) default NULL,
  `t_zjdwp_ok` int(11) default '0',
  `t_zjdzb` varchar(500) default NULL,
  `t_zjdzb_number` int(11) default NULL,
  `t_zjdzb_ok` int(11) default '0',
  `t_djscwp` int(11) default NULL,
  `t_djsczb` int(11) default NULL,
  `t_midst_gs` varchar(500) default NULL,
  `t_midst_zb` varchar(500) default NULL,
  `t_goods` varchar(500) default NULL,
  `t_goods_no` varchar(500) default NULL,
  `t_goods_ok` varchar(500) default NULL,
  `t_goodszb` varchar(500) default NULL,
  `t_goodszb_number` varchar(500) default NULL,
  `t_goodszb_ok` varchar(500) default NULL,
  `t_killing` varchar(500) default NULL,
  `t_killing_no` int(11) default NULL,
  `t_killing_ok` int(11) default '0',
  `t_pet` int(11) default NULL,
  `t_pet_number` int(11) default NULL,
  `t_pet_ok` int(11) default '0',
  `create_time` datetime default NULL,
  `t_time` int(11) default NULL,
  `t_give_up` int(11) default '0',
  `up_task_id` int(11) default NULL,
  PRIMARY KEY  (`t_pk`),
  KEY `Index1` (`t_pk`,`p_pk`,`t_id`),
  KEY `Index2` (`p_pk`,`t_zu`)
) ENGINE=InnoDB AUTO_INCREMENT=564198 DEFAULT CHARSET=gbk;

/*Table structure for table `u_task_complete` */

DROP TABLE IF EXISTS `u_task_complete`;

CREATE TABLE `u_task_complete` (
  `c_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `task_zu` varchar(50) default NULL,
  PRIMARY KEY  (`c_pk`),
  KEY `Index1` (`p_pk`,`task_zu`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

/*Table structure for table `u_time_control` */

DROP TABLE IF EXISTS `u_time_control`;

CREATE TABLE `u_time_control` (
  `id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `object_id` int(11) default NULL,
  `object_type` int(11) default NULL,
  `use_datetime` datetime default NULL,
  `use_times` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=166335 DEFAULT CHARSET=gbk;

/*Table structure for table `u_title` */

DROP TABLE IF EXISTS `u_title`;

CREATE TABLE `u_title` (
  `id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `t_id` int(11) default NULL COMMENT '称号id',
  `is_show` int(11) default NULL COMMENT '是否显示（-1否，1是）',
  `end_time` bigint(11) default '0' COMMENT '结束时间',
  PRIMARY KEY  (`id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=69043 DEFAULT CHARSET=gbk;

/*Table structure for table `u_warehouse_equip` */

DROP TABLE IF EXISTS `u_warehouse_equip`;

CREATE TABLE `u_warehouse_equip` (
  `w_pk` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `table_type` int(11) default NULL,
  `goods_type` int(11) default NULL,
  `w_id` int(11) default NULL,
  `w_name` varchar(20) default NULL,
  `w_durability` int(11) default NULL,
  `w_dura_consume` int(11) default NULL,
  `w_Bonding` int(11) default NULL,
  `w_protect` int(11) default NULL,
  `w_isReconfirm` int(11) default NULL,
  `w_price` int(11) default NULL,
  `w_fy_xiao` int(11) default '0',
  `w_fy_da` int(11) default '0',
  `w_gj_xiao` int(11) default '0',
  `w_gj_da` int(11) default '0',
  `w_hp` int(11) default '0',
  `w_mp` int(11) default '0',
  `w_jin_fy` int(11) default '0',
  `w_mu_fy` int(11) default '0',
  `w_shui_fy` int(11) default '0',
  `w_huo_fy` int(11) default '0',
  `w_tu_fy` int(11) default '0',
  `w_jin_gj` int(11) default '0',
  `w_mu_gj` int(11) default '0',
  `w_shui_gj` int(11) default '0',
  `w_huo_gj` int(11) default '0',
  `w_tu_gj` int(11) default '0',
  `w_type` int(11) default '0',
  `w_quality` int(11) default NULL,
  `w_wx_type` int(11) default NULL,
  `suit_id` int(11) default '0',
  `w_buff_isEffected` int(11) default '0',
  `enchant_type` varchar(10) default '0',
  `enchant_value` int(11) default '0',
  `w_zj_hp` varchar(10) default NULL,
  `w_zj_mp` varchar(10) default NULL,
  `w_zj_wxgj` varchar(10) default NULL,
  `w_zj_wxfy` varchar(10) default NULL,
  `w_zb_grade` int(11) default NULL,
  `create_time` datetime default NULL,
  `p_poss` int(11) default '0',
  `w_Bonding_Num` int(11) default '0',
  `specialcontent` int(11) default '0',
  PRIMARY KEY  (`w_pk`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `u_warehouse_info` */

DROP TABLE IF EXISTS `u_warehouse_info`;

CREATE TABLE `u_warehouse_info` (
  `uw_id` int(11) NOT NULL auto_increment,
  `u_pk` int(11) default NULL,
  `p_pk` int(11) default NULL,
  `uw_prop_id` int(11) default NULL,
  `uw_type` int(11) default NULL,
  `uw_prop_type` int(11) default NULL,
  `uw_number` int(11) default '100',
  `uw_article` varchar(50) default NULL,
  `uw_prop_number` int(11) default NULL,
  `uw_money` varchar(50) default '10000000000',
  `uw_pet` varchar(10) default NULL,
  `uw_money_number` varchar(15) default NULL,
  `uw_pet_number` int(11) default '5',
  `uw_warehouse_spare` int(11) default NULL,
  `create_time` datetime default NULL,
  `prop_bonding` int(11) default NULL,
  `prop_protect` int(11) default NULL,
  `prop_isReconfirm` int(11) default NULL,
  `prop_use_control` int(11) default NULL,
  `prop_operate1` varchar(50) default NULL,
  PRIMARY KEY  (`uw_id`),
  KEY `Index1` (`p_pk`),
  KEY `Index2` (`uw_type`,`uw_prop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=gbk;

/*Table structure for table `user_everyday_grade` */

DROP TABLE IF EXISTS `user_everyday_grade`;

CREATE TABLE `user_everyday_grade` (
  `id` int(11) NOT NULL auto_increment,
  `grade1` int(11) default NULL,
  `grade2to9` int(11) default NULL,
  `grade10to19` int(11) default NULL,
  `grade20to29` int(11) default NULL,
  `grade30to39` int(11) default NULL,
  `grade40to49` int(11) default NULL,
  `grade50to59` int(11) default NULL,
  `grade60` int(11) default NULL,
  `avg_grade` int(11) default NULL,
  `recordTime` varchar(50) default NULL,
  `createTime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=gbk;

/*Table structure for table `user_grade_statistics` */

DROP TABLE IF EXISTS `user_grade_statistics`;

CREATE TABLE `user_grade_statistics` (
  `id` int(11) NOT NULL auto_increment,
  `time_10min` int(11) default NULL,
  `time_30min` int(11) default NULL,
  `time_60min` int(11) default NULL,
  `time_120min` int(11) default NULL,
  `time_120minup` int(11) default NULL,
  `recordTime` varchar(50) default NULL,
  `createTime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=gbk;

/*Table structure for table `user_info_overview` */

DROP TABLE IF EXISTS `user_info_overview`;

CREATE TABLE `user_info_overview` (
  `id` int(11) NOT NULL auto_increment,
  `all_regist_num` int(11) default NULL,
  `all_regist_user` int(11) default NULL,
  `today_regist_num` int(11) default NULL,
  `today_online_num` int(11) default NULL,
  `today_active_num` int(11) default NULL,
  `today_avg_time` int(11) default NULL,
  `today_avg_grade` double default NULL,
  `today_avg_num` double default NULL,
  `today_grade_num` int(11) default NULL,
  `record_date` varchar(50) default NULL,
  `insert_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=gbk;

/*Table structure for table `user_login_grade` */

DROP TABLE IF EXISTS `user_login_grade`;

CREATE TABLE `user_login_grade` (
  `id` int(11) NOT NULL auto_increment,
  `grade1to9` int(11) default NULL,
  `grade10to19` int(11) default NULL,
  `grade20to29` int(11) default NULL,
  `grade30to39` int(11) default NULL,
  `grade40to49` int(11) default NULL,
  `grade50to59` int(11) default NULL,
  `grade60` int(11) default NULL,
  `record_date` varchar(50) default NULL,
  `record_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=gbk;

/*Table structure for table `user_online_num` */

DROP TABLE IF EXISTS `user_online_num`;

CREATE TABLE `user_online_num` (
  `id` int(11) NOT NULL auto_increment,
  `hour_0` smallint(6) default '0',
  `hour_1` smallint(6) default '0',
  `hour_2` smallint(6) default '0',
  `hour_3` smallint(6) default '0',
  `hour_4` smallint(6) default '0',
  `hour_5` smallint(6) default '0',
  `hour_6` smallint(6) default '0',
  `hour_7` smallint(6) default '0',
  `hour_8` smallint(6) default '0',
  `hour_9` smallint(6) default '0',
  `hour_10` smallint(6) default '0',
  `hour_11` smallint(6) default '0',
  `hour_12` smallint(6) default '0',
  `hour_13` smallint(6) default '0',
  `hour_14` smallint(6) default '0',
  `hour_15` smallint(6) default '0',
  `hour_16` smallint(6) default '0',
  `hour_17` smallint(6) default '0',
  `hour_18` smallint(6) default '0',
  `hour_19` smallint(6) default '0',
  `hour_20` smallint(6) default '0',
  `hour_21` smallint(6) default '0',
  `hour_22` smallint(6) default '0',
  `hour_23` smallint(6) default '0',
  `createTime` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1253 DEFAULT CHARSET=gbk;

/*Table structure for table `user_online_time` */

DROP TABLE IF EXISTS `user_online_time`;

CREATE TABLE `user_online_time` (
  `id` int(11) NOT NULL auto_increment,
  `u_pk` int(11) default NULL,
  `p_pk` int(11) default NULL,
  `onlinetime` int(11) default NULL,
  `recordTime` varchar(50) default NULL,
  `createTime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156298 DEFAULT CHARSET=gbk;

/*Table structure for table `user_record_login` */

DROP TABLE IF EXISTS `user_record_login`;

CREATE TABLE `user_record_login` (
  `id` int(11) NOT NULL auto_increment,
  `p_pk` int(11) default NULL,
  `p_grade` int(11) default NULL,
  `loginStatus` int(11) default NULL,
  `loginTime` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `Index1` (`p_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=62607 DEFAULT CHARSET=gbk;

/*Table structure for table `user_silence_grade` */

DROP TABLE IF EXISTS `user_silence_grade`;

CREATE TABLE `user_silence_grade` (
  `id` int(11) NOT NULL auto_increment,
  `grade1to9` int(11) default NULL,
  `grade10to19` int(11) default NULL,
  `grade20to29` int(11) default NULL,
  `grade30to39` int(11) default NULL,
  `grade40to49` int(11) default NULL,
  `grade50to59` int(11) default NULL,
  `grade60` int(11) default NULL,
  `record_date` varchar(50) default NULL,
  `record_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=gbk;

/*Table structure for table `zb_relela_info` */

DROP TABLE IF EXISTS `zb_relela_info`;

CREATE TABLE `zb_relela_info` (
  `relela_id` int(10) unsigned NOT NULL auto_increment,
  `pwpk` int(11) default NULL,
  `relelavar` varchar(400) default NULL,
  `relelatime` datetime default NULL,
  PRIMARY KEY  (`relela_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1960 DEFAULT CHARSET=gbk;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
