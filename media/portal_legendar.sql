-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 20 2014 г., 22:39
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `portal_legendar`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_assets`
--

CREATE TABLE IF NOT EXISTS `ikona_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Дамп данных таблицы `ikona_assets`
--

INSERT INTO `ikona_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 105, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 52, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 53, 54, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 55, 56, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 57, 58, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 59, 60, 1, 'com_login', 'com_login', '{}'),
(13, 1, 61, 62, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 63, 64, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 65, 66, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 67, 68, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 69, 70, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 71, 72, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 73, 76, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 77, 78, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 79, 80, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 81, 82, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 83, 84, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 85, 88, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 89, 92, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 93, 94, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Контакты', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 74, 75, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 90, 91, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 86, 87, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 95, 96, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 97, 98, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 8, 20, 37, 2, 'com_content.category.8', 'Главное меню', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(36, 35, 21, 22, 3, 'com_content.article.1', 'Главная', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(37, 35, 23, 24, 3, 'com_content.article.2', 'Гороскоп', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 35, 25, 26, 3, 'com_content.article.3', 'Новости', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(39, 35, 27, 28, 3, 'com_content.article.4', 'Погода', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 35, 29, 30, 3, 'com_content.article.5', 'Контакты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(41, 1, 99, 100, 1, 'com_jce', 'jce', '{}'),
(42, 1, 101, 102, 1, 'com_mtree', 'com_mtree', '{}'),
(44, 8, 38, 51, 2, 'com_content.category.9', 'Полезные статьи', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(45, 44, 39, 40, 3, 'com_content.article.6', 'Статья 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(46, 44, 41, 42, 3, 'com_content.article.7', 'Статья 1 (2)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(47, 44, 43, 44, 3, 'com_content.article.8', 'Статья 1 (3)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(48, 44, 45, 46, 3, 'com_content.article.9', 'Статья 1 (4)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(49, 44, 47, 48, 3, 'com_content.article.10', 'Статья 1 (5)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 44, 49, 50, 3, 'com_content.article.11', 'Статья 1 (6)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 35, 31, 32, 3, 'com_content.article.12', 'Расписание транспорта', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 35, 33, 34, 3, 'com_content.article.13', 'Телепрограмма', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 1, 103, 104, 1, 'com_jlweather', 'jlweather', '{}'),
(54, 35, 35, 36, 3, 'com_content.article.14', 'Гороскоп', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_associations`
--

CREATE TABLE IF NOT EXISTS `ikona_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_banners`
--

CREATE TABLE IF NOT EXISTS `ikona_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_banner_clients`
--

CREATE TABLE IF NOT EXISTS `ikona_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `ikona_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_categories`
--

CREATE TABLE IF NOT EXISTS `ikona_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `ikona_categories`
--

INSERT INTO `ikona_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 17, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'kontakty', 'com_contact', 'Контакты', 'kontakty', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2010-06-28 13:27:57', 837, '2014-01-19 19:47:10', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 35, 1, 13, 14, 1, 'glavnoe-menyu', 'com_content', 'Главное меню', 'glavnoe-menyu', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 837, '2014-01-19 19:41:31', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 44, 1, 15, 16, 1, 'poleznye-stati', 'com_content', 'Полезные статьи', 'poleznye-stati', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 837, '2014-03-09 20:32:15', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_contact_details`
--

CREATE TABLE IF NOT EXISTS `ikona_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `ikona_contact_details`
--

INSERT INTO `ikona_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'администратор', 'roman', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 0, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 837, 4, 1, '', '', '', '', '', '*', '2014-01-19 19:48:15', 837, '', '2014-03-06 12:21:28', 837, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_content`
--

CREATE TABLE IF NOT EXISTS `ikona_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `ikona_content`
--

INSERT INTO `ikona_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 36, 'Главная', 'glavnaya', '', '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac leo sit amet ante dictum ultrices ut in neque. Nunc iaculis mauris vel pellentesque facilisis. Vivamus elit tortor, adipiscing non urna eu, ultricies pharetra orci. Cras eget leo malesuada, ornare purus sed, consequat leo. Curabitur sodales tincidunt arcu, mollis consectetur sapien bibendum porttitor. Mauris tempor, lorem ut sodales adipiscing, libero magna imperdiet diam, nec eleifend lorem ipsum eget orci. Donec eu nibh hendrerit odio vulputate volutpat vel faucibus enim.</p>\r\n<p>&nbsp;Ut ut velit non ligula mattis rhoncus sed sit amet nunc. Sed erat est, fringilla non interdum sit amet, faucibus sed mi. Suspendisse viverra vehicula feugiat. In hac habitasse platea dictumst. Sed vestibulum, nunc id egestas ornare, orci enim aliquet nibh, nec faucibus orci diam at tortor. Ut in urna nec justo posuere rhoncus. Vivamus laoreet fermentum lorem a vulputate. Duis eros velit, molestie fermentum dui ut, sodales euismod quam. Vestibulum at malesuada dui. Nam ultricies elit sed enim auctor, eu dictum libero aliquet. Duis quis commodo orci. Quisque et faucibus lacus, sed ultricies libero. Nunc hendrerit, mi vel cursus suscipit, justo orci posuere metus, ac tristique nunc sapien vel justo. Nunc vehicula sem vel nisl euismod tempus.</p>\r\n<p>&nbsp;Nulla facilisi. Nunc sit amet enim risus. Fusce sed aliquam lacus. Sed eget lacinia est, ut rutrum ipsum. Donec ut arcu mauris. In at cursus eros. Nullam egestas ante ac rutrum rhoncus. Proin mattis id neque non gravida. Donec sollicitudin mauris a porta tempor. Sed pretium, mi nec ornare ultricies, magna tortor congue quam, ut semper felis leo et metus. Aliquam non urna a ligula varius scelerisque. Integer sed erat nibh. In viverra rutrum purus, id vulputate leo posuere id. Phasellus varius eros at porttitor pretium. Etiam ornare ante turpis, sed pretium leo accumsan nec. Proin aliquam interdum urna blandit semper.</p>\r\n<p>&nbsp;Quisque sapien lorem, dapibus vel congue a, auctor eu orci. Quisque condimentum suscipit sapien, id condimentum tortor dictum vel. Donec sit amet mattis lectus. Quisque et metus eu eros commodo iaculis. Nullam pharetra eros lectus, eu tincidunt orci congue at. Cras non nisl quis tellus bibendum viverra a vitae lectus. Aliquam hendrerit condimentum dui. Aliquam congue felis non dui rutrum, in tempor risus aliquam.</p>\r\n<p>&nbsp;Morbi pulvinar a ligula eu tincidunt. Duis ligula ligula, fermentum nec purus id, mollis pharetra nulla. Vivamus nisi nunc, dictum at hendrerit id, convallis vitae ipsum. Donec tempor purus nec libero bibendum, vitae lacinia nisi volutpat. Morbi non tristique ipsum, vel mattis libero. Integer sit amet suscipit purus. Quisque est dui, ullamcorper commodo tortor nec, mollis adipiscing justo. Nam tortor dui, pretium a tempus vitae, rutrum id lectus.</p>\r\n<p>&nbsp;Nunc risus est, hendrerit a massa blandit, feugiat feugiat justo. Sed vitae neque dictum, mollis quam sed, bibendum lacus. In ornare cursus nisi et mattis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus lacinia, ipsum et ornare tempor, nisi urna vestibulum nulla, vitae posuere dolor nisl eget turpis. Suspendisse dolor mauris, suscipit et feugiat sed, mollis non leo. Mauris laoreet dapibus elit vitae varius. Suspendisse massa velit, rutrum convallis purus in, hendrerit mattis odio. Duis accumsan porttitor nibh in blandit. Nulla rhoncus, mi vitae luctus adipiscing, eros leo porttitor orci, id elementum nibh arcu sed tellus. Maecenas vehicula est dolor, eget lobortis nunc hendrerit et. Suspendisse nunc sem, condimentum sed dictum vel, suscipit quis risus. Cras placerat imperdiet risus sit amet blandit.</p>\r\n<p>&nbsp;</p>', '', 1, 0, 0, 8, '2014-01-19 19:43:18', 837, '', '2014-03-02 21:48:40', 837, 837, '2014-03-10 09:40:32', '2014-01-19 19:43:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 7, '', '', 1, 619, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 37, 'Гороскоп', 'goroskop', '', '<script type="text/javascript" src="http://sts.i-grok.ru/grs/goroscop.js"></script>\r\n', '', 1, 0, 0, 8, '2014-01-19 19:43:43', 837, '', '2014-03-10 13:51:43', 837, 0, '0000-00-00 00:00:00', '2014-01-19 19:43:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 0, 6, '', '', 1, 107, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 38, 'Новости', 'novosti', '', '<p>Новости</p>', '', 1, 0, 0, 8, '2014-01-19 19:44:01', 837, '', '2014-03-02 21:49:00', 837, 0, '0000-00-00 00:00:00', '2014-01-19 19:44:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 5, '', '', 1, 58, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 39, 'Погода', 'pogoda', '', '<link rel="stylesheet" type="text/css" href="http://www.gismeteo.ru/static/css/informer2/gs_informerClient.min.css">\r\n<div id="gsInformerID-58A1Ki0w48N8mr" class="gsInformer" style="width:100%;height:243px">\r\n  <div class="gsIContent">\r\n   <div id="cityLink">\r\n     <a href="http://www.gismeteo.ru/city/daily/5068/" target="_blank">Погода в Краснограде</a>\r\n   </div>\r\n   <div class="gsLinks">\r\n     <table>\r\n       <tr>\r\n         <td>\r\n           <div class="leftCol">\r\n             <a href="http://www.gismeteo.ru" target="_blank">\r\n               <img alt="Gismeteo" title="Gismeteo" src="http://www.gismeteo.ru/static/images/informer2/logo-mini2.png" align="absmiddle" border="0" />\r\n               <span>Gismeteo</span>\r\n             </a>\r\n           </div>\r\n           <div class="rightCol">\r\n             <a href="http://www.gismeteo.ru/city/weekly/5068/" target="_blank">Прогноз на 2 недели</a>\r\n           </div>\r\n           </td>\r\n        </tr>\r\n      </table>\r\n    </div>\r\n  </div>\r\n</div>\r\n<script src="http://www.gismeteo.ru/ajax/getInformer/?hash=58A1Ki0w48N8mr" type="text/javascript"></script>', '', 1, 0, 0, 8, '2014-01-19 19:44:22', 837, '', '2014-03-16 14:48:22', 837, 837, '2014-03-16 14:48:22', '2014-01-19 19:44:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 4, '', '', 1, 45, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 40, 'Контакты', 'kontakty', '', '<p>Контакты</p>', '', 1, 0, 0, 8, '2014-01-19 19:44:31', 837, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-19 19:44:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 45, 'Статья 1', 'statya-1', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla condimentum tincidunt vestibulum. Nullam vitae aliquet sapien. Nunc non porta metus, at aliquam sapien. Sed vel eros augue. Sed sit amet augue semper, facilisis quam vitae, suscipit magna. Sed hendrerit eget sapien sit amet porttitor. Morbi pulvinar consequat nibh, quis sollicitudin magna ultricies quis. Quisque a rhoncus magna, et blandit orci. Phasellus faucibus est sit amet quam gravida bibendum. Mauris et molestie nisi. Fusce eu elit magna. Sed faucibus sollicitudin mattis.', '</p>\r\n<p>Ut metus lorem, tincidunt ut purus ac, ultrices scelerisque erat. Ut facilisis placerat tincidunt. Aliquam non vehicula metus. Suspendisse a ullamcorper enim. Quisque pellentesque sem nec sem dignissim bibendum. Curabitur vitae ante vitae diam suscipit bibendum in eget nisl. Fusce nunc nisl, dignissim eu dolor in, bibendum tristique libero. Vestibulum tristique pellentesque nisi, vel tempus orci ultrices sit amet. Curabitur sit amet eros hendrerit, egestas diam et, tempor arcu. Vestibulum in rutrum sem, vulputate viverra ligula. Etiam eros risus, suscipit venenatis mauris sed, egestas posuere dolor. Mauris nec rutrum massa, sed suscipit est. Ut vel metus dui. Sed eleifend lobortis mi, a facilisis urna euismod sed. Quisque nec ante bibendum nisi dictum scelerisque quis quis nunc.</p>\r\n<p>Quisque ac accumsan enim, at pretium magna. Proin scelerisque massa magna, eget tincidunt arcu imperdiet eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur mattis, massa vel laoreet accumsan, diam ligula semper lacus, in venenatis sem enim quis neque. Donec dapibus ut ipsum et semper. Suspendisse et tristique neque. Etiam consectetur mattis ligula. Curabitur convallis urna enim, eget tristique sapien ultricies nec. Morbi et massa ut ipsum ullamcorper sodales sed id nibh.</p>\r\n<p>Quisque est massa, dignissim in nibh id, sodales porttitor sapien. Ut pulvinar, nisi non ultricies bibendum, diam lectus condimentum tellus, nec pretium urna arcu vel erat. Pellentesque malesuada ipsum at commodo ultricies. Nullam at lacus ac erat viverra tempor non at eros. Quisque sed vehicula est, eu lacinia eros. Proin sodales urna sit amet velit aliquet ullamcorper. Ut a rhoncus neque. Praesent cursus justo vel nisi accumsan congue. Sed pulvinar rutrum lectus, ac commodo eros dapibus sit amet. Duis nec arcu id nibh imperdiet pretium in dapibus ipsum.</p>\r\n<p>Vestibulum laoreet lorem a molestie pellentesque. Nulla ullamcorper dolor et nisi eleifend blandit. Morbi pulvinar suscipit aliquet. Mauris suscipit elementum felis non vestibulum. Proin tristique, mi vitae ultrices venenatis, lectus urna faucibus massa, eget pretium enim augue nec justo. Vivamus cursus turpis id lacus facilisis, et hendrerit nunc auctor. Suspendisse potenti. Donec fringilla, ipsum in ullamcorper sodales, lectus lacus auctor augue, nec tristique ipsum mi sit amet magna. Aliquam erat volutpat.</p>\r\n<p>&nbsp;</p>', 1, 0, 0, 9, '2014-03-09 20:37:18', 837, '', '2014-03-09 21:39:44', 837, 0, '0000-00-00 00:00:00', '2014-03-09 20:37:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 5, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 46, 'Статья 1 (2)', 'statya-2', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla condimentum tincidunt vestibulum. Nullam vitae aliquet sapien. Nunc non porta metus, at aliquam sapien. Sed vel eros augue. Sed sit amet augue semper, facilisis quam vitae, suscipit magna. Sed hendrerit eget sapien sit amet porttitor. Morbi pulvinar consequat nibh, quis sollicitudin magna ultricies quis. Quisque a rhoncus magna, et blandit orci. Phasellus faucibus est sit amet quam gravida bibendum. Mauris et molestie nisi. Fusce eu elit magna. Sed faucibus sollicitudin mattis.</p>\r\n<p>Ut metus lorem, tincidunt ut purus ac, ultrices scelerisque erat. Ut facilisis placerat tincidunt. Aliquam non vehicula metus. Suspendisse a ullamcorper enim. Quisque pellentesque sem nec sem dignissim bibendum. Curabitur vitae ante vitae diam suscipit bibendum in eget nisl. Fusce nunc nisl, dignissim eu dolor in, bibendum tristique libero. Vestibulum tristique pellentesque nisi, vel tempus orci ultrices sit amet. Curabitur sit amet eros hendrerit, egestas diam et, tempor arcu. Vestibulum in rutrum sem, vulputate viverra ligula. Etiam eros risus, suscipit venenatis mauris sed, egestas posuere dolor. Mauris nec rutrum massa, sed suscipit est. Ut vel metus dui. Sed eleifend lobortis mi, a facilisis urna euismod sed. Quisque nec ante bibendum nisi dictum scelerisque quis quis nunc.</p>\r\n<p>Quisque ac accumsan enim, at pretium magna. Proin scelerisque massa magna, eget tincidunt arcu imperdiet eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur mattis, massa vel laoreet accumsan, diam ligula semper lacus, in venenatis sem enim quis neque. Donec dapibus ut ipsum et semper. Suspendisse et tristique neque. Etiam consectetur mattis ligula. Curabitur convallis urna enim, eget tristique sapien ultricies nec. Morbi et massa ut ipsum ullamcorper sodales sed id nibh.</p>\r\n<p>Quisque est massa, dignissim in nibh id, sodales porttitor sapien. Ut pulvinar, nisi non ultricies bibendum, diam lectus condimentum tellus, nec pretium urna arcu vel erat. Pellentesque malesuada ipsum at commodo ultricies. Nullam at lacus ac erat viverra tempor non at eros. Quisque sed vehicula est, eu lacinia eros. Proin sodales urna sit amet velit aliquet ullamcorper. Ut a rhoncus neque. Praesent cursus justo vel nisi accumsan congue. Sed pulvinar rutrum lectus, ac commodo eros dapibus sit amet. Duis nec arcu id nibh imperdiet pretium in dapibus ipsum.</p>\r\n<p>Vestibulum laoreet lorem a molestie pellentesque. Nulla ullamcorper dolor et nisi eleifend blandit. Morbi pulvinar suscipit aliquet. Mauris suscipit elementum felis non vestibulum. Proin tristique, mi vitae ultrices venenatis, lectus urna faucibus massa, eget pretium enim augue nec justo. Vivamus cursus turpis id lacus facilisis, et hendrerit nunc auctor. Suspendisse potenti. Donec fringilla, ipsum in ullamcorper sodales, lectus lacus auctor augue, nec tristique ipsum mi sit amet magna. Aliquam erat volutpat.</p>\r\n<p>&nbsp;</p>', '', 1, 0, 0, 9, '2014-03-09 20:37:50', 837, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-09 20:37:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 47, 'Статья 1 (3)', 'statya-3', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla condimentum tincidunt vestibulum. Nullam vitae aliquet sapien. Nunc non porta metus, at aliquam sapien. Sed vel eros augue. Sed sit amet augue semper, facilisis quam vitae, suscipit magna. Sed hendrerit eget sapien sit amet porttitor. Morbi pulvinar consequat nibh, quis sollicitudin magna ultricies quis. Quisque a rhoncus magna, et blandit orci. Phasellus faucibus est sit amet quam gravida bibendum. Mauris et molestie nisi. Fusce eu elit magna. Sed faucibus sollicitudin mattis.</p>\r\n<p>Ut metus lorem, tincidunt ut purus ac, ultrices scelerisque erat. Ut facilisis placerat tincidunt. Aliquam non vehicula metus. Suspendisse a ullamcorper enim. Quisque pellentesque sem nec sem dignissim bibendum. Curabitur vitae ante vitae diam suscipit bibendum in eget nisl. Fusce nunc nisl, dignissim eu dolor in, bibendum tristique libero. Vestibulum tristique pellentesque nisi, vel tempus orci ultrices sit amet. Curabitur sit amet eros hendrerit, egestas diam et, tempor arcu. Vestibulum in rutrum sem, vulputate viverra ligula. Etiam eros risus, suscipit venenatis mauris sed, egestas posuere dolor. Mauris nec rutrum massa, sed suscipit est. Ut vel metus dui. Sed eleifend lobortis mi, a facilisis urna euismod sed. Quisque nec ante bibendum nisi dictum scelerisque quis quis nunc.</p>\r\n<p>Quisque ac accumsan enim, at pretium magna. Proin scelerisque massa magna, eget tincidunt arcu imperdiet eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur mattis, massa vel laoreet accumsan, diam ligula semper lacus, in venenatis sem enim quis neque. Donec dapibus ut ipsum et semper. Suspendisse et tristique neque. Etiam consectetur mattis ligula. Curabitur convallis urna enim, eget tristique sapien ultricies nec. Morbi et massa ut ipsum ullamcorper sodales sed id nibh.</p>\r\n<p>Quisque est massa, dignissim in nibh id, sodales porttitor sapien. Ut pulvinar, nisi non ultricies bibendum, diam lectus condimentum tellus, nec pretium urna arcu vel erat. Pellentesque malesuada ipsum at commodo ultricies. Nullam at lacus ac erat viverra tempor non at eros. Quisque sed vehicula est, eu lacinia eros. Proin sodales urna sit amet velit aliquet ullamcorper. Ut a rhoncus neque. Praesent cursus justo vel nisi accumsan congue. Sed pulvinar rutrum lectus, ac commodo eros dapibus sit amet. Duis nec arcu id nibh imperdiet pretium in dapibus ipsum.</p>\r\n<p>Vestibulum laoreet lorem a molestie pellentesque. Nulla ullamcorper dolor et nisi eleifend blandit. Morbi pulvinar suscipit aliquet. Mauris suscipit elementum felis non vestibulum. Proin tristique, mi vitae ultrices venenatis, lectus urna faucibus massa, eget pretium enim augue nec justo. Vivamus cursus turpis id lacus facilisis, et hendrerit nunc auctor. Suspendisse potenti. Donec fringilla, ipsum in ullamcorper sodales, lectus lacus auctor augue, nec tristique ipsum mi sit amet magna. Aliquam erat volutpat.</p>\r\n<p>&nbsp;</p>', '', 1, 0, 0, 9, '2014-03-09 20:37:52', 837, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-09 20:37:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 48, 'Статья 1 (4)', 'statya-4', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla condimentum tincidunt vestibulum. Nullam vitae aliquet sapien. Nunc non porta metus, at aliquam sapien. Sed vel eros augue. Sed sit amet augue semper, facilisis quam vitae, suscipit magna. Sed hendrerit eget sapien sit amet porttitor. Morbi pulvinar consequat nibh, quis sollicitudin magna ultricies quis. Quisque a rhoncus magna, et blandit orci. Phasellus faucibus est sit amet quam gravida bibendum. Mauris et molestie nisi. Fusce eu elit magna. Sed faucibus sollicitudin mattis.</p>\r\n<p>Ut metus lorem, tincidunt ut purus ac, ultrices scelerisque erat. Ut facilisis placerat tincidunt. Aliquam non vehicula metus. Suspendisse a ullamcorper enim. Quisque pellentesque sem nec sem dignissim bibendum. Curabitur vitae ante vitae diam suscipit bibendum in eget nisl. Fusce nunc nisl, dignissim eu dolor in, bibendum tristique libero. Vestibulum tristique pellentesque nisi, vel tempus orci ultrices sit amet. Curabitur sit amet eros hendrerit, egestas diam et, tempor arcu. Vestibulum in rutrum sem, vulputate viverra ligula. Etiam eros risus, suscipit venenatis mauris sed, egestas posuere dolor. Mauris nec rutrum massa, sed suscipit est. Ut vel metus dui. Sed eleifend lobortis mi, a facilisis urna euismod sed. Quisque nec ante bibendum nisi dictum scelerisque quis quis nunc.</p>\r\n<p>Quisque ac accumsan enim, at pretium magna. Proin scelerisque massa magna, eget tincidunt arcu imperdiet eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur mattis, massa vel laoreet accumsan, diam ligula semper lacus, in venenatis sem enim quis neque. Donec dapibus ut ipsum et semper. Suspendisse et tristique neque. Etiam consectetur mattis ligula. Curabitur convallis urna enim, eget tristique sapien ultricies nec. Morbi et massa ut ipsum ullamcorper sodales sed id nibh.</p>\r\n<p>Quisque est massa, dignissim in nibh id, sodales porttitor sapien. Ut pulvinar, nisi non ultricies bibendum, diam lectus condimentum tellus, nec pretium urna arcu vel erat. Pellentesque malesuada ipsum at commodo ultricies. Nullam at lacus ac erat viverra tempor non at eros. Quisque sed vehicula est, eu lacinia eros. Proin sodales urna sit amet velit aliquet ullamcorper. Ut a rhoncus neque. Praesent cursus justo vel nisi accumsan congue. Sed pulvinar rutrum lectus, ac commodo eros dapibus sit amet. Duis nec arcu id nibh imperdiet pretium in dapibus ipsum.</p>\r\n<p>Vestibulum laoreet lorem a molestie pellentesque. Nulla ullamcorper dolor et nisi eleifend blandit. Morbi pulvinar suscipit aliquet. Mauris suscipit elementum felis non vestibulum. Proin tristique, mi vitae ultrices venenatis, lectus urna faucibus massa, eget pretium enim augue nec justo. Vivamus cursus turpis id lacus facilisis, et hendrerit nunc auctor. Suspendisse potenti. Donec fringilla, ipsum in ullamcorper sodales, lectus lacus auctor augue, nec tristique ipsum mi sit amet magna. Aliquam erat volutpat.</p>\r\n<p>&nbsp;</p>', '', 1, 0, 0, 9, '2014-03-09 20:37:54', 837, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-09 20:37:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 49, 'Статья 1 (5)', 'statya-5', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla condimentum tincidunt vestibulum. Nullam vitae aliquet sapien. Nunc non porta metus, at aliquam sapien. Sed vel eros augue. Sed sit amet augue semper, facilisis quam vitae, suscipit magna. Sed hendrerit eget sapien sit amet porttitor. Morbi pulvinar consequat nibh, quis sollicitudin magna ultricies quis. Quisque a rhoncus magna, et blandit orci. Phasellus faucibus est sit amet quam gravida bibendum. Mauris et molestie nisi. Fusce eu elit magna. Sed faucibus sollicitudin mattis.', '</p>\r\n<p>Ut metus lorem, tincidunt ut purus ac, ultrices scelerisque erat. Ut facilisis placerat tincidunt. Aliquam non vehicula metus. Suspendisse a ullamcorper enim. Quisque pellentesque sem nec sem dignissim bibendum. Curabitur vitae ante vitae diam suscipit bibendum in eget nisl. Fusce nunc nisl, dignissim eu dolor in, bibendum tristique libero. Vestibulum tristique pellentesque nisi, vel tempus orci ultrices sit amet. Curabitur sit amet eros hendrerit, egestas diam et, tempor arcu. Vestibulum in rutrum sem, vulputate viverra ligula. Etiam eros risus, suscipit venenatis mauris sed, egestas posuere dolor. Mauris nec rutrum massa, sed suscipit est. Ut vel metus dui. Sed eleifend lobortis mi, a facilisis urna euismod sed. Quisque nec ante bibendum nisi dictum scelerisque quis quis nunc.</p>\r\n<p>Quisque ac accumsan enim, at pretium magna. Proin scelerisque massa magna, eget tincidunt arcu imperdiet eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur mattis, massa vel laoreet accumsan, diam ligula semper lacus, in venenatis sem enim quis neque. Donec dapibus ut ipsum et semper. Suspendisse et tristique neque. Etiam consectetur mattis ligula. Curabitur convallis urna enim, eget tristique sapien ultricies nec. Morbi et massa ut ipsum ullamcorper sodales sed id nibh.</p>\r\n<p>Quisque est massa, dignissim in nibh id, sodales porttitor sapien. Ut pulvinar, nisi non ultricies bibendum, diam lectus condimentum tellus, nec pretium urna arcu vel erat. Pellentesque malesuada ipsum at commodo ultricies. Nullam at lacus ac erat viverra tempor non at eros. Quisque sed vehicula est, eu lacinia eros. Proin sodales urna sit amet velit aliquet ullamcorper. Ut a rhoncus neque. Praesent cursus justo vel nisi accumsan congue. Sed pulvinar rutrum lectus, ac commodo eros dapibus sit amet. Duis nec arcu id nibh imperdiet pretium in dapibus ipsum.</p>\r\n<p>Vestibulum laoreet lorem a molestie pellentesque. Nulla ullamcorper dolor et nisi eleifend blandit. Morbi pulvinar suscipit aliquet. Mauris suscipit elementum felis non vestibulum. Proin tristique, mi vitae ultrices venenatis, lectus urna faucibus massa, eget pretium enim augue nec justo. Vivamus cursus turpis id lacus facilisis, et hendrerit nunc auctor. Suspendisse potenti. Donec fringilla, ipsum in ullamcorper sodales, lectus lacus auctor augue, nec tristique ipsum mi sit amet magna. Aliquam erat volutpat.</p>\r\n<p>&nbsp;</p>', 1, 0, 0, 9, '2014-03-09 20:37:56', 837, '', '2014-04-19 16:38:49', 837, 0, '0000-00-00 00:00:00', '2014-03-09 20:37:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 50, 'Статья 1 (6)', 'statya-6', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla condimentum tincidunt vestibulum. Nullam vitae aliquet sapien. Nunc non porta metus, at aliquam sapien. Sed vel eros augue. Sed sit amet augue semper, facilisis quam vitae, suscipit magna. Sed hendrerit eget sapien sit amet porttitor. Morbi pulvinar consequat nibh, quis sollicitudin magna ultricies quis. Quisque a rhoncus magna, et blandit orci. Phasellus faucibus est sit amet quam gravida bibendum. Mauris et molestie nisi. Fusce eu elit magna. Sed faucibus sollicitudin mattis.</p>\r\n<p><img style="float: left;" alt="animation 256x256" src="images/article/animation_256x256.png" height="256" width="256" /></p>\r\n<p>Ut metus lorem, tincidunt ut purus ac, ultrices scelerisque erat. Ut facilisis placerat tincidunt. Aliquam non vehicula metus. Suspendisse a ullamcorper enim. Quisque pellentesque sem nec sem dignissim bibendum. Curabitur vitae ante vitae diam suscipit bibendum in eget nisl. Fusce nunc nisl, dignissim eu dolor in, bibendum tristique libero. Vestibulum tristique pellentesque nisi, vel tempus orci ultrices sit amet. Curabitur sit amet eros hendrerit, egestas diam et, tempor arcu. Vestibulum in rutrum sem, vulputate viverra ligula. Etiam eros risus, suscipit venenatis mauris sed, egestas posuere dolor. Mauris nec rutrum massa, sed suscipit est. Ut vel metus dui. Sed eleifend lobortis mi, a facilisis urna euismod sed. Quisque nec ante bibendum nisi dictum scelerisque quis quis nunc.</p>\r\n<p>Quisque ac accumsan enim, at pretium magna. Proin scelerisque massa magna, eget tincidunt arcu imperdiet eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur mattis, massa vel laoreet accumsan, diam ligula semper lacus, in venenatis sem enim quis neque. Donec dapibus ut ipsum et semper. Suspendisse et tristique neque. Etiam consectetur mattis ligula. Curabitur convallis urna enim, eget tristique sapien ultricies nec. Morbi et massa ut ipsum ullamcorper sodales sed id nibh.</p>\r\n<p>Quisque est massa, dignissim in nibh id, sodales porttitor sapien. Ut pulvinar, nisi non ultricies bibendum, diam lectus condimentum tellus, nec pretium urna arcu vel erat. Pellentesque malesuada ipsum at commodo ultricies. Nullam at lacus ac erat viverra tempor non at eros. Quisque sed vehicula est, eu lacinia eros. Proin sodales urna sit amet velit aliquet ullamcorper. Ut a rhoncus neque. Praesent cursus justo vel nisi accumsan congue. Sed pulvinar rutrum lectus, ac commodo eros dapibus sit amet. Duis nec arcu id nibh imperdiet pretium in dapibus ipsum.', '</p>\r\n<p>Vestibulum laoreet lorem a molestie pellentesque. Nulla ullamcorper dolor et nisi eleifend blandit. Morbi pulvinar suscipit aliquet. Mauris suscipit elementum felis non vestibulum. Proin tristique, mi vitae ultrices venenatis, lectus urna faucibus massa, eget pretium enim augue nec justo. Vivamus cursus turpis id lacus facilisis, et hendrerit nunc auctor. Suspendisse potenti. Donec fringilla, ipsum in ullamcorper sodales, lectus lacus auctor augue, nec tristique ipsum mi sit amet magna. Aliquam erat volutpat.</p>\r\n<p>&nbsp;</p>', 1, 0, 0, 9, '2014-03-09 20:37:57', 837, '', '2014-04-19 16:38:31', 837, 0, '0000-00-00 00:00:00', '2014-03-09 20:37:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 51, 'Расписание транспорта', 'raspisanie-transporta', '', '{szakitable \r\npager="1" \r\ncsv="/images/transport/one.csv" \r\nfilter="table" \r\nzebra="#eee" \r\n}\r\n{/szakitable}', '', 1, 0, 0, 8, '2014-03-10 14:00:44', 837, '', '2014-03-22 14:55:40', 837, 0, '0000-00-00 00:00:00', '2014-03-10 14:00:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 23, 0, 2, '', '', 1, 100, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 52, 'Телепрограмма', 'teleprogramma', '', '<p>Телепрограмма</p>', '', 1, 0, 0, 8, '2014-03-16 12:46:54', 837, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-16 12:46:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 20, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 54, 'Гороскоп', 'hor', '', '<div class="horoscop">\r\n\r\n<script type="text/JavaScript">var mydate=new Date();var year=mydate.getYear();if (year < 1000) year+=1900;var day=mydate.getDay();var month=mydate.getMonth();var daym=mydate.getDate();if (daym<10)daym="0"+daym;var dayarray=new Array(''Вск'',''Пнд'',''Втр'',''Срд'',''Чтв'',''Птн'',''Сбт'');var montharray=new Array(''Янв'',''Фев'',''Мар'',''Апр'',''Мая'',''Июн'',''Июл'',''Авг'',''Сен'',''Окт'',''Ноя'',''Дек'');document.write("<b>Гороскоп на "+dayarray[day]+", "+daym+" "+montharray[month]+", "+year+"г</b>");</script><noscript>У вас отключен яваскрипт. Пожалуйста, включите поддержку яваскрипт в настройках своего браузера, в противном случае вы не сможете прочитать свой гороскоп на этот день от астрологического сайта <a href="http://astroscope.ru/">Гороскопы на каждый день, гороскоп на неделю, гороскоп на текущий год</a>.</noscript>\r\n\r\n\r\n<script type="text/JavaScript" src="http://astroscope.ru/goroscopes.php"></script>\r\n</div>', '', 1, 0, 0, 8, '2014-03-27 20:04:30', 837, '', '2014-03-27 20:17:53', 837, 0, '0000-00-00 00:00:00', '2014-03-27 20:04:30', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 0, '', '', 1, 22, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `ikona_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_content_rating`
--

CREATE TABLE IF NOT EXISTS `ikona_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `ikona_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_extensions`
--

