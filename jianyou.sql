/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : jianyou

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-08-22 22:58:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ad_item
-- ----------------------------
DROP TABLE IF EXISTS `ad_item`;
CREATE TABLE `ad_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adPositionId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ad_item
-- ----------------------------

-- ----------------------------
-- Table structure for ad_position
-- ----------------------------
DROP TABLE IF EXISTS `ad_position`;
CREATE TABLE `ad_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ad_position
-- ----------------------------

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for cn_answer
-- ----------------------------
DROP TABLE IF EXISTS `cn_answer`;
CREATE TABLE `cn_answer` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='回答';

-- ----------------------------
-- Records of cn_answer
-- ----------------------------

-- ----------------------------
-- Table structure for cn_article
-- ----------------------------
DROP TABLE IF EXISTS `cn_article`;
CREATE TABLE `cn_article` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `sort_id` int(100) NOT NULL,
  `recommend` smallint(5) NOT NULL DEFAULT '0' COMMENT '推荐排序',
  `title` varchar(100) NOT NULL,
  `desc` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `images` text,
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cn_article
-- ----------------------------

-- ----------------------------
-- Table structure for cn_article_cate
-- ----------------------------
DROP TABLE IF EXISTS `cn_article_cate`;
CREATE TABLE `cn_article_cate` (
  `id` int(11) NOT NULL,
  `catename` varchar(30) NOT NULL,
  `image` varchar(150) NOT NULL DEFAULT '',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_id` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cn_article_cate
-- ----------------------------

-- ----------------------------
-- Table structure for cn_code_block
-- ----------------------------
DROP TABLE IF EXISTS `cn_code_block`;
CREATE TABLE `cn_code_block` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `code` text NOT NULL,
  `desc` varchar(125) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `code_block_name` (`name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='代码块';

-- ----------------------------
-- Records of cn_code_block
-- ----------------------------

-- ----------------------------
-- Table structure for cn_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `cn_evaluate`;
CREATE TABLE `cn_evaluate` (
  `id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL COMMENT '客户图片',
  `desc` varchar(255) NOT NULL COMMENT '客户评价',
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `travelog_id` int(11) NOT NULL DEFAULT '0' COMMENT '游记Id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客户评价';

-- ----------------------------
-- Records of cn_evaluate
-- ----------------------------

-- ----------------------------
-- Table structure for cn_menu
-- ----------------------------
DROP TABLE IF EXISTS `cn_menu`;
CREATE TABLE `cn_menu` (
  `id` int(11) NOT NULL,
  `name` char(10) NOT NULL,
  `desc` char(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cn_menu
-- ----------------------------

-- ----------------------------
-- Table structure for cn_menu_list
-- ----------------------------
DROP TABLE IF EXISTS `cn_menu_list`;
CREATE TABLE `cn_menu_list` (
  `id` int(11) NOT NULL,
  `url` char(100) NOT NULL,
  `name` char(10) NOT NULL,
  `sort_id` tinyint(3) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_menu_list_menu_list_1` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cn_menu_list
-- ----------------------------

-- ----------------------------
-- Table structure for cn_partner
-- ----------------------------
DROP TABLE IF EXISTS `cn_partner`;
CREATE TABLE `cn_partner` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `images` text,
  `tel` text,
  `wechat` text,
  `desc` varchar(255) DEFAULT NULL,
  `content` text,
  `address` varchar(150) DEFAULT NULL,
  `seo_title` varchar(100) DEFAULT NULL,
  `seo_keyword` varchar(150) DEFAULT NULL,
  `seo_desc` varchar(255) DEFAULT NULL,
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `click` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='合作伙伴';

-- ----------------------------
-- Records of cn_partner
-- ----------------------------

-- ----------------------------
-- Table structure for cn_question
-- ----------------------------
DROP TABLE IF EXISTS `cn_question`;
CREATE TABLE `cn_question` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `addtiime` int(11) NOT NULL,
  `desc` varchar(255) NOT NULL DEFAULT '',
  `click` int(11) NOT NULL DEFAULT '0',
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='问题';

-- ----------------------------
-- Records of cn_question
-- ----------------------------

-- ----------------------------
-- Table structure for cn_scenic
-- ----------------------------
DROP TABLE IF EXISTS `cn_scenic`;
CREATE TABLE `cn_scenic` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` varchar(255) NOT NULL DEFAULT '',
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `click` int(11) NOT NULL DEFAULT '0',
  `price` varchar(50) NOT NULL DEFAULT '' COMMENT '门票价格',
  `open_time` varchar(50) NOT NULL DEFAULT '' COMMENT '开放时间',
  `pointx` float(6,6) NOT NULL DEFAULT '0.000000',
  `pointy` float(6,6) NOT NULL DEFAULT '0.000000' COMMENT '地图坐标',
  `prompt` text COMMENT '注意事项',
  `images` text,
  `content` text NOT NULL,
  `area` tinyint(3) NOT NULL COMMENT '所在地',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='景区';

-- ----------------------------
-- Records of cn_scenic
-- ----------------------------

-- ----------------------------
-- Table structure for cn_service
-- ----------------------------
DROP TABLE IF EXISTS `cn_service`;
CREATE TABLE `cn_service` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `images` text NOT NULL,
  `desc` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  `click` int(11) NOT NULL DEFAULT '0',
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `recommend` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cn_service
-- ----------------------------

-- ----------------------------
-- Table structure for cn_team
-- ----------------------------
DROP TABLE IF EXISTS `cn_team`;
CREATE TABLE `cn_team` (
  `id` int(11) NOT NULL,
  `name` char(30) NOT NULL,
  `language` char(50) NOT NULL COMMENT '语言能力 如： 英文、中文',
  `area` tinyint(3) NOT NULL COMMENT '所在区域： 1 金边 2西港 3 暹粒',
  `position` char(50) NOT NULL COMMENT '职位',
  `slogan` char(255) NOT NULL COMMENT '服务标语',
  `image` char(150) NOT NULL,
  `sort_id` tinyint(3) NOT NULL DEFAULT '0',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  `wechat` varchar(50) DEFAULT NULL,
  `tel` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `team_area` (`area`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='团队成员';

-- ----------------------------
-- Records of cn_team
-- ----------------------------

-- ----------------------------
-- Table structure for cn_tour_route
-- ----------------------------
DROP TABLE IF EXISTS `cn_tour_route`;
CREATE TABLE `cn_tour_route` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `scenic_id` varchar(255) NOT NULL COMMENT '路线景点ID： 1,2,3',
  `desc` varchar(255) NOT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='旅游路线';

-- ----------------------------
-- Records of cn_tour_route
-- ----------------------------

-- ----------------------------
-- Table structure for cn_travelog
-- ----------------------------
DROP TABLE IF EXISTS `cn_travelog`;
CREATE TABLE `cn_travelog` (
  `id` int(11) NOT NULL,
  `images` text NOT NULL,
  `content` text NOT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='游记';

-- ----------------------------
-- Records of cn_travelog
-- ----------------------------

-- ----------------------------
-- Table structure for en_answer
-- ----------------------------
DROP TABLE IF EXISTS `en_answer`;
CREATE TABLE `en_answer` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='回答';

-- ----------------------------
-- Records of en_answer
-- ----------------------------

-- ----------------------------
-- Table structure for en_article
-- ----------------------------
DROP TABLE IF EXISTS `en_article`;
CREATE TABLE `en_article` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `sort_id` int(100) NOT NULL,
  `recommend` smallint(5) NOT NULL DEFAULT '0' COMMENT '推荐排序',
  `title` varchar(100) NOT NULL,
  `desc` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `images` text,
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_article
-- ----------------------------

-- ----------------------------
-- Table structure for en_article_cate
-- ----------------------------
DROP TABLE IF EXISTS `en_article_cate`;
CREATE TABLE `en_article_cate` (
  `id` int(11) NOT NULL,
  `catename` varchar(30) NOT NULL,
  `image` varchar(150) NOT NULL DEFAULT '',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_id` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_article_cate
-- ----------------------------

-- ----------------------------
-- Table structure for en_code_block
-- ----------------------------
DROP TABLE IF EXISTS `en_code_block`;
CREATE TABLE `en_code_block` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `code` text NOT NULL,
  `desc` varchar(125) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `code_block_name` (`name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='代码块';

-- ----------------------------
-- Records of en_code_block
-- ----------------------------

-- ----------------------------
-- Table structure for en_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `en_evaluate`;
CREATE TABLE `en_evaluate` (
  `id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL COMMENT '客户图片',
  `desc` varchar(255) NOT NULL COMMENT '客户评价',
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `travelog_id` int(11) NOT NULL DEFAULT '0' COMMENT '游记Id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客户评价';

-- ----------------------------
-- Records of en_evaluate
-- ----------------------------

-- ----------------------------
-- Table structure for en_menu
-- ----------------------------
DROP TABLE IF EXISTS `en_menu`;
CREATE TABLE `en_menu` (
  `id` int(11) NOT NULL,
  `name` char(10) NOT NULL,
  `desc` char(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_menu
-- ----------------------------

-- ----------------------------
-- Table structure for en_menu_list
-- ----------------------------
DROP TABLE IF EXISTS `en_menu_list`;
CREATE TABLE `en_menu_list` (
  `id` int(11) NOT NULL,
  `url` char(100) NOT NULL,
  `name` char(10) NOT NULL,
  `sort_id` tinyint(3) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_menu_list_menu_list_1` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_menu_list
-- ----------------------------

-- ----------------------------
-- Table structure for en_partner
-- ----------------------------
DROP TABLE IF EXISTS `en_partner`;
CREATE TABLE `en_partner` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `images` text,
  `tel` text,
  `wechat` text,
  `desc` varchar(255) DEFAULT NULL,
  `content` text,
  `address` varchar(150) DEFAULT NULL,
  `seo_title` varchar(100) DEFAULT NULL,
  `seo_keyword` varchar(150) DEFAULT NULL,
  `seo_desc` varchar(255) DEFAULT NULL,
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `click` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='合作伙伴';

-- ----------------------------
-- Records of en_partner
-- ----------------------------

-- ----------------------------
-- Table structure for en_question
-- ----------------------------
DROP TABLE IF EXISTS `en_question`;
CREATE TABLE `en_question` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `addtiime` int(11) NOT NULL,
  `desc` varchar(255) NOT NULL DEFAULT '',
  `click` int(11) NOT NULL DEFAULT '0',
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='问题';

-- ----------------------------
-- Records of en_question
-- ----------------------------

-- ----------------------------
-- Table structure for en_scenic
-- ----------------------------
DROP TABLE IF EXISTS `en_scenic`;
CREATE TABLE `en_scenic` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` varchar(255) NOT NULL DEFAULT '',
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `click` int(11) NOT NULL DEFAULT '0',
  `price` varchar(50) NOT NULL DEFAULT '' COMMENT '门票价格',
  `open_time` varchar(50) NOT NULL DEFAULT '' COMMENT '开放时间',
  `pointx` float(6,6) NOT NULL DEFAULT '0.000000',
  `pointy` float(6,6) NOT NULL DEFAULT '0.000000' COMMENT '地图坐标',
  `prompt` text COMMENT '注意事项',
  `images` text,
  `content` text NOT NULL,
  `area` tinyint(3) NOT NULL COMMENT '所在地',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='景区';

-- ----------------------------
-- Records of en_scenic
-- ----------------------------

-- ----------------------------
-- Table structure for en_service
-- ----------------------------
DROP TABLE IF EXISTS `en_service`;
CREATE TABLE `en_service` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `images` text NOT NULL,
  `desc` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  `click` int(11) NOT NULL DEFAULT '0',
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `recommend` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_service
-- ----------------------------

-- ----------------------------
-- Table structure for en_team
-- ----------------------------
DROP TABLE IF EXISTS `en_team`;
CREATE TABLE `en_team` (
  `id` int(11) NOT NULL,
  `name` char(30) NOT NULL,
  `language` char(50) NOT NULL COMMENT '语言能力 如： 英文、中文',
  `area` tinyint(3) NOT NULL COMMENT '所在区域： 1 金边 2西港 3 暹粒',
  `position` char(50) NOT NULL COMMENT '职位',
  `slogan` char(255) NOT NULL COMMENT '服务标语',
  `image` char(150) NOT NULL,
  `sort_id` tinyint(3) NOT NULL DEFAULT '0',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  `wechat` varchar(50) DEFAULT NULL,
  `tel` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `team_area` (`area`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='团队成员';

-- ----------------------------
-- Records of en_team
-- ----------------------------

-- ----------------------------
-- Table structure for en_tour_route
-- ----------------------------
DROP TABLE IF EXISTS `en_tour_route`;
CREATE TABLE `en_tour_route` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `scenic_id` varchar(255) NOT NULL COMMENT '路线景点ID： 1,2,3',
  `desc` varchar(255) NOT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='旅游路线';

-- ----------------------------
-- Records of en_tour_route
-- ----------------------------

-- ----------------------------
-- Table structure for en_travelog
-- ----------------------------
DROP TABLE IF EXISTS `en_travelog`;
CREATE TABLE `en_travelog` (
  `id` int(11) NOT NULL,
  `images` text NOT NULL,
  `content` text NOT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(150) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='游记';

-- ----------------------------
-- Records of en_travelog
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1503112472');
INSERT INTO `migration` VALUES ('m140602_111327_create_menu_table', '1503112474');
INSERT INTO `migration` VALUES ('m160312_050000_create_user', '1503112475');
INSERT INTO `migration` VALUES ('m140506_102106_rbac_init', '1503112490');
INSERT INTO `migration` VALUES ('m141208_201488_setting_init', '1503409826');
INSERT INTO `migration` VALUES ('m150831_064007_adManage', '1503416998');

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `store_range` varchar(255) DEFAULT NULL,
  `store_dir` varchar(255) DEFAULT NULL,
  `value` text,
  `sort_order` int(11) NOT NULL DEFAULT '50',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `code` (`code`),
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=3116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('11', '0', 'info', 'group', '', '', '', '50');
INSERT INTO `setting` VALUES ('21', '0', 'basic', 'group', '', '', '', '50');
INSERT INTO `setting` VALUES ('31', '0', 'smtp', 'group', '', '', '', '50');
INSERT INTO `setting` VALUES ('1111', '11', 'siteName', 'text', '', '', 'Your Site', '50');
INSERT INTO `setting` VALUES ('1112', '11', 'siteTitle', 'text', '', '', 'Your Site Title', '50');
INSERT INTO `setting` VALUES ('1113', '11', 'siteKeyword', 'text', '', '', 'Your Site Keyword', '50');
INSERT INTO `setting` VALUES ('2111', '21', 'timezone', 'select', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '50');
INSERT INTO `setting` VALUES ('2112', '21', 'commentCheck', 'select', '0,1', '', '1', '50');
INSERT INTO `setting` VALUES ('3111', '31', 'smtpHost', 'text', '', '', 'localhost', '50');
INSERT INTO `setting` VALUES ('3112', '31', 'smtpPort', 'text', '', '', '', '50');
INSERT INTO `setting` VALUES ('3113', '31', 'smtpUser', 'text', '', '', '', '50');
INSERT INTO `setting` VALUES ('3114', '31', 'smtpPassword', 'password', '', '', '', '50');
INSERT INTO `setting` VALUES ('3115', '31', 'smtpMail', 'text', '', '', '', '50');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
