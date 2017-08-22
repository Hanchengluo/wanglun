CREATE TABLE `en_menu` (
`id` int(11) NOT NULL,
`name` char(10) NOT NULL,
`desc` char(120) NOT NULL DEFAULT '',
PRIMARY KEY (`id`) 
);

CREATE TABLE `en_menu_list` (
`id` int(11) NOT NULL,
`url` char(100) NOT NULL,
`name` char(10) NOT NULL,
`sort_id` tinyint(3) NOT NULL DEFAULT 0,
`pid` int(11) NOT NULL,
PRIMARY KEY (`id`) 
);

CREATE TABLE `en_article` (
`id` int(11) NOT NULL,
`pid` int(11) NOT NULL,
`click` int(11) NOT NULL DEFAULT 0,
`sort_id` int(100) NOT NULL,
`recommend` smallint(5) NOT NULL DEFAULT 0 COMMENT '推荐排序',
`title` varchar(100) NOT NULL,
`desc` varchar(255) NOT NULL DEFAULT '',
`content` text NOT NULL,
`images` text NULL,
`seo_title` varchar(100) NOT NULL DEFAULT '',
`seo_keyword` varchar(150) NOT NULL DEFAULT '',
`seo_desc` varchar(255) NOT NULL DEFAULT '',
PRIMARY KEY (`id`) 
);

CREATE TABLE `en_article_cate` (
`id` int(11) NOT NULL,
`catename` varchar(30) NOT NULL,
`image` varchar(150) NOT NULL DEFAULT '',
`desc` varchar(255) NOT NULL DEFAULT '',
`seo_title` varchar(100) NOT NULL DEFAULT '',
`seo_keyword` varchar(150) NOT NULL DEFAULT '',
`seo_desc` varchar(255) NOT NULL DEFAULT '',
`sort_id` tinyint(3) NOT NULL DEFAULT 0,
PRIMARY KEY (`id`) 
);

CREATE TABLE `en_team` (
`id` int(11) NOT NULL,
`name` char(30) NOT NULL,
`language` char(50) NOT NULL COMMENT '语言能力 如： 英文、中文',
`area` tinyint(3) NOT NULL COMMENT '所在区域： 1 金边 2西港 3 暹粒',
`position` char(50) NOT NULL COMMENT '职位',
`slogan` char(255) NOT NULL COMMENT '服务标语',
`image` char(150) NOT NULL,
`sort_id` tinyint(3) NOT NULL DEFAULT 0,
`seo_title` varchar(100) NOT NULL DEFAULT '',
`seo_keyword` varchar(150) NOT NULL DEFAULT '',
`seo_desc` varchar(255) NOT NULL DEFAULT '',
`wechat` varchar(50) NULL,
`tel` varchar(30) NOT NULL,
PRIMARY KEY (`id`) ,
INDEX `team_area` (`area` ASC) USING BTREE
)
COMMENT = '团队成员';

CREATE TABLE `en_service` (
`id` int(11) NOT NULL,
`name` varchar(20) NULL,
`images` text NOT NULL,
`desc` varchar(255) NOT NULL DEFAULT '',
`content` text NOT NULL,
`seo_title` varchar(100) NOT NULL DEFAULT '',
`seo_keyword` varchar(150) NOT NULL DEFAULT '',
`seo_desc` varchar(255) NOT NULL DEFAULT '',
`click` int(11) NOT NULL DEFAULT 0,
`sort_id` int(11) NOT NULL DEFAULT 0,
`recommend` smallint(5) NOT NULL DEFAULT 0,
PRIMARY KEY (`id`) 
);

CREATE TABLE `en_partner` (
`id` int(11) NOT NULL,
`name` varchar(50) NOT NULL,
`images` text NULL,
`tel` text NULL,
`wechat` text NULL,
`desc` varchar(255) NULL,
`content` text NULL,
`address` varchar(150) NULL,
`seo_title` varchar(100) NULL,
`seo_keyword` varchar(150) NULL,
`seo_desc` varchar(255) NULL,
`sort_id` int(11) NOT NULL DEFAULT 0,
`click` int(11) NOT NULL DEFAULT 0,
PRIMARY KEY (`id`) 
)
COMMENT = '合作伙伴';

