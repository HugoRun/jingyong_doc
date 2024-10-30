/*
SQLyog Community Edition- MySQL GUI v5.21
Host - 5.0.82-community-nt : Database - jygame_honghuang
*********************************************************************
Server version : 5.0.82-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `jygame_honghuang`;

USE `jygame_honghuang`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `accept_task_list` */

DROP TABLE IF EXISTS `accept_task_list`;

CREATE TABLE `accept_task_list` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `touch_id` int(11) default NULL,
  `task_area` varchar(400) default NULL,
  `probability` int(11) default NULL,
  `task_type` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=gbk;

/*Table structure for table `barea` */

DROP TABLE IF EXISTS `barea`;

CREATE TABLE `barea` (
  `barea_ID` smallint(5) unsigned NOT NULL auto_increment,
  `barea_Name` varchar(200) default NULL,
  `barea_point` int(11) default NULL,
  `barea_display` varchar(200) default NULL,
  `barea_type` int(11) default NULL,
  PRIMARY KEY  (`barea_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=gbk;

/*Table structure for table `buff` */

DROP TABLE IF EXISTS `buff`;

CREATE TABLE `buff` (
  `buff_id` smallint(5) unsigned NOT NULL auto_increment,
  `buff_type` int(11) default NULL,
  `buff_name` varchar(200) default NULL,
  `buff_display` varchar(200) default NULL,
  `buff_time` int(11) default NULL,
  `buff_bout` int(11) default NULL,
  `buff_effect_value` int(11) default NULL,
  `buff_use_mode` int(11) default NULL,
  `buff_bout_overlap` int(11) default '0',
  `buff_time_overlap` int(11) default '0',
  PRIMARY KEY  (`buff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=gbk;

/*Table structure for table `carry_table_info` */

DROP TABLE IF EXISTS `carry_table_info`;

CREATE TABLE `carry_table_info` (
  `carry_id` int(10) unsigned NOT NULL auto_increment,
  `carry_type_id` int(11) default NULL,
  `carry_type_name` varchar(50) default NULL,
  `scene_id` int(11) default NULL,
  `scene_name` varchar(50) default NULL,
  `carry_grade` int(11) default NULL,
  `part_grade` varchar(10) default NULL,
  PRIMARY KEY  (`carry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=gbk;

/*Table structure for table `commodity_info` */

DROP TABLE IF EXISTS `commodity_info`;

CREATE TABLE `commodity_info` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `prop_id` int(11) default NULL COMMENT '道具id',
  `prop_name` varchar(100) default NULL COMMENT '道具名字',
  `type` int(11) default NULL COMMENT '分类',
  `buy_mode` int(11) default NULL COMMENT '元宝或积分的分类',
  `original_price` int(11) default NULL COMMENT '价钱',
  `discount` int(11) default '-1' COMMENT '折扣',
  `commodity_total` int(11) default '-1' COMMENT '销售数量，-1表示不限制',
  `sell_num` int(11) default '0' COMMENT '卖出数量',
  `is_hot` int(11) default '0' COMMENT '是否是推销商品',
  `state` int(11) default '1' COMMENT '状态',
  `isUsedAfterBuy` int(11) default '0' COMMENT '买是否可以直接使用',
  `create_time` datetime default NULL COMMENT '上架时间',
  `is_vip` int(11) default '0' COMMENT '是否是vip商品',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=976 DEFAULT CHARSET=gbk;

/*Table structure for table `compass` */

DROP TABLE IF EXISTS `compass`;

CREATE TABLE `compass` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `scene_id` int(11) default '0' COMMENT '场景',
  `des` varchar(255) NOT NULL COMMENT '指南针',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2899 DEFAULT CHARSET=gbk;

/*Table structure for table `equip_append_attri` */

DROP TABLE IF EXISTS `equip_append_attri`;

CREATE TABLE `equip_append_attri` (
  `id` int(11) default NULL,
  `attriStr` varchar(80) default NULL,
  `attriDes` varchar(80) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `equip_append_attribute` */

DROP TABLE IF EXISTS `equip_append_attribute`;

CREATE TABLE `equip_append_attribute` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `equip_type` int(11) default NULL,
  `level_lower` int(11) default NULL,
  `level_upper` int(11) default NULL,
  `attribute_type` int(11) default NULL,
  `value_area` varchar(200) default NULL,
  `value_probability` varchar(200) default NULL,
  `quality` int(11) default '1' COMMENT '品质',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=577 DEFAULT CHARSET=gbk;

/*Table structure for table `equip_material` */

DROP TABLE IF EXISTS `equip_material`;

CREATE TABLE `equip_material` (
  `quality` int(11) default NULL,
  `grade` int(11) default NULL,
  `material_1` int(11) default NULL,
  `material_2` int(11) default NULL,
  `need_money` int(11) default NULL,
  `rate` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `exp_npcdrop` */

DROP TABLE IF EXISTS `exp_npcdrop`;

CREATE TABLE `exp_npcdrop` (
  `en_pk` smallint(5) unsigned NOT NULL auto_increment,
  `default_exp` int(11) default '1',
  `begin_time` varchar(300) default NULL,
  `end_time` varchar(300) default NULL,
  `en_multiple` int(11) default '1',
  `en_cimelia` int(11) default '1',
  `enforce` int(11) default NULL,
  `exp_cimelia` int(11) default NULL,
  `acquit_format` int(11) default NULL,
  PRIMARY KEY  (`en_pk`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

/*Table structure for table `f_game_build` */

DROP TABLE IF EXISTS `f_game_build`;

CREATE TABLE `f_game_build` (
  `id` int(11) NOT NULL auto_increment,
  `grade` int(11) default NULL COMMENT '等级',
  `name` varchar(20) default NULL COMMENT '名字',
  `pic` varchar(20) default NULL COMMENT '图片',
  `des` varchar(50) default NULL COMMENT '描述',
  `prestige` int(11) default NULL COMMENT '建造需要的帮派声望',
  `mId` int(11) default NULL COMMENT '建造需要的材料id',
  `mNum` int(11) default NULL COMMENT '建造需要的材料数量',
  `contribute` int(11) default NULL COMMENT '领取buff需要消耗的帮派贡献',
  `buffIdStr` varchar(20) default NULL COMMENT 'buffid字符串：1-2',
  `nextGradeId` int(11) default NULL COMMENT '升级到下级的建筑id',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gbk;

/*Table structure for table `f_upgrade_material` */

DROP TABLE IF EXISTS `f_upgrade_material`;

CREATE TABLE `f_upgrade_material` (
  `grade` int(11) default NULL COMMENT '等级',
  `type` int(11) default NULL COMMENT '材料类型：1表示帮派升级材料，2表示祠堂升级材料',
  `fMStr` varchar(50) default NULL COMMENT '需要帮派材料字符串,形式如：道具id-道具数量，道具id-道具数量，',
  `prestige` int(11) default NULL COMMENT '需要帮派的声望',
  `mId` int(11) default NULL COMMENT '需要个人材料道具id',
  `mNum` int(11) default NULL COMMENT '需要个人材料数量',
  `mDes` varchar(100) default NULL COMMENT '需要个人材料描述',
  `money` int(11) default NULL COMMENT '需要个人的钱数',
  `effectDes` varchar(100) default NULL COMMENT '效果描述'
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Table structure for table `game_equip` */

DROP TABLE IF EXISTS `game_equip`;

CREATE TABLE `game_equip` (
  `id` int(11) NOT NULL,
  `name` varchar(20) default NULL,
  `des` varchar(100) default NULL,
  `type` int(11) default NULL,
  `pic` varchar(20) default NULL,
  `price` int(11) default NULL,
  `endure` int(11) default '0' COMMENT '最大耐久',
  `grade` int(11) default NULL COMMENT '使用等级',
  `sex` int(11) default NULL,
  `job` int(11) default NULL,
  `isMarried` int(11) default '0',
  `isBind` int(11) default '1' COMMENT '是否绑定',
  `isProtected` int(11) default '0',
  `isReconfirm` int(11) default '0',
  `minAtt` int(11) default '0',
  `maxAtt` int(11) default '0',
  `minDef` int(11) default '0',
  `maxDef` int(11) default '0',
  `otherAttriStr` varchar(100) default NULL,
  `appendAttriStr` varchar(100) default NULL,
  `suitId` int(11) default '0',
  `qualityRate` int(11) default NULL COMMENT '品质生成系数',
  PRIMARY KEY  (`id`)
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
) ENGINE=MyISAM AUTO_INCREMENT=237 DEFAULT CHARSET=gbk;

/*Table structure for table `instance_info` */

DROP TABLE IF EXISTS `instance_info`;

CREATE TABLE `instance_info` (
  `id` int(11) NOT NULL auto_increment,
  `display` varchar(200) default NULL,
  `map_id` int(11) default NULL,
  `enter_scene_id` int(11) default NULL,
  `reset_time_distance` int(11) default NULL,
  `pre_reset_time` datetime default NULL,
  `level_limit` int(11) default '0',
  `group_limit` int(11) default '0',
  `boss_scene_num` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

/*Table structure for table `ip_blacklist` */

DROP TABLE IF EXISTS `ip_blacklist`;

CREATE TABLE `ip_blacklist` (
  `ip_pk` int(11) NOT NULL auto_increment,
  `ip_list` varchar(100) default NULL,
  PRIMARY KEY  (`ip_pk`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Table structure for table `ip_whitelist` */

DROP TABLE IF EXISTS `ip_whitelist`;

CREATE TABLE `ip_whitelist` (
  `ip_pk` int(11) NOT NULL auto_increment,
  `ip_begin` varchar(100) default NULL,
  `ip_end` varchar(100) default NULL,
  PRIMARY KEY  (`ip_pk`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Table structure for table `jy_forbid_name` */

DROP TABLE IF EXISTS `jy_forbid_name`;

CREATE TABLE `jy_forbid_name` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `checkcase` int(11) default NULL,
  `checktype` int(11) default NULL,
  `onechar` varchar(100) default NULL,
  `str` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3596 DEFAULT CHARSET=gbk;

/*Table structure for table `laborage` */

DROP TABLE IF EXISTS `laborage`;

CREATE TABLE `laborage` (
  `min_time` int(11) default NULL,
  `max_time` int(11) default NULL,
  `laborage_bonus` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Table structure for table `lottery` */

DROP TABLE IF EXISTS `lottery`;

CREATE TABLE `lottery` (
  `lottery_bonus` int(11) default NULL,
  `sys_charity_bonus` int(11) default NULL,
  `lottery_tax` int(11) default NULL,
  `sys_bonus_type` int(11) default NULL,
  `sys_bonus_id` int(11) default NULL,
  `sys_bonus_intro` int(11) default NULL,
  `sys_bonus_num` int(11) default NULL,
  `sys_lottery_number` varchar(200) default NULL,
  `sys_subjoin` int(11) default '0',
  `sys_charity_number` varchar(200) default NULL,
  `lottery_win_num` int(11) default '0'
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Table structure for table `lottery_draw` */

DROP TABLE IF EXISTS `lottery_draw`;

CREATE TABLE `lottery_draw` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` int(11) default NULL,
  `lottery_name` varchar(50) default NULL,
  `draw_people` int(11) default NULL,
  `draw_level` varchar(10) default NULL,
  `bonus` varchar(50) default NULL,
  `time_type` int(11) default NULL,
  `time_hour` int(11) default NULL,
  `time_minute` int(11) default NULL,
  `time_week` varchar(10) default NULL,
  `is_run` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=gbk;

/*Table structure for table `lottery_new` */

DROP TABLE IF EXISTS `lottery_new`;

CREATE TABLE `lottery_new` (
  `lottery_yb` varchar(100) default NULL,
  `lottery_bonus` varchar(50) default NULL,
  `lottery_tax` int(11) default '0'
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Table structure for table `map` */

DROP TABLE IF EXISTS `map`;

CREATE TABLE `map` (
  `map_ID` smallint(5) unsigned NOT NULL auto_increment,
  `map_Name` varchar(200) default NULL,
  `map_display` varchar(200) default NULL,
  `map_skill` varchar(100) default NULL,
  `map_from` int(11) default NULL,
  `map_type` tinyint(4) default NULL,
  PRIMARY KEY  (`map_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=gbk;

/*Table structure for table `menpaicontest` */

DROP TABLE IF EXISTS `menpaicontest`;

CREATE TABLE `menpaicontest` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `time_week` varchar(10) default NULL,
  `ready_hour` int(11) default NULL,
  `ready_minute` int(11) default NULL,
  `run_hour` int(11) default NULL,
  `run_minute` int(11) default NULL,
  `over_hour` int(11) default NULL,
  `over_minute` int(11) default NULL,
  `all_hour` int(11) default NULL,
  `all_minute` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

/*Table structure for table `menpainpc` */

DROP TABLE IF EXISTS `menpainpc`;

CREATE TABLE `menpainpc` (
  `id` int(11) NOT NULL auto_increment,
  `p_type` int(11) default NULL,
  `npc_lv` int(11) default NULL,
  `npc_id` int(11) default NULL,
  `scence_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Table structure for table `miji_info` */

DROP TABLE IF EXISTS `miji_info`;

CREATE TABLE `miji_info` (
  `mj_id` int(11) NOT NULL auto_increment,
  `mj_info` varchar(500) default NULL,
  PRIMARY KEY  (`mj_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=gbk;

/*Table structure for table `npc` */

DROP TABLE IF EXISTS `npc`;

CREATE TABLE `npc` (
  `npc_ID` smallint(5) unsigned NOT NULL auto_increment,
  `npc_Name` varchar(200) default NULL,
  `npc_HP` varchar(200) default NULL,
  `npc_defence_da` int(11) default NULL,
  `npc_defence_xiao` int(11) default NULL,
  `npc_jin_fy` int(11) default NULL,
  `npc_mu_fy` int(11) default NULL,
  `npc_shui_fy` int(11) default NULL,
  `npc_huo_fy` int(11) default NULL,
  `npc_tu_fy` int(11) default NULL,
  `npc_drop` double default NULL COMMENT '暴击率',
  `npc_Level` int(11) default NULL,
  `npc_EXP` double default NULL,
  `npc_money` varchar(200) default NULL,
  `npc_take` int(11) default NULL,
  `npc_refurbish_time` int(11) default NULL,
  `npc_type` int(11) default NULL,
  `npc_pic` varchar(200) default NULL,
  PRIMARY KEY  (`npc_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=977 DEFAULT CHARSET=gbk;

/*Table structure for table `npcdrop` */

DROP TABLE IF EXISTS `npcdrop`;

CREATE TABLE `npcdrop` (
  `npcdrop_ID` int(11) unsigned NOT NULL auto_increment,
  `npc_ID` int(11) default NULL,
  `goods_type` int(11) default NULL,
  `goods_id` int(11) default NULL,
  `goods_name` varchar(30) default NULL,
  `npcdrop_probability` int(11) default NULL,
  `npcdrop_luck` int(11) default NULL,
  `npcdrop_num` varchar(15) default NULL,
  `npcdrop_taskid` int(11) default '0',
  `npcdrop_importance` int(11) default '0',
  `quality` int(11) default '-1' COMMENT '掉落品质控制',
  `begin_time` varchar(15) default NULL COMMENT '相对开始时间',
  `end_time` varchar(15) default NULL COMMENT '相对结束时间',
  `begin_day` varchar(25) default NULL COMMENT '绝对开始时间',
  `end_day` varchar(25) default NULL COMMENT '绝对结束时间',
  `week_str` varchar(10) default NULL COMMENT '刷新星期控制',
  PRIMARY KEY  (`npcdrop_ID`),
  KEY `Index1` (`npc_ID`,`npcdrop_taskid`)
) ENGINE=MyISAM AUTO_INCREMENT=16318 DEFAULT CHARSET=gbk;

/*Table structure for table `npcrefurbish` */

DROP TABLE IF EXISTS `npcrefurbish`;

CREATE TABLE `npcrefurbish` (
  `npcrefurbish_id` smallint(5) unsigned NOT NULL auto_increment,
  `npc_id` int(11) default NULL,
  `scene_id` int(11) default NULL,
  `refurbish_number` varchar(200) default NULL,
  `refurbish_attackswitch` int(11) default NULL,
  `refurbish_probability` int(11) default NULL,
  `refurbish_time_ks` varchar(200) default NULL,
  `refurbish_time_js` varchar(200) default NULL,
  `day_time_ks` varchar(200) default NULL,
  `day_time_js` varchar(200) default NULL,
  `week_str` varchar(10) default NULL COMMENT '刷新星期控制',
  `isBoss` int(11) default '0',
  `isDead` int(11) default '1',
  `dead_time` datetime default NULL,
  PRIMARY KEY  (`npcrefurbish_id`),
  KEY `Index1` (`scene_id`,`isBoss`),
  KEY `Index2` (`scene_id`,`npc_id`),
  KEY `Index3` (`scene_id`,`isDead`),
  KEY `Index4` (`npc_id`,`scene_id`,`isBoss`)
) ENGINE=InnoDB AUTO_INCREMENT=1734 DEFAULT CHARSET=gbk;

/*Table structure for table `npcshop` */

DROP TABLE IF EXISTS `npcshop`;

CREATE TABLE `npcshop` (
  `npcshop_id` smallint(5) unsigned NOT NULL auto_increment,
  `npc_id` int(11) default NULL,
  `goods_type` int(11) default NULL,
  `goods_id` int(11) default NULL,
  `goods_name` varchar(200) default NULL,
  `npc_shop_goodsbuy` varchar(200) default NULL,
  PRIMARY KEY  (`npcshop_id`),
  KEY `Index1` (`npc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=gbk;

/*Table structure for table `npcskill` */

DROP TABLE IF EXISTS `npcskill`;

CREATE TABLE `npcskill` (
  `npcski_id` smallint(5) unsigned NOT NULL auto_increment,
  `npcski_name` varchar(200) default NULL,
  `npcski_type` varchar(20) default NULL,
  `npc_id` int(11) default NULL,
  `npcski_wx` int(11) default NULL,
  `npcski_wx_injure` int(11) default NULL,
  `npcski_injure_xiao` int(11) default NULL,
  `npcski_injure_da` int(11) default NULL,
  `npcski_probability` int(11) default NULL,
  PRIMARY KEY  (`npcski_id`),
  KEY `Index1` (`npc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4795 DEFAULT CHARSET=gbk;

/*Table structure for table `operate_menu_info` */

DROP TABLE IF EXISTS `operate_menu_info`;

CREATE TABLE `operate_menu_info` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `menu_name` varchar(500) default NULL,
  `menu_type` int(11) default NULL,
  `menu_img` varchar(500) default NULL,
  `menu_map` int(11) default NULL,
  `menu_operate1` varchar(500) default NULL,
  `menu_operate2` varchar(500) default NULL,
  `menu_operate3` varchar(500) default NULL,
  `menu_camp` int(11) default NULL COMMENT '种族限制',
  `menu_dialog` varchar(600) default NULL,
  `menu_time_begin` varchar(200) default NULL,
  `menu_time_end` varchar(200) default NULL,
  `menu_day_begin` varchar(200) default NULL,
  `menu_day_end` varchar(200) default NULL,
  `week_str` varchar(10) default NULL COMMENT '刷新星期控制',
  `menu_father_id` int(11) default NULL,
  `menu_order` int(11) default NULL,
  `menu_tasks_id` varchar(500) default NULL,
  `menu_task_flag` int(11) default '0',
  `menu_operate4` int(5) default '0',
  PRIMARY KEY  (`id`),
  KEY `Index1` (`menu_map`,`menu_father_id`,`menu_task_flag`,`menu_order`),
  KEY `Index2` (`menu_father_id`,`menu_map`,`menu_order`)
) ENGINE=MyISAM AUTO_INCREMENT=20030 DEFAULT CHARSET=gbk;

/*Table structure for table `p_credit` */

DROP TABLE IF EXISTS `p_credit`;

CREATE TABLE `p_credit` (
  `cid` int(11) NOT NULL auto_increment,
  `cname` varchar(20) default NULL,
  `cdisplay` varchar(500) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=gbk;

/*Table structure for table `prop` */

DROP TABLE IF EXISTS `prop`;

CREATE TABLE `prop` (
  `prop_ID` smallint(5) unsigned NOT NULL auto_increment,
  `prop_Name` varchar(50) default NULL,
  `prop_class` int(11) default NULL,
  `prop_ReLevel` varchar(50) default NULL,
  `prop_bonding` int(11) default NULL,
  `prop_accumulate` int(11) default NULL,
  `prop_display` varchar(300) default NULL,
  `prop_sell` int(11) default NULL,
  `prop_job` varchar(100) default NULL,
  `prop_drop` varchar(200) default NULL,
  `prop_usedegree` int(11) default NULL,
  `prop_sex` int(11) default NULL,
  `prop_protect` int(11) default NULL,
  `prop_pic` varchar(200) default NULL,
  `prop_position` varchar(200) default NULL,
  `prop_auctionPosition` varchar(200) default NULL,
  `prop_marriage` int(11) default NULL,
  `prop_operate1` varchar(500) default NULL,
  `prop_operate2` varchar(500) default NULL,
  `prop_operate3` varchar(500) default NULL,
  `prop_reconfirm` int(11) default NULL,
  `prop_use_control` int(11) default '0',
  PRIMARY KEY  (`prop_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10095 DEFAULT CHARSET=gbk;

/*Table structure for table `quiz_repository` */

DROP TABLE IF EXISTS `quiz_repository`;

CREATE TABLE `quiz_repository` (
  `quiz_id` int(11) NOT NULL auto_increment,
  `quiz_content` varchar(1000) default NULL,
  `quiz_answers` varchar(1000) default NULL,
  `quzi_right_answer` int(11) default NULL,
  `quiz_probability` int(11) default NULL,
  `award_experience` bigint(20) default NULL,
  `award_money` bigint(20) default NULL,
  `award_prestige` varchar(50) default NULL,
  `award_goods` varchar(50) default NULL,
  PRIMARY KEY  (`quiz_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3004 DEFAULT CHARSET=gbk;

/*Table structure for table `scene` */

DROP TABLE IF EXISTS `scene`;

CREATE TABLE `scene` (
  `scene_ID` smallint(5) unsigned NOT NULL auto_increment,
  `scene_Name` varchar(200) default NULL,
  `scene_coordinate` varchar(200) default NULL,
  `scene_limit` varchar(200) default NULL,
  `scene_jumpterm` varchar(200) default NULL,
  `scene_attribute` varchar(200) default NULL,
  `scene_switch` int(11) default NULL,
  `scene_ken` varchar(200) default NULL,
  `scene_skill` int(11) default NULL COMMENT '迷宫层数',
  `scene_photo` varchar(200) default NULL,
  `scene_display` varchar(200) default NULL,
  `scene_mapqy` int(11) default NULL,
  `scene_shang` int(11) default '0',
  `scene_xia` int(11) default '0',
  `scene_zuo` int(11) default '0',
  `scene_you` int(11) default '0',
  PRIMARY KEY  (`scene_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12177 DEFAULT CHARSET=gbk;

/*Table structure for table `skill` */

DROP TABLE IF EXISTS `skill`;

CREATE TABLE `skill` (
  `sk_id` smallint(5) unsigned NOT NULL auto_increment,
  `sk_name` varchar(50) default NULL,
  `sk_display` varchar(200) default NULL,
  `sk_type` int(11) default NULL,
  `sk_expend` varchar(100) default NULL,
  `sk_usecondition` int(11) default NULL,
  `sk_damage_di` int(11) default NULL,
  `sk_damage_gao` int(11) default NULL,
  `sk_area` int(11) default NULL,
  `sk_baolv` varchar(50) default NULL,
  `sk_yun` int(11) default NULL,
  `sk_yun_bout` int(11) default NULL,
  `sk_buff` int(11) default NULL,
  `sk_buff_probability` int(11) default NULL,
  `sk_lqtime` int(11) default NULL,
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
  `sk_sleight` int(11) default NULL,
  `sk_next_sleight` int(11) default NULL,
  PRIMARY KEY  (`sk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;

/*Table structure for table `suit_info` */

DROP TABLE IF EXISTS `suit_info`;

CREATE TABLE `suit_info` (
  `suit_id` smallint(5) unsigned NOT NULL auto_increment,
  `suit_name` varchar(100) default NULL,
  `suit_parts_num` int(11) default NULL,
  `two_effects` varchar(100) default NULL,
  `two_effects_describe` varchar(500) default NULL,
  `three_effects` varchar(100) default NULL,
  `three_effects_describe` varchar(500) default NULL,
  `four_effects` varchar(100) default NULL,
  `four_effects_describe` varchar(500) default NULL,
  PRIMARY KEY  (`suit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

/*Table structure for table `synthesize` */

DROP TABLE IF EXISTS `synthesize`;

CREATE TABLE `synthesize` (
  `s_id` smallint(5) unsigned NOT NULL auto_increment COMMENT '配方ID',
  `s_type` int(11) default NULL COMMENT '配方类型',
  `s_level` int(11) default NULL COMMENT '配方等级',
  `prop` varchar(200) default NULL COMMENT '合成需要的物品',
  `s_prop` varchar(200) default NULL COMMENT '生成物品',
  `s_sleight` int(11) default NULL COMMENT '合成成功得到的熟练度',
  `s_min_sleight` int(11) default NULL COMMENT '合成技能熟练度的下限',
  `s_max_sleight` int(11) default NULL COMMENT '该配方能获得的熟练度上限',
  `s_book` int(11) default NULL COMMENT '是否需要技能书',
  PRIMARY KEY  (`s_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Table structure for table `system` */

DROP TABLE IF EXISTS `system`;

CREATE TABLE `system` (
  `s_player` int(11) default '600',
  `all_key` varchar(50) default NULL,
  `pc_islogininfoname` int(11) default '0',
  `pc_black` int(11) default '0',
  `pc_ua` int(11) default '0',
  `pc_link_number` int(11) default '0'
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

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
  `is_only_one` enum('0','1','2','3','4','5','6','7','8','9') default NULL,
  `onces` int(3) default NULL,
  `give_goods` varchar(200) default NULL,
  `isuseable` int(3) default '1',
  `horta_display` varchar(100) default NULL,
  PRIMARY KEY  (`horta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=gbk;

/*Table structure for table `task` */

DROP TABLE IF EXISTS `task`;

CREATE TABLE `task` (
  `t_id` smallint(5) unsigned NOT NULL auto_increment,
  `t_zu` varchar(200) default NULL,
  `t_zuxl` varchar(200) default NULL,
  `t_name` varchar(200) default NULL,
  `t_level_xiao` int(11) default NULL,
  `t_level_da` int(11) default NULL,
  `t_school` varchar(500) default NULL COMMENT '种族称号限制',
  `t_type` int(11) default NULL,
  `t_display` varchar(500) default NULL,
  `t_tishi` varchar(500) default NULL,
  `t_key` varchar(1000) default NULL,
  `t_key_value` varchar(1000) default NULL,
  `t_geidj` varchar(500) default NULL,
  `t_geidj_number` varchar(200) default NULL,
  `t_point` varchar(200) default NULL,
  `t_zjms` varchar(500) default NULL,
  `t_bnzjms` varchar(500) default NULL,
  `t_zjdwp` varchar(500) default NULL,
  `t_zjdwp_number` int(11) default NULL,
  `t_djsc` int(11) default NULL,
  `t_midst_gs` varchar(500) default NULL,
  `t_goods` varchar(500) default NULL,
  `t_goods_number` varchar(200) default NULL,
  `t_goodszb` varchar(500) default NULL,
  `t_goodszb_number` varchar(200) default NULL,
  `t_killing` varchar(500) default NULL,
  `t_killing_no` int(11) default NULL,
  `t_money` varchar(500) default NULL,
  `t_exp` varchar(500) default NULL,
  `t_sw_type` int(11) default NULL,
  `t_sw` varchar(500) default NULL,
  `t_encouragement` varchar(500) default NULL,
  `t_encouragement_no` varchar(500) default NULL,
  `t_xrwnpc_id` int(11) default NULL,
  `t_next` int(11) default NULL,
  `t_encouragement_zb` varchar(500) default NULL,
  `t_encouragement_no_zb` varchar(500) default NULL,
  `t_cycle` int(11) default NULL,
  PRIMARY KEY  (`t_id`),
  KEY `Index1` (`t_zu`,`t_zuxl`)
) ENGINE=MyISAM AUTO_INCREMENT=1893 DEFAULT CHARSET=gbk;

/*Table structure for table `title_info` */

DROP TABLE IF EXISTS `title_info`;

CREATE TABLE `title_info` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `des` varchar(100) default NULL,
  `type` varchar(100) default NULL COMMENT '称号类型',
  `type_name` varchar(50) default NULL COMMENT '称号类型名称',
  `attri_str` varchar(80) default '0' COMMENT '附加属性字符串',
  `use_time` int(11) default '0' COMMENT '使用时间限制：0为无限制，单位分',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=gbk;

/*Table structure for table `u_grow_info` */

DROP TABLE IF EXISTS `u_grow_info`;

CREATE TABLE `u_grow_info` (
  `g_pk` smallint(5) unsigned NOT NULL auto_increment,
  `g_grade` int(11) default NULL COMMENT '等级',
  `g_race` int(11) default NULL COMMENT '种族',
  `g_exp` varchar(500) default NULL COMMENT '本级经验',
  `g_next_exp` varchar(500) default NULL COMMENT '下级经验',
  `g_HP` int(11) default NULL COMMENT '血量上限',
  `g_MP` int(11) default NULL COMMENT '法力上限',
  `g_gj` int(11) default NULL COMMENT '攻击',
  `g_fy` int(11) default NULL COMMENT '防御',
  `g_isAutogrow` int(11) default NULL COMMENT '0表示需要专职道具',
  `g_drop_multiple` double default NULL COMMENT '暴击率',
  PRIMARY KEY  (`g_pk`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=gbk;

/*Table structure for table `u_intimate_hint` */

DROP TABLE IF EXISTS `u_intimate_hint`;

CREATE TABLE `u_intimate_hint` (
  `h_pk` smallint(5) unsigned NOT NULL auto_increment,
  `h_hint` varchar(500) default NULL,
  `h_content` varchar(500) default NULL,
  PRIMARY KEY  (`h_pk`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=gbk;

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
  `functionDisplay` varchar(200) default NULL,
  `buff` varchar(80) default NULL,
  `sentPrice` int(11) default NULL,
  `nextLevelID` varchar(100) default NULL,
  `hightLevel` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=gbk;

/*Table structure for table `u_systeminfo_control` */

DROP TABLE IF EXISTS `u_systeminfo_control`;

CREATE TABLE `u_systeminfo_control` (
  `control_id` int(10) unsigned NOT NULL auto_increment,
  `condition_type` int(11) default NULL,
  `player_grade` varchar(20) default '0',
  `task_id` int(11) default '0',
  `popularity` int(11) default '0',
  `title` varchar(50) default NULL,
  `send_time` varchar(50) default NULL,
  `send_content` varchar(1000) default NULL,
  `send_type` int(11) default NULL,
  PRIMARY KEY  (`control_id`)
) ENGINE=MyISAM AUTO_INCREMENT=264 DEFAULT CHARSET=gbk;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