CREATE TABLE IF NOT EXISTS `ikona_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10020 ;

--
-- Дамп данных таблицы `ikona_extensions`
--

INSERT INTO `ikona_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"contact_layout":"_:default","show_contact_category":"hide","show_contact_list":"0","presentation_style":"plain","show_name":"0","show_position":"0","show_email":"0","show_street_address":"0","show_suburb":"0","show_state":"0","show_postcode":"0","show_country":"0","show_telephone":"0","show_mobile":"0","show_fax":"0","show_webpage":"0","show_misc":"0","show_image":"0","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"0","show_empty_categories":"0","show_subcat_desc":"0","show_cat_items":"0","show_base_description":"0","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"0","show_cat_items_cat":"0","show_pagination_limit":"0","show_headings":"0","show_position_headings":"0","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"1","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"0","show_article_options":"0","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"0","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"0","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"1","sendpassword":"1","useractivation":"2","mail_to_admin":"0","captcha":"","frontend_userparams":"0","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `ikona_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 837, '2014-03-16 12:51:59', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.14","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"legacy":true,"name":"Russian","type":"language","creationDate":"2013-07-26","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"2.5.13.1","description":"Russian language pack (site) for Joomla! 2.5","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"legacy":true,"name":"Russian","type":"language","creationDate":"2013-07-26","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"2.5.13.1","description":"Russian language pack (administrator) for Joomla! 2.5","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'TinyMCE ru-RU', 'file', 'tinymce_ru-ru', '', 0, 1, 0, 0, '{"legacy":false,"name":"TinyMCE ru-RU","type":"file","creationDate":"2012-06-19","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.5.2.1","description":"Russian Language Package for TinyMCE 3.5.2.1 in Joomla 2.5","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'ru-RU', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"legacy":false,"name":"Russian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"2.5.13.1","description":"Joomla 2.5 Russian Language Package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'mytemplate', 'template', 'mytemplate', '', 0, 1, 1, 0, '{"legacy":false,"name":"mytemplate","type":"template","creationDate":"may 2008","author":"Andrey Dzigunskiy","copyright":"","authorEmail":"dzigunskiy@bk.ru","authorUrl":"http:\\/\\/support.gorsk.net","version":"2.5","description":"my template","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors_jce","type":"plugin","creationDate":"27 March 2013","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.3.2.4","description":"WF_EDITOR_PLUGIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"27 March 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.3.2.4","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'jce', 'component', 'com_jce', '', 1, 1, 0, 0, '{"legacy":false,"name":"JCE","type":"component","creationDate":"27 March 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.3.2.4","description":"WF_ADMIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'com_mtree', 'component', 'com_mtree', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_mtree","type":"component","creationDate":"March 2013","author":"Mosets Consulting","copyright":"Mosets Consulting 2005 - 2013. All rights reserved.","authorEmail":"mtree@mosets.com","authorUrl":"http:\\/\\/www.mosets.com\\/tree","version":"3.0.6","description":"COM_MTREE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'Russian для Mosets Tree Package 3.0.6', 'file', '518b9f9aa3eb03cea46541cc60f33622', '', 0, 1, 0, 0, '{"legacy":false,"name":"Russian \\u0434\\u043b\\u044f Mosets Tree Package 3.0.6","type":"file","creationDate":"28\\/03\\/2013","author":"JLsite","copyright":"Copyright \\u00a9 2013 www.joomlang.ru. \\u0412\\u0441\\u0435 \\u043f\\u0440\\u0430\\u0432\\u0430 \\u0437\\u0430\\u0449\\u0438\\u0449\\u0435\\u043d\\u044b.","authorEmail":"pochta@joomlang.ru","authorUrl":"http:\\/\\/www.joomlang.ru","version":"3.0.6.1","description":"<h1>\\u0420\\u0443\\u0441\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440 Mosets Tree Package<\\/h1>\\r\\n<h2>Version: 3.0.6.1<\\/h2>\\r\\n<hr\\/>\\r\\n<h2>\\u0414\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434 \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d\\u0430 kinabalu \\u0438 \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u043e\\u043b\\u0435\\u0439.<\\/h2>\\r\\n<h2>\\u0414\\u043b\\u044f \\u0432\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442\\u0430 \\u0430\\u043d\\u0433\\u043b\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u044f\\u0437\\u044b\\u043a\\u0430 \\u0437\\u0430\\u043c\\u0435\\u043d\\u0438\\u0442\\u0435 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0449\\u0438\\u0435 \\u0444\\u0430\\u0439\\u043b\\u044b \\u0432 \\u043f\\u0430\\u043f\\u043a\\u0435 pole<\\/h2>\\r\\n<hr\\/>\\r\\n<h2><a href=\\"http:\\/\\/www.joomlang.ru\\" target=\\"_blank\\">\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a \\u0434\\u043b\\u044f \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d\\u043e\\u0432, \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 \\u0438 \\u043c\\u043e\\u0434\\u0443\\u043b\\u0435\\u0439 Joomla<\\/a><br><\\/h2>\\r\\n<hr\\/>\\r\\n<img src=\\"\\/..\\/images\\/jl_logo.png\\" style=\\"float:left; padding:10px 10px 10px 0;\\"\\/>","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'plg_content_szaki_table', 'plugin', 'szaki_table', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_szaki_table","type":"plugin","creationDate":"2012-12-15","author":"Szaki","copyright":"(C) 2012 szathmari.hu All rights reserved.","authorEmail":"info@szathmari.hu","authorUrl":"www.szathmari.hu","version":"1.2","description":"PLG_CONTENT_SZAKI_TABLE_XML_DESCRIPTION","group":""}', '{"jQuery":"0"}', '', '', 837, '2014-03-10 14:21:37', 0, 0),
(10012, 'mod_mt_filter', 'module', 'mod_mt_filter', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_mt_filter","type":"module","creationDate":"March 2013","author":"Mosets Consulting","copyright":"(C) 2011-2013 Mosets Consulting. All rights reserved.","authorEmail":"mtree@mosets.com","authorUrl":"www.mosets.com","version":"3.0.0","description":"MOD_MT_FILTER_XML_DESC","group":""}', '{"filter_button":"1","reset_button":"1","cat_id":"0","fields":"","cache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'mod_mt_search', 'module', 'mod_mt_search', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_mt_search","type":"module","creationDate":"March 2013","author":"Mosets Consulting","copyright":"(C) 2005-2013 Mosets Consulting. All rights reserved.","authorEmail":"mtree@mosets.com","authorUrl":"www.mosets.com","version":"3.0.0","description":"MOD_MT_SEARCH_XML_DESC","group":""}', '{"width":"16","placeholder_text":"","advsearch":"1","search_button":"1","@spacer":"","showCatDropdown":"0","searchCategory":"0","parent_cat":"0","dropdownWidth":"0","cache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'PLG_USER_PROFILEPICTURE', 'plugin', 'profilepicture', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"PLG_USER_PROFILEPICTURE","type":"plugin","creationDate":"April 2012","author":"Mosets Consulting","copyright":"(C) 2012 Mosets Consulting. All rights reserved.","authorEmail":"mtree@mosets.com","authorUrl":"www.mosets.com","version":"1.1.0","description":"PLG_USER_PROFILEPICTURE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'plg_extension_mosets', 'plugin', 'mosets', 'extension', 0, 1, 1, 0, '{"legacy":false,"name":"plg_extension_mosets","type":"plugin","creationDate":"October 2012","author":"Mosets Consulting","copyright":"Copyright (C) 2012 Mosets Consulting. All rights reserved.","authorEmail":"mtree@mosets.com","authorUrl":"www.mosets.com","version":"1.0.0","description":"PLG_EXTENSION_MOSETS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'lib_mosets_profilepicture', 'library', 'profilepicture', '', 0, 1, 1, 0, '{"legacy":false,"name":"lib_mosets_profilepicture","type":"library","creationDate":"January 2012","author":"CY Lee","copyright":"(C) 2012 CY Lee","authorEmail":"mtree@mosets.com","authorUrl":"http:\\/\\/www.mosets.com\\/","version":"1.0","description":"LIB_MOSETS_PROFILEPICTURE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'jlweather', 'component', 'com_jlweather', '', 1, 1, 0, 0, '{"legacy":false,"name":"JLWeather","type":"component","creationDate":"March, 2011","author":"JoomLine","copyright":"Copyright 2013 JoomLine.ru All rights reserved","authorEmail":"sale@joomline.ru","authorUrl":"http:\\/\\/www.joomline.ru","version":"2.6.2","description":"COM_JLWEATHER_XML_DESCRIPTION","group":""}', '{"hoffset":"4","cachetime":"3","citylist":"692#\\u041a\\u0435\\u043c\\u0435\\u0440\\u043e\\u0432\\u043e,23#\\u041a\\u0438\\u0435\\u0432"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'Mod JL Weather', 'module', 'mod_jlweather', '', 0, 1, 0, 0, '{"legacy":false,"name":"Mod JL Weather","type":"module","creationDate":"Feb 2011","author":"JoomLine","copyright":"(C) 2010 by Anton Voynov (http:\\/\\/www.joomline.ru)","authorEmail":"anton@joomline.ru","authorUrl":"http:\\/\\/www.joomline.ru","version":"2.3.1","description":"\\u043c\\u043e\\u0434\\u0443\\u043b\\u044c \\u043f\\u043e\\u0433\\u043e\\u0434\\u044b","group":""}', '{"city":"633","enablednow":"0","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'jlweather', 'package', 'pkg_jlweather', '', 0, 1, 1, 0, '{"legacy":false,"name":"com_jlweather","type":"package","creationDate":"21.01.2013","author":"Joomline","copyright":"\\u00a9 2013. All rights reserved.","authorEmail":"","authorUrl":"","version":"2.6.2","description":"Packet forecast JL Weather","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_filters`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `ikona_finder_taxonomy`
--

INSERT INTO `ikona_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_terms`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ikona_finder_terms_common`
--

INSERT INTO `ikona_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_finder_types`
--

CREATE TABLE IF NOT EXISTS `ikona_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `ikona_finder_types`
--

INSERT INTO `ikona_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Web Link', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_languages`
--

CREATE TABLE IF NOT EXISTS `ikona_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `ikona_languages`
--

INSERT INTO `ikona_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_menu`
--

CREATE TABLE IF NOT EXISTS `ikona_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=123 ;

--
-- Дамп данных таблицы `ikona_menu`
--

INSERT INTO `ikona_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 87, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 31, 36, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 32, 33, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 34, 35, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 37, 42, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 38, 39, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 40, 41, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 43, 48, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 44, 45, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 46, 47, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 61, 62, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 53, 54, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 55, 60, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 56, 57, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 58, 59, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 51, 52, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 63, 64, 0, '*', 1),
(101, 'mainmenu', 'Главная', 'home', '', 'home', 'index.php?option=com_mtree&view=toplisting&type=new&cat_id=112', 'component', 1, 1, 1, 10008, 0, 837, '2014-03-22 16:03:16', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"brown","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 1, '*', 0),
(102, 'mainmenu', 'Новости', 'novosti', '', 'novosti', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"yellow","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(103, 'mainmenu', 'Объявления', 'obyavleniya', '', 'obyavleniya', 'index.php?option=com_mtree&view=listcats&cat_id=112', 'component', 1, 1, 1, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"green","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(104, 'mainmenu', 'Телефонный справочник', 'telefonnyj-spravochnikk', '', 'telefonnyj-spravochnikk', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"106","menu-anchor_title":"","menu-anchor_css":"pink","menu_image":"","menu_text":1}', 67, 68, 0, '*', 0),
(105, 'mainmenu', 'Контакты', 'kontakty', '', 'kontakty', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"blue","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(106, 'left-menu', 'Телефонный справочник', 'telefonnyj-spravochnik', '', 'telefonnyj-spravochnik', 'index.php?option=com_mtree&view=listcats&cat_id=113', 'component', 1, 1, 1, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
(107, 'left-menu', 'Погода в городе', 'pogoda-v-krasnograde', '', 'pogoda-v-krasnograde', 'index.php?option=com_jlweather&view=jlweather', 'component', 1, 1, 1, 10017, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"citymenu":"113","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 0, '*', 0),
(108, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '', 73, 82, 0, '', 1),
(109, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 108, 2, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 74, 75, 0, '', 1),
(110, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 108, 2, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 76, 77, 0, '', 1),
(111, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 108, 2, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 78, 79, 0, '', 1),
(112, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 108, 2, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 80, 81, 0, '', 1),
(113, 'main', 'com_mtree', 'com-mtree', '', 'com-mtree', 'index.php?option=com_mtree', 'component', 0, 1, 1, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_mtree/images/icon-16-mosetstree.png', 0, '', 83, 84, 0, '', 1),
(114, 'left-menu', 'Объявления', 'objavleniya', '', 'objavleniya', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"103","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 11, 12, 0, '*', 0),
(115, 'left-menu', 'Гороскоп', 'goroskop', '', 'goroskop', 'index.php?option=com_content&view=article&id=14', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
(116, 'left-menu', 'Газета "Коммерсант"', 'gazeta-kommersant', '', 'gazeta-kommersant', 'http://komersant.net.ua/', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 2, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 15, 16, 0, '*', 0),
(117, 'left-menu', 'Фотоконкурс красоты', 'fotokonkurs-krasoty', '', 'fotokonkurs-krasoty', 'index.php?option=com_mtree&view=listcats&cat_id=0', 'component', 0, 1, 1, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 25, 26, 0, '*', 0),
(118, 'left-menu', 'Каталог сайтов Краснограда', 'katalog-sajtov-krasnograda', '', 'katalog-sajtov-krasnograda', 'index.php?option=com_mtree&view=listcats&cat_id=0', 'component', 1, 1, 1, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(119, 'left-menu', 'Телепрограмма', 'teleprogramma', '', 'teleprogramma', 'http://tv.i.ua/channels/', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 2, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 23, 24, 0, '*', 0),
(120, 'left-menu', 'Добавление информации ', 'dobavlenie-na-sajt-i-v-telefonnyj-spravochnik', '', 'dobavlenie-na-sajt-i-v-telefonnyj-spravochnik', 'index.php?option=com_mtree&view=listcats&cat_id=0', 'component', 0, 1, 1, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 27, 28, 0, '*', 0),
(121, 'left-menu', 'Расписание транспорта', 'raspisanie-avtobusov-i-zh-d-transporta', '', 'raspisanie-avtobusov-i-zh-d-transporta', 'index.php?option=com_content&view=article&id=12', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(122, 'main', 'COM_JLWEATHER_MAIN_MENU', 'com-jlweather-main-menu', '', 'com-jlweather-main-menu', 'index.php?option=com_jlweather', 'component', 0, 1, 1, 10017, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 85, 86, 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_menu_types`
--

CREATE TABLE IF NOT EXISTS `ikona_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `ikona_menu_types`
--

INSERT INTO `ikona_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'left-menu', 'Левое меню', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_messages`
--

CREATE TABLE IF NOT EXISTS `ikona_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `ikona_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_modules`
--