CREATE TABLE `en_scenic` (
`id` int(11) NOT NULL,
`name` varchar(50) NOT NULL,
`desc` varchar(255) NOT NULL DEFAULT '',
`sort_id` int(11) NOT NULL DEFAULT 0,
`click` int(11) NOT NULL DEFAULT 0,
`price` varchar(50) NOT NULL DEFAULT '' COMMENT '门票价格',
`open_time` varchar(50) NOT NULL DEFAULT '' COMMENT '开放时间',
`pointx` float(6,6) NOT NULL DEFAULT 0,
`pointy` float(6,6) NOT NULL DEFAULT 0 COMMENT '地图坐标',
`prompt` text NULL COMMENT '注意事项',
`images` text NULL,
`content` text NOT NULL,
`area` tinyint(3) NOT NULL COMMENT '所在地',
PRIMARY KEY (`id`) 
)
COMMENT = '景区';

CREATE TABLE `en_tour_route` (
`id` int(11) NOT NULL,
`name` varchar(50) NOT NULL,
`scenic_id` varchar(255) NOT NULL COMMENT '路线景点ID： 1,2,3',
`desc` varchar(255) NOT NULL,
`click` int(11) NOT NULL DEFAULT 0,
`sort_id` int(11) NOT NULL DEFAULT 0,
`seo_title` varchar(100) NOT NULL DEFAULT '',
`seo_keyword` varchar(150) NOT NULL DEFAULT '',
`seo_desc` varchar(255) NOT NULL DEFAULT '',
`content` text NOT NULL,
PRIMARY KEY (`id`) 
)
COMMENT = '旅游路线';

CREATE TABLE `en_code_block` (
`id` int(11) NOT NULL,
`name` varchar(30) NOT NULL,
`code` text NOT NULL,
`desc` varchar(125) NOT NULL,
PRIMARY KEY (`id`) ,
INDEX `code_block_name` (`name` ASC) USING BTREE
)
COMMENT = '代码块';

CREATE TABLE `en_evaluate` (
`id` int(11) NOT NULL,
`image` varchar(150) NOT NULL COMMENT '客户图片',
`desc` varchar(255) NOT NULL COMMENT '客户评价',
`sort_id` int(11) NOT NULL DEFAULT 0,
`travelog_id` int(11) NOT NULL DEFAULT 0 COMMENT '游记Id',
PRIMARY KEY (`id`) 
)
COMMENT = '客户评价';

CREATE TABLE `en_travelog` (
`id` int(11) NOT NULL,
`images` text NOT NULL,
`content` text NOT NULL,
`click` int(11) NOT NULL DEFAULT 0,
`sort_id` int(11) NOT NULL DEFAULT 0,
`seo_title` varchar(100) NOT NULL DEFAULT '',
`seo_keyword` varchar(150) NOT NULL DEFAULT '',
`seo_desc` varchar(255) NOT NULL DEFAULT '',
PRIMARY KEY (`id`) 
)
COMMENT = '游记';

CREATE TABLE `en_question` (
`id` int(11) NOT NULL,
`title` varchar(100) NOT NULL,
`addtiime` int(11) NOT NULL,
`desc` varchar(255) NOT NULL DEFAULT '',
`click` int(11) NOT NULL DEFAULT 0,
`sort_id` int(11) NOT NULL DEFAULT 0,
`seo_title` varchar(100) NOT NULL DEFAULT '',
`seo_keyword` varchar(150) NOT NULL DEFAULT '',
`seo_desc` varchar(255) NOT NULL DEFAULT '',
PRIMARY KEY (`id`) 
)
COMMENT = '问题';

CREATE TABLE `en_answer` (
`id` int(11) NOT NULL,
`pid` int(11) NOT NULL,
`desc` varchar(255) NOT NULL,
`addtime` int(11) NOT NULL,
PRIMARY KEY (`id`) 
)
COMMENT = '回答';


ALTER TABLE `en_menu_list` ADD CONSTRAINT `fk_menu_list_menu_1` FOREIGN KEY (`pid`) REFERENCES `en_menu` (`id`);
ALTER TABLE `en_menu_list` ADD CONSTRAINT `fk_menu_list_menu_list_1` FOREIGN KEY (`pid`) REFERENCES `en_menu_list` (`pid`);

