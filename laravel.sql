/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : laravel

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2014-07-24 15:05:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `blogs`
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `pictrue` varchar(280) NOT NULL,
  `tags` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16149 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES ('16146', '地方的', '地方的', ' 反对广泛的 反对广泛的 反对广泛的 反对广泛的 反对广泛的', '2', '5', '', ' 反对广泛的', '2014-07-22 13:39:52', '2014-07-22 13:54:00');
INSERT INTO `blogs` VALUES ('16147', '问题为', '问题为', '广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌广告歌', '2', '1', '', 'sad方法', '2014-07-24 15:00:45', '2014-07-24 15:00:46');
INSERT INTO `blogs` VALUES ('16148', '撒旦套二厅二', '撒旦套二厅二', '多少份额', '2', '2', '', '地方', '2014-07-24 15:01:15', '2014-07-24 15:01:36');

-- ----------------------------
-- Table structure for `events`
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_day` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_day` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `from` varchar(250) NOT NULL,
  `to` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `maxattend` int(11) NOT NULL,
  `over_day` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `budget` varchar(250) NOT NULL,
  `totalviews` int(11) NOT NULL,
  `tags` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of events
-- ----------------------------

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `totalviews` int(11) NOT NULL,
  `tags` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for `laravel_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `laravel_migrations`;
CREATE TABLE `laravel_migrations` (
  `bundle` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`bundle`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of laravel_migrations
-- ----------------------------
INSERT INTO `laravel_migrations` VALUES ('application', '2012_09_21_111421_create_posts', '1');
INSERT INTO `laravel_migrations` VALUES ('application', '2012_09_21_114246_create_users', '1');
INSERT INTO `laravel_migrations` VALUES ('application', '2012_09_26_104000_create_blog', '1');
INSERT INTO `laravel_migrations` VALUES ('application', '2012_09_26_104012_create_events', '1');
INSERT INTO `laravel_migrations` VALUES ('application', '2012_09_26_104019_create_group', '1');
INSERT INTO `laravel_migrations` VALUES ('application', '2012_09_26_104030_create_photo', '1');
INSERT INTO `laravel_migrations` VALUES ('application', '2012_09_26_104743_create_category', '1');
INSERT INTO `laravel_migrations` VALUES ('application', '2012_09_27_094026_add_user_id_to_posts_table', '2');
INSERT INTO `laravel_migrations` VALUES ('application', '2012_09_27_200149_add_name_to_users_table', '3');

-- ----------------------------
-- Table structure for `photos`
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `totalviews` int(11) NOT NULL,
  `tags` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photos
-- ----------------------------

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `pictrue` varchar(280) NOT NULL,
  `test` varchar(280) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `email` varchar(320) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'nnair@qq.com', '$2a$08$VFdWTXFIbWFucGl0UnlsZuqCg6FKZBexXuaGUaPN2ASISgZzz75ti', '1', '1', '0000-00-00 00:00:00', '2012-09-27 20:28:54', '岭南六少');
INSERT INTO `users` VALUES ('2', 'sss', 'aaa@qq.com', '$2a$08$LIlc8Aw87Rg6708VbSaJ..ivQRHZjfyaeMMVt2szCOn76vDYwryRC', '1', '1', '2014-07-22 12:01:57', '2014-07-24 15:00:22', '张三');