CREATE TABLE IF NOT EXISTS `ikona_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Дамп данных таблицы `ikona_modules`
--

INSERT INTO `ikona_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Верхнее меню', '', '', 1, 'mainmanu', 837, '2014-03-16 14:05:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu ","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 1, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":" login_form","cache":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'breadcumbs', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'Левое меню', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"left-menu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(88, 'Нижнее меню', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(89, 'Mosets Tree - Фильтр', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_mt_filter', 1, 1, '{"filter_button":"1","reset_button":"1","cat_id":"0","fields":["1","2","9","13"],"module_assignment":"0","categories_assignment":["112"],"pages_assignment":["cats","links","others"],"moduleclass_sfx":"","cache":"1"}', 0, '*'),
(90, 'Mosets Tree - Поиск', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_mt_search', 1, 0, '{"width":"16","placeholder_text":"","advsearch":"1","search_button":"1","showCatDropdown":"1","searchCategory":"1","parent_cat":"0","dropdownWidth":"0","module_assignment":"0","categories_assignment":["0","112","113"],"pages_assignment":["cats","links","others"],"moduleclass_sfx":"","cache":"1"}', 0, '*'),
(91, 'Mod JL Weather', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jlweather', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_modules_menu`
--

CREATE TABLE IF NOT EXISTS `ikona_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ikona_modules_menu`
--

INSERT INTO `ikona_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, -101),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_archived_log`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_archived_log` (
  `log_id` int(10) unsigned NOT NULL,
  `log_ip` varchar(255) NOT NULL DEFAULT '',
  `log_type` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_id` int(11) NOT NULL DEFAULT '0',
  `rev_id` int(11) NOT NULL DEFAULT '0',
  `value` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `link_id2` (`link_id`,`log_ip`),
  KEY `link_id1` (`link_id`,`user_id`),
  KEY `user_id` (`user_id`),
  KEY `log_type` (`log_type`),
  KEY `log_ip` (`log_ip`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_archived_reviews`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_archived_reviews` (
  `rev_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `guest_name` varchar(255) NOT NULL DEFAULT '',
  `rev_title` varchar(255) NOT NULL DEFAULT '',
  `rev_text` text NOT NULL,
  `rev_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rev_approved` tinyint(4) NOT NULL DEFAULT '1',
  `admin_note` mediumtext NOT NULL,
  `vote_helpful` int(10) unsigned NOT NULL DEFAULT '0',
  `vote_total` int(10) unsigned NOT NULL DEFAULT '0',
  `ownersreply_text` text NOT NULL,
  `ownersreply_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ownersreply_approved` tinyint(4) NOT NULL DEFAULT '0',
  `ownersreply_admin_note` mediumtext NOT NULL,
  `send_email` tinyint(4) NOT NULL,
  `email_message` mediumtext NOT NULL,
  PRIMARY KEY (`rev_id`),
  KEY `link_id` (`link_id`,`rev_approved`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_archived_users`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_archived_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_cats`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_cats` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cat_desc` text NOT NULL,
  `cat_parent` int(11) NOT NULL DEFAULT '0',
  `cat_links` int(11) NOT NULL DEFAULT '0',
  `cat_cats` int(11) NOT NULL DEFAULT '0',
  `cat_featured` tinyint(4) NOT NULL DEFAULT '0',
  `cat_image` varchar(255) NOT NULL,
  `cat_association` int(11) DEFAULT NULL,
  `cat_published` tinyint(4) NOT NULL DEFAULT '0',
  `cat_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cat_approved` tinyint(4) NOT NULL DEFAULT '0',
  `cat_template` varchar(255) NOT NULL DEFAULT '',
  `cat_usemainindex` tinyint(4) NOT NULL DEFAULT '0',
  `cat_allow_submission` tinyint(4) NOT NULL DEFAULT '1',
  `cat_show_listings` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_id` (`cat_id`,`cat_published`,`cat_approved`),
  KEY `cat_parent` (`cat_parent`,`cat_published`,`cat_approved`,`cat_cats`,`cat_links`),
  KEY `dtree` (`cat_published`,`cat_approved`),
  KEY `lft_rgt` (`lft`,`rgt`),
  KEY `func_getPathWay` (`lft`,`rgt`,`cat_id`,`cat_parent`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=193 ;

--
-- Дамп данных таблицы `ikona_mt_cats`
--

INSERT INTO `ikona_mt_cats` (`cat_id`, `cat_name`, `alias`, `title`, `cat_desc`, `cat_parent`, `cat_links`, `cat_cats`, `cat_featured`, `cat_image`, `cat_association`, `cat_published`, `cat_created`, `cat_approved`, `cat_template`, `cat_usemainindex`, `cat_allow_submission`, `cat_show_listings`, `metadata`, `metakey`, `metadesc`, `ordering`, `lft`, `rgt`) VALUES
(99, '3-комн. квартиры', '3-komn-kvartiry', '', '', 117, 0, 0, 0, '99_flats1.png', NULL, 1, '2014-03-04 19:53:09', 1, '', 0, 1, 1, '', '', '', 1, 71, 72),
(97, '1-комн. квартиры', '1-komn-kvartiry', '', '', 117, 0, 0, 0, '97_flats1.png', NULL, 1, '2014-03-04 19:53:09', 1, '', 0, 1, 1, '', '', '', 2, 67, 68),
(126, 'Продам', 'prodam', '', '', 78, 1, 4, 0, '126_sale.png', NULL, 1, '2014-03-16 12:16:00', 1, '', 0, 0, 1, '', '', '', 1, 100, 109),
(127, 'Куплю', 'kuplyu', '', '', 78, 2, 4, 0, '127_purchase.png', NULL, 1, '2014-03-16 12:16:00', 1, '', 0, 0, 1, '', '', '', 2, 110, 119),
(128, 'Легковые авто', 'legkovye-avto', '', '', 127, 0, 0, 0, '128_Classic Car 66.png', NULL, 1, '2014-03-16 12:16:20', 1, '', 0, 1, 1, '', '', '', 1, 111, 112),
(129, 'Грузовые авто', 'gruzovye-avto', '', '', 127, 2, 0, 0, '129_truck.png', NULL, 1, '2014-03-16 12:16:20', 1, '', 0, 1, 1, '', '', '', 4, 113, 114),
(130, 'Прицепы', 'pritsepy', '', '', 127, 0, 0, 0, '130_towtruckyellow_8662.png', NULL, 1, '2014-03-16 12:16:20', 1, '', 0, 1, 1, '', '', '', 2, 115, 116),
(78, 'Авто', 'avto', '', '', 112, 3, 10, 0, '78_boat.png', 0, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 9, 99, 120),
(79, 'Недвижимость', 'nedvizhimost', '', '', 112, 0, 16, 0, '79_home3.png', NULL, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 3, 65, 98),
(80, 'Электроника-бытовая итехника', 'elektronika-bytovaya-itekhnika', '', '', 112, 0, 20, 0, '80_camera.png', NULL, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 4, 121, 162),
(81, 'Строительство-ремонт', 'gruzoperevozki', '', '', 112, 0, 8, 0, '81_tools.png', NULL, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 5, 25, 42),
(138, 'Тракторы', 'traktora', '', '', 137, 0, 0, 0, '138_traktor_new.png', NULL, 1, '2014-03-16 12:18:17', 1, '', 0, 1, 1, '', '', '', 1, 15, 16),
(98, '2-комн. квартиры', '2-komn-kvartiry', '', '', 117, 0, 0, 0, '98_flats1.png', NULL, 1, '2014-03-04 19:53:09', 1, '', 0, 1, 1, '', '', '', 3, 69, 70),
(144, 'Агрегаты', 'agregaty', '', '', 136, 0, 0, 0, '144_agregates5.png', NULL, 1, '2014-03-16 12:18:22', 1, '', 0, 1, 1, '', '', '', 1, 9, 10),
(143, 'Комбайны', 'kombajny', '', '', 136, 0, 0, 0, '143_traktor-komb.png', NULL, 1, '2014-03-16 12:18:22', 1, '', 0, 1, 1, '', '', '', 2, 7, 8),
(142, 'Тракторы', 'traktora', '', '', 136, 0, 0, 0, '142_traktor_new.png', NULL, 1, '2014-03-16 12:18:22', 1, '', 0, 1, 1, '', '', '', 3, 5, 6),
(141, 'Запчасти', 'zapchasti', '', '', 137, 0, 0, 0, '141_machinery-parts1.png', NULL, 1, '2014-03-16 12:18:17', 1, '', 0, 1, 1, '', '', '', 2, 21, 22),
(140, 'Агрегаты', 'agregaty', '', '', 137, 0, 0, 0, '140_agregates5.png', NULL, 1, '2014-03-16 12:18:17', 1, '', 0, 1, 1, '', '', '', 3, 19, 20),
(139, 'Комбайны', 'kombajny', '', '', 137, 0, 0, 0, '139_traktor-komb.png', NULL, 1, '2014-03-16 12:18:17', 1, '', 0, 1, 1, '', '', '', 4, 17, 18),
(135, 'Запчасти', 'zapchasti', '', '', 126, 1, 0, 0, '135_oil.png', NULL, 1, '2014-03-16 12:16:27', 1, '', 0, 1, 1, '', '', '', 4, 107, 108),
(134, 'Прицепы', 'pritsepy', '', '', 126, 0, 0, 0, '134_towtruckyellow_8662.png', NULL, 1, '2014-03-16 12:16:27', 1, '', 0, 1, 1, '', '', '', 1, 105, 106),
(133, 'Грузовые авто', 'gruzovye-avto', '', '', 126, 0, 0, 0, '133_truck.png', NULL, 1, '2014-03-16 12:16:27', 1, '', 0, 1, 1, '', '', '', 2, 103, 104),
(132, 'Легковые авто', 'legkovye-avto', '', '', 126, 0, 0, 0, '132_Classic Car 66.png', NULL, 1, '2014-03-16 12:16:27', 1, '', 0, 1, 1, '', '', '', 3, 101, 102),
(82, 'Услуги', 'uslugi', '', '', 112, 0, 5, 0, '82_phone4.png', NULL, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 6, 163, 174),
(77, 'Домашнее хозяйство', 'domashnee-khozyajstvo', '', '', 112, 0, 10, 0, '77_market.png', 0, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 7, 43, 64),
(76, 'С/Х Техника', 's-kh-tekhnika', '', '', 112, 0, 10, 0, '76_options.png', NULL, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 8, 3, 24),
(192, 'Root', 'root', '', '', -1, 1, 0, 0, '', 0, 1, '2007-06-01 00:00:00', 1, '', 0, 0, 1, '', '', '', 0, 1, 188),
(100, '4-комн. квартиры', '4-komn-kvartiry', '', '', 117, 0, 0, 0, '100_flats1.png', NULL, 1, '2014-03-04 19:53:09', 1, '', 0, 1, 1, '', '', '', 4, 73, 74),
(124, 'Участки', 'uchastki', '', '', 118, 0, 0, 0, '124_ground1.png', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 1, 93, 94),
(125, 'Гаражи', 'garazhi', '', '', 118, 0, 0, 0, '125_garage1.png', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 2, 95, 96),
(123, 'Дома', 'doma', '', '', 118, 0, 0, 0, '123_houses.png', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 3, 91, 92),
(122, '4-комнатные', '4-komnatnye', '', '', 118, 0, 0, 0, '122_flats1.png', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 4, 89, 90),
(121, '3-комнатные', '3-komnatnye', '', '', 118, 0, 0, 0, '121_flats1.png', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 5, 87, 88),
(119, '1-комнатные', '1-komnatnye', '', '', 118, 0, 0, 0, '119_flats1.png', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 6, 83, 84),
(120, '2-комнатные', '2-komnatnye', '', '', 118, 0, 0, 0, '120_flats1.png', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 7, 85, 86),
(118, 'Куплю', 'kuplyu', '', '', 79, 0, 7, 0, '118_purchase.png', NULL, 1, '2014-03-16 12:13:33', 1, '', 0, 0, 1, '', '', '', 1, 82, 97),
(116, 'Гаражи', 'garazhi', '', '', 117, 0, 0, 0, '116_garage1.png', NULL, 1, '2014-03-16 12:13:08', 1, '', 0, 1, 1, '', '', '', 5, 75, 76),
(117, 'Продам', 'prodam', '', '', 79, 0, 7, 0, '117_sale.png', NULL, 1, '2014-03-16 12:13:33', 1, '', 0, 0, 1, '', '', '', 2, 66, 81),
(115, 'Участки', 'uchastki', '', '', 117, 0, 0, 0, '115_ground1.png', NULL, 1, '2014-03-16 12:13:08', 1, '', 0, 1, 1, '', '', '', 6, 79, 80),
(114, 'Дома', 'doma', '', '', 117, 0, 0, 0, '114_houses.png', NULL, 1, '2014-03-16 12:13:08', 1, '', 0, 1, 1, '', '', '', 7, 77, 78),
(110, 'Куплю', 'kuplyu', '', '', 80, 0, 9, 0, '110_purchase.png', NULL, 1, '2014-03-04 19:54:10', 1, '', 0, 0, 1, '', '', '', 1, 122, 141),
(111, 'Продам', 'prodam', '', '', 80, 0, 9, 0, '111_sale.png', NULL, 1, '2014-03-04 19:54:10', 1, '', 0, 0, 1, '', '', '', 2, 142, 161),
(112, 'Обьявления', 'obyavleniya', '', '', 0, 3, 90, 0, '112_altapresion.png', 0, 1, '2014-03-04 20:01:44', 1, '', 0, 0, 1, '', '', '', 3, 2, 183),
(136, 'Продам', 'prodam', '', '', 76, 0, 4, 0, '136_sale.png', NULL, 1, '2014-03-16 12:18:04', 1, '', 0, 0, 1, '', '', '', 1, 4, 13),
(137, 'Куплю', 'kuplyu', '', '', 76, 0, 4, 0, '137_purchase.png', NULL, 1, '2014-03-16 12:18:04', 1, '', 0, 0, 1, '', '', '', 2, 14, 23),
(131, 'Запчасти', 'zapchasti', '', '', 127, 0, 0, 0, '131_oil.png', NULL, 1, '2014-03-16 12:16:20', 1, '', 0, 1, 1, '', '', '', 3, 117, 118),
(113, 'Телефонный справочник', 'telefonnyj-spravochnik', '', '', 0, 3, 0, 0, '', 0, 1, '2014-03-10 16:08:30', 1, '', 0, 1, 1, '{"display_filters":"1","show_listing_badge_new":"0","show_review":"0","map_default_city":"\\u041a\\u0440\\u0430\\u0441\\u043d\\u043e\\u0433\\u0440\\u0430\\u0434","show_contact":"0","show_report":"0","allow_imgupload":"0"}', '', '', 2, 184, 185),
(145, 'Запчасти', 'zapchasti', '', '', 136, 0, 0, 0, '145_machinery-parts1.png', NULL, 1, '2014-03-16 12:18:22', 1, '', 0, 1, 1, '', '', '', 4, 11, 12),
(146, 'Продам', 'prodam', '', '', 81, 0, 3, 0, '146_sale.png', NULL, 1, '2014-03-16 12:19:29', 1, '', 0, 0, 1, '', '', '', 1, 26, 33),
(147, 'Куплю', 'kuplyu', '', '', 81, 0, 3, 0, '147_purchase.png', NULL, 1, '2014-03-16 12:19:29', 1, '', 0, 0, 1, '', '', '', 2, 34, 41),
(148, 'Стройматериалы', 'strojmaterialy', '', '', 147, 0, 0, 0, '148_hummer1.png', NULL, 1, '2014-03-16 12:19:40', 1, '', 0, 1, 1, '', '', '', 1, 35, 36),
(149, 'Изделия', 'izdeliya', '', '', 147, 0, 0, 0, '149_produce1.png', NULL, 1, '2014-03-16 12:19:40', 1, '', 0, 1, 1, '', '', '', 2, 37, 38),
(150, 'Инструмент', 'instrument', '', '', 147, 0, 0, 0, '150_drill1.png', NULL, 1, '2014-03-16 12:19:40', 1, '', 0, 1, 1, '', '', '', 3, 39, 40),
(151, 'Стройматериалы', 'strojmaterialy', '', '', 146, 0, 0, 0, '151_hummer1.png', NULL, 1, '2014-03-16 12:19:46', 1, '', 0, 1, 1, '', '', '', 1, 27, 28),
(152, 'Изделия', 'izdeliya', '', '', 146, 0, 0, 0, '152_produce1.png', NULL, 1, '2014-03-16 12:19:46', 1, '', 0, 1, 1, '', '', '', 2, 29, 30),
(153, 'Инструмент', 'instrument', '', '', 146, 0, 0, 0, '153_drill1.png', NULL, 1, '2014-03-16 12:19:46', 1, '', 0, 1, 1, '', '', '', 3, 31, 32),
(154, 'Продам', 'prodam', '', '', 77, 0, 4, 0, '154_sale.png', NULL, 1, '2014-03-16 12:20:50', 1, '', 0, 0, 1, '', '', '', 1, 44, 53),
(155, 'Куплю', 'kuplyu', '', '', 77, 0, 4, 0, '155_purchase.png', NULL, 1, '2014-03-16 12:20:50', 1, '', 0, 0, 1, '', '', '', 2, 54, 63),
(156, 'Животные', 'zhivotnye', '', '', 155, 0, 0, 0, '156_paw1.png', NULL, 1, '2014-03-16 12:20:58', 1, '', 0, 1, 1, '', '', '', 1, 55, 56),
(157, 'Растения', 'rasteniya', '', '', 155, 0, 0, 0, '157_agricuclture1.png', NULL, 1, '2014-03-16 12:20:58', 1, '', 0, 1, 1, '', '', '', 2, 57, 58),
(158, 'С/Х продукция', 's-kh-produktsiya', '', '', 155, 0, 0, 0, '158_corn1.png', NULL, 1, '2014-03-16 12:20:58', 1, '', 0, 1, 1, '', '', '', 3, 59, 60),
(159, 'Инвентарь-тара', 'inventar-tara', '', '', 155, 0, 0, 0, '159_box1.png', NULL, 1, '2014-03-16 12:20:58', 1, '', 0, 1, 1, '', '', '', 4, 61, 62),
(160, 'Животные', 'zhivotnye', '', '', 154, 0, 0, 0, '160_paw1.png', NULL, 1, '2014-03-16 12:21:04', 1, '', 0, 1, 1, '', '', '', 1, 45, 46),
(161, 'Растения', 'rasteniya', '', '', 154, 0, 0, 0, '161_agricuclture1.png', NULL, 1, '2014-03-16 12:21:04', 1, '', 0, 1, 1, '', '', '', 2, 47, 48),
(162, 'С/Х продукция', 's-kh-produktsiya', '', '', 154, 0, 0, 0, '162_corn1.png', NULL, 1, '2014-03-16 12:21:04', 1, '', 0, 1, 1, '', '', '', 3, 49, 50),
(163, 'Инвентарь-тара', 'inventar-tara', '', '', 154, 0, 0, 0, '163_box1.png', NULL, 1, '2014-03-16 12:21:04', 1, '', 0, 1, 1, '', '', '', 4, 51, 52),
(164, 'Компьютеры', 'kompyutery', '', '', 110, 0, 0, 0, '164_computer1.png', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 1, 123, 124),
(165, 'Планшеты', 'planshety', '', '', 110, 0, 0, 0, '165_tablet1.png', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 2, 125, 126),
(166, 'Телефоны, Смартфоны', 'telefony-smartfony', '', '', 110, 0, 0, 0, '166_mobile1.png', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 3, 127, 128),
(167, 'Телевизоры', 'televizory', '', '', 110, 0, 0, 0, '167_tv1.png', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 4, 129, 130),
(168, 'Холодильники', 'kholodilniki', '', '', 110, 0, 0, 0, '168_fridge1.png', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 5, 131, 132),
(169, 'Стиральные машины', 'stiralnye-mashiny', '', '', 110, 0, 0, 0, '169_washing-machine1.png', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 6, 133, 134),
(170, 'Микроволновые печи', 'mikrovolnovye-pechi', '', '', 110, 0, 0, 0, '170_m-oven1.png', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 7, 135, 136),
(171, 'Комплектующие', 'komplektuyushchie', '', '', 110, 0, 0, 0, '171_RAM1.png', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 8, 137, 138),
(172, 'Разное', 'raznoe', '', '', 110, 0, 0, 0, '172_coffee-machine1.png', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 9, 139, 140),
(173, 'Компьютеры', 'kompyutery', '', '', 111, 0, 0, 0, '173_computer1.png', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 1, 143, 144),
(174, 'Планшеты', 'planshety', '', '', 111, 0, 0, 0, '174_tablet1.png', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 2, 145, 146),
(175, 'Телефоны, Смартфоны', 'telefony-smartfony', '', '', 111, 0, 0, 0, '175_mobile1.png', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 3, 147, 148),
(176, 'Телевизоры', 'televizory', '', '', 111, 0, 0, 0, '176_tv1.png', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 4, 149, 150),
(177, 'Холодильники', 'kholodilniki', '', '', 111, 0, 0, 0, '177_fridge1.png', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 5, 151, 152),
(178, 'Стиральные машины', 'stiralnye-mashiny', '', '', 111, 0, 0, 0, '178_washing-machine1.png', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 6, 153, 154),
(179, 'Микроволновые печи', 'mikrovolnovye-pechi', '', '', 111, 0, 0, 0, '179_m-oven1.png', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 7, 155, 156),
(180, 'Комплектующие', 'komplektuyushchie', '', '', 111, 0, 0, 0, '180_RAM1.png', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 8, 157, 158),
(181, 'Разное', 'raznoe', '', '', 111, 0, 0, 0, '181_coffee-machine1.png', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 9, 159, 160),
(182, 'Ремонт-стройка', 'remont-strojka', '', '', 82, 0, 0, 0, '182_repair1.png', NULL, 1, '2014-03-16 12:24:45', 1, '', 0, 1, 1, '', '', '', 1, 164, 165),
(183, 'Сельскохозяйственные', 'selskokhozyajstvennye', '', '', 82, 0, 0, 0, '183_agricuclture1.png', NULL, 1, '2014-03-16 12:24:45', 1, '', 0, 1, 1, '', '', '', 2, 166, 167),
(184, 'Юридические', 'yuridicheskie', '', '', 82, 0, 0, 0, '184_law1.png', NULL, 1, '2014-03-16 12:24:45', 1, '', 0, 1, 1, '', '', '', 3, 168, 169),
(185, 'Компьютерные', 'kompyuternye', '', '', 82, 0, 0, 0, '185_computers1.png', NULL, 1, '2014-03-16 12:24:45', 1, '', 0, 1, 1, '', '', '', 4, 170, 171),
(186, 'Уход за детьми', 'ukhod-za-detmi', '', '', 82, 0, 0, 0, '186_chilsren1.png', NULL, 1, '2014-03-16 12:24:45', 1, '', 0, 1, 1, '', '', '', 5, 172, 173),
(187, 'Знакомства', 'znakomstva', '', '', 112, 0, 2, 0, '187_hard.png', NULL, 1, '2014-03-16 12:25:05', 1, '', 0, 0, 1, '', '', '', 2, 175, 180),
(188, 'Женщины', 'zhenshchiny', '', '', 187, 0, 0, 0, '188_woman3.png', NULL, 1, '2014-03-16 12:25:18', 1, '', 0, 1, 1, '', '', '', 1, 176, 177),
(189, 'Мужчины', 'muzhchiny', '', '', 187, 0, 0, 0, '189_man2.png', NULL, 1, '2014-03-16 12:25:18', 1, '', 0, 1, 1, '', '', '', 2, 178, 179),
(190, 'Разное', 'raznoe', '', '', 112, 0, 0, 0, '190_lamp.png', NULL, 1, '2014-03-16 12:28:43', 1, '', 0, 1, 1, '', '', '', 1, 181, 182),
(191, 'Новости', 'novosti', '', '', 0, 0, 0, 0, '', 0, 1, '2014-03-16 13:06:30', 1, '', 0, 0, 1, '', '', '', 1, 186, 187);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_cats_old`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_cats_old` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cat_desc` text NOT NULL,
  `cat_parent` int(11) NOT NULL DEFAULT '0',
  `cat_links` int(11) NOT NULL DEFAULT '0',
  `cat_cats` int(11) NOT NULL DEFAULT '0',
  `cat_featured` tinyint(4) NOT NULL DEFAULT '0',
  `cat_image` varchar(255) NOT NULL,
  `cat_association` int(11) DEFAULT NULL,
  `cat_published` tinyint(4) NOT NULL DEFAULT '0',
  `cat_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cat_approved` tinyint(4) NOT NULL DEFAULT '0',
  `cat_template` varchar(255) NOT NULL DEFAULT '',
  `cat_usemainindex` tinyint(4) NOT NULL DEFAULT '0',
  `cat_allow_submission` tinyint(4) NOT NULL DEFAULT '1',
  `cat_show_listings` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_id` (`cat_id`,`cat_published`,`cat_approved`),
  KEY `cat_parent` (`cat_parent`,`cat_published`,`cat_approved`,`cat_cats`,`cat_links`),
  KEY `dtree` (`cat_published`,`cat_approved`),
  KEY `lft_rgt` (`lft`,`rgt`),
  KEY `func_getPathWay` (`lft`,`rgt`,`cat_id`,`cat_parent`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=192 ;

--
-- Дамп данных таблицы `ikona_mt_cats_old`
--

INSERT INTO `ikona_mt_cats_old` (`cat_id`, `cat_name`, `alias`, `title`, `cat_desc`, `cat_parent`, `cat_links`, `cat_cats`, `cat_featured`, `cat_image`, `cat_association`, `cat_published`, `cat_created`, `cat_approved`, `cat_template`, `cat_usemainindex`, `cat_allow_submission`, `cat_show_listings`, `metadata`, `metakey`, `metadesc`, `ordering`, `lft`, `rgt`) VALUES
(99, '3-комн. квартиры', '3-komn-kvartiry', '', '', 117, 0, 0, 0, '', NULL, 1, '2014-03-04 19:53:09', 1, '', 0, 1, 1, '', '', '', 0, 71, 72),
(97, '1-комн. квартиры', '1-komn-kvartiry', '', '', 117, 0, 0, 0, '', NULL, 1, '2014-03-04 19:53:09', 1, '', 0, 1, 1, '', '', '', 0, 67, 68),
(126, 'Продам', 'prodam', '', '', 78, 1, 4, 0, '', NULL, 1, '2014-03-16 12:16:00', 1, '', 0, 0, 1, '', '', '', 1, 100, 109),
(127, 'Куплю', 'kuplyu', '', '', 78, 2, 4, 0, '', NULL, 1, '2014-03-16 12:16:00', 1, '', 0, 0, 1, '', '', '', 2, 110, 119),
(128, 'Легковые авто', 'legkovye-avto', '', '', 127, 0, 0, 0, '', NULL, 1, '2014-03-16 12:16:20', 1, '', 0, 1, 1, '', '', '', 0, 111, 112),
(129, 'Грузовые авто', 'gruzovye-avto', '', '', 127, 2, 0, 0, '', NULL, 1, '2014-03-16 12:16:20', 1, '', 0, 1, 1, '', '', '', 0, 113, 114),
(130, 'Прицепы', 'pritsepy', '', '', 127, 0, 0, 0, '', NULL, 1, '2014-03-16 12:16:20', 1, '', 0, 1, 1, '', '', '', 0, 115, 116),
(78, 'Авто', 'avto', '', '', 112, 3, 10, 0, '', 0, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 9, 99, 120),
(79, 'Недвижимость', 'nedvizhimost', '', '', 112, 0, 16, 0, '', NULL, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 3, 65, 98),
(80, 'Электроника-бытовая итехника', 'elektronika-bytovaya-itekhnika', '', '', 112, 0, 20, 0, '', NULL, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 4, 121, 162),
(81, 'Строительство-ремонт', 'gruzoperevozki', '', '', 112, 0, 8, 0, '81_shopping-cart.png', NULL, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 5, 25, 42),
(138, 'Трактора', 'traktora', '', '', 137, 0, 0, 0, '', NULL, 1, '2014-03-16 12:18:17', 1, '', 0, 1, 1, '', '', '', 0, 15, 16),
(98, '2-комн. квартиры', '2-komn-kvartiry', '', '', 117, 0, 0, 0, '', NULL, 1, '2014-03-04 19:53:09', 1, '', 0, 1, 1, '', '', '', 0, 69, 70),
(144, 'Агрегаты', 'agregaty', '', '', 136, 0, 0, 0, '', NULL, 1, '2014-03-16 12:18:22', 1, '', 0, 1, 1, '', '', '', 0, 9, 10),
(143, 'КОмбайны', 'kombajny', '', '', 136, 0, 0, 0, '', NULL, 1, '2014-03-16 12:18:22', 1, '', 0, 1, 1, '', '', '', 0, 7, 8),
(142, 'Трактора', 'traktora', '', '', 136, 0, 0, 0, '', NULL, 1, '2014-03-16 12:18:22', 1, '', 0, 1, 1, '', '', '', 0, 5, 6),
(141, 'Запчасти', 'zapchasti', '', '', 137, 0, 0, 0, '', NULL, 1, '2014-03-16 12:18:17', 1, '', 0, 1, 1, '', '', '', 0, 21, 22),
(140, 'Агрегаты', 'agregaty', '', '', 137, 0, 0, 0, '', NULL, 1, '2014-03-16 12:18:17', 1, '', 0, 1, 1, '', '', '', 0, 19, 20),
(139, 'КОмбайны', 'kombajny', '', '', 137, 0, 0, 0, '', NULL, 1, '2014-03-16 12:18:17', 1, '', 0, 1, 1, '', '', '', 0, 17, 18),
(135, 'Запчасти', 'zapchasti', '', '', 126, 1, 0, 0, '', NULL, 1, '2014-03-16 12:16:27', 1, '', 0, 1, 1, '', '', '', 0, 107, 108),
(134, 'Прицепы', 'pritsepy', '', '', 126, 0, 0, 0, '', NULL, 1, '2014-03-16 12:16:27', 1, '', 0, 1, 1, '', '', '', 0, 105, 106),
(133, 'Грузовые авто', 'gruzovye-avto', '', '', 126, 0, 0, 0, '', NULL, 1, '2014-03-16 12:16:27', 1, '', 0, 1, 1, '', '', '', 0, 103, 104),
(132, 'Легковые авто', 'legkovye-avto', '', '', 126, 0, 0, 0, '', NULL, 1, '2014-03-16 12:16:27', 1, '', 0, 1, 1, '', '', '', 0, 101, 102),
(82, 'Услуги', 'uslugi', '', '', 112, 0, 5, 0, '', NULL, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 6, 163, 174),
(77, 'Домашнее хозяйство', 'domashnee-khozyajstvo', '', '', 112, 0, 10, 0, '77_shopping-bag.png', 0, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 7, 43, 64),
(76, 'С/Х Техника', 's-kh-tekhnika', '', '', 112, 0, 10, 0, '76_altapresion.png', NULL, 1, '2014-03-04 19:47:02', 1, '', 0, 0, 1, '', '', '', 8, 3, 24),
(0, 'Root', 'root', '', '', -1, 1, 0, 0, '', 0, 1, '2007-06-01 00:00:00', 1, '', 0, 0, 1, '', '', '', 0, 1, 188),
(100, '4-комн. квартиры', '4-komn-kvartiry', '', '', 117, 0, 0, 0, '', NULL, 1, '2014-03-04 19:53:09', 1, '', 0, 1, 1, '', '', '', 0, 73, 74),
(124, 'Участки', 'uchastki', '', '', 118, 0, 0, 0, '', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 0, 93, 94),
(125, 'Гаражи', 'garazhi', '', '', 118, 0, 0, 0, '', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 0, 95, 96),
(123, 'Дома', 'doma', '', '', 118, 0, 0, 0, '', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 0, 91, 92),
(122, '4-комнатные', '4-komnatnye', '', '', 118, 0, 0, 0, '', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 0, 89, 90),
(121, '3-комнатные', '3-komnatnye', '', '', 118, 0, 0, 0, '', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 0, 87, 88),
(119, '1-комнатные', '1-komnatnye', '', '', 118, 0, 0, 0, '', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 0, 83, 84),
(120, '2-комнатные', '2-komnatnye', '', '', 118, 0, 0, 0, '', NULL, 1, '2014-03-16 12:14:04', 1, '', 0, 1, 1, '', '', '', 0, 85, 86),
(118, 'Куплю', 'kuplyu', '', '', 79, 0, 7, 0, '', NULL, 1, '2014-03-16 12:13:33', 1, '', 0, 0, 1, '', '', '', 0, 82, 97),
(116, 'Гаражи', 'garazhi', '', '', 117, 0, 0, 0, '', NULL, 1, '2014-03-16 12:13:08', 1, '', 0, 1, 1, '', '', '', 0, 75, 76),
(117, 'Продам', 'prodam', '', '', 79, 0, 7, 0, '', NULL, 1, '2014-03-16 12:13:33', 1, '', 0, 0, 1, '', '', '', 0, 66, 81),
(115, 'Участки', 'uchastki', '', '', 117, 0, 0, 0, '', NULL, 1, '2014-03-16 12:13:08', 1, '', 0, 1, 1, '', '', '', 0, 79, 80),
(114, 'Дома', 'doma', '', '', 117, 0, 0, 0, '', NULL, 1, '2014-03-16 12:13:08', 1, '', 0, 1, 1, '', '', '', 0, 77, 78),
(110, 'Куплю', 'kuplyu', '', '', 80, 0, 9, 0, '', NULL, 1, '2014-03-04 19:54:10', 1, '', 0, 0, 1, '', '', '', 1, 122, 141),
(111, 'Продам', 'prodam', '', '', 80, 0, 9, 0, '', NULL, 1, '2014-03-04 19:54:10', 1, '', 0, 0, 1, '', '', '', 2, 142, 161),
(112, 'Объявления', 'obyavleniya', '', '', 0, 3, 90, 0, '112_altapresion.png', 0, 1, '2014-03-04 20:01:44', 1, '', 0, 0, 1, '', '', '', 3, 2, 183),
(136, 'Продам', 'prodam', '', '', 76, 0, 4, 0, '', NULL, 1, '2014-03-16 12:18:04', 1, '', 0, 0, 1, '', '', '', 0, 4, 13),
(137, 'Куплю', 'kuplyu', '', '', 76, 0, 4, 0, '', NULL, 1, '2014-03-16 12:18:04', 1, '', 0, 0, 1, '', '', '', 0, 14, 23),
(131, 'Запчасти', 'zapchasti', '', '', 127, 0, 0, 0, '', NULL, 1, '2014-03-16 12:16:20', 1, '', 0, 1, 1, '', '', '', 0, 117, 118),
(113, 'Телефонный справочник', 'telefonnyj-spravochnik', '', '', 0, 5, 0, 0, '', 0, 1, '2014-03-10 16:08:30', 1, '', 0, 1, 1, '{"display_filters":"1","show_listing_badge_new":"0","show_review":"0","map_default_city":"\\u041a\\u0440\\u0430\\u0441\\u043d\\u043e\\u0433\\u0440\\u0430\\u0434","show_contact":"0","show_report":"0"}', '', '', 2, 184, 185),
(145, 'Запчасти', 'zapchasti', '', '', 136, 0, 0, 0, '', NULL, 1, '2014-03-16 12:18:22', 1, '', 0, 1, 1, '', '', '', 0, 11, 12),
(146, 'Продам', 'prodam', '', '', 81, 0, 3, 0, '', NULL, 1, '2014-03-16 12:19:29', 1, '', 0, 0, 1, '', '', '', 0, 26, 33),
(147, 'Куплю', 'kuplyu', '', '', 81, 0, 3, 0, '', NULL, 1, '2014-03-16 12:19:29', 1, '', 0, 0, 1, '', '', '', 0, 34, 41),
(148, 'Стройматериалы', 'strojmaterialy', '', '', 147, 0, 0, 0, '', NULL, 1, '2014-03-16 12:19:40', 1, '', 0, 1, 1, '', '', '', 0, 35, 36),
(149, 'Изделия', 'izdeliya', '', '', 147, 0, 0, 0, '', NULL, 1, '2014-03-16 12:19:40', 1, '', 0, 1, 1, '', '', '', 0, 37, 38),
(150, 'Инструмент', 'instrument', '', '', 147, 0, 0, 0, '', NULL, 1, '2014-03-16 12:19:40', 1, '', 0, 1, 1, '', '', '', 0, 39, 40),
(151, 'Стройматериалы', 'strojmaterialy', '', '', 146, 0, 0, 0, '', NULL, 1, '2014-03-16 12:19:46', 1, '', 0, 1, 1, '', '', '', 0, 27, 28),
(152, 'Изделия', 'izdeliya', '', '', 146, 0, 0, 0, '', NULL, 1, '2014-03-16 12:19:46', 1, '', 0, 1, 1, '', '', '', 0, 29, 30),
(153, 'Инструмент', 'instrument', '', '', 146, 0, 0, 0, '', NULL, 1, '2014-03-16 12:19:46', 1, '', 0, 1, 1, '', '', '', 0, 31, 32),
(154, 'Продам', 'prodam', '', '', 77, 0, 4, 0, '', NULL, 1, '2014-03-16 12:20:50', 1, '', 0, 0, 1, '', '', '', 1, 44, 53),
(155, 'Куплю', 'kuplyu', '', '', 77, 0, 4, 0, '', NULL, 1, '2014-03-16 12:20:50', 1, '', 0, 0, 1, '', '', '', 2, 54, 63),
(156, 'Животные', 'zhivotnye', '', '', 155, 0, 0, 0, '', NULL, 1, '2014-03-16 12:20:58', 1, '', 0, 1, 1, '', '', '', 0, 55, 56),
(157, 'Растения', 'rasteniya', '', '', 155, 0, 0, 0, '', NULL, 1, '2014-03-16 12:20:58', 1, '', 0, 1, 1, '', '', '', 0, 57, 58),
(158, 'С/Х продукция', 's-kh-produktsiya', '', '', 155, 0, 0, 0, '', NULL, 1, '2014-03-16 12:20:58', 1, '', 0, 1, 1, '', '', '', 0, 59, 60),
(159, 'Инвентарь-Тара', 'inventar-tara', '', '', 155, 0, 0, 0, '', NULL, 1, '2014-03-16 12:20:58', 1, '', 0, 1, 1, '', '', '', 0, 61, 62),
(160, 'Животные', 'zhivotnye', '', '', 154, 0, 0, 0, '', NULL, 1, '2014-03-16 12:21:04', 1, '', 0, 1, 1, '', '', '', 0, 45, 46),
(161, 'Растения', 'rasteniya', '', '', 154, 0, 0, 0, '', NULL, 1, '2014-03-16 12:21:04', 1, '', 0, 1, 1, '', '', '', 0, 47, 48),
(162, 'С/Х продукция', 's-kh-produktsiya', '', '', 154, 0, 0, 0, '', NULL, 1, '2014-03-16 12:21:04', 1, '', 0, 1, 1, '', '', '', 0, 49, 50),
(163, 'Инвентарь-Тара', 'inventar-tara', '', '', 154, 0, 0, 0, '', NULL, 1, '2014-03-16 12:21:04', 1, '', 0, 1, 1, '', '', '', 0, 51, 52),
(164, 'Компьютеры', 'kompyutery', '', '', 110, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 0, 123, 124),
(165, 'Планшеты', 'planshety', '', '', 110, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 0, 125, 126),
(166, 'Телефоны, Смартфоны', 'telefony-smartfony', '', '', 110, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 0, 127, 128),
(167, 'Телевизоры', 'televizory', '', '', 110, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 0, 129, 130),
(168, 'Холодильники', 'kholodilniki', '', '', 110, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 0, 131, 132),
(169, 'Стиральные машины', 'stiralnye-mashiny', '', '', 110, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 0, 133, 134),
(170, 'Микроволновые печи', 'mikrovolnovye-pechi', '', '', 110, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 0, 135, 136),
(171, 'Комплектующие', 'komplektuyushchie', '', '', 110, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 0, 137, 138),
(172, 'Разное', 'raznoe', '', '', 110, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:12', 1, '', 0, 1, 1, '', '', '', 0, 139, 140),
(173, 'Компьютеры', 'kompyutery', '', '', 111, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 0, 143, 144),
(174, 'Планшеты', 'planshety', '', '', 111, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 0, 145, 146),
(175, 'Телефоны, Смартфоны', 'telefony-smartfony', '', '', 111, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 0, 147, 148),
(176, 'Телевизоры', 'televizory', '', '', 111, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 0, 149, 150),
(177, 'Холодильники', 'kholodilniki', '', '', 111, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 0, 151, 152),
(178, 'Стиральные машины', 'stiralnye-mashiny', '', '', 111, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 0, 153, 154),
(179, 'Микроволновые печи', 'mikrovolnovye-pechi', '', '', 111, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 0, 155, 156),
(180, 'Комплектующие', 'komplektuyushchie', '', '', 111, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 0, 157, 158),
(181, 'Разное', 'raznoe', '', '', 111, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:18', 1, '', 0, 1, 1, '', '', '', 0, 159, 160),
(182, 'Ремонт-стройка', 'remont-strojka', '', '', 82, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:45', 1, '', 0, 1, 1, '', '', '', 0, 164, 165),
(183, 'Сельскохозяйственные', 'selskokhozyajstvennye', '', '', 82, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:45', 1, '', 0, 1, 1, '', '', '', 0, 166, 167),
(184, 'Юридические', 'yuridicheskie', '', '', 82, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:45', 1, '', 0, 1, 1, '', '', '', 0, 168, 169),
(185, 'Компьютерные', 'kompyuternye', '', '', 82, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:45', 1, '', 0, 1, 1, '', '', '', 0, 170, 171),
(186, 'Уход за детьми', 'ukhod-za-detmi', '', '', 82, 0, 0, 0, '', NULL, 1, '2014-03-16 12:24:45', 1, '', 0, 1, 1, '', '', '', 0, 172, 173),
(187, 'Знакомства', 'znakomstva', '', '', 112, 0, 2, 0, '', NULL, 1, '2014-03-16 12:25:05', 1, '', 0, 0, 1, '', '', '', 2, 175, 180),
(188, 'Женщины', 'zhenshchiny', '', '', 187, 0, 0, 0, '', NULL, 1, '2014-03-16 12:25:18', 1, '', 0, 1, 1, '', '', '', 0, 176, 177),
(189, 'Мужчины', 'muzhchiny', '', '', 187, 0, 0, 0, '', NULL, 1, '2014-03-16 12:25:18', 1, '', 0, 1, 1, '', '', '', 0, 178, 179),
(190, 'Разное', 'raznoe', '', '', 112, 0, 0, 0, '', NULL, 1, '2014-03-16 12:28:43', 1, '', 0, 1, 1, '', '', '', 1, 181, 182),
(191, 'Новости', 'novosti', '', '', 0, 0, 0, 0, '', 0, 1, '2014-03-16 13:06:30', 1, '', 0, 0, 1, '', '', '', 1, 186, 187);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_cfvalues`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_cfvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `value` mediumtext NOT NULL,
  `attachment` int(10) unsigned NOT NULL DEFAULT '0',
  `counter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cf_id` (`cf_id`,`link_id`),
  KEY `link_id` (`link_id`),
  KEY `value` (`value`(8))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `ikona_mt_cfvalues`
--

INSERT INTO `ikona_mt_cfvalues` (`id`, `cf_id`, `link_id`, `value`, `attachment`, `counter`) VALUES
(18, 29, 19, 'Автостоянки|Автотовары и запчасти|Автоэкспертиза|Автошколы', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_cfvalues_att`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_cfvalues_att` (
  `att_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(10) unsigned NOT NULL,
  `cf_id` int(10) unsigned NOT NULL,
  `raw_filename` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL,
  `extension` varchar(255) NOT NULL,
  PRIMARY KEY (`att_id`),
  KEY `primary2` (`link_id`,`cf_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_cl`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_cl` (
  `cl_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `main` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cl_id`),
  KEY `link_id` (`link_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Дамп данных таблицы `ikona_mt_cl`
--

INSERT INTO `ikona_mt_cl` (`cl_id`, `link_id`, `cat_id`, `main`) VALUES
(18, 18, 113, 1),
(19, 19, 113, 1),
(20, 20, 113, 1),
(21, 21, 129, 1),
(22, 22, 135, 1),
(23, 23, 129, 1),
(24, 24, 113, 1),
(25, 25, 113, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_claims`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_claims` (
  `claim_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `comment` mediumtext NOT NULL,
  `created` datetime NOT NULL,
  `admin_note` mediumtext NOT NULL,
  PRIMARY KEY (`claim_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_clone_owners`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_clone_owners` (
  `user_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_config`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_config` (
  `varname` varchar(100) NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `value` mediumtext NOT NULL,
  `default` mediumtext NOT NULL,
  `configcode` mediumtext NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `displayed` smallint(5) unsigned NOT NULL DEFAULT '1',
  `overridable_by_category` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ikona_mt_config`
--

INSERT INTO `ikona_mt_config` (`varname`, `groupname`, `value`, `default`, `configcode`, `ordering`, `displayed`, `overridable_by_category`) VALUES
('admin_email', 'main', 'dzigunskiy@bk.ru', '', 'text', 500, 1, 1),
('template', 'main', 'kinabalu', 'kinabalu', 'text', 200, 0, 1),
('admin_use_explorer', 'admin', '1', '1', 'yesno', 11500, 1, 0),
('small_image_click_target_size', 'admin', '', 'o', 'text', 13000, 0, 0),
('allow_changing_cats_in_addlisting', 'listing', '0', '1', 'yesno', 3550, 1, 1),
('allow_imgupload', 'image', '1', '1', 'yesno', 10100, 1, 1),
('image_required', 'image', '0', '0', 'yesno', 10150, 1, 1),
('allow_listings_submission_in_root', 'listing', '0', '0', 'yesno', 3500, 1, 1),
('allow_owner_rate_own_listing', 'ratingreview', '0', '0', 'yesno', 1700, 1, 1),
('allow_owner_review_own_listing', 'ratingreview', '1', '0', 'yesno', 10005, 1, 1),
('allow_rating_during_review', 'ratingreview', '1', '1', 'yesno', 2650, 1, 1),
('allow_user_assign_more_than_one_category', 'listing', '0', '1', 'yesno', 3575, 1, 1),
('max_num_of_secondary_categories', 'listing', '3', '3', 'text', 3580, 1, 1),
('alpha_index_additional_chars', 'listing', '', '', 'text', 3410, 1, 1),
('type_of_listings_in_index', 'category', 'listcurrent', '', 'type_of_listings_in_index', 3150, 1, 1),
('type_of_listings_in_index_count', 'category', '3', '3', 'text', 3175, 1, 1),
('display_categories', 'category', '1', '1', 'yesno', 3200, 1, 1),
('display_empty_cat', 'category', '1', '1', 'yesno', 3300, 1, 1),
('display_all_listings_link', 'category', '0', '1', 'yesno', 3400, 1, 1),
('display_filters', 'category', '1', '1', 'yesno', 3500, 1, 1),
('display_listings_in_root', 'listing', '0', '1', 'yesno', 3600, 1, 1),
('show_listing_badge_new', 'listing', '0', '1', 'yesno', 3610, 1, 1),
('show_listing_badge_featured', 'listing', '0', '1', 'yesno', 3620, 1, 1),
('show_listing_badge_popular', 'listing', '0', '1', 'yesno', 3630, 1, 1),
('explorer_tree_level', 'admin', '4', '9', 'text', 11600, 1, 0),
('fe_num_of_featured', 'listing', '20', '20', 'text', 6700, 1, 1),
('fe_num_of_links', 'listing', '10', '20', 'text', 5500, 1, 1),
('fe_num_of_associated', 'listing', '', '10', 'text', 5550, 1, 1),
('fe_num_of_favourite', 'listing', '20', '20', 'text', 6100, 1, 1),
('fe_num_of_mostrated', 'listing', '20', '20', 'text', 6300, 1, 1),
('fe_num_of_mostreview', 'listing', '20', '20', 'text', 6500, 1, 1),
('fe_num_of_new', 'listing', '20', '20', 'text', 5800, 1, 1),
('fe_num_of_popular', 'listing', '20', '20', 'text', 5700, 1, 1),
('fe_num_of_updated', 'listing', '20', '20', 'text', 6000, 1, 1),
('fe_num_of_reviews', 'listing', '20', '20', 'text', 5600, 1, 1),
('fe_num_of_reviews_in_listing_page', 'listing', '3', '3', 'text', 5610, 1, 1),
('fe_num_of_searchresults', 'listing', '20', '20', 'text', 6600, 1, 1),
('fe_num_of_toprated', 'listing', '20', '20', 'text', 6400, 1, 1),
('fe_num_of_searchbytags', 'listing', '100', '100', 'text', 9999, 0, 1),
('fe_num_of_alpha', 'listing', '20', '20', 'text', 6725, 1, 1),
('fe_num_of_all', 'listing', '20', '20', 'text', 6050, 1, 1),
('fe_total_new', 'listing', '50', '60', 'text', 5900, 1, 1),
('all_listings_sort_by', 'listing', '-link_created', '-link_created', 'sort', 1, 1, 1),
('all_listings_sort_by_options', 'listing', '-link_created|-link_visited|link_name', '-link_created|-link_modified', 'sort_options', 2, 1, 1),
('first_cat_order1', 'category', 'cat_name', 'cat_name', 'cat_order', 1400, 1, 1),
('first_cat_order2', 'category', 'asc', 'asc', 'sort_direction', 1500, 1, 1),
('first_listing_order1', 'listing', 'link_featured', 'link_rating', 'listing_order', 1800, 1, 1),
('first_listing_order2', 'listing', 'desc', 'desc', 'sort_direction', 1900, 1, 1),
('first_review_order1', 'ratingreview', 'rev_date', 'vote_helpful', 'review_order', 2900, 1, 1),
('first_review_order2', 'ratingreview', 'desc', 'desc', 'sort_direction', 3000, 1, 1),
('first_search_order1', 'search', 'link_featured', 'link_featured', 'listing_order', 2150, 1, 1),
('first_search_order2', 'search', 'desc', 'desc', 'sort_direction', 2151, 1, 1),
('hit_lag', 'main', '86400', '86400', 'text', 9000, 1, 0),
('images_per_listing', 'image', '8', '10', 'text', 10200, 1, 1),
('image_min_width', 'image', '0', '600', 'text', 1060, 1, 0),
('image_min_height', 'image', '0', '600', 'text', 1070, 1, 0),
('linkchecker_last_checked', 'linkchecker', '', '', 'text', 300, 0, 0),
('linkchecker_num_of_links', 'linkchecker', '10', '10', 'text	', 100, 0, 0),
('linkchecker_seconds', 'linkchecker', '1', '1', 'text', 200, 0, 0),
('link_new', 'main', '10', '7', 'text', 8800, 1, 0),
('link_popular', 'main', '10', '120', 'text', 8900, 1, 0),
('min_votes_for_toprated', 'ratingreview', '1', '1', 'text', 1500, 1, 1),
('min_votes_to_show_rating', 'ratingreview', '0', '0', 'text', 1600, 1, 1),
('name', 'core', 'Mosets Tree', 'Mosets Tree', '', 0, 0, 0),
('needapproval_addcategory', 'main', '1', '1', 'yesno', 8500, 1, 1),
('needapproval_addlisting', 'main', '0', '1', 'yesno', 8300, 1, 1),
('needapproval_addreview', 'ratingreview', '0', '1', 'yesno', 2700, 1, 1),
('needapproval_modifylisting', 'main', '0', '1', 'yesno', 8400, 1, 1),
('needapproval_replyreview', 'ratingreview', '0', '1', 'yesno', 8500, 1, 1),
('note_notify_admin', 'notify', '', '', 'note', 9099, 1, 1),
('note_notify_owner', 'notify', '', '', 'note', 9450, 1, 1),
('note_rating', 'ratingreview', '', '', 'note', 1000, 1, 1),
('note_review', 'ratingreview', '', '', 'note', 2500, 1, 1),
('note_rss_custom_fields', 'rss', '', '', 'note', 300, 1, 1),
('notifyadmin_delete', 'notify', '1', '1', 'yesno', 9300, 1, 1),
('notifyadmin_modifylisting', 'notify', '1', '1', 'yesno', 9200, 1, 1),
('notifyadmin_newlisting', 'notify', '1', '1', 'yesno', 9100, 1, 1),
('notifyadmin_newreview', 'notify', '1', '1', 'yesno', 9400, 1, 1),
('notifyuser_approved', 'notify', '1', '1', 'yesno', 9700, 1, 1),
('notifyuser_modifylisting', 'notify', '1', '1', 'yesno', 9600, 1, 1),
('notifyuser_newlisting', 'notify', '1', '1', 'yesno', 9500, 1, 1),
('notifyuser_review_approved', 'notify', '1', '1', 'yesno', 9800, 1, 1),
('optional_email_sent_to_reviewer', 'ratingreview', '', '', 'note', 10010, 1, 1),
('owner_reply_review', 'ratingreview', '1', '1', 'yesno', 8000, 1, 1),
('predefined_reply_1_message', 'ratingreview', '', '', 'predefined_reply', 10120, 1, 1),
('predefined_reply_1_title', 'ratingreview', '', '', 'predefined_reply_title', 10110, 1, 1),
('predefined_reply_2_message', 'ratingreview', '', '', 'predefined_reply', 10140, 1, 1),
('predefined_reply_2_title', 'ratingreview', '', '', 'predefined_reply_title', 10130, 1, 1),
('predefined_reply_3_message', 'ratingreview', '', '', 'predefined_reply', 10160, 1, 1),
('predefined_reply_3_title', 'ratingreview', '', '', 'predefined_reply_title', 10150, 1, 1),
('predefined_reply_4_message', 'ratingreview', '', '', 'predefined_reply', 10180, 1, 1),
('predefined_reply_4_title', 'ratingreview', '', '', 'predefined_reply_title', 10170, 1, 1),
('predefined_reply_5_message', 'ratingreview', '', '', 'predefined_reply', 10200, 1, 1),
('predefined_reply_5_title', 'ratingreview', '', '', 'predefined_reply_title', 10190, 1, 1),
('predefined_reply_bcc', 'ratingreview', '', '', 'text', 10040, 1, 1),
('predefined_reply_for_approved_or_rejected_review', 'ratingreview', '', '', 'note', 10100, 1, 1),
('predefined_reply_from_email', 'ratingreview', '', '', 'text', 10030, 1, 1),
('predefined_reply_from_name', 'ratingreview', '', '', 'text', 10020, 1, 1),
('rate_once', 'ratingreview', '1', '0', 'yesno', 1400, 1, 1),
('relative_path_to_js_library', 'core', '/media/com_mtree/js/jquery-1.8.3.min.js', '/media/com_mtree/js/jquery-1.8.3.min.js', 'text', 0, 0, 0),
('require_rating_with_review', 'ratingreview', '0', '1', 'yesno', 2675, 1, 1),
('resize_cat_size', 'image', '200', '80', 'text', 1300, 1, 1),
('resize_small_listing_size', 'image', '120', '100', 'text', 1000, 1, 1),
('resize_medium_listing_size', 'image', '600', '600', 'text', 1050, 1, 1),
('resize_method', 'image', 'gd2', 'gd2', 'resize_method', 800, 1, 0),
('resize_quality', 'image', '80', '80', 'text', 900, 1, 0),
('rss_address', 'rss', '0', '0', 'yesno', 400, 1, 1),
('rss_cat_name', 'rss', '0', '0', 'yesno', 310, 1, 1),
('rss_cat_url', 'rss', '0', '0', 'yesno', 320, 1, 1),
('rss_city', 'rss', '0', '0', 'yesno', 500, 1, 1),
('rss_country', 'rss', '0', '0', 'yesno', 800, 1, 1),
('rss_custom_fields', 'rss', '', '', 'text', 1500, 1, 1),
('rss_email', 'rss', '0', '0', 'yesno', 900, 1, 1),
('rss_fax', 'rss', '0', '0', 'yesno', 1200, 1, 1),
('rss_link_rating', 'rss', '0', '0', 'yesno', 340, 1, 1),
('rss_link_votes', 'rss', '0', '0', 'yesno', 330, 1, 1),
('rss_metadesc', 'rss', '0', '0', 'yesno', 1400, 1, 1),
('rss_metakey', 'rss', '0', '0', 'yesno', 1300, 1, 1),
('rss_postcode', 'rss', '0', '0', 'yesno', 600, 1, 1),
('rss_state', 'rss', '0', '0', 'yesno', 700, 1, 1),
('rss_telephone', 'rss', '0', '0', 'yesno', 1100, 1, 1),
('rss_website', 'rss', '0', '0', 'yesno', 1000, 1, 1),
('rss_lat', 'rss', '0', '0', 'yesno', 1410, 1, 1),
('rss_lng', 'rss', '0', '0', 'yesno', 1420, 1, 1),
('rss_zoom', 'rss', '0', '0', 'yesno', 1430, 1, 1),
('second_cat_order1', 'category', '', '', 'cat_order', 1600, 1, 1),
('second_cat_order2', 'category', 'asc', 'asc', 'sort_direction', 1700, 1, 1),
('second_listing_order1', 'listing', 'link_name', 'link_votes', 'listing_order', 2000, 1, 1),
('second_listing_order2', 'listing', 'asc', 'desc', 'sort_direction', 2100, 1, 1),
('second_review_order1', 'ratingreview', '', 'vote_total', 'review_order', 4000, 1, 1),
('second_review_order2', 'ratingreview', 'desc', 'desc', 'sort_direction', 5000, 1, 1),
('second_search_order1', 'search', 'link_hits', 'link_hits', 'listing_order', 2152, 1, 1),
('second_search_order2', 'search', 'desc', 'desc', 'sort_direction', 2153, 1, 1),
('show_claim', 'feature', '0', '1', 'yesno', 4500, 1, 1),
('show_contact', 'feature', '0', '1', 'yesno', 4700, 1, 1),
('show_listnewrss', 'rss', '0', '1', 'yesno', 100, 1, 1),
('show_listupdatedrss', 'rss', '0', '1\n', 'yesno', 200, 1, 1),
('show_map', 'feature', '0', '0', 'yesno', 4100, 1, 1),
('show_ownerlisting', 'feature', '0', '1', 'yesno', 4600, 1, 1),
('owner_default_page', 'feature', 'viewuserslisting', 'viewuserslisting', 'owner_default_page', 4650, 1, 1),
('show_print', 'feature', '1', '0', 'yesno', 4200, 1, 1),
('show_rating', 'ratingreview', '1', '1', 'yesno', 1100, 1, 1),
('show_recommend', 'feature', '0', '1', 'yesno', 5100, 1, 1),
('show_report', 'feature', '0', '1', 'yesno', 4900, 1, 1),
('show_review', 'ratingreview', '1', '1', 'yesno', 2600, 1, 1),
('show_visit', 'feature', '0', '1', 'yesno', 4300, 1, 1),
('third_review_order1', 'ratingreview', '', 'rev_date', 'review_order', 6000, 1, 1),
('third_review_order2', 'ratingreview', 'desc', 'desc', 'sort_direction', 7000, 1, 1),
('trigger_modified_listing', 'listing', '', '', 'text', 3900, 1, 1),
('user_addcategory', 'main', '1', '1', 'user_access', 8000, 1, 1),
('user_addlisting', 'main', '1', '1', 'user_access', 7900, 1, 1),
('user_allowdelete', 'main', '1', '1', 'yesno', 8200, 1, 1),
('user_allowmodify', 'main', '1', '1', 'yesno', 8100, 1, 1),
('user_contact', 'feature', '0', '0', 'user_access', 4800, 1, 1),
('contact_bcc_email', 'feature', '', '', 'text', 4810, 1, 1),
('user_rating', 'ratingreview', '2', '1', 'user_access2', 1300, 1, 1),
('user_recommend', 'feature', '0', '0', 'user_access', 5200, 1, 1),
('user_report', 'feature', '1', '0', 'user_access', 5000, 1, 1),
('user_report_review', 'ratingreview', '1', '1', 'user_access', 9000, 1, 1),
('user_review', 'ratingreview', '1', '1', 'user_access2', 2800, 1, 1),
('user_review_once', 'ratingreview', '0', '1', 'yesno', 9000, 1, 1),
('user_vote_review', 'ratingreview', '1', '1', 'yesno', 10000, 1, 1),
('use_internal_notes', 'admin', '1', '1', 'yesno', 11900, 1, 0),
('use_owner_email', 'feature', '1', '0', 'yesno', 5300, 1, 1),
('use_wysiwyg_editor', 'main', '1', '0', 'yesno', 11000, 1, 0),
('use_wysiwyg_editor_in_admin', 'admin', '1', '0', 'yesno', 12000, 1, 0),
('version', 'core', '3.0.6', '3.0.6', '', 0, 0, 0),
('major_version', 'core', '3', '3', '', 0, 0, 0),
('minor_version', 'core', '0', '0', '', 0, 0, 0),
('dev_version', 'core', '6', '6', '', 0, 0, 0),
('squared_thumbnail', 'image', '1', '1', 'yesno', 1025, 1, 0),
('show_favourite', 'feature', '0', '1', 'yesno', 4175, 1, 1),
('relative_path_to_cat_small_image', 'core', '', '/media/com_mtree/images/cats/s/', '', 0, 0, 0),
('relative_path_to_cat_original_image', 'core', '', '/media/com_mtree/images/cats/o/', '', 0, 0, 0),
('relative_path_to_listing_small_image', 'core', '', '/media/com_mtree/images/listings/s/', '', 0, 0, 0),
('relative_path_to_listing_medium_image', 'core', '', '/media/com_mtree/images/listings/m/', '', 0, 0, 0),
('relative_path_to_listing_original_image', 'core', '', '/media/com_mtree/images/listings/o/', '', 0, 0, 0),
('relative_path_to_rating_image', 'core', '', '/media/com_mtree/images/', '', 0, 0, 0),
('relative_path_to_js', 'core', '', '/media/com_mtree/js/', '', 0, 0, 0),
('relative_path_to_images', 'core', '', '/media/com_mtree/images/', '', 0, 0, 0),
('relative_path_to_templates', 'core', '', '/components/com_mtree/templates/', '', 0, 0, 0),
('relative_path_to_fieldtypes', 'core', '', '/administrator/components/com_mtree/fieldtypes/', '', 0, 0, 0),
('relative_path_to_fieldtypes_media', 'core', '', 'media/com_mtree/fieldtypes/', '', 0, 0, 0),
('rss_title_separator', 'rss', ' - ', ' - ', 'text', 0, 0, 1),
('cat_parse_plugin', 'category', '1', '1', 'yesno', 3400, 0, 1),
('image_maxsize', 'image', '2192000', '3145728', 'text', 10300, 1, 1),
('banned_text', 'email', '[/url];[/link]', '', '', 0, 0, 0),
('banned_subject', 'email', '', '', '', 0, 0, 0),
('banned_email', 'email', '', '', '', 0, 0, 0),
('notifyowner_review_added', 'notify', '1', '1', 'yesno', 9900, 1, 1),
('unpublished_message_cfid', 'listing', '0', '0', 'text', 6600, 0, 1),
('load_css', 'core', '1', '1', 'yesno', 0, 0, 0),
('rss_secret_token', 'rss', '', '', 'text', 0, 0, 1),
('show_category_rss', 'rss', '0', '1', 'yesno', 0, 1, 1),
('fe_total_updated', 'listing', '60', '60', 'text', 6050, 0, 1),
('fe_total_popular', 'listing', '60', '60', 'text', 5750, 0, 1),
('fe_total_favourite', 'listing', '60', '60', 'text', 6150, 0, 1),
('fe_total_mostrated', 'listing', '60', '60', 'text', 6350, 0, 1),
('fe_total_toprated', 'listing', '60', '60', 'text', 6450, 0, 1),
('fe_total_mostreview', 'listing', '60', '60', 'text', 6550, 0, 1),
('default_search_condition', 'search', '2', '2', 'text', 0, 0, 1),
('reset_created_date_upon_approval', 'core', '1', '1', 'yesno', 0, 0, 0),
('cache_registered_viewlink', 'main', '0', '0', 'yesno', 0, 0, 1),
('relative_path_to_attachments', 'core', '/media/com_mtree/attachments/', '/media/com_mtree/attachments/', 'text', 0, 0, 0),
('sef_link_slug_type', 'sef', '3', '3', 'sef_link_slug_type', 100, 1, 0),
('sef_link_slug_type_hybrid_separator', 'sef', '-', '-', 'text', 125, 0, 0),
('sef_image', 'sef', 'image', 'image', 'text', 200, 1, 0),
('sef_gallery', 'sef', 'gallery', 'gallery', 'text', 300, 1, 0),
('sef_review', 'sef', 'review', 'review', 'text', 400, 1, 0),
('sef_replyreview', 'sef', 'reply-review', 'reply-review', 'text', 500, 1, 0),
('sef_reportreview', 'sef', 'report-review', 'report-review', 'text', 600, 1, 0),
('sef_recommend', 'sef', 'recommend', 'recommend', 'text', 800, 1, 0),
('sef_print', 'sef', 'print', 'print', 'text', 850, 1, 0),
('sef_contact', 'sef', 'contact', 'contact', 'text', 900, 1, 0),
('sef_report', 'sef', 'report', 'report', 'text', 1000, 1, 0),
('sef_claim', 'sef', 'claim', 'claim', 'text', 1100, 1, 0),
('sef_visit', 'sef', 'visit', 'visit', 'text', 1200, 1, 0),
('sef_category_page', 'sef', 'page', 'page', 'text', 1300, 1, 0),
('sef_associated_listing_page', 'sef', 'apage', 'apage', 'text', 1350, 1, 0),
('sef_delete', 'sef', 'delete', 'delete', 'text', 1400, 1, 0),
('sef_reviews_page', 'sef', 'reviews', 'reviews', 'text', 1500, 1, 0),
('sef_addlisting', 'sef', 'add', 'add', 'text', 1600, 1, 0),
('sef_editlisting', 'sef', 'edit', 'edit', 'text', 1650, 1, 0),
('sef_viewreviews', 'sef', 'reviews', 'reviews', 'text', 1655, 1, 0),
('sef_viewreview', 'sef', 'review', 'review', 'text', 1660, 1, 0),
('sef_addcategory', 'sef', 'add-category', 'add-category', 'text', 1700, 1, 0),
('sef_mypage', 'sef', 'my-page', 'my-page', 'text', 1800, 1, 0),
('sef_all', 'sef', 'all', 'all', 'text', 1850, 1, 0),
('sef_new', 'sef', 'new', 'new', 'text', 1900, 1, 0),
('sef_updated', 'sef', 'updated', 'updated', 'text', 2000, 1, 0),
('sef_favourite', 'sef', 'most-favoured', 'most-favoured', 'text', 2100, 1, 0),
('sef_featured', 'sef', 'featured', 'featured', 'text', 2200, 1, 0),
('sef_popular', 'sef', 'popular', 'popular', 'text', 2300, 1, 0),
('sef_mostrated', 'sef', 'most-rated', 'most-rated', 'text', 2400, 1, 0),
('sef_toprated', 'sef', 'top-rated', 'top-rated', 'text', 2500, 1, 0),
('sef_mostreview', 'sef', 'most-reviewed', 'most-reviewed', 'text', 2600, 1, 0),
('sef_listalpha', 'sef', 'list-alpha', 'list-alpha', 'text', 2700, 1, 0),
('sef_listallcats', 'sef', 'all-categories', 'all-categories', 'text', 2750, 1, 0),
('sef_owner', 'sef', 'owner', 'owner', 'text', 2800, 1, 0),
('sef_listings', 'sef', 'listings', 'listings', 'text', 2850, 1, 0),
('sef_favourites', 'sef', 'favourites', 'favourites', 'text', 2900, 1, 0),
('sef_reviews', 'sef', 'reviews', 'reviews', 'text', 3000, 1, 0),
('sef_searchby', 'sef', 'search-by', 'search-by', 'text', 3050, 1, 0),
('sef_search', 'sef', 'search', 'search', 'text', 3100, 1, 0),
('sef_advsearch', 'sef', 'advanced-search', 'advanced-search', 'text', 3200, 1, 0),
('sef_advsearch2', 'sef', 'advanced-search-results', 'advanced-search-results', 'text', 3300, 1, 0),
('sef_rss', 'sef', 'rss', 'rss', 'text', 3400, 1, 0),
('sef_rss_new', 'sef', 'new', 'new', 'text', 3500, 1, 0),
('sef_rss_updated', 'sef', 'updated', 'updated', 'text', 3600, 1, 0),
('sef_space', 'sef', '-', '-', 'text', 3700, 1, 0),
('note_sef_translations', 'sef', '', '', 'note', 150, 1, 0),
('sef_details', 'sef', 'details', 'details', 'text', 175, 0, 0),
('show_image_rss', 'rss', '1', '1', 'yesno', 250, 0, 1),
('use_map', 'feature', '0', '0', 'yesno', 3950, 1, 1),
('map_default_country', 'feature', '', '', 'text', 3960, 1, 1),
('map_default_state', 'feature', '', '', 'text', 3970, 1, 1),
('map_default_city', 'feature', '', '', 'text', 3980, 1, 1),
('note_map', 'feature', '', '', 'note', 3925, 1, 1),
('note_other_features', 'feature', '', '', 'note', 4170, 1, 1),
('map_default_lat', 'feature', '12.554563528593656', '12.554563528593656', 'text', 3985, 0, 1),
('map_default_lng', 'feature', '18.984375', '18.984375', 'text', 3986, 0, 1),
('map_default_zoom', 'feature', '1', '1', 'text', 3987, 0, 1),
('display_pending_approval_listings_to_owners', 'listing', '1', '0', 'yesno', 4000, 0, 1),
('days_to_expire', 'listing', '0', '0', 'text', 6800, 1, 1),
('rss_new_limit', 'rss', '40', '40', 'text', 220, 0, 1),
('rss_updated_limit', 'rss', '40', '40', 'text', 240, 0, 1),
('limit_max_chars', 'search', '20', '20', 'text', 2160, 0, 1),
('limit_min_chars', 'search', '3', '3', 'text', 2170, 0, 1),
('banned_attachment_filetypes', 'main', 'php', 'php', 'text', 12000, 0, 0),
('use_open_graph_protocol', 'core', '1', '1', 'yesno', 0, 0, 0),
('use_captcha_review', 'captcha', '0', '0', 'yesno', 1000, 1, 0),
('use_captcha_contact', 'captcha', '0', '0', 'yesno', 2000, 1, 0),
('use_captcha_report', 'captcha', '0', '0', 'yesno', 3000, 1, 0),
('use_captcha_reportreview', 'captcha', '0', '0', 'yesno', 4000, 1, 0),
('contact_form_location', 'feature', '1', '1', 'feature_locations', 4750, 1, 1),
('show_user_profile_in_listing_details', 'listing', '0', '0', 'yesno', 2500, 1, 1),
('load_js_framework_frontend', 'core', '1', '1', 'yesno', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_configgroup`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_configgroup` (
  `groupname` varchar(50) NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `displayed` smallint(6) NOT NULL,
  `overridable_by_category` smallint(6) NOT NULL,
  PRIMARY KEY (`groupname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ikona_mt_configgroup`
--

INSERT INTO `ikona_mt_configgroup` (`groupname`, `ordering`, `displayed`, `overridable_by_category`) VALUES
('main', 100, 1, 1),
('category', 250, 1, 1),
('listing', 300, 1, 1),
('search', 400, 1, 1),
('ratingreview', 450, 1, 1),
('feature', 500, 1, 1),
('notify', 600, 0, 0),
('image', 650, 1, 1),
('rss', 675, 1, 1),
('captcha', 690, 1, 0),
('admin', 700, 1, 0),
('linkchecker', 800, 0, 0),
('core', 999, 0, 0),
('email', 999, 0, 0),
('sef', 685, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_customfields`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_customfields` (
  `cf_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_type` varchar(36) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `default_value` varchar(255) NOT NULL,
  `size` smallint(9) NOT NULL,
  `field_elements` text NOT NULL,
  `prefix_text_mod` varchar(255) NOT NULL,
  `suffix_text_mod` varchar(255) NOT NULL,
  `prefix_text_display` varchar(255) NOT NULL,
  `suffix_text_display` varchar(255) NOT NULL,
  `placeholder_text` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL,
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `required_field` tinyint(4) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `hide_caption` tinyint(4) NOT NULL DEFAULT '0',
  `advanced_search` tinyint(4) NOT NULL DEFAULT '0',
  `simple_search` tinyint(4) NOT NULL DEFAULT '0',
  `tag_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filter_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `details_view` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `summary_view` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `search_caption` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cf_id`),
  KEY `published_ordering` (`published`,`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Дамп данных таблицы `ikona_mt_customfields`
--

INSERT INTO `ikona_mt_customfields` (`cf_id`, `field_type`, `caption`, `alias`, `default_value`, `size`, `field_elements`, `prefix_text_mod`, `suffix_text_mod`, `prefix_text_display`, `suffix_text_display`, `placeholder_text`, `cat_id`, `ordering`, `hidden`, `required_field`, `published`, `hide_caption`, `advanced_search`, `simple_search`, `tag_search`, `filter_search`, `details_view`, `summary_view`, `search_caption`, `params`, `iscore`) VALUES
(1, 'corename', 'Название', 'name', '', 50, '', '', '', '', '', '', 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, '', 'maxSummaryChars=200\nmaxDetailsChars=0', 1),
(2, 'coredesc', 'Описание', 'description', '', 250, '', '', '', '', '', '', 0, 2, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, '', 'summaryChars=255\nmaxChars=3000\nstripSummaryTags=1\nconvertSpecialCharsInSummary=1\nstripDetailsTags=1\nparseUrl=1\nstripAllTagsBeforeSave=1\nallowedTags=u,b,i,a,ul,li,pre,blockquote,strong,em\nparseMambots=0\nshowReadMore=0\nwhenReadMore=0\ntxtReadMore=Подробнее...', 1),
(3, 'coreuser', 'Собственник', 'owner', '', 0, '', '', '', '', '', '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 1),
(4, 'coreaddress', 'Адресс', 'address', '', 0, '', '', '', '', '', '', 0, 5, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, '', '', 1),
(5, 'corecity', 'Город', 'city', '', 0, '', '', '', '', '', '', 0, 4, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, '', '', 1),
(6, 'corestate', 'State', 'state', '', 0, '', '', '', '', '', '', 0, 6, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, '', '', 1),
(7, 'corecountry', 'Country', 'country', '', 0, '', '', '', '', '', '', 0, 7, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, '', '', 1),
(8, 'corepostcode', 'Postcode', 'postcode', '', 0, '', '', '', '', '', '', 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '', '', 1),
(9, 'coretelephone', 'Телефон', 'telephone', '', 0, '', '', '', '', '', '', 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, '', 'showLink=0', 1),
(10, 'corefax', 'Fax', 'fax', '', 0, '', '', '', '', '', '', 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '', '', 1),
(11, 'coreemail', 'E-mail', 'email', '', 0, '', '', '', '', '', '', 0, 11, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', '', 1),
(12, 'corewebsite', 'Веб-сайт', 'website', '', 0, '', '', '', '', '', '', 0, 12, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, '', 'openNewWindow=1\nuseMTVisitRedirect=1\ntext=\nmaxUrlLength=60\nclippedSymbol=...\nhideProtocolOutput=1\nshowGo=1\nshowSpider=0', 1),
(13, 'coreprice', 'Цена', 'price', '', 0, '', '', '', '', '', '', 0, 13, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, '', 'displayFree=0', 1),
(14, 'corehits', 'Просмотры', 'hits', '', 0, '', '', '', '', '', '', 0, 14, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', '', 1),
(15, 'corevotes', 'Голоса', 'votes', '', 10, '', '', '', '', '', '', 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 1),
(16, 'corerating', 'Рейтинг', 'rating', '', 0, '', '', '', '', '', '', 0, 16, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', '', 1),
(17, 'corefeatured', 'Особенности', 'featured', '', 0, '', '', '', '', '', '', 0, 17, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', '', 1),
(18, 'corecreated', 'Дата создания', 'created', '', 0, '', '', '', '', '', '', 0, 18, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, '', 'dateFormat=d F Y\ncustomDateFormat=', 1),
(19, 'coremodified', 'Modified', 'modified', '', 0, '', '', '', '', '', '', 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1),
(20, 'corevisited', 'Посещения', 'visited', '', 0, '', '', '', '', '', '', 0, 20, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, '', '', 1),
(21, 'corepublishup', 'Publish up', 'publish-up', '', 0, '', '', '', '', '', '', 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1),
(22, 'corepublishdown', 'Publish down', 'publish-down', '', 0, '', '', '', '', '', '', 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1),
(24, 'mfile', 'File', 'file', '', 30, '', '', '', '', '', '', 0, 26, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, '', '', 0),
(26, 'coremetakey', 'Meta Keys', 'meta-keys', '', 0, '', '', '', '', '', '', 0, 23, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, '', '', 1),
(27, 'coremetadesc', 'Meta Description', 'meta-description', '', 0, '', '', '', '', '', '', 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', 1),
(28, 'mtags', 'Tags', '', '', 40, '', '', '', '', '', '', 0, 25, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, '', '', 0),
(29, 'selectmultiple', 'Тип', 'tip', '', 30, 'Автосалоны|Автостоянки|Автотовары и запчасти|Автоэкспертиза|Автошколы|Курьерские услуги|Мойки|СТО|Спецтехника|Такси|Грузоперевозки|Грузовой автотранспорт|Пассажирский автотранспорт', '', '', '', '', '', 0, 27, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_favourites`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_favourites` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fav_date` datetime NOT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `link_id` (`link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_fields_map`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_fields_map` (
  `cf_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cf_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ikona_mt_fields_map`
--

INSERT INTO `ikona_mt_fields_map` (`cf_id`, `cat_id`) VALUES
(1, 0),
(2, 0),
(2, 112),
(2, 113),
(2, 191),
(3, 0),
(3, 112),
(3, 113),
(3, 191),
(4, 0),
(4, 113),
(4, 191),
(5, 0),
(5, 112),
(5, 113),
(5, 191),
(6, 0),
(6, 113),
(6, 191),
(7, 0),
(7, 113),
(7, 191),
(8, 0),
(8, 113),
(8, 191),
(9, 0),
(9, 112),
(9, 113),
(9, 191),
(10, 0),
(10, 113),
(10, 191),
(11, 0),
(11, 112),
(11, 191),
(12, 0),
(12, 112),
(12, 113),
(12, 191),
(13, 0),
(13, 112),
(13, 191),
(14, 0),
(14, 112),
(14, 113),
(14, 191),
(15, 0),
(15, 112),
(15, 113),
(15, 191),
(16, 0),
(16, 112),
(16, 191),
(17, 0),
(17, 112),
(17, 113),
(17, 191),
(18, 0),
(18, 112),
(18, 113),
(18, 191),
(19, 0),
(19, 113),
(19, 191),
(20, 0),
(20, 112),
(20, 113),
(20, 191),
(21, 0),
(21, 113),
(21, 191),
(22, 0),
(22, 113),
(22, 191),
(24, 0),
(24, 112),
(24, 113),
(24, 191),
(26, 0),
(26, 113),
(26, 191),
(27, 0),
(27, 113),
(27, 191),
(28, 0),
(28, 112),
(28, 113),
(28, 191),
(29, 0),
(29, 112),
(29, 191);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_fieldtypes`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_fieldtypes` (
  `ft_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_type` varchar(36) NOT NULL,
  `ft_caption` varchar(255) NOT NULL,
  `ft_version` varchar(64) NOT NULL,
  `ft_website` varchar(255) NOT NULL,
  `ft_desc` text NOT NULL,
  `use_elements` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `use_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `use_columns` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `use_placeholder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_file` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `taggable` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ft_id`),
  UNIQUE KEY `field_type` (`field_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=82 ;

--
-- Дамп данных таблицы `ikona_mt_fieldtypes`
--

INSERT INTO `ikona_mt_fieldtypes` (`ft_id`, `field_type`, `ft_caption`, `ft_version`, `ft_website`, `ft_desc`, `use_elements`, `use_size`, `use_columns`, `use_placeholder`, `is_file`, `taggable`, `iscore`) VALUES
(1, 'corerating', 'Rating', '', '', '', 0, 0, 0, 0, 0, 0, 1),
(2, 'coreprice', 'Price', '', '', '', 0, 0, 0, 1, 0, 0, 1),
(3, 'coreaddress', 'Address', '', '', '', 0, 1, 0, 1, 0, 0, 1),
(4, 'corecity', 'City', '', '', '', 1, 1, 0, 1, 0, 1, 1),
(5, 'corestate', 'State', '', '', '', 1, 1, 0, 1, 0, 1, 1),
(6, 'corecountry', 'Country', '', '', '', 1, 0, 0, 1, 0, 1, 1),
(7, 'corepostcode', 'Postcode', '', '', '', 1, 1, 0, 1, 0, 1, 1),
(8, 'coretelephone', 'Telephone', '', '', '', 0, 1, 0, 1, 0, 0, 1),
(9, 'corefax', 'Fax', '', '', '', 0, 1, 0, 1, 0, 0, 1),
(10, 'coreemail', 'E-mail', '', '', '', 0, 1, 0, 1, 0, 0, 1),
(11, 'corewebsite', 'Website', '', '', '', 0, 0, 0, 1, 0, 0, 1),
(12, 'corehits', 'Hits', '', '', '', 0, 0, 0, 0, 0, 0, 1),
(13, 'corevotes', 'Votes', '', '', '', 0, 0, 0, 0, 0, 0, 1),
(14, 'corefeatured', 'Featured', '', '', '', 0, 0, 0, 0, 0, 0, 1),
(15, 'coremodified', 'Modified', '', '', '', 0, 0, 0, 0, 0, 0, 1),
(16, 'corevisited', 'Visited', '', '', '', 0, 0, 0, 0, 0, 0, 1),
(17, 'corepublishup', 'Publish Up', '', '', '', 0, 0, 0, 0, 0, 0, 1),
(18, 'corepublishdown', 'Publish Down', '', '', '', 0, 0, 0, 0, 0, 0, 1),
(19, 'coreuser', 'Owner', '', '', '', 0, 0, 0, 0, 0, 0, 1),
(20, 'corename', 'Name', '', '', '', 0, 0, 0, 1, 0, 0, 1),
(21, 'coredesc', 'Description', '', '', '', 0, 0, 0, 1, 0, 0, 1),
(22, 'corecreated', 'Created', '', '', '', 0, 0, 0, 0, 0, 0, 1),
(23, 'mweblink', 'Web link', '', '', '', 1, 1, 1, 1, 0, 0, 0),
(24, 'audioplayer', 'Audio Player', '3.0.0', '', 'Audio Player allows users to upload audio files and play the music from within the listing page. Provides basic playback options such as play, pause and volumne control. Made possible by http://www.1pixelout.net/code/audio-player-wordpress-plugin/.', 0, 0, 0, 0, 1, 0, 0),
(25, 'image', 'Image', '', '', '', 0, 0, 0, 0, 1, 0, 0),
(26, 'mtext', 'Text', '', '', '', 0, 0, 0, 1, 0, 0, 0),
(29, 'youtube', 'Youtube', '', '', '', 0, 1, 0, 0, 0, 0, 0),
(30, 'coremetakey', 'Meta Keys', '', '', '', 0, 0, 0, 1, 0, 1, 1),
(31, 'coremetadesc', 'Meta Description', '', '', '', 0, 0, 0, 1, 0, 0, 1),
(32, 'mtags', 'Tags', '', '', '', 0, 1, 0, 1, 0, 1, 0),
(45, 'videoplayer', 'Video Player', '', '', '', 0, 0, 0, 0, 1, 0, 0),
(46, 'year', 'Year', '', '', '', 0, 0, 0, 0, 0, 0, 0),
(47, 'mdate', 'Date', '', '', '', 0, 0, 0, 0, 0, 0, 0),
(48, 'mfile', 'File', '', '', '', 0, 0, 0, 0, 1, 0, 0),
(50, 'memail', 'E-mail', '', '', '', 0, 1, 0, 1, 0, 0, 0),
(51, 'mnumber', 'Number', '', '', '', 0, 1, 0, 1, 0, 0, 0),
(60, 'mskype', 'Skype', '', '', '', 0, 0, 0, 0, 0, 0, 0),
(61, 'mcheckbox', 'Checkbox', '', '', '', 1, 0, 0, 0, 0, 1, 0),
(70, 'timezone', 'Time Zone', '3.0.0', '', 'Displays list of time zones.', 0, 0, 0, 0, 0, 1, 0),
(73, 'monthyear', 'Month & Year', '3.0.0', '', 'Similar to Date field but for selecting month and year only.', 0, 0, 0, 0, 0, 0, 0),
(74, 'termsandconditions', 'Terms & Conditions', '3.0.0', '', '', 0, 0, 0, 0, 0, 0, 0),
(75, 'associatedlisting', 'Associated Listing', '3.0.0', 'http://www.mosets.com', 'Associated Listing', 0, 0, 0, 0, 0, 0, 0),
(76, 'category', 'Category', '3.0.0', 'http://www.mosets.com/tree', 'Category', 0, 0, 0, 0, 0, 0, 0),
(77, 'directory', 'Directory', '3.0.0', 'http://www.mosets.com/tree', 'Directory', 0, 0, 0, 0, 0, 0, 0),
(78, 'listingid', 'Listing ID', '3.0.0', 'http://www.mosets.com', 'Listing ID', 0, 0, 0, 0, 0, 0, 0),
(79, 'vanityurl', 'Vanity URL', '3.0.0', 'http://www.mosets.com/', '', 0, 1, 0, 1, 0, 1, 0),
(80, 'texteditor', 'Text Editor', '1.0', 'http://www.mosets.com/', '', 0, 0, 0, 1, 0, 0, 0),
(81, 'captcha', 'Captcha', '3.0.0', 'http://www.mosets.com/', '', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_images`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_images` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `ordering` int(10) unsigned NOT NULL,
  PRIMARY KEY (`img_id`),
  KEY `link_id_ordering` (`link_id`,`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Дамп данных таблицы `ikona_mt_images`
--

INSERT INTO `ikona_mt_images` (`img_id`, `link_id`, `filename`, `ordering`) VALUES
(52, 22, '52.png', 2),
(51, 22, '51.jpg', 1),
(53, 23, '53.jpeg', 1),
(54, 21, '54.jpg', 1),
(55, 25, '55.png', 1),
(56, 25, '56.png', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_linkcheck`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_linkcheck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `field` varchar(255) NOT NULL,
  `link_name` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `status_code` smallint(5) unsigned NOT NULL,
  `check_status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_links`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_links` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `link_desc` mediumtext NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `link_hits` int(11) NOT NULL DEFAULT '0',
  `link_votes` int(11) NOT NULL DEFAULT '0',
  `link_rating` decimal(7,6) unsigned NOT NULL DEFAULT '0.000000',
  `link_featured` smallint(6) NOT NULL DEFAULT '0',
  `link_published` tinyint(4) NOT NULL DEFAULT '0',
  `link_approved` int(4) NOT NULL DEFAULT '0',
  `link_template` varchar(255) NOT NULL,
  `attribs` text NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `internal_notes` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `link_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_visited` int(11) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `price` double(9,2) NOT NULL DEFAULT '0.00',
  `show_map` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `lat` float(10,6) NOT NULL COMMENT 'Latitude',
  `lng` float(10,6) NOT NULL COMMENT 'Longitude',
  `zoom` tinyint(3) unsigned NOT NULL COMMENT 'Map''s zoom level',
  PRIMARY KEY (`link_id`),
  KEY `link_rating` (`link_rating`),
  KEY `link_votes` (`link_votes`),
  KEY `link_name` (`link_name`),
  KEY `publishing` (`link_published`,`link_approved`,`publish_up`,`publish_down`),
  KEY `count_listfeatured` (`link_published`,`link_approved`,`link_featured`,`publish_up`,`publish_down`,`link_id`),
  KEY `count_viewowner` (`link_published`,`link_approved`,`user_id`,`publish_up`,`publish_down`),
  KEY `mylisting` (`user_id`,`link_id`),
  FULLTEXT KEY `link_name_desc` (`link_name`,`link_desc`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Дамп данных таблицы `ikona_mt_links`
--

INSERT INTO `ikona_mt_links` (`link_id`, `link_name`, `alias`, `link_desc`, `user_id`, `link_hits`, `link_votes`, `link_rating`, `link_featured`, `link_published`, `link_approved`, `link_template`, `attribs`, `metakey`, `metadesc`, `internal_notes`, `ordering`, `link_created`, `publish_up`, `publish_down`, `link_modified`, `link_visited`, `address`, `city`, `state`, `country`, `postcode`, `telephone`, `fax`, `email`, `website`, `price`, `show_map`, `lat`, `lng`, `zoom`) VALUES
(18, 'Автомобили', 'avtomobili', '', 837, 6, 0, '0.000000', 0, 1, 1, '', 'use_map=\nshow_print=\nshow_recommend=\nshow_rating=\nshow_review=\nshow_visit=\nshow_contact=\nshow_report=\nshow_ownerlisting=', '', '', '', 1, '2014-03-10 16:11:41', '2014-03-10 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', '', '', '050-000-00-00', '', '', '', 0.00, 1, 0.000000, 0.000000, 0),
(19, 'Автодом-Олександрія', 'avtodom-oleksandriya', 'Ул. Героев Сталинграда, 58', 837, 12, 0, '0.000000', 0, 1, 1, '', 'use_map=\nshow_print=\nshow_recommend=\nshow_rating=\nshow_review=\nshow_visit=\nshow_contact=\nshow_report=\nshow_ownerlisting=', '', '', '', 0, '2014-03-10 16:12:40', '2014-03-10 00:00:00', '0000-00-00 00:00:00', '2014-03-10 16:57:02', 0, '', '', '', '', '', '(05235) 3-63-83', '', '', '', 0.00, 1, 0.000000, 0.000000, 0),
(20, 'Престиж', 'prestizh', 'Автостоянка,&nbsp;автомойка.', 837, 6, 0, '0.000000', 0, 1, 1, '', 'use_map=\nshow_print=\nshow_recommend=\nshow_rating=\nshow_review=\nshow_visit=\nshow_contact=\nshow_report=\nshow_ownerlisting=', '', '', '', 2, '2014-03-10 16:50:01', '2014-03-10 16:48:54', '0000-00-00 00:00:00', '2014-03-10 16:50:01', 0, 'Ул. Луначарского, 4а', 'Красноград', '', '', '', '(05235) 4-31-55', '', '', '', 0.00, 1, 0.000000, 0.000000, 0),
(21, 'Мангал', 'mangal', 'Продам мангал красивый дорого', 838, 33, 2, '5.000000', 0, 1, 1, '', 'use_map=\nshow_print=\nshow_recommend=\nshow_rating=\nshow_review=\nshow_visit=\nshow_contact=\nshow_report=\nshow_ownerlisting=', '', '', '', 999, '2014-03-16 19:40:27', '2014-03-16 15:43:59', '0000-00-00 00:00:00', '2014-03-20 17:44:06', 0, '', 'Красноград', '', '', '', '0503077367', '', '9800082@ukr.net', '', 2000.00, 1, 0.000000, 0.000000, 0),
(22, 'вап', 'vap', 'аывп', 838, 25, 0, '0.000000', 0, 1, 1, '', '', '', '', '', 999, '2014-03-17 07:14:55', '2014-03-17 07:14:55', '0000-00-00 00:00:00', '2014-03-17 09:18:50', 0, '', 'ып', '', '', '', 'ыап', '', '9800082@ukr.net', '', 11.11, 1, 0.000000, 0.000000, 0),
(23, 'wty', 'wty', 'ty', 838, 27, 0, '0.000000', 0, 1, 1, '', '', '', '', '', 999, '2014-03-20 16:08:37', '2014-03-20 16:08:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 'rty', '', '', '', 'tryrty', '', '9800082@ukr.net', '', 333.00, 1, 0.000000, 0.000000, 0),
(24, 'Мойка', 'mojka', '', 837, 7, 0, '0.000000', 0, 1, 1, '', '', '', '', '', 999, '2014-03-28 08:27:34', '2014-03-28 08:27:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'новвый', 'Красноград', '', '', '', '000000', '', '', '', 0.00, 1, 0.000000, 0.000000, 0),
(25, 'вап', 'vap', '', 837, 7, 0, '0.000000', 0, 1, 1, '', '', '', '', '', 999, '2014-03-28 08:32:14', '2014-03-28 08:32:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 'Красноград', '', '', '', '', '', '', '', 0.00, 1, 0.000000, 0.000000, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_links_associations`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_links_associations` (
  `link_id1` int(10) unsigned NOT NULL,
  `link_id2` int(10) unsigned NOT NULL,
  KEY `link_id1` (`link_id1`,`link_id2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_log`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_ip` varchar(255) NOT NULL DEFAULT '',
  `log_type` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_id` int(11) NOT NULL DEFAULT '0',
  `rev_id` int(11) NOT NULL DEFAULT '0',
  `value` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `link_id2` (`link_id`,`log_ip`),
  KEY `link_id1` (`link_id`,`user_id`),
  KEY `log_type` (`log_type`),
  KEY `log_ip` (`log_ip`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `ikona_mt_log`
--

INSERT INTO `ikona_mt_log` (`log_id`, `log_ip`, `log_type`, `user_id`, `log_date`, `link_id`, `rev_id`, `value`) VALUES
(3, '127.0.0.1', 'submitnewlisting', 837, '2014-03-10 16:48:54', 20, 0, 0),
(4, '127.0.0.1', 'modifylisting', 837, '2014-03-10 16:57:02', 19, 0, 0),
(7, '37.54.149.79', 'submitnewlisting', 838, '2014-03-16 15:43:59', 21, 0, 0),
(8, '37.54.149.79', 'modifylisting', 838, '2014-03-16 20:05:56', 21, 0, 0),
(9, '94.179.140.58', 'review', 838, '2014-03-17 07:13:33', 21, 2, 0),
(10, '94.179.140.58', 'submitnewlisting', 838, '2014-03-17 07:14:55', 22, 0, 0),
(11, '82.117.234.137', 'modifylisting', 838, '2014-03-17 09:08:44', 22, 0, 0),
(12, '82.117.234.137', 'modifylisting', 838, '2014-03-17 09:08:59', 22, 0, 0),
(13, '82.117.234.137', 'modifylisting', 838, '2014-03-17 09:12:39', 22, 0, 0),
(14, '82.117.234.137', 'modifylisting', 838, '2014-03-17 09:12:39', 22, 0, 0),
(15, '82.117.234.137', 'modifylisting', 838, '2014-03-17 09:17:01', 22, 0, 0),
(16, '82.117.234.137', 'modifylisting', 838, '2014-03-17 09:18:50', 22, 0, 0),
(17, '95.135.148.117', 'submitnewlisting', 838, '2014-03-20 16:08:37', 23, 0, 0),
(18, '95.135.148.117', 'review', 838, '2014-03-20 17:42:58', 23, 3, 0),
(19, '95.135.148.117', 'modifylisting', 838, '2014-03-20 17:44:06', 21, 0, 0),
(20, '95.135.148.117', 'votereview', 838, '2014-03-20 18:21:58', 21, 2, 1),
(21, '127.0.0.1', 'review', 837, '2014-03-22 15:10:31', 21, 4, 0),
(24, '127.0.0.1', 'vote', 837, '2014-03-22 15:17:37', 21, 5, 5),
(23, '127.0.0.1', 'review', 837, '2014-03-22 15:17:37', 21, 5, 0),
(25, '127.0.0.1', 'votereview', 837, '2014-03-22 15:18:16', 21, 5, 1),
(26, '217.12.212.100', 'submitnewlisting', 837, '2014-03-28 08:27:34', 24, 0, 0),
(27, '217.12.212.100', 'submitnewlisting', 837, '2014-03-28 08:32:14', 25, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_relcats`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_relcats` (
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `rel_id` int(11) NOT NULL DEFAULT '0',
  KEY `cat_id` (`cat_id`,`rel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_reports`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `guest_name` varchar(255) NOT NULL,
  `link_id` int(11) NOT NULL,
  `rev_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL,
  `comment` mediumtext NOT NULL,
  `created` datetime NOT NULL,
  `admin_note` mediumtext NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `ikona_mt_reports`
--

INSERT INTO `ikona_mt_reports` (`report_id`, `user_id`, `guest_name`, `link_id`, `rev_id`, `subject`, `comment`, `created`, `admin_note`) VALUES
(1, 837, '', 21, 4, '', 'ыфвыфвфв', '2014-03-22 15:19:45', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_reviews`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_reviews` (
  `rev_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `guest_name` varchar(255) NOT NULL DEFAULT '',
  `rev_title` varchar(255) NOT NULL DEFAULT '',
  `rev_text` text NOT NULL,
  `rev_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rev_approved` tinyint(4) NOT NULL DEFAULT '1',
  `admin_note` mediumtext NOT NULL,
  `vote_helpful` int(10) unsigned NOT NULL DEFAULT '0',
  `vote_total` int(10) unsigned NOT NULL DEFAULT '0',
  `ownersreply_text` text NOT NULL,
  `ownersreply_date` datetime NOT NULL,
  `ownersreply_approved` tinyint(4) NOT NULL DEFAULT '0',
  `ownersreply_admin_note` mediumtext NOT NULL,
  `send_email` tinyint(3) unsigned NOT NULL,
  `email_message` mediumtext NOT NULL,
  PRIMARY KEY (`rev_id`),
  KEY `link_id` (`link_id`,`rev_approved`,`rev_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `ikona_mt_reviews`
--

INSERT INTO `ikona_mt_reviews` (`rev_id`, `link_id`, `user_id`, `guest_name`, `rev_title`, `rev_text`, `rev_date`, `rev_approved`, `admin_note`, `vote_helpful`, `vote_total`, `ownersreply_text`, `ownersreply_date`, `ownersreply_approved`, `ownersreply_admin_note`, `send_email`, `email_message`) VALUES
(2, 21, 838, '', 'А где фотка мангала?', 'А где фотка мангала?', '2014-03-17 07:13:33', 1, '', 1, 1, '', '0000-00-00 00:00:00', 0, '', 0, ''),
(3, 23, 838, '', 'ууу', 'ууу', '2014-03-20 17:42:58', 1, '', 0, 0, '', '0000-00-00 00:00:00', 0, '', 0, ''),
(4, 21, 837, '', 'Комментарий', 'Новый коментарий', '2014-03-22 15:10:31', 1, '', 0, 0, '', '0000-00-00 00:00:00', 0, '', 0, ''),
(5, 21, 837, '', 'Комментарий', 'кцукцук', '2014-03-22 15:17:37', 1, '', 1, 1, '', '0000-00-00 00:00:00', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_mt_templates`
--

CREATE TABLE IF NOT EXISTS `ikona_mt_templates` (
  `tem_id` int(11) NOT NULL AUTO_INCREMENT,
  `tem_name` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`tem_id`),
  UNIQUE KEY `tem_name` (`tem_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `ikona_mt_templates`
--

INSERT INTO `ikona_mt_templates` (`tem_id`, `tem_name`, `params`) VALUES
(1, 'kinabalu', 'numOfColumns=2\nnumOfSubcatsToDisplay=3\nnumOfLinksToDisplay=0\ndisplayIndexCatCount=0\ndisplayIndexListingCount=1\ndisplayCatDesc=0\ndisplayAlphaIndex=0\ndisplayIndexCatImage=1\ndisplaySubcatsCatCount=0\ndisplaySubcatsListingCount=1\nlistingDetailsStyle=1\nskipFirstImage=0\nshowBigImage=1\nlimitDetailsViewToRegistered=0\nlistingNameLink=1\nnumOfColumnsInDetailsView=1\nuseFeaturedHighlight=1\nnumOfListingColumnsInSummaryView=1\nnumOfColumnsInSummaryView=4\nshowActionLinksInSummary=0\nshowImageInSummary=1\nimageDirectionListingSummary=right\nshowFillerImage=1\nonlyShowRootLevelCatInListalpha=0\ndisplayAddressInOneRow=1');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `ikona_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_overrider`
--

CREATE TABLE IF NOT EXISTS `ikona_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_redirect_links`
--

CREATE TABLE IF NOT EXISTS `ikona_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=214 ;

--
-- Дамп данных таблицы `ikona_redirect_links`
--

INSERT INTO `ikona_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://ikona/index.php?Itemid=106', '', 'http://ikona/', '', 3, -2, '2014-01-21 20:38:39', '0000-00-00 00:00:00'),
(2, 'http://ikona/index.php?Itemid=107', '', 'http://ikona/', '', 2, -2, '2014-01-21 20:38:42', '0000-00-00 00:00:00'),
(3, 'http://portal/index.php?Itemid=106', '', 'http://portal/index.php/kontakty', '', 3, -2, '2014-03-02 10:03:36', '0000-00-00 00:00:00'),
(4, 'http://portal/index.php?Itemid=107', '', 'http://portal/', '', 7, -2, '2014-03-03 21:59:20', '0000-00-00 00:00:00'),
(5, 'http://portal/index.php/telefonnyj-spravochnik', '', 'http://portal/', '', 3, -2, '2014-03-04 19:56:45', '0000-00-00 00:00:00'),
(6, 'http://portal/index.php?option=com_horoscope&tmpl=component', '', '', '', 1, -2, '2014-03-09 20:13:12', '0000-00-00 00:00:00'),
(7, 'http://portal/index.php/images/article/animation_256x256.png', '', 'http://portal/index.php/poleznye-stati', '', 4, -2, '2014-03-10 12:45:16', '0000-00-00 00:00:00'),
(8, 'http://portal/index.php/images/transport/one.csv', '', 'http://portal/index.php/raspisanie-avtobusov-i-zh-d-transporta', '', 2, -2, '2014-03-10 14:20:05', '0000-00-00 00:00:00'),
(9, 'http://portal/index.php?option=com_mtree&task=viewlink&link_id=1&Itemid=103', '', 'http://portal/index.php?option=com_mtree&task=listcats&cat_id=83&Itemid=103', '', 1, -2, '2014-03-16 12:41:34', '0000-00-00 00:00:00'),
(10, '/index.php?option=com_content&view=article&id=13&Itemid=119', 'http://tv.i.ua/channels/', '', 'Телепередачи', 0, 1, '2014-03-16 12:47:50', '2014-03-16 13:03:09'),
(11, 'http://portal/index.php?option=com_redirect&view=link&layout=edit&id=10', '', 'http://portal/administrator/index.php?option=com_redirect&view=link&layout=edit&id=10', '', 3, -2, '2014-03-16 12:56:58', '0000-00-00 00:00:00'),
(12, 'http://portal/index.php?option=com_installer&view=update&task=update.ajax', '', 'http://portal/administrator/', '', 2, -2, '2014-03-16 12:57:13', '0000-00-00 00:00:00'),
(13, 'http://portal/index.php?option=com_redirect&task=link.edit&id=10', '', 'http://portal/administrator/index.php?option=com_redirect', '', 5, -2, '2014-03-16 12:58:10', '0000-00-00 00:00:00'),
(14, 'http://portal/index.php?option=com_redirect&task=link.edit&id=12', '', 'http://portal/administrator/index.php?option=com_redirect', '', 2, -2, '2014-03-16 12:59:09', '0000-00-00 00:00:00'),
(15, 'http://portal/index.php?option=com_redirect&task=link.edit&id=14', '', 'http://portal/administrator/index.php?option=com_redirect', '', 1, -2, '2014-03-16 12:59:21', '0000-00-00 00:00:00'),
(16, 'http://krasnograd.net/obyavleniya.html', '', '', '', 7, 0, '2014-03-26 12:10:36', '0000-00-00 00:00:00'),
(17, 'http://krasnograd.net/component/mtree/Культура/графика,-скульптура,-фото.html', '', '', '', 1, 0, '2014-03-26 18:24:35', '0000-00-00 00:00:00'),
(18, 'http://www.krasnograd.net/index.php/component/mtree/avto/prodam/zapchasti', '', '', '', 5, 0, '2014-03-26 23:54:26', '0000-00-00 00:00:00'),
(19, 'http://krasnograd.net/index.php/component/mtree/avto/kuplyu/gruzovye-avto', '', '', '', 7, 0, '2014-03-27 03:23:45', '0000-00-00 00:00:00'),
(20, 'http://krasnograd.net/index.php/component/mtree/avto/prodam/zapchasti', '', '', '', 6, 0, '2014-03-27 03:23:47', '0000-00-00 00:00:00'),
(21, 'http://www.krasnograd.net/novosti/25-the-project/92-vyistavka-kartin-vasiliya-skryinnika-v-krasnogradskom-gorodskom-sovete.html', '', '', '', 1, 0, '2014-03-27 05:43:22', '0000-00-00 00:00:00'),
(22, 'http://krasnograd.net/visti-krasnograd.html', '', '', '', 1, 0, '2014-03-27 08:29:55', '0000-00-00 00:00:00'),
(23, 'http://krasnograd.net/component/mtree/Авто.html', '', '', '', 1, 0, '2014-03-27 14:21:16', '0000-00-00 00:00:00'),
(24, 'http://www.krasnograd.net/fotonews/2-tsentr-krasnograda/detail/17-19422209.html?tmpl=component', '', '', '', 2, 0, '2014-03-27 18:24:23', '0000-00-00 00:00:00'),
(25, 'http://krasnograd.net/component/mtree/Животные-и-растения/ветеринария-.html', '', '', '', 1, 0, '2014-03-27 22:22:38', '0000-00-00 00:00:00'),
(26, 'http://krasnograd.net/novosti/25-the-project/71-ruslana-pisanka-v-krasnograde-za-dvumya-zaytsami.html', '', '', '', 1, 0, '2014-03-28 00:49:47', '0000-00-00 00:00:00'),
(27, 'http://krasnograd.net/fotonews/1-gonki/detail/9-prohvat9.html?tmpl=component', '', '', '', 1, 0, '2014-03-28 02:18:41', '0000-00-00 00:00:00'),
(28, 'http://www.krasnograd.net/novosti/35-novosti-administratsii/172-den-otkryityih-dverey-v-tehnikume-krasnograd.html', '', '', '', 2, 0, '2014-03-28 13:15:48', '0000-00-00 00:00:00'),
(29, 'http://krasnograd.net/component/mtree/Безопасность/информационная-безопасность.html', '', '', '', 1, 0, '2014-03-28 14:35:24', '0000-00-00 00:00:00'),
(30, 'http://www.krasnograd.net/firms/Образование/школы,-гимназии,-лицеи/КРАСНОГРАДСКИЙ-МЕДИЦИНСКИЙ-КОЛЛЕДЖ/review.html', '', '', '', 2, 0, '2014-03-28 15:18:55', '0000-00-00 00:00:00'),
(31, 'http://krasnograd.net/obyavleniya-krasnograda.html', '', '', '', 2, 0, '2014-03-28 19:23:25', '0000-00-00 00:00:00'),
(32, 'http://www.krasnograd.net/index.php/component/mtree/avto/kuplyu/gruzovye-avto', '', '', '', 1, 0, '2014-03-29 08:01:36', '0000-00-00 00:00:00'),
(33, 'http://krasnograd.net/component/mtree/Авто/авторемонт,-СТО.html', '', '', '', 1, 0, '2014-03-29 18:13:30', '0000-00-00 00:00:00'),
(34, 'http://krasnograd.net/zaregistrirovatsya.html', '', '', '', 2, 0, '2014-03-30 10:46:05', '0000-00-00 00:00:00'),
(35, 'http://krasnograd.net/novosti/25-the-project/63-pozdravlyaem-rabotnikov-statistiki-krasnogradskogo-rayona.html', '', '', '', 1, 0, '2014-03-30 15:01:07', '0000-00-00 00:00:00'),
(36, 'http://krasnograd.net/firms/Сфера-услуг.html', '', '', '', 1, 0, '2014-03-30 17:16:00', '0000-00-00 00:00:00'),
(37, 'http://krasnograd.net/component/mtree/Авто/автошколы.html', '', '', '', 1, 0, '2014-03-30 20:21:47', '0000-00-00 00:00:00'),
(38, 'http://krasnograd.net/novosti/200-dlya-postupayuschih-v-medkolledzh.html', '', '', '', 1, 0, '2014-03-31 00:18:48', '0000-00-00 00:00:00'),
(39, 'http://krasnograd.net/component/mtree/Безопасность.html', '', '', '', 1, 0, '2014-03-31 04:29:07', '0000-00-00 00:00:00'),
(40, 'http://krasnograd.net/novosti/25-the-project/55-krasnograd-modernizirujut-k-evro-2012.html', '', '', '', 1, 0, '2014-03-31 05:08:25', '0000-00-00 00:00:00'),
(41, 'http://krasnograd.net/novosti/25-the-project/52-dabavit-firmu.html', '', '', '', 1, 0, '2014-03-31 08:21:04', '0000-00-00 00:00:00'),
(42, 'http://krasnograd.net/novosti.html', '', '', '', 2, 0, '2014-03-31 11:57:01', '0000-00-00 00:00:00'),
(43, 'http://krasnograd.net/fotonews/2-tsentr-krasnograda/detail/52-su-7bkrasnograd2.html?tmpl=component', '', '', '', 1, 0, '2014-03-31 15:44:26', '0000-00-00 00:00:00'),
(44, 'http://krasnograd.net/component/mtree/Безопасность/охранные-системы.html', '', '', '', 1, 0, '2014-03-31 18:26:33', '0000-00-00 00:00:00'),
(45, 'http://krasnograd.net/fotonews/1-gonki/detail/6-prohvat6.html?phocaslideshow=0&tmpl=component', '', '', '', 1, 0, '2014-03-31 20:47:01', '0000-00-00 00:00:00'),
(46, 'http://krasnograd.net/novosti/25-the-project/56-kto-na-lgotnyh-uslovijah-mozhet-vyjti-na-pensiju.html', '', '', '', 1, 0, '2014-03-31 22:03:49', '0000-00-00 00:00:00'),
(47, 'http://www.krasnograd.net/component/mtree/Авто/тюнинг--/Add_Listing.html', '', '', '', 1, 0, '2014-04-01 00:25:10', '0000-00-00 00:00:00'),
(48, 'http://krasnograd.net/component/mtree/Красота-и-здоровье/косметика,-парфюмерия,-бижутерия.html', '', '', '', 1, 0, '2014-04-01 12:26:40', '0000-00-00 00:00:00'),
(49, 'http://krasnograd.net/firms.html', '', '', '', 2, 0, '2014-04-01 18:12:14', '0000-00-00 00:00:00'),
(50, 'http://krasnograd.net/component/content/article/31-general/176-raspisanie-prigorodnyih-poezdov-po-stantsii-krasnograd.html', '', '', '', 1, 0, '2014-04-01 18:12:15', '0000-00-00 00:00:00'),
(51, 'http://krasnograd.net/kontakty.html', '', '', '', 1, 0, '2014-04-01 18:12:15', '0000-00-00 00:00:00'),
(52, 'http://krasnograd.net/afisha-krasnograd.html', '', '', '', 1, 0, '2014-04-01 18:20:42', '0000-00-00 00:00:00'),
(53, 'http://krasnograd.net/component/mtree/Реклама,-рекламные-услуги.html', '', '', '', 1, 0, '2014-04-01 18:29:04', '0000-00-00 00:00:00'),
(54, 'http://krasnograd.net/fotonews.html', '', '', '', 1, 0, '2014-04-01 18:52:02', '0000-00-00 00:00:00'),
(55, 'http://www.krasnograd.net/firms/Медицина/нетрадиционная-медицина/Add_Listing.html', '', '', '', 1, 0, '2014-04-02 02:37:31', '0000-00-00 00:00:00'),
(56, 'http://krasnograd.net/firms.html?link_id=30&rating=3', '', '', '', 2, 0, '2014-04-02 03:27:07', '0000-00-00 00:00:00'),
(57, 'http://krasnograd.net/firms/Медицина/аптеки.html', '', '', '', 1, 0, '2014-04-02 07:27:19', '0000-00-00 00:00:00'),
(58, 'http://www.krasnograd.net/component/mtree/List_Alpha/r/1.html', '', '', '', 1, 0, '2014-04-02 19:26:25', '0000-00-00 00:00:00'),
(59, 'http://krasnograd.net/novosti/25-the-project/64-den-mestnogo-samoupravleniya-v-krasnograde.html', '', '', '', 1, 0, '2014-04-02 20:36:50', '0000-00-00 00:00:00'),
(60, 'http://krasnograd.net/component/mtree/Культура.html', '', '', '', 1, 0, '2014-04-02 22:15:34', '0000-00-00 00:00:00'),
(61, 'http://krasnograd.net/fotonews/1-gonki/detail/3-prohvat3.html?tmpl=component', '', '', '', 1, 0, '2014-04-03 00:06:45', '0000-00-00 00:00:00'),
(62, 'http://www.krasnograd.net/component/mtree/Красота-и-здоровье/салоны-красоты,-парикмахерские/ДЖУНГЛИ,-салон-красоты/review.html', '', '', '', 1, 0, '2014-04-03 01:23:55', '0000-00-00 00:00:00'),
(63, 'http://www.krasnograd.net/component/mtree/Мебель/Мебель/Фабрика-комфорта-"Комфортна-хата"/visit.html', '', '', '', 1, 0, '2014-04-03 05:59:43', '0000-00-00 00:00:00'),
(64, 'http://krasnograd.net/fotonews/4-vyistavka-kartin-vasiliya-skryinnika-v-krasnogradskom-gorodskom-sovete/detail/35-vasiliyskryinnik13.html?phocaslideshow=1&tmpl=component', '', '', '', 1, 0, '2014-04-03 07:39:13', '0000-00-00 00:00:00'),
(65, 'http://krasnograd.net/fotonews/4-vyistavka-kartin-vasiliya-skryinnika-v-krasnogradskom-gorodskom-sovete/detail/33-vasiliyskryinnik11.html?phocadownload=2&tmpl=component', '', '', '', 1, 0, '2014-04-03 10:16:02', '0000-00-00 00:00:00'),
(66, 'http://krasnograd.net/firms/Медицина/аптеки/АПТЕЧНЫЙ-ПУНКТ-ул-2E-Ленинградская,-91-АО-"Фарминтермед"/details.html', '', '', '', 1, 0, '2014-04-03 10:20:17', '0000-00-00 00:00:00'),
(67, 'http://www.krasnograd.net/component/mtree/Строительство/кровельные-материалы.html', '', '', '', 1, 0, '2014-04-03 10:22:03', '0000-00-00 00:00:00'),
(68, 'http://krasnograd.net/fotonews/category/1-gonki.html', '', '', '', 1, 0, '2014-04-03 11:51:37', '0000-00-00 00:00:00'),
(69, 'http://krasnograd.net/firms/Медицина/аптеки/АПТЕЧНЫЙ-ПУНКТ-ул-2E-Ленинградская,-91-АО-"Фарминтермед"/review.html', '', '', '', 1, 0, '2014-04-03 11:55:15', '0000-00-00 00:00:00'),
(70, 'http://krasnograd.net/component/mtree/Мебель.html', '', '', '', 1, 0, '2014-04-03 12:19:23', '0000-00-00 00:00:00'),
(71, 'http://www.krasnograd.net/component/mtree/Реклама,-рекламные-услуги/Студия-рекламных-решений-"Пилот"/details.html', '', '', '', 1, 0, '2014-04-03 13:16:47', '0000-00-00 00:00:00'),
(72, 'http://krasnograd.net/fotonews/category/2-tsentr-krasnograda.html', '', '', '', 1, 0, '2014-04-03 13:27:37', '0000-00-00 00:00:00'),
(73, 'http://www.krasnograd.net/component/mtree/Медицина/медицинские-услуги,-клиники/КРАСНОГРАДСКАЯ-СТАНЦИЯ-СКОРОЙ-МЕДИЦИНСКОЙ-ПОМОЩИ/details.html', '', '', '', 1, 0, '2014-04-03 13:32:24', '0000-00-00 00:00:00'),
(74, 'http://krasnograd.net/component/content/article/1-latest-news/62-aval-krasnograd.html', '', '', '', 1, 0, '2014-04-03 13:34:24', '0000-00-00 00:00:00'),
(75, 'http://www.krasnograd.net/firms/Образование.html', '', '', '', 1, 0, '2014-04-03 13:49:01', '0000-00-00 00:00:00'),
(76, 'http://krasnograd.net/firms.html?link_id=56&rating=4', '', '', '', 1, 0, '2014-04-03 14:01:44', '0000-00-00 00:00:00'),
(77, 'http://krasnograd.net/firms/Авто/мойки--/Add_Listing.html', '', '', '', 1, 0, '2014-04-03 14:07:29', '0000-00-00 00:00:00'),
(78, 'http://krasnograd.net/firms/Образование/частные-школы,-дошкольные-учреждения/КРАСНОГРАДСКИЙ-ДЕТСКИЙ-САД-№-17/details.html', '', '', '', 1, 0, '2014-04-03 15:35:32', '0000-00-00 00:00:00'),
(79, 'http://www.krasnograd.net/component/mtree/List_Alpha/c/1.html', '', '', '', 1, 0, '2014-04-03 15:37:25', '0000-00-00 00:00:00'),
(80, 'http://www.krasnograd.net/component/mtree/Животные-и-растения/Add_Listing.html', '', '', '', 1, 0, '2014-04-03 19:15:55', '0000-00-00 00:00:00'),
(81, 'http://krasnograd.net/novosti/25-the-project/65-krasnograd-v-borbe-so-spidom.html', '', '', '', 2, 0, '2014-04-03 19:44:54', '0000-00-00 00:00:00'),
(82, 'http://krasnograd.net/firms.html?link_id=52&rating=5', '', '', '', 1, 0, '2014-04-03 20:23:42', '0000-00-00 00:00:00'),
(83, 'http://www.krasnograd.net/index.php?option=com_xmap&sitemap=1&view=xml', '', '', '', 1, 0, '2014-04-03 21:05:59', '0000-00-00 00:00:00'),
(84, 'http://krasnograd.net/firms/Красота-и-здоровье/салоны-красоты,-парикмахерские/ДЖУНГЛИ,-салон-красоты/review.html', '', '', '', 1, 0, '2014-04-03 21:38:24', '0000-00-00 00:00:00'),
(85, 'http://www.krasnograd.net/firms/Животные-и-растения.html', '', '', '', 1, 0, '2014-04-03 21:44:01', '0000-00-00 00:00:00'),
(86, 'http://www.krasnograd.net/component/mtree/Красота-и-здоровье.html', '', '', '', 1, 0, '2014-04-03 21:47:01', '0000-00-00 00:00:00'),
(87, 'http://www.krasnograd.net/component/mtree/Государство/Отдел-статистики-в-Красноградском-районе/details.html', '', '', '', 1, 0, '2014-04-04 00:47:40', '0000-00-00 00:00:00'),
(88, 'http://krasnograd.net/firms/Красота-и-здоровье/салоны-красоты,-парикмахерские/СКАРЛЕТТ/details.html', '', '', '', 1, 0, '2014-04-04 00:54:49', '0000-00-00 00:00:00'),
(89, 'http://krasnograd.net/firms/Авто/авторемонт,-СТО/КРАСНОГРАД%2DАВТО,-автосалон/review.html', '', '', '', 1, 0, '2014-04-04 02:26:46', '0000-00-00 00:00:00'),
(90, 'http://www.krasnograd.net/firms/Медицина.html', '', '', '', 1, 0, '2014-04-04 02:54:06', '0000-00-00 00:00:00'),
(91, 'http://krasnograd.net/firms/Авто/тюнинг--.html', '', '', '', 1, 0, '2014-04-04 03:46:24', '0000-00-00 00:00:00'),
(92, 'http://www.krasnograd.net/component/mtree/Красота-и-здоровье/салоны-красоты,-парикмахерские/ДЖУНГЛИ,-салон-красоты/details.html', '', '', '', 1, 0, '2014-04-04 03:53:34', '0000-00-00 00:00:00'),
(93, 'http://krasnograd.net/firms/Мебель/Мебель.html', '', '', '', 1, 0, '2014-04-04 03:57:56', '0000-00-00 00:00:00'),
(94, 'http://www.krasnograd.net/firms/Промышленность/материалы,-сырье,-вторсырье/БУРОВОЕ-УПРАВЛЕНИЕ-"УКРБУРГАЗ",-фил-2E-дочерней-компании-"Укргаздобыча"-НАК-"Нафтогаз-України"/details.html', '', '', '', 1, 0, '2014-04-04 03:59:48', '0000-00-00 00:00:00'),
(95, 'http://krasnograd.net/fotonews/4-vyistavka-kartin-vasiliya-skryinnika-v-krasnogradskom-gorodskom-sovete/comment/33-vasiliyskryinnik11.html?tmpl=component', '', '', '', 1, 0, '2014-04-04 04:01:53', '0000-00-00 00:00:00'),
(96, 'http://krasnograd.net/component/mtree/Животные-и-растения/зоомагазины.html', '', '', '', 1, 0, '2014-04-04 04:19:00', '0000-00-00 00:00:00'),
(97, 'http://krasnograd.net/firms/Государство/Архивный-отдел/report.html', '', '', '', 1, 0, '2014-04-04 05:35:12', '0000-00-00 00:00:00'),
(98, 'http://www.krasnograd.net/novosti/25-the-project/217-kak-razgovarivat-s-podchinennyimi.html', '', '', '', 1, 0, '2014-04-04 06:50:09', '0000-00-00 00:00:00'),
(99, 'http://krasnograd.net/firms/СМИ/телевидение/Add_Listing.html', '', '', '', 1, 0, '2014-04-04 07:01:08', '0000-00-00 00:00:00'),
(100, 'http://krasnograd.net/firms.html?link_id=33&rating=4', '', '', '', 1, 0, '2014-04-04 07:07:56', '0000-00-00 00:00:00'),
(101, 'http://krasnograd.net/ssyilki-krasnograda.html', '', '', '', 2, 0, '2014-04-04 07:28:48', '0000-00-00 00:00:00'),
(102, 'http://krasnograd.net/fotonews/2-tsentr-krasnograda/detail/17-19422209.html?tmpl=component', '', '', '', 1, 0, '2014-04-04 07:29:14', '0000-00-00 00:00:00'),
(103, 'http://krasnograd.net/firms/Медицина.html', '', '', '', 1, 0, '2014-04-04 07:29:15', '0000-00-00 00:00:00'),
(104, 'http://krasnograd.net/firms/Культура.html', '', '', '', 1, 0, '2014-04-04 07:29:15', '0000-00-00 00:00:00'),
(105, 'http://krasnograd.net/raspisanie-transporta.html', '', '', '', 3, 0, '2014-04-04 08:14:07', '0000-00-00 00:00:00'),
(106, 'http://krasnograd.net/firms/Культура/Дом-культуры-ДК/КРАСНОГРАДСКИЙ-РАЙОННЫЙ-ДОМ-КУЛЬТУРЫ/review.html', '', '', '', 1, 0, '2014-04-04 08:31:32', '0000-00-00 00:00:00'),
(107, 'http://krasnograd.net/firms/Авто/АЗС,-ГСМ/Add_Listing.html', '', '', '', 1, 0, '2014-04-04 08:35:28', '0000-00-00 00:00:00'),
(108, 'http://www.krasnograd.net/firms/List_Alpha/n/1.html', '', '', '', 1, 0, '2014-04-04 10:16:40', '0000-00-00 00:00:00'),
(109, 'http://www.krasnograd.net/firms/Рестораны,-кафе.html', '', '', '', 1, 0, '2014-04-04 11:43:06', '0000-00-00 00:00:00'),
(110, 'http://krasnograd.net/fotonews/4-vyistavka-kartin-vasiliya-skryinnika-v-krasnogradskom-gorodskom-sovete/detail/34-vasiliyskryinnik12.html?phocadownload=2&tmpl=component', '', '', '', 1, 0, '2014-04-04 11:45:37', '0000-00-00 00:00:00'),
(111, 'http://krasnograd.net/novosti/25-the-project/57-v-krasnograde-otkryilsya-novyiy-myasnoy-magazin.html', '', '', '', 1, 0, '2014-04-04 12:05:46', '0000-00-00 00:00:00'),
(112, 'http://krasnograd.net/firms.html?link_id=57&rating=3', '', '', '', 1, 0, '2014-04-04 13:25:11', '0000-00-00 00:00:00'),
(113, 'http://www.krasnograd.net/component/mtree/Транспорт.html', '', '', '', 1, 0, '2014-04-04 13:26:39', '0000-00-00 00:00:00'),
(114, 'http://krasnograd.net/fotonews/1-gonki/detail/4-prohvat4.html?phocaslideshow=0&tmpl=component', '', '', '', 1, 0, '2014-04-04 14:49:51', '0000-00-00 00:00:00'),
(115, 'http://www.krasnograd.net/component/mtree/Строительство/сантехника,-кафель/Add_Listing.html', '', '', '', 1, 0, '2014-04-04 14:52:19', '0000-00-00 00:00:00'),
(116, 'http://krasnograd.net/fotonews/1-gonki/detail/1-prohvat1.html?phocaslideshow=1&tmpl=component', '', '', '', 1, 0, '2014-04-04 14:54:31', '0000-00-00 00:00:00'),
(117, 'http://krasnograd.net/component/registration/?task=lostPassword', '', '', '', 1, 0, '2014-04-04 16:22:10', '0000-00-00 00:00:00'),
(118, 'http://krasnograd.net/firms/List_Alpha/j/1.html', '', '', '', 1, 0, '2014-04-04 16:24:00', '0000-00-00 00:00:00'),
(119, 'http://krasnograd.net/component/content/article/1-latest-news/191-novyiy-logotip-studii-pilot.html', '', '', '', 1, 0, '2014-04-04 16:27:55', '0000-00-00 00:00:00'),
(120, 'http://www.krasnograd.net/component/mtree/Сфера-услуг/свадебные-салоны,-услуги.html', '', '', '', 1, 0, '2014-04-04 17:53:03', '0000-00-00 00:00:00'),
(121, 'http://krasnograd.net/fotonews/4-vyistavka-kartin-vasiliya-skryinnika-v-krasnogradskom-gorodskom-sovete/detail/27-vasiliyskryinnik5.html?tmpl=component', '', '', '', 1, 0, '2014-04-04 17:55:43', '0000-00-00 00:00:00'),
(122, 'http://krasnograd.net/firms.html?link_id=52&rating=4', '', '', '', 1, 0, '2014-04-04 17:58:44', '0000-00-00 00:00:00'),
(123, 'http://www.krasnograd.net/component/mtree/Медицина/медицинские-услуги,-клиники/КРАСНОГРАДСКАЯ-ПОЛИКЛИНИКА/review.html', '', '', '', 1, 0, '2014-04-04 18:06:30', '0000-00-00 00:00:00'),
(124, 'http://krasnograd.net/firms/List_Alpha/p/1.html', '', '', '', 1, 0, '2014-04-04 19:37:21', '0000-00-00 00:00:00'),
(125, 'http://krasnograd.net/firms/Государство/Отдел-культуры-и-туризма/recommend.html', '', '', '', 1, 0, '2014-04-04 19:39:08', '0000-00-00 00:00:00'),
(126, 'http://www.krasnograd.net/component/mtree/Образование/школы,-гимназии,-лицеи/КОБЗОВСКАЯ-ОБЩЕОБРАЗОВАТЕЛЬНАЯ-ШКОЛА-I-%2D-III-СТУПЕНЕЙ/details.html', '', '', '', 1, 0, '2014-04-04 19:42:42', '0000-00-00 00:00:00'),
(127, 'http://www.krasnograd.net/component/mtree/Образование/школы,-гимназии,-лицеи/Add_Listing.html', '', '', '', 1, 0, '2014-04-04 19:44:16', '0000-00-00 00:00:00'),
(128, 'http://www.krasnograd.net/firms/Торговая-сеть.html', '', '', '', 1, 0, '2014-04-04 21:01:53', '0000-00-00 00:00:00'),
(129, 'http://krasnograd.net/component/content/article/1-latest-news/184-kak-sostavit-effektivnoe-reklamnoe-obyavlenie.html', '', '', '', 1, 0, '2014-04-04 21:05:32', '0000-00-00 00:00:00'),
(130, 'http://krasnograd.net/firms/СМИ/радио.html', '', '', '', 1, 0, '2014-04-04 21:06:53', '0000-00-00 00:00:00'),
(131, 'http://www.krasnograd.net/component/mtree/Авто/салоны,-магазины.html', '', '', '', 1, 0, '2014-04-04 21:08:29', '0000-00-00 00:00:00'),
(132, 'http://krasnograd.net/firms/Культура/музыка/Add_Listing.html', '', '', '', 1, 0, '2014-04-04 21:10:24', '0000-00-00 00:00:00'),
(133, 'http://www.krasnograd.net/novosti/25-the-project/182-interesnaya-ssyilka-o-gorode.html', '', '', '', 1, 0, '2014-04-04 21:13:23', '0000-00-00 00:00:00'),
(134, 'http://krasnograd.net/firms/Медицина/медицинские-услуги,-клиники/КРАСНОГРАДСКАЯ-ПОЛИКЛИНИКА/review.html', '', '', '', 1, 0, '2014-04-04 22:26:54', '0000-00-00 00:00:00'),
(135, 'http://krasnograd.net/fotonews/4-vyistavka-kartin-vasiliya-skryinnika-v-krasnogradskom-gorodskom-sovete/detail/38-vasiliyskryinnik16.html?phocadownload=2&tmpl=component', '', '', '', 1, 0, '2014-04-04 22:31:47', '0000-00-00 00:00:00'),
(136, 'http://www.krasnograd.net/component/mtree/Торговая-сеть.html', '', '', '', 1, 0, '2014-04-04 22:41:03', '0000-00-00 00:00:00'),
(137, 'http://www.krasnograd.net/component/mtree/Образование/школы,-гимназии,-лицеи/КРАСНОГРАДСКАЯ-ДЕТСКАЯ-ШКОЛА-ЭСТЕТИЧЕСКОГО-ВОСПИТАНИЯ/details.html', '', '', '', 1, 0, '2014-04-04 22:44:03', '0000-00-00 00:00:00'),
(138, 'http://krasnograd.net/firms.html?link_id=5&rating=4', '', '', '', 1, 0, '2014-04-05 00:15:58', '0000-00-00 00:00:00'),
(139, 'http://www.krasnograd.net/firms/Промышленность.html', '', '', '', 1, 0, '2014-04-05 00:18:17', '0000-00-00 00:00:00'),
(140, 'http://krasnograd.net/firms/Красота-и-здоровье/салоны-красоты,-парикмахерские/ДЖУНГЛИ,-салон-красоты/details.html', '', '', '', 1, 0, '2014-04-05 00:20:40', '0000-00-00 00:00:00'),
(141, 'http://www.krasnograd.net/firms/List_Alpha/l/1.html', '', '', '', 1, 0, '2014-04-05 00:23:22', '0000-00-00 00:00:00'),
(142, 'http://krasnograd.net/firms/Сфера-услуг/фото,-видеоуслуги,-копицентры/ФОТОГРАФ-и-видеооператор-на-свадьбу-(066)128%2D75%2D63/details.html', '', '', '', 1, 0, '2014-04-05 01:45:24', '0000-00-00 00:00:00'),
(143, 'http://krasnograd.net/firms/Рестораны,-кафе.html', '', '', '', 1, 0, '2014-04-05 03:22:20', '0000-00-00 00:00:00'),
(144, 'http://krasnograd.net/firms.html?link_id=57&rating=2', '', '', '', 1, 0, '2014-04-05 03:24:32', '0000-00-00 00:00:00'),
(145, 'http://www.krasnograd.net/component/mtree/Общественные-организации.html', '', '', '', 1, 0, '2014-04-05 03:31:53', '0000-00-00 00:00:00'),
(146, 'http://www.krasnograd.net/novosti/31-general/179-raspisanie-avtobusov-po-stantsii-krasnograd.html', '', '', '', 1, 0, '2014-04-05 05:30:18', '0000-00-00 00:00:00'),
(147, 'http://krasnograd.net/firms.html?link_id=6&rating=4', '', '', '', 1, 0, '2014-04-05 06:12:41', '0000-00-00 00:00:00'),
(148, 'http://www.krasnograd.net/component/mtree/Мебель/Мебель/Фабрика-комфорта-"Комфортна-хата"/review.html', '', '', '', 1, 0, '2014-04-05 06:13:14', '0000-00-00 00:00:00'),
(149, 'http://krasnograd.net/firms.html?link_id=68&rating=1', '', '', '', 1, 0, '2014-04-05 06:24:32', '0000-00-00 00:00:00'),
(150, 'http://krasnograd.net/component/mtree/Безопасность/охранные,-детективные-услуги.html', '', '', '', 1, 0, '2014-04-05 06:29:48', '0000-00-00 00:00:00'),
(151, 'http://krasnograd.net/firms/Транспорт/такси/Add_Listing.html', '', '', '', 1, 0, '2014-04-05 06:30:39', '0000-00-00 00:00:00'),
(152, 'http://krasnograd.net/firms/Add_Listing.html', '', '', '', 1, 0, '2014-04-05 06:35:59', '0000-00-00 00:00:00'),
(153, 'http://krasnograd.net/firms.html?link_id=58&rating=2', '', '', '', 1, 0, '2014-04-05 08:06:48', '0000-00-00 00:00:00'),
(154, 'http://www.krasnograd.net/component/mtree/Связь,-телекоммуникации.html', '', '', '', 1, 0, '2014-04-05 08:09:18', '0000-00-00 00:00:00'),
(155, 'http://www.krasnograd.net/component/mtree/Авто/автозапчасти.html', '', '', '', 1, 0, '2014-04-05 09:35:34', '0000-00-00 00:00:00'),
(156, 'http://krasnograd.net/firms/Промышленность/пищевая-промышленность/КРАСНОГРАДСКИЙ-МАСЛОСЫРЗАВОД,-ОАО/details.html', '', '', '', 1, 0, '2014-04-05 09:37:44', '0000-00-00 00:00:00'),
(157, 'http://krasnograd.net/firms/Сфера-услуг/Add_Listing.html', '', '', '', 1, 0, '2014-04-05 09:39:57', '0000-00-00 00:00:00'),
(158, 'http://krasnograd.net/novosti/25-the-project/48-firma-krasnograd.html', '', '', '', 1, 0, '2014-04-05 09:43:51', '0000-00-00 00:00:00'),
(159, 'http://www.krasnograd.net/novosti/25-the-project/215-vasya-oblomov-s-chego-nachinaetsya-rodina.html', '', '', '', 1, 0, '2014-04-05 11:47:21', '0000-00-00 00:00:00'),
(160, 'http://www.krasnograd.net/firms/Государство/Add_Listing.html', '', '', '', 1, 0, '2014-04-05 12:27:34', '0000-00-00 00:00:00'),
(161, 'http://krasnograd.net/novosti/25-the-project/46-krasnograd-1411.html', '', '', '', 2, 0, '2014-04-05 13:45:36', '0000-00-00 00:00:00'),
(162, 'http://krasnograd.net/wp-login.php', '', '', '', 1, 0, '2014-04-05 16:35:09', '0000-00-00 00:00:00'),
(163, 'http://www.krasnograd.net/component/mtree/Государство.html', '', '', '', 1, 0, '2014-04-05 18:45:05', '0000-00-00 00:00:00'),
(164, 'http://krasnograd.net/novosti/25-the-project/169-yuridicheskaya-konsultatsiya-krasnogradskogo-rayona.html', '', '', '', 1, 0, '2014-04-05 19:08:44', '0000-00-00 00:00:00'),
(165, 'http://www.krasnograd.net/firms/List_Alpha/z/1.html', '', '', '', 1, 0, '2014-04-05 20:17:14', '0000-00-00 00:00:00'),
(166, 'http://krasnograd.net/fotonews/1-gonki/detail/4-prohvat4.html?tmpl=component', '', '', '', 1, 0, '2014-04-05 20:17:46', '0000-00-00 00:00:00'),
(167, 'http://krasnograd.net/firms/Сельское-хозяйство/Add_Listing.html', '', '', '', 1, 0, '2014-04-05 21:45:59', '0000-00-00 00:00:00'),
(168, 'http://www.krasnograd.net/component/mtree/СМИ.html', '', '', '', 1, 0, '2014-04-06 05:35:06', '0000-00-00 00:00:00'),
(169, 'http://krasnograd.net/novosti/25-the-project/66-novosti-krasnograda-ot-tsentra.html', '', '', '', 1, 0, '2014-04-06 05:37:20', '0000-00-00 00:00:00'),
(170, 'http://krasnograd.net/obyavleniya.html?page=show_user', '', '', '', 1, 0, '2014-04-06 06:24:36', '0000-00-00 00:00:00'),
(171, 'http://www.krasnograd.net/component/mtree/Культура.html', '', '', '', 1, 0, '2014-04-06 07:07:27', '0000-00-00 00:00:00'),
(172, 'http://krasnograd.net/component/mtree/Культура/Дом-культуры-ДК.html', '', '', '', 1, 0, '2014-04-06 14:38:44', '0000-00-00 00:00:00'),
(173, 'http://www.krasnograd.net/component/mtree/Медицина/аптеки/АПТЕЧНЫЙ-КИОСК-ул-2E-Полтавская-71--АО-"Фарминтермед"/review.html', '', '', '', 1, 0, '2014-04-06 19:24:56', '0000-00-00 00:00:00'),
(174, 'http://krasnograd.net/firms.html?link_id=31&rating=2', '', '', '', 1, 0, '2014-04-06 20:57:24', '0000-00-00 00:00:00'),
(175, 'http://www.krasnograd.net/component/mtree/Сельское-хозяйство.html', '', '', '', 1, 0, '2014-04-06 20:57:48', '0000-00-00 00:00:00'),
(176, 'http://www.krasnograd.net/novosti/25-the-project/219-2012-10-09-08-12-37.html', '', '', '', 1, 0, '2014-04-06 21:29:48', '0000-00-00 00:00:00'),
(177, 'http://krasnograd.net/novosti/25-the-project/59-agrariyi-krasnogradschini-vidznachili-profesiyne-svyato.html', '', '', '', 1, 0, '2014-04-06 22:11:52', '0000-00-00 00:00:00'),
(178, 'http://krasnograd.net/component/mtree/Медицина.html', '', '', '', 1, 0, '2014-04-07 02:32:43', '0000-00-00 00:00:00'),
(179, 'http://www.krasnograd.net/component/mtree/Животные-и-растения/ветеринария-/КРАСНОГРАДСКАЯ-РАЙОННАЯ-ЛЕЧЕБНИЦА-ВЕТЕРИНАРНОЙ-МЕДИЦИНЫ/review.html', '', '', '', 1, 0, '2014-04-07 03:06:43', '0000-00-00 00:00:00'),
(180, 'http://www.krasnograd.net/component/mtree/Авто/автошколы.html', '', '', '', 1, 0, '2014-04-07 04:40:01', '0000-00-00 00:00:00'),
(181, 'http://www.krasnograd.net/firms/List_Alpha/v/1.html', '', '', '', 1, 0, '2014-04-07 04:40:28', '0000-00-00 00:00:00'),
(182, 'http://www.krasnograd.net/component/mtree/Красота-и-здоровье/салоны-красоты,-парикмахерские/БЕСКИД/review.html', '', '', '', 1, 0, '2014-04-07 06:12:49', '0000-00-00 00:00:00'),
(183, 'http://www.krasnograd.net/component/mtree/СМИ/газеты/ВIСТI-КРАСНОГРАДЩИНИ,-ред-2E-газ-2E/review.html', '', '', '', 1, 0, '2014-04-07 06:13:20', '0000-00-00 00:00:00'),
(184, 'http://krasnograd.net/component/content/article/31-general/177-raspisanie-passazhirskih-poezdov-po-stantsii-krasnograd-predvaritelnoe.html', '', '', '', 1, 0, '2014-04-07 08:33:06', '0000-00-00 00:00:00'),
(185, 'http://krasnograd.net/novosti/25-the-project/209-zamina-vikon.html', '', '', '', 1, 0, '2014-04-07 11:58:05', '0000-00-00 00:00:00'),
(186, 'http://krasnograd.net/novosti/25-the-project/193-devushka-iz-krasnograda.html', '', '', '', 2, 0, '2014-04-07 12:08:36', '0000-00-00 00:00:00'),
(187, 'http://krasnograd.net/novosti/25-the-project/207-stroitel-krasnograd.html', '', '', '', 2, 0, '2014-04-07 12:08:36', '0000-00-00 00:00:00'),
(188, 'http://krasnograd.net/novosti/25-the-project/219-2012-10-09-08-12-37.html', '', '', '', 2, 0, '2014-04-07 12:32:47', '0000-00-00 00:00:00'),
(189, 'http://krasnograd.net/novosti/25-the-project/47-vakansii-krasnograd.html', '', '', '', 2, 0, '2014-04-07 13:30:18', '0000-00-00 00:00:00'),
(190, 'http://www.krasnograd.net/novosti/25-the-project/189-2012-08-04-17-54-18.html', '', '', '', 1, 0, '2014-04-07 19:41:05', '0000-00-00 00:00:00'),
(191, 'http://krasnograd.net/component/mtree/Красота-и-здоровье/бани-и-сауны.html', '', '', '', 1, 0, '2014-04-08 02:51:24', '0000-00-00 00:00:00'),
(192, 'http://www.krasnograd.net/novosti/25-the-project/216-au-lyudi-chto-vam-nado.html', '', '', '', 2, 0, '2014-04-08 14:05:14', '0000-00-00 00:00:00'),
(193, 'http://krasnograd.net/component/mtree/Мебель/Мебель.html', '', '', '', 1, 0, '2014-04-08 20:24:52', '0000-00-00 00:00:00'),
(194, 'http://krasnograd.net/component/mtree/Животные-и-растения/цветы,-растения.html', '', '', '', 1, 0, '2014-04-09 02:41:31', '0000-00-00 00:00:00'),
(195, 'http://krasnograd.net/component/mtree/Медицина/аптеки.html', '', '', '', 1, 0, '2014-04-09 12:36:48', '0000-00-00 00:00:00'),
(196, 'http://krasnograd.net/component/mtree/Связь,-телекоммуникации/спутниковое,-кабельное-телевидение.html', '', '', '', 1, 0, '2014-04-09 12:37:08', '0000-00-00 00:00:00'),
(197, 'http://krasnograd.net/fotonews/4-vyistavka-kartin-vasiliya-skryinnika-v-krasnogradskom-gorodskom-sovete/detail/34-vasiliyskryinnik12.html?phocaslideshow=0&tmpl=component', '', '', '', 1, 0, '2014-04-09 14:19:55', '0000-00-00 00:00:00'),
(198, 'http://krasnograd.net/firms/Отдых-и-развлечения/бильярд,-боулинг.html', '', '', '', 1, 0, '2014-04-09 14:21:48', '0000-00-00 00:00:00'),
(199, 'http://krasnograd.net/firms.html?link_id=65&rating=4', '', '', '', 1, 0, '2014-04-09 14:22:36', '0000-00-00 00:00:00'),
(200, 'http://www.krasnograd.net/component/mtree/Торговая-сеть/цветы.html', '', '', '', 1, 0, '2014-04-09 16:02:12', '0000-00-00 00:00:00'),
(201, 'http://krasnograd.net/fotonews/4-vyistavka-kartin-vasiliya-skryinnika-v-krasnogradskom-gorodskom-sovete/detail/32-vasiliyskryinnik10.html?phocaslideshow=1&tmpl=component', '', '', '', 1, 0, '2014-04-09 16:03:12', '0000-00-00 00:00:00'),
(202, 'http://krasnograd.net/firms.html?link_id=53&rating=5', '', '', '', 1, 0, '2014-04-09 16:03:57', '0000-00-00 00:00:00'),
(203, 'http://krasnograd.net/firms.html?link_id=48&rating=3', '', '', '', 1, 0, '2014-04-09 16:04:36', '0000-00-00 00:00:00'),
(204, 'http://krasnograd.net/firms.html?link_id=16&rating=1', '', '', '', 1, 0, '2014-04-09 17:27:56', '0000-00-00 00:00:00'),
(205, 'http://www.krasnograd.net/firms/Отдых-и-развлечения/Add_Listing.html', '', '', '', 1, 0, '2014-04-09 17:29:02', '0000-00-00 00:00:00'),
(206, 'http://krasnograd.net/firms.html?link_id=82&rating=4', '', '', '', 1, 0, '2014-04-09 17:29:48', '0000-00-00 00:00:00'),
(207, 'http://www.krasnograd.net/component/mtree/Животные-и-растения/цветы,-растения/Add_Listing.html', '', '', '', 1, 0, '2014-04-09 17:30:17', '0000-00-00 00:00:00'),
(208, 'http://www.krasnograd.net/component/mtree/Транспорт/-городской-транспорт,-АТП.html', '', '', '', 1, 0, '2014-04-09 17:30:45', '0000-00-00 00:00:00'),
(209, 'http://www.krasnograd.net/firms/List_Alpha/h/1.html', '', '', '', 1, 0, '2014-04-09 19:01:04', '0000-00-00 00:00:00'),
(210, 'http://krasnograd.net/firms.html?link_id=7&rating=1', '', '', '', 1, 0, '2014-04-09 19:02:47', '0000-00-00 00:00:00'),
(211, 'http://krasnograd.net/fotonews/1-gonki/detail/3-prohvat3.html?phocaslideshow=0&tmpl=component', '', '', '', 1, 0, '2014-04-09 19:04:14', '0000-00-00 00:00:00'),
(212, 'http://krasnograd.net/firms/image/5.html', '', '', '', 1, 0, '2014-04-09 19:05:30', '0000-00-00 00:00:00'),
(213, 'http://krasnograd.net/firms/Сельское-хозяйство/с-2Fх-продукция/АГРОТЕСТ,-ЧП/details.html', '', '', '', 1, 0, '2014-04-09 19:06:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_schemas`
--

CREATE TABLE IF NOT EXISTS `ikona_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ikona_schemas`
--

INSERT INTO `ikona_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.14');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_session`
--

CREATE TABLE IF NOT EXISTS `ikona_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ikona_session`
--

INSERT INTO `ikona_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('jcaqoqk38stjsdiq504ir7agq6', 0, 0, '1398022118', '__default|a:8:{s:15:"session.counter";i:39;s:19:"session.timer.start";i:1398020189;s:18:"session.timer.last";i:1398021944;s:17:"session.timer.now";i:1398022118;s:22:"session.client.browser";s:128:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 YaBrowser/14.2.1700.12599 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":2:{s:5:"users";O:8:"stdClass":1:{s:5:"login";O:8:"stdClass":1:{s:4:"form";O:8:"stdClass":2:{s:4:"data";a:0:{}s:6:"return";s:62:"index.php?option=com_mtree&task=viewlink&link_id=25&Itemid=106";}}}s:9:"com_users";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"profile";O:8:"stdClass":1:{s:2:"id";i:837;}}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:3:"837";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:16:"dzigunskiy@bk.ru";s:8:"password";s:65:"395e584a9f13d03913eedab4814e9dd0:NV811wpLB8fkqE1CBw9e17RLD7MNpTbr";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-01-12 19:57:33";s:13:"lastvisitDate";s:19:"2014-04-20 18:56:28";s:10:"activation";s:1:"0";s:6:"params";s:2:"{}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"f2fe8291856a64b5daa29b3e51dab5d8";}', 837, 'admin', ''),
('suu14q8do10nvqesjjhbp8fle2', 1, 0, '1398022679', '__default|a:8:{s:15:"session.counter";i:3;s:19:"session.timer.start";i:1398022671;s:18:"session.timer.last";i:1398022677;s:17:"session.timer.now";i:1398022678;s:22:"session.client.browser";s:128:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102 YaBrowser/14.2.1700.12599 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":2:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:11:"com_modules";O:8:"stdClass":1:{s:7:"modules";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:18:"client_id_previous";i:0;}}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:3:"837";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:16:"dzigunskiy@bk.ru";s:8:"password";s:65:"395e584a9f13d03913eedab4814e9dd0:NV811wpLB8fkqE1CBw9e17RLD7MNpTbr";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-01-12 19:57:33";s:13:"lastvisitDate";s:19:"2014-04-20 19:22:44";s:10:"activation";s:1:"0";s:6:"params";s:2:"{}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"f321023638d3ea3ee4c1398535e9f75c";}', 837, 'admin', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_template_styles`
--

CREATE TABLE IF NOT EXISTS `ikona_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `ikona_template_styles`
--

INSERT INTO `ikona_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(7, 'mytemplate', 0, '1', 'mytemplate - По умолчанию', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_updates`
--

CREATE TABLE IF NOT EXISTS `ikona_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=911 ;

--
-- Дамп данных таблицы `ikona_updates`
--

INSERT INTO `ikona_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.17', '', 'http://update.joomla.org/core/extension.xml', ''),
(2, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(3, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(4, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(5, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(6, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(7, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(8, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(9, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(10, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(11, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(12, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(13, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(14, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(15, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(16, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(17, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(18, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2-5-17.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(19, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(20, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(21, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(22, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(23, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(24, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(25, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(26, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(27, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(28, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(29, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(30, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(31, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(32, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(33, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(34, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(35, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(36, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(37, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(38, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(39, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(40, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(41, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(42, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(43, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(44, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(45, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(46, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(47, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(48, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(49, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(50, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(51, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(52, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(53, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(54, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(55, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(56, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(57, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(58, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(59, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(60, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(61, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(62, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(63, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(64, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(65, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(66, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(67, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(68, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(69, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(70, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(71, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(72, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(73, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(74, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(75, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(76, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(77, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(78, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(79, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(80, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(81, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(82, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(83, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(84, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(85, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(86, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(87, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(88, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(89, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(90, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(91, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(92, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(93, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(94, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(95, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(96, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(97, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(98, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(99, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(100, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(101, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(102, 3, 0, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '2.5.0.1', '', 'http://update.joomla.org/language/details/bn-BD_details.xml', ''),
(103, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(104, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(105, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(106, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(107, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(108, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(109, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(110, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(111, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(112, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(113, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(114, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(115, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(116, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(117, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(118, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(119, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(120, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(121, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(122, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(123, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(124, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(125, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(126, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(127, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(128, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(129, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(130, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(131, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(132, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(133, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(134, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(135, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(136, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(137, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(138, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(139, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(140, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(141, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(142, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(143, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(144, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(145, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(146, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(147, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(148, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(149, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(150, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(151, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(152, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(153, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.18', '', 'http://update.joomla.org/core/extension.xml', ''),
(154, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(155, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(156, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(157, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(158, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(159, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(160, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(161, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(162, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(163, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(164, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(165, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(166, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(167, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(168, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(169, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(170, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(171, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(172, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(173, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(174, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(175, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(176, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(177, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(178, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(179, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(180, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(181, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(182, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(183, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(184, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(185, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(186, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(187, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(188, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(189, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(190, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(191, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(192, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(193, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(194, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(195, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(196, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(197, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(198, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(199, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(200, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(201, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(202, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(203, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(204, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(205, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(206, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(207, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(208, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(209, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(210, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(211, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(212, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(213, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(214, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(215, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(216, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(217, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(218, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(219, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(220, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(221, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(222, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(223, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(224, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(225, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(226, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(227, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(228, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(229, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(230, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(231, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(232, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(233, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(234, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(235, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(236, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(237, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(238, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(239, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(240, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(241, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(242, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(243, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(244, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(245, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(246, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(247, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(248, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(249, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(250, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(251, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(252, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(253, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(254, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(255, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(256, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(257, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(258, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(259, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(260, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(261, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(262, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(263, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(264, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(265, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(266, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(267, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(268, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(269, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(270, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(271, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(272, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(273, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(274, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(275, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(276, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(277, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(278, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(279, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(280, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(281, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(282, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(283, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(284, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(285, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(286, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(287, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(288, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(289, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(290, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(291, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(292, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(293, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(294, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(295, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(296, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(297, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(298, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(299, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(300, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(301, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(302, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(303, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(304, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(305, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(306, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(307, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(308, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(309, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(310, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(311, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(312, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(313, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(314, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(315, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(316, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(317, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(318, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(319, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(320, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(321, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(322, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(323, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(324, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(325, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(326, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(327, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(328, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(329, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(330, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(331, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(332, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(333, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(334, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(335, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(336, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(337, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(338, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(339, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(340, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(341, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(342, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(343, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(344, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(345, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(346, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(347, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(348, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', '');
INSERT INTO `ikona_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(349, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(350, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(351, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(352, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(353, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(354, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(355, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(356, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(357, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(358, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(359, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(360, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(361, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(362, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(363, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(364, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(365, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(366, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(367, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(368, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(369, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(370, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(371, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(372, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(373, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(374, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(375, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(376, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(377, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(378, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(379, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(380, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(381, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(382, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(383, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(384, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(385, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(386, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(387, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(388, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(389, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(390, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(391, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(392, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(393, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(394, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(395, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(396, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(397, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(398, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(399, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(400, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(401, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(402, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(403, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(404, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(405, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(406, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(407, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(408, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(409, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(410, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(411, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(412, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(413, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(414, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(415, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(416, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(417, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(418, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(419, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(420, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(421, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(422, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(423, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(424, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(425, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(426, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(427, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(428, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(429, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(430, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(431, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(432, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(433, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(434, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(435, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(436, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(437, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(438, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(439, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(440, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(441, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(442, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(443, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(444, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(445, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(446, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(447, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(448, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(449, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(450, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(451, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(452, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(453, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(454, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(455, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(456, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(457, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(458, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(459, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(460, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(461, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(462, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(463, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(464, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(465, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(466, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(467, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(468, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(469, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(470, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(471, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(472, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(473, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(474, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(475, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(476, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(477, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(478, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(479, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(480, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(481, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(482, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(483, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(484, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(485, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(486, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(487, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(488, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(489, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(490, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(491, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(492, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(493, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(494, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(495, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(496, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(497, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(498, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(499, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(500, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(501, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(502, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(503, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(504, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(505, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(506, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(507, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(508, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(509, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(510, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(511, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(512, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(513, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(514, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(515, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(516, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(517, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(518, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(519, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(520, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(521, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(522, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(523, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(524, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(525, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(526, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(527, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(528, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(529, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(530, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(531, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(532, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(533, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(534, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(535, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(536, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(537, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(538, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(539, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(540, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(541, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(542, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(543, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(544, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(545, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(546, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(547, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(548, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(549, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(550, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(551, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(552, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(553, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(554, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(555, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(556, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(557, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(558, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(559, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(560, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(561, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(562, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(563, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(564, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(565, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(566, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(567, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(568, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(569, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(570, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(571, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(572, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(573, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(574, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(575, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.18.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(576, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(577, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(578, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(579, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(580, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(581, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(582, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(583, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(584, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(585, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(586, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(587, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(588, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(589, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(590, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(591, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(592, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(593, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(594, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(595, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(596, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(597, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(598, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(599, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(600, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(601, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(602, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(603, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(604, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(605, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(606, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(607, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(608, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(609, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(610, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(611, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(612, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(613, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(614, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(615, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(616, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(617, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(618, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(619, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(620, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(621, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(622, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(623, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(624, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(625, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(626, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(627, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(628, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(629, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(630, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(631, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(632, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(633, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(634, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(635, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(636, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(637, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(638, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(639, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(640, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(641, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(642, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(643, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(644, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(645, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(646, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(647, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(648, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(649, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(650, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(651, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(652, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(653, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(654, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(655, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(656, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(657, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(658, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(659, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(660, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(661, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(662, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(663, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(664, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(665, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(666, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(667, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(668, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(669, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(670, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(671, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(672, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(673, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(674, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(675, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(676, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(677, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(678, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(679, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(680, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(681, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(682, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(683, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(684, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(685, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(686, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(687, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(688, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(689, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(690, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(691, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(692, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(693, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(694, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', '');
INSERT INTO `ikona_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(695, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(696, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(697, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(698, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(699, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(700, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(701, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(702, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(703, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(704, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(705, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(706, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(707, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(708, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(709, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(710, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(711, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(712, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(713, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(714, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(715, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(716, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(717, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(718, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(719, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(720, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(721, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(722, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(723, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(724, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(725, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(726, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(727, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(728, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(729, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(730, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(731, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(732, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(733, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(734, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(735, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(736, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(737, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(738, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(739, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(740, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(741, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(742, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(743, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(744, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(745, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(746, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(747, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(748, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(749, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(750, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(751, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(752, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(753, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(754, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(755, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(756, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(757, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(758, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(759, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(760, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(761, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(762, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(763, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(764, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(765, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(766, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(767, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(768, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(769, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(770, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(771, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(772, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(773, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(774, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(775, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(776, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(777, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(778, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(779, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(780, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(781, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(782, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(783, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(784, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(785, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(786, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(787, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(788, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(789, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(790, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(791, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(792, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(793, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(794, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(795, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(796, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(797, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(798, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(799, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(800, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(801, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(802, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(803, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(804, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(805, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(806, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(807, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(808, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(809, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(810, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(811, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(812, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(813, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(814, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(815, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(816, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(817, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(818, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(819, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(820, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(821, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(822, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(823, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(824, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(825, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(826, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(827, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(828, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(829, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(830, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(831, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(832, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(833, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(834, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(835, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(836, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(837, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(838, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(839, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(840, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(841, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(842, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(843, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(844, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(845, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(846, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(847, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(848, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(849, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(850, 1, 0, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.19', '', 'http://update.joomla.org/core/extension.xml', ''),
(851, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(852, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(853, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(854, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(855, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(856, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(857, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(858, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(859, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(860, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(861, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(862, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(863, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(864, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(865, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(866, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(867, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(868, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(869, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(870, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(871, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(872, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(873, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(874, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(875, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(876, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(877, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(878, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(879, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(880, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(881, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(882, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(883, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(884, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(885, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(886, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(887, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.2', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(888, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(889, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.19.2', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(890, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(891, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(892, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(893, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(894, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(895, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(896, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(897, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(898, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(899, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(900, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(901, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(902, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(903, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(904, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(905, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(906, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(907, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(908, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(909, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(910, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_update_categories`
--

CREATE TABLE IF NOT EXISTS `ikona_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_update_sites`
--

CREATE TABLE IF NOT EXISTS `ikona_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `ikona_update_sites`
--

INSERT INTO `ikona_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1397925313),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 1394998811),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 1, 1397925313),
(4, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1', 0, 1393761116),
(5, 'Неизвестный сайт', 'extension', 'http://update.mosets.com/libraries/mosets_profilepicture/profilepicture.xml', 0, 1394981203),
(6, 'Joomline', 'extension', 'http://joomline.net/index.php?option=com_ars&view=update&task=stream&format=xml&id=2&dummy=extension.xml', 1, 1397925314);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `ikona_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `ikona_update_sites_extensions`
--

INSERT INTO `ikona_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10003),
(4, 10007),
(5, 10016),
(6, 10017);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_usergroups`
--

CREATE TABLE IF NOT EXISTS `ikona_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `ikona_usergroups`
--

INSERT INTO `ikona_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_users`
--

CREATE TABLE IF NOT EXISTS `ikona_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=839 ;

--
-- Дамп данных таблицы `ikona_users`
--

INSERT INTO `ikona_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(837, 'Super User', 'admin', 'dzigunskiy@bk.ru', '395e584a9f13d03913eedab4814e9dd0:NV811wpLB8fkqE1CBw9e17RLD7MNpTbr', 'deprecated', 0, 1, '2014-01-12 19:57:33', '2014-04-20 19:37:57', '0', '{}', '0000-00-00 00:00:00', 0),
(838, 'test', 'test', 'plpandei@yandex.ru', '4972accf4ce596cdb4d31612a823a283:1FLI4azY5FPmEhwMUJqdjVLGMLp3K8Hj', '', 0, 0, '2014-03-15 18:46:11', '2014-04-10 19:42:35', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_user_notes`
--

CREATE TABLE IF NOT EXISTS `ikona_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_user_profiles`
--

CREATE TABLE IF NOT EXISTS `ikona_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Дамп данных таблицы `ikona_user_profiles`
--

INSERT INTO `ikona_user_profiles` (`user_id`, `profile_key`, `profile_value`, `ordering`) VALUES
(837, 'profilepicture.file', 'b82d119e9b8aef57e9c9331bdaf0fafb23ae6104.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `ikona_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ikona_user_usergroup_map`
--

INSERT INTO `ikona_user_usergroup_map` (`user_id`, `group_id`) VALUES
(837, 8),
(838, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_viewlevels`
--

CREATE TABLE IF NOT EXISTS `ikona_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `ikona_viewlevels`
--

INSERT INTO `ikona_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_weblinks`
--

CREATE TABLE IF NOT EXISTS `ikona_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ikona_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `ikona_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `users` text NOT NULL,
  `types` text,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) DEFAULT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `ikona_wf_profiles`
--

INSERT INTO `ikona_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '6,7,3,4,5,8', '', 2, 'desktop,tablet,phone', 'clipboard,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,indent,outdent,sub,sup,textcase,charmap,hr;fullscreen,preview,source,spacer,table;visualaid,visualchars,nonbreaking,style,anchor,unlink,link,imgmanager,spellchecker,article', 'clipboard,cleanup,textcase,charmap,fullscreen,preview,source,table,visualchars,nonbreaking,style,anchor,link,imgmanager,spellchecker,article,browser,contextmenu,inlinepopups,media', 1, 1, 0, '0000-00-00 00:00:00', '{"editor":{"width":"","height":"","toolbar_theme":"default","toolbar_align":"left","toolbar_location":"top","statusbar_location":"bottom","path":"1","resizing":"1","resize_horizontal":"1","resizing_use_cookie":"1","toggle":"1","toggle_label":"[Toggle Editor]","toggle_state":"1","relative_urls":"1","verify_html":"","schema":"","forced_root_block":"","profile_content_css":"2","profile_content_css_custom":"","theme_advanced_styles":"","theme_advanced_blockformats":["p","div","h1","h2","h3","h4","h5","h6","address","code","pre","samp","span","section","article","hgroup","aside","figure","dt","dd"],"theme_advanced_fonts_add":"","theme_advanced_fonts_remove":"","theme_advanced_font_sizes":"","custom_colors":"","dir":"","filesystem":{"name":"joomla","joomla":{"allow_root":"0","restrict_dir":"administrator,cache,components,includes,language,libraries,logs,media,modules,plugins,templates,xmlrpc"}},"max_size":"","upload_conflict":"overwrite","upload_runtimes":["html5","flash","silverlight","html4"],"browser_position":"bottom","folder_tree":"1","list_limit":"all","validate_mimetype":"1","websafe_mode":"utf-8","websafe_allow_spaces":"0","upload_add_random":"0","invalid_elements":"","invalid_attributes":"dynsrc,lowsrc","invalid_attribute_values":"","extended_elements":"","allow_javascript":"0","allow_css":"0","allow_php":"0","cdata":"1"},"clipboard":{"paste_use_dialog":"0","paste_dialog_width":"450","paste_dialog_height":"400","paste_force_cleanup":"0","paste_strip_class_attributes":"0","paste_remove_spans":"0","paste_remove_styles":"0","paste_remove_attributes":"","paste_retain_style_properties":"","paste_remove_empty_paragraphs":"1","paste_remove_styles_if_webkit":"0","paste_process_footnotes":"convert","paste_html":"1","paste_text":"1","buttons":["cut","copy","paste"]},"source":{"highlight":"1","numbers":"1","wrap":"1","format":"1","tag_closing":"1","selection_match":"1","theme":"textmate"},"table":{"width":"","height":"","border":"0","cols":"2","rows":"2","cellpadding":"","cellspacing":"","align":"","classes":"","pad_empty_cells":"1","buttons":["table_insert","delete_table","row_props","cell_props","row_before","row_after","delete_row","col_before","col_after","delete_col","split_cells","merge_cells"]},"link":{"target":"","id":"","style":"","classes":"","dir":"","hreflang":"","lang":"","charset":"","type":"","rel":"","rev":"","tabindex":"","accesskey":"","file_browser":"1","tabs_advanced":"1","attributes_anchor":"1","attributes_target":"1","links":{"joomlalinks":{"enable":"1","content":"1","article_alias":"1","static":"1","contacts":"1","weblinks":"1","weblinks_alias":"1","menu":"1"}},"popups":{"default":"","jcemediabox":{"enable":"1"},"window":{"enable":"1"}},"search":{"link":{"enable":"1","plugins":["categories","contacts","content","newsfeeds","weblinks"]}}},"imgmanager":{"dir":"","max_size":"","extensions":"image=jpeg,jpg,png,gif","filesystem":{"name":""},"alt":"","margin_top":"","margin_right":"","margin_bottom":"","margin_left":"","border":"0","border_width":"1","border_style":"solid","border_color":"#000000","align":"","always_include_dimensions":"1","style":"","classes":"","title":"","id":"","direction":"","usemap":"","longdesc":"","tabs_rollover":"1","tabs_advanced":"1","attributes_dimensions":"1","attributes_align":"1","attributes_margin":"1","attributes_border":"1","upload":"1","folder_new":"1","folder_delete":"1","folder_rename":"1","folder_move":"1","file_delete":"1","file_rename":"1","file_move":"1","dragdrop_upload":"1"},"spellchecker":{"engine":"browser","browser_state":"0","googlespell_languages":["English=en"],"languages":"English=en","pspell_mode":"PSPELL_FAST","pspell_spelling":"","pspell_jargon":"","pspell_encoding":"","pspell_dictionary":"components\\/com_jce\\/editor\\/tiny_mce\\/plugins\\/spellchecker\\/dictionary.pws","pspellshell_aspell":"\\/usr\\/bin\\/aspell","pspellshell_tmp":"\\/tmp"},"article":{"buttons":["readmore","pagebreak"]},"browser":{"dir":"","max_size":"","extensions":"office=doc,docx,ppt,xls;image=gif,jpeg,jpg,png;acrobat=pdf;archive=zip,tar,gz,rar;flash=swf;quicktime=mov,mp4,qt;windowsmedia=wmv,asx,asf,avi;audio=wav,mp3,aiff;openoffice=odt,odg,odp,ods,odf","filesystem":{"name":""},"upload":"1","folder_new":"1","folder_delete":"1","folder_rename":"1","folder_move":"1","file_delete":"1","file_rename":"1","file_move":"1"},"media":{"strict":"1","iframes":"0","audio":"1","video":"1","object":"1","embed":"1","version_flash":"10,1,53,64","version_windowsmedia":"10,00,00,3646","version_quicktime":"7,3,0,0","version_java":"1,5,0,0","version_shockwave":"10,2,0,023"}}'),
(2, 'Front End', 'Sample Front-end Profile', '', '1,6,7,2,3,4,5,8', '', 1, 'desktop,tablet,phone', 'help,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,charmap,spellchecker,sup,sub,textcase,fullscreen', 'charmap,spellchecker,textcase,fullscreen', 1, 2, 0, '0000-00-00 00:00:00', '{"editor":{"width":"","height":"","toolbar_theme":"mobile","toolbar_align":"left","toolbar_location":"top","statusbar_location":"none","path":"0","resizing":"0","resize_horizontal":"1","resizing_use_cookie":"1","toggle":"0","toggle_label":"[Toggle Editor]","toggle_state":"1","relative_urls":"1","verify_html":"","schema":"","forced_root_block":"","profile_content_css":"2","profile_content_css_custom":"","theme_advanced_styles":"","theme_advanced_blockformats":["p","div","h1","h2","h3","h4","h5","h6","address","code","pre","samp","span","section","article","hgroup","aside","figure","dt","dd"],"theme_advanced_fonts_add":"","theme_advanced_fonts_remove":"","theme_advanced_font_sizes":"","custom_colors":"","dir":"","filesystem":{"name":"joomla","joomla":{"allow_root":"1","restrict_dir":"administrator,cache,components,includes,language,libraries,logs,media,modules,plugins,templates,xmlrpc"}},"max_size":"","upload_conflict":"overwrite","upload_runtimes":["html5","flash","silverlight","html4"],"browser_position":"bottom","folder_tree":"0","list_limit":"all","validate_mimetype":"1","websafe_mode":"utf-8","websafe_allow_spaces":"0","upload_add_random":"0","invalid_elements":"","invalid_attributes":"dynsrc,lowsrc","invalid_attribute_values":"","extended_elements":"","allow_javascript":"0","allow_css":"0","allow_php":"0","cdata":"0"},"spellchecker":{"engine":"browser","browser_state":"0","googlespell_languages":["English=en"],"languages":"English=en","pspell_mode":"PSPELL_FAST","pspell_spelling":"","pspell_jargon":"","pspell_encoding":"","pspell_dictionary":"components\\/com_jce\\/editor\\/tiny_mce\\/plugins\\/spellchecker\\/dictionary.pws","pspellshell_aspell":"\\/usr\\/bin\\/aspell","pspellshell_tmp":"\\/tmp"}}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
