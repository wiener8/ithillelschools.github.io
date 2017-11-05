-- phpMyAdmin SQL Dump
-- version 4.0.10.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 15 2017 г., 10:24
-- Версия сервера: 5.1.73-cll-lve
-- Версия PHP: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `u3748_epay`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dp_banks`
--

CREATE TABLE IF NOT EXISTS `dp_banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL DEFAULT '0',
  `bname` varchar(128) NOT NULL DEFAULT '',
  `baddress` varchar(128) NOT NULL DEFAULT '',
  `bcity` varchar(64) NOT NULL DEFAULT '',
  `bzip` varchar(16) NOT NULL DEFAULT '',
  `bcountry` char(2) NOT NULL DEFAULT '',
  `bstate` varchar(32) NOT NULL DEFAULT '',
  `bphone` varchar(32) NOT NULL DEFAULT '',
  `bnameacc` varchar(128) NOT NULL DEFAULT '',
  `baccount` varchar(32) NOT NULL DEFAULT '',
  `btype` char(2) NOT NULL DEFAULT '',
  `brtgnum` varchar(9) NOT NULL DEFAULT '',
  `bswift` varchar(32) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dp_cards`
--

CREATE TABLE IF NOT EXISTS `dp_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL DEFAULT '0',
  `ctype` varchar(8) NOT NULL DEFAULT '',
  `cname` varchar(64) NOT NULL DEFAULT '',
  `cnumber` varchar(32) NOT NULL DEFAULT '',
  `ccvv` varchar(16) NOT NULL DEFAULT '',
  `cmonth` tinyint(2) NOT NULL DEFAULT '0',
  `cyear` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dp_confirms`
--

CREATE TABLE IF NOT EXISTS `dp_confirms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newuser` varchar(32) NOT NULL DEFAULT '',
  `newpass` varchar(32) NOT NULL DEFAULT '',
  `newquestion` varchar(255) NOT NULL DEFAULT '',
  `newanswer` varchar(255) NOT NULL DEFAULT '',
  `newmail` varchar(255) NOT NULL DEFAULT '',
  `newfname` varchar(32) NOT NULL DEFAULT '',
  `newlname` varchar(32) NOT NULL DEFAULT '',
  `newcompany` varchar(128) NOT NULL DEFAULT '',
  `newregnum` varchar(32) NOT NULL DEFAULT '',
  `newdrvnum` varchar(32) NOT NULL DEFAULT '',
  `newaddress` varchar(128) NOT NULL DEFAULT '',
  `newcity` varchar(64) NOT NULL DEFAULT '',
  `newcountry` char(2) NOT NULL DEFAULT '',
  `newstate` varchar(32) NOT NULL DEFAULT '',
  `newzip` varchar(32) NOT NULL DEFAULT '',
  `newphone` varchar(64) NOT NULL DEFAULT '',
  `newfax` varchar(64) NOT NULL DEFAULT '',
  `sponsor` int(11) NOT NULL DEFAULT '0',
  `confirm` varchar(255) NOT NULL DEFAULT '',
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `newuser` (`newuser`),
  KEY `newmail` (`newmail`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `dp_confirms`
--

INSERT INTO `dp_confirms` (`id`, `newuser`, `newpass`, `newquestion`, `newanswer`, `newmail`, `newfname`, `newlname`, `newcompany`, `newregnum`, `newdrvnum`, `newaddress`, `newcity`, `newcountry`, `newstate`, `newzip`, `newphone`, `newfax`, `sponsor`, `confirm`, `cdate`) VALUES
(3, 'user3', 'Zeocmsumf3722', 'ÑƒÐºÐ¿ÑƒÐºÐ¿ÑƒÐºÐ¿ÑƒÐºÐ¿', 'ÑƒÐºÐ¿ÑƒÐºÐ¿ÑƒÐºÐ¿ÑƒÐºÐ¿', 'saxocredit@yandex.ru', 'Ð Ð¾Ð¼Ð°Ð½', 'Ð Ð¾Ð·ÐµÐ½Ñ‚Ð°Ð»ÑŒ', '', '', '', 'ÑƒÐ°ÑƒÐºÐ¿ÑƒÐºÐ¿ÑƒÐºÐ¿', 'ÐœÐ¾ÑÐºÐ²Ð°', 'AI', '', '234234234', '234234234234', '', 1, '57825179', '2017-03-10 15:12:09'),
(4, 'user5', 'Ð¯ÑƒÑ‰ÑÑŒÑ‹Ð³ÑŒÐ°3722', 'Ð’Ð¾Ð¿Ñ€Ð¾Ñ', 'Ð’Ð¾Ð¿Ñ€Ð¾Ñ', 'user5@example.com', 'ÐÐ½Ñ‚Ð¾Ð½', 'Ð›Ð°Ñ€Ð¸Ð°Ð½Ð¾Ð²', '', '', '', 'ÑƒÐ». ÐšÐ°ÑˆÐµÑ€Ð½Ð°Ñ, 16', 'ÐœÐ¾ÑÐºÐ²Ð°', 'AO', '', '394552', '79851234567', '', 1, '34756330', '2017-03-10 15:21:57');

-- --------------------------------------------------------

--
-- Структура таблицы `dp_emails`
--

CREATE TABLE IF NOT EXISTS `dp_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`key`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='E-Mail Templates' AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `dp_emails`
--

INSERT INTO `dp_emails` (`id`, `key`, `name`, `value`) VALUES
(1, 'CONFIRM-TO-MEMBER', 'Confirm E-Mail for new member', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing the information you need to continue the signup process...\r\n\r\nYou recently were at the [sitename] website and signed up, you must continue the signup process and enter your account information.  To do so, you can navigate to the below URL:\r\n\r\nClick to this link to confirm your registration: [confpage]?cid=[confhash]\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n\\\\\\"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM\\\\\\"'),
(2, 'SIGNUP-TO-MEMBER', 'You was registered in the our system', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing the information you requested...\r\n\r\nYou recently were registered the [sitename] website therefore we sent your account login information to you.\r\n\r\nYou can find such information below:\r\n---\r\nUsername: [username]\r\nPassword: [password]\r\n\r\nYou can access your account anytime at:\r\n[lognpage]\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(3, 'SIGNUP-TO-ADMINS', 'A new user has signed up', 'A new user has signed up.\r\n\r\nEmail: [emailadr]\r\nUsername: [username]\r\nPassword: [password]'),
(4, 'UPDATE-MEMBER-PROFILE', 'Your profile information was changed!', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing the information you need to continue the profile update process...\r\n\r\nYou recently were at the [sitename] website and updated your profile. If it is not so please check of the your account.\r\n\r\nYou can access your account anytime at:\r\n[lognpage]\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(5, 'UPDATE-BANK-INFORMATION', 'Your bank information was changed!', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing the information you need to continue the profile update process...\r\n\r\nYou recently were at the [sitename] website and updated your bank information. If it is not so please check of the your account.\r\n\r\nYou can access your account anytime at:\r\n[lognpage]\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(6, 'UPDATE-CARD-INFORMATION', 'Your credit card information was changed!', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing the information you need to continue the profile update process...\r\n\r\nYou recently were at the [sitename] website and updated your credit card information. If it is not so please check of the your account.\r\n\r\nYou can access your account anytime at:\r\n[lognpage]\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(7, 'SEND-MONEY', 'Money Waiting', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing a notification of money paid to your account...\r\n\r\nA [sitename] user has just successfully sent you money! Please look at the below details for information on this transaction.\r\n\r\nSender: [username]\r\nSender''s E-Mail: [emailadr]\r\nAmount Received: [amount]\r\nSender''s Comments: [comments]\r\n\r\nYou can access your account anytime at:\r\n[lognpage]\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(8, 'REQUEST-MONEY', 'Money Waiting', 'Hello [fullname],\r\n\r\nThis is not SPAM, this is an e-mail from [sitename].\r\n\r\nA member of [sitename] has requested money!\r\n\r\nFrom Email: [emailadr]\r\nAmount: [amount]\r\n\r\nIn order for you to send this user money, you must create an account on [sitename].\r\n\r\nTo complete this transaction, you need to click the link below (or if there is no link, copy the address to your web browser) and sign up for an account. Instructions on approving or denying the transaction can be found on our website.\r\n[singpage]\r\n\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(9, 'SEND-ESCROW', 'Money Waiting', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing a notification of money paid by escrow to your account...\r\n\r\nA [sitename] user has just successfully sent you money! Please look at the below details for information on this transaction.\r\n\r\nSender: [username]\r\nSender''s E-Mail: [emailadr]\r\nAmount Received: [amount]\r\nSender''s Comments: [comments]\r\n\r\nYou can access your account anytime at:\r\n[lognpage]\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(10, 'CONFIRM-ESCROW', 'Payment by escrow was confirmed!', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail containing a notification that escrow was confirmed...\r\n\r\nYou can access your account anytime at:\r\n[lognpage]\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(11, 'CANCEL-ESCROW', 'Payment by escrow was cancelled!', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing a notification that escrow was cancelled...\r\n\r\nYou can access your account anytime at:\r\n[lognpage]\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(12, 'REFUND-ESCROW', 'Payment by escrow was refunded!', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing a notification that escrow was confirmed...\r\n\r\nYou can access your account anytime at:\r\n[lognpage]\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(13, 'DOWNLINE-CHANGE', 'You have a new member in your downline!', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing the information about your downline...\r\n\r\nA new member has signed up under your account! \r\n\r\n----------------------------------\r\nMember Username: [username]\r\nEmail Address: [emailadr]\r\n---------------------------------- \r\n\r\nKeep up the good work! \r\n\r\nRemember, you will get 2.5% of all the StormPay fees this new member generates... \r\n\r\n\r\nThank you for promoting [sitename]!\r\n\r\n[sitename] Service Team\r\n"THE NEW UNIVERSAL PAYMENT SYSTEM"'),
(14, 'PAYMENT-MONEY', 'Payment Notification', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing a notification of money paid from your account...\r\n\r\nYou have just successfully make payment! Please look at the below details for information on this transaction.\r\n\r\nSender: [username]\r\nSender\\\\\\''s E-Mail: [emailadr]\r\nAmount Received: [amount]\r\nSender\\\\\\''s Comments: [comments]\r\n\r\nYou can access your account anytime at:\r\n[lognpage]\r\n\r\nIf you do not have a [sitename] account,  please create an account\r\nto get the money.  It only takes a few minutes and it is Free!!!\r\n\r\nIf this is the FIRST payment you received at this email address\r\nthrough [sitename], please log into your account, click the \\\\\\"VIEW ALL TRANSACTIONS\\\\\\" menu item, then check all your transactions.\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n\\\\\\"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM\\\\\\"'),
(15, 'SUBSCRIPTION-MONEY', 'Subscription Notification', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing a notification of money paid from your account...\r\n\r\nYou have just successfully make subscription! Please look at the below details for information on this transaction.\r\n\r\nSender: [username]\r\nSender''s E-Mail: [emailadr]\r\nAmount Received: [amount]\r\nSender''s Comments: [comments]\r\n\r\nYou can access your account anytime at:\r\n[lognpage]\r\n\r\nIf you do not have a [sitename] account,  please create an account\r\nto get the money.  It only takes a few minutes and it is Free!!!\r\n\r\nIf this is the FIRST payment you received at this email address\r\nthrough [sitename], please log into your account, click the "VIEW ALL TRANSACTIONS" menu item, then check all your transactions.\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(16, 'PAYMENT-MONEY-TO-OWNER', 'A member has just successfully make payment!', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing a notification of money paid to your account...\r\n\r\nA [sitename] user has just successfully make payment! Please look at the below details for information on this transaction.\r\n\r\nSender: [username]\r\nSender''s E-Mail: [buyeradr]\r\nAmount Received: [amount]\r\nSender''s Comments: [comments]\r\n\r\nYou can access your account anytime at:\r\n[lognpage]\r\n\r\nIf you do not have a [sitename] account,  please create an account\r\nto get the money.  It only takes a few minutes and it is Free!!!\r\n\r\nIf this is the FIRST payment you received at this email address\r\nthrough [sitename], please log into your account, click the "VIEW ALL TRANSACTIONS" menu item, then check all your transactions.\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(17, 'SUBSCRIPTION-MONEY-TO-OWNER', 'A member has just successfully make subscription!', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing a notification of money paid from your account...\r\n\r\nA [sitename] user has just successfully make subscription! Please look at the below details for information on this transaction.\r\n\r\nSender: [username]\r\nSender''s E-Mail: [buyeradr]\r\nAmount Received: [amount]\r\nSender''s Comments: [comments]\r\n\r\nYou can access your account anytime at:\r\n[lognpage]\r\n\r\nIf you do not have a [sitename] account,  please create an account\r\nto get the money.  It only takes a few minutes and it is Free!!!\r\n\r\nIf this is the FIRST payment you received at this email address\r\nthrough [sitename], please log into your account, click the "VIEW ALL TRANSACTIONS" menu item, then check all your transactions.\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(18, 'RESTORE-PASSWORD', 'Lost Password', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing the information you need to continue the signup process...\r\n\r\nThe lost password for your [sitename] account is: [password]\r\n\r\nPlease log in to [sitename] by following this link: \r\n[lognpage]\r\n\r\nThank you for your time,\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"'),
(19, 'CONFIRM-NEW-EMAIL', 'New E-mail address added', 'Dear [fullname],\r\nYou have sucessfully added a new email address but you have to confirm it first.\r\n[emailpage]?c=[confcode]&u=[uid]'),
(20, 'NEW-EMAIL-ACTIVATED', 'New E-mail address successfully added', 'Dear [fullname],\r\nYour email address has been successfully verified.'),
(21, 'PAYMENT-TO-UNREGMEMBER', 'Money Waiting', 'Hello,\r\n\r\nThis is not SPAM, this is an e-mail from [sitename] containing a notification of money paid to you.\r\n\r\nA [sitename] user has just successfully sent you money! Please look at the below details for information on this transaction.\r\n\r\nSender: [username]\r\nSender''s E-Mail: [emailadr]\r\nAmount Received: [amount]\r\nSender''s Comments: [comments]\r\n\r\n\r\nTo get the money you have first to register to [sitename] using the same email address this email is sent to.\r\nUse that link to coninue registration process: [usersite]\r\nThis email is valid during 10 days. If you don''t signup within this period, money invoice will be cancelled.\r\n\r\nThank you!\r\n\r\n[sitename] Services Team\r\n[hostname]\r\n"THE NEW ONLINE UNIVERSAL PAYMENT SYSTEM"');

-- --------------------------------------------------------

--
-- Структура таблицы `dp_faq_cat_list`
--

CREATE TABLE IF NOT EXISTS `dp_faq_cat_list` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(200) NOT NULL DEFAULT '',
  `parent` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dp_faq_list`
--

CREATE TABLE IF NOT EXISTS `dp_faq_list` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `cat` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dp_members`
--

CREATE TABLE IF NOT EXISTS `dp_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sponsor` int(11) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `empty` tinyint(1) NOT NULL DEFAULT '1',
  `cdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ldate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `adate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(255) DEFAULT NULL,
  `fname` varchar(32) NOT NULL DEFAULT '',
  `lname` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(128) NOT NULL DEFAULT '',
  `regnum` varchar(32) NOT NULL DEFAULT '',
  `drvnum` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(128) NOT NULL DEFAULT '',
  `city` varchar(64) NOT NULL DEFAULT '',
  `country` char(2) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `phone` varchar(64) NOT NULL DEFAULT '',
  `fax` varchar(64) NOT NULL DEFAULT '',
  `ctype` varchar(8) NOT NULL DEFAULT '',
  `cname` varchar(64) NOT NULL DEFAULT '',
  `cnumber` varchar(32) NOT NULL DEFAULT '',
  `ccvv` varchar(16) NOT NULL DEFAULT '',
  `cmonth` tinyint(2) NOT NULL DEFAULT '0',
  `cyear` smallint(6) NOT NULL DEFAULT '0',
  `bname` varchar(128) NOT NULL DEFAULT '',
  `baddress` varchar(128) NOT NULL DEFAULT '',
  `bcity` varchar(64) NOT NULL DEFAULT '',
  `bzip` varchar(16) NOT NULL DEFAULT '',
  `bcountry` char(2) NOT NULL DEFAULT '',
  `bstate` varchar(32) NOT NULL DEFAULT '',
  `bphone` varchar(32) NOT NULL DEFAULT '',
  `bnameacc` varchar(128) NOT NULL DEFAULT '',
  `baccount` varchar(32) NOT NULL DEFAULT '',
  `btype` char(2) NOT NULL DEFAULT '',
  `brtgnum` varchar(9) NOT NULL DEFAULT '',
  `bswift` varchar(32) NOT NULL DEFAULT '',
  `description` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `fname` (`fname`),
  KEY `lname` (`lname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='System Members' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `dp_members`
--

INSERT INTO `dp_members` (`id`, `sponsor`, `username`, `password`, `question`, `answer`, `email`, `active`, `status`, `empty`, `cdate`, `ldate`, `adate`, `last_ip`, `fname`, `lname`, `company`, `regnum`, `drvnum`, `address`, `city`, `country`, `state`, `zip`, `phone`, `fax`, `ctype`, `cname`, `cnumber`, `ccvv`, `cmonth`, `cyear`, `bname`, `baddress`, `bcity`, `bzip`, `bcountry`, `bstate`, `bphone`, `bnameacc`, `baccount`, `btype`, `brtgnum`, `bswift`, `description`) VALUES
(1, 0, 'user1', 'Zeocmsumf3722', 'vopros', 'otvet', '', 1, 1, 0, '2017-03-10 10:22:54', '2017-03-15 10:14:25', '2017-03-15 10:19:09', '185.23.83.180', 'Ð˜Ð²Ð°Ð½', 'Ð˜Ð²Ð°Ð½Ð¾Ð²', 'ÐžÐžÐž Ð¯Ð½Ð´ÐµÐºÑ Ð”ÐµÐ½ÑŒÐ³Ð¸', '4234234234', '2011909876', 'ÑƒÐ». ÐœÐ¸Ð½Ð¸Ð½Ð°, 16', 'Ð’Ð¾Ñ€Ð¾Ð½ÐµÐ¶', 'AW', '', '342423', '79545678909', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 0, 'user2', 'Fdnj,ec90', 'Ð²Ð¾Ð¿Ñ€Ð¾Ñ', 'Ð¾Ñ‚Ð²ÐµÑ‚', '', 1, 0, 0, '2017-03-10 10:28:58', '2017-03-15 00:35:10', '2017-03-15 00:39:18', '185.23.83.180', 'Ð˜Ð²Ð°Ð½', 'ÐŸÐµÑ‚Ñ€Ð¾Ð²', 'ÐžÐžÐž Ð­Ñ€ÐµÐ½Ð¾Ñ‚', '8765432', '20197876652', 'ÑƒÐ». Ð¡Ñ‚Ð°Ñ€Ð°Ñ, 18', 'ÐœÐ¾ÑÐºÐ²Ð°', 'AU', '', '234234', '79807765654', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `dp_member_emails`
--

CREATE TABLE IF NOT EXISTS `dp_member_emails` (
  `owner` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `primary` tinyint(1) NOT NULL DEFAULT '0',
  `verifcode` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner`,`email`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dp_member_emails`
--

INSERT INTO `dp_member_emails` (`owner`, `email`, `active`, `primary`, `verifcode`) VALUES
(1, 'bootpaycom@gmail.com', 1, 1, ''),
(2, 'bootpaycom2@gmail.com', 1, 1, ''),
(2, 'bootpaycom3@gmail.com', 0, 0, '36797153'),
(1, 'bootpaycom4@gmail.com', 1, 0, '55039129'),
(1, 'uyruy@mail.ru', 0, 0, '74819764');

-- --------------------------------------------------------

--
-- Структура таблицы `dp_products`
--

CREATE TABLE IF NOT EXISTS `dp_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `sold` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `period` int(11) NOT NULL DEFAULT '0',
  `setup` double(10,2) NOT NULL DEFAULT '0.00',
  `trial` double(10,2) NOT NULL DEFAULT '0.00',
  `tax` double(10,2) NOT NULL DEFAULT '0.00',
  `shipping` double(10,2) NOT NULL DEFAULT '0.00',
  `button` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ureturn` mediumtext NOT NULL,
  `unotify` mediumtext NOT NULL,
  `ucancel` mediumtext NOT NULL,
  `comments` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `owner` (`owner`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Products' AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `dp_products`
--

INSERT INTO `dp_products` (`id`, `type`, `sold`, `owner`, `price`, `period`, `setup`, `trial`, `tax`, `shipping`, `button`, `name`, `ureturn`, `unotify`, `ucancel`, `comments`) VALUES
(1, 0, 0, 2, 50.00, 0, 0.00, 0.00, 10.00, 5.00, '05.gif', 'Ð¢ÐµÑÑ‚Ð¾Ð²Ñ‹Ð¹ Ñ‚Ð¾Ð²Ð°Ñ€', 'return.htm', 'notify.htm', 'cancel.htm', 'ÐžÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ Ñ‚ÐµÑÑ‚Ð¾Ð²Ð¾Ð³Ð¾ Ñ‚Ð¾Ð²Ð°Ñ€Ð°'),
(3, 2, 0, 2, 300.00, 0, 0.00, 0.00, 0.00, 0.00, '01.gif', 'ÐÐ° ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð½Ð¾Ð²Ð¾Ð³Ð¾ ÑÐ°Ð¹Ñ‚Ð°', '#r', '#n', '#c', ''),
(5, 1, 2, 2, 120.00, 10, 4.00, 0.00, 1.00, 0.00, '05.gif', 'Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð°Ñ Ñ€Ð°ÑÑÑ‹Ð»ÐºÐ° Ð¿Ð¾ Ñ‚Ñ€ÐµÐ¹Ð´Ð¸Ð½Ð³Ñƒ', '#', '#', '#', 'Ð’Ð°Ð¶Ð½Ð°Ñ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ Ð½Ð° Ñ€Ñ‹Ð½ÐºÐµ ÐºÑƒÑ€ÑÐ° Ð²Ð°Ð»ÑŽÑ‚'),
(6, 0, 1, 1, 10.00, 0, 0.00, 0.00, 5.00, 5.00, '03.gif', 'Ð¢ÐµÑÑ‚Ð¾Ð²Ñ‹Ð¹ Ñ‚Ð¾Ð²Ð°Ñ€', '#', '#', '#', 'ÐžÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ Ñ‚Ð¾Ð²Ð°Ñ€Ð°'),
(7, 2, 0, 1, 10.00, 0, 0.00, 0.00, 0.00, 0.00, '05.gif', 'ÐÐ¾Ð²Ñ‹Ð¹ Ð²ÐµÐ»Ð¾ÑÐ¸Ð¿ÐµÐ´', '#', '#', '#', ''),
(8, 1, 0, 1, 40.00, 10, 3.00, 5.00, 3.00, 3.00, '02.gif', 'Ð¡ÐºÑ€Ð¸Ð¿Ñ‚ Ð¿Ð»Ð°Ñ‚ÐµÐ¶Ð½Ð¾Ð¹ ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹', '#', '#', '#', 'Ð¾Ð¿Ð¸ÑÐ°Ð½Ð¸Ðµ');

-- --------------------------------------------------------

--
-- Структура таблицы `dp_shop_categories`
--

CREATE TABLE IF NOT EXISTS `dp_shop_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parentid`,`name`),
  KEY `parentid` (`parentid`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Дамп данных таблицы `dp_shop_categories`
--

INSERT INTO `dp_shop_categories` (`id`, `parentid`, `name`, `description`) VALUES
(1, 0, 'Antiques & Art', 'Top Antiques & Art'),
(2, 0, 'Auction Resources', 'Top Auction Resources'),
(3, 0, 'Automotive', 'Top Automotive'),
(4, 0, 'Babies & Kids', 'Top Babies & Kids'),
(5, 0, 'Beauty', 'Top Beauty'),
(6, 0, 'Books, Music, Movies', 'Top Books, Music, Movies'),
(7, 0, 'Business Services', 'Top Business Services & Supplies'),
(8, 0, 'Clothing', 'Top Clothing'),
(9, 0, 'Collectibles', 'Top Collectibles'),
(10, 0, 'Communication', 'Top Communication'),
(11, 0, 'Computers', 'Top Computers & Internet'),
(12, 0, 'Crafts', 'Top Crafts'),
(13, 0, 'Cultures & Religions', 'Top Cultures & Religions'),
(14, 0, 'Currency & Coins', 'Top Currency & Coins'),
(15, 0, 'Dolls & Bears', 'Top Dolls & Bears'),
(16, 0, 'Electronics', 'Top Electronics'),
(17, 0, 'Fashion', 'Top Fashion'),
(18, 0, 'Food & Drink', 'Top Food & Drink'),
(19, 0, 'Gifts & Flowers', 'Top Gifts & Flowers'),
(20, 0, 'Health & Nutrition', 'Top Health & Nutrition'),
(21, 0, 'Hobbies', 'Top Hobbies'),
(22, 0, 'Home & Garden', 'Top Home & Garden'),
(23, 0, 'Entertainment', 'Top Media & Entertainment'),
(24, 0, 'Non-Profit & Political', 'Top Non-Profit & Political'),
(25, 0, 'Pets & Animals', 'Top Pets & Animals'),
(26, 0, 'Real Estate', 'Top Real Estate'),
(27, 0, 'Services', 'Top Services'),
(28, 0, 'Sports & Recreation', 'Top Sports & Recreation'),
(29, 0, 'Toys & Games', 'Top Toys & Games'),
(31, 1, 'Fine Arts', 'Top Fine Arts'),
(32, 1, 'Furniture', 'Top Furniture'),
(33, 1, 'General', 'Top General'),
(34, 1, 'Glass', 'Top Glass'),
(35, 1, 'Needlework & Hand Crafts', 'Top Needlework & Hand Crafts'),
(36, 1, 'Pottery & Glass', 'Top Pottery & Glass'),
(37, 1, 'Prints', 'Top Prints'),
(38, 1, 'Reproductions', 'Top Reproductions'),
(39, 1, 'Sculptures', 'Top Sculptures'),
(40, 1, 'Western Art', 'Top Western Art'),
(41, 1, 'Woodworking', 'Top Woodworking'),
(42, 32, 'Furniture1', 'Top Furniture1'),
(44, 42, 'Furniture2', 'Top Furniture2'),
(45, 1, 'Prepaid Call Time', 'QTC Members Only Call'),
(46, 31, 'SKSKS AFRT', 'SLSSlssl');

-- --------------------------------------------------------

--
-- Структура таблицы `dp_shop_items`
--

CREATE TABLE IF NOT EXISTS `dp_shop_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryid` (`categoryid`,`name`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dp_subscriptions`
--

CREATE TABLE IF NOT EXISTS `dp_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL DEFAULT '0',
  `member` int(11) NOT NULL DEFAULT '0',
  `product` int(11) NOT NULL DEFAULT '0',
  `sdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `member` (`member`),
  KEY `product` (`product`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Subscribers' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `dp_subscriptions`
--

INSERT INTO `dp_subscriptions` (`id`, `owner`, `member`, `product`, `sdate`, `pdate`) VALUES
(1, 2, 1, 5, '2017-03-12 01:30:20', '2017-03-12 01:30:20');

-- --------------------------------------------------------

--
-- Структура таблицы `dp_temp_pays`
--

CREATE TABLE IF NOT EXISTS `dp_temp_pays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sender` int(11) NOT NULL DEFAULT '0',
  `receiver` varchar(255) NOT NULL DEFAULT '',
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `comments` longtext,
  PRIMARY KEY (`id`),
  KEY `tdate` (`tdate`),
  KEY `sender` (`sender`),
  KEY `receiver` (`receiver`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Pending payments for unregistered members' AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `dp_temp_pays`
--

INSERT INTO `dp_temp_pays` (`id`, `tdate`, `sender`, `receiver`, `amount`, `status`, `comments`) VALUES
(1, '2017-03-11 10:27:18', 1, '', 4.00, 0, ''),
(2, '2017-03-11 10:27:30', 1, '', 4.00, 0, ''),
(3, '2017-03-11 10:31:50', 1, '', 2.00, 0, 'qwee'),
(4, '2017-03-11 10:37:31', 1, '', 2.00, 0, 'qwee'),
(5, '2017-03-12 10:10:01', 2, '', 10.00, 0, 'wrwer'),
(6, '2017-03-12 10:27:46', 2, '', 1.00, 0, 'qwdqwf'),
(7, '2017-03-12 10:28:11', 2, '', 1.00, 0, 'wefw'),
(8, '2017-03-12 10:28:48', 2, '', 1.00, 0, ''),
(9, '2017-03-13 16:55:21', 1, '', 5.00, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `dp_transactions`
--

CREATE TABLE IF NOT EXISTS `dp_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tdate` datetime DEFAULT NULL,
  `sender` int(11) NOT NULL DEFAULT '0',
  `receiver` int(11) NOT NULL DEFAULT '0',
  `related` int(11) NOT NULL DEFAULT '0',
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `fees` double(10,2) NOT NULL DEFAULT '0.00',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `comments` longtext,
  `ecomments` longtext,
  PRIMARY KEY (`id`),
  KEY `tdate` (`tdate`),
  KEY `sender` (`sender`),
  KEY `receiver` (`receiver`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Transactions' AUTO_INCREMENT=91 ;

--
-- Дамп данных таблицы `dp_transactions`
--

INSERT INTO `dp_transactions` (`id`, `tdate`, `sender`, `receiver`, `related`, `amount`, `fees`, `type`, `status`, `comments`, `ecomments`) VALUES
(1, '2017-03-10 10:22:54', -1, 1, 0, 100.00, 0.00, 4, 1, 'Signup Bonus', ''),
(2, '2017-03-10 10:28:58', -1, 2, 0, 100.00, 0.00, 4, 1, 'Signup Bonus', ''),
(3, '2017-03-10 22:04:52', 1, 2, 0, 1.00, 0.27, 0, 1, '', ''),
(4, '2017-03-10 22:11:10', 1, 2, 0, 2.00, 0.29, 0, 1, '', ''),
(5, '2017-03-11 10:27:37', 1, 2, 0, 4.00, 0.33, 0, 1, '', ''),
(6, '2017-03-11 12:52:19', -1, 2, 0, 1.00, 0.27, 0, 1, '', ''),
(7, '2017-03-11 12:52:26', -1, 2, 0, 1.00, 0.27, 0, 1, '', ''),
(8, '2017-03-11 12:52:32', -1, 2, 0, 3.00, 0.31, 0, 1, '', ''),
(9, '2017-03-11 12:52:36', -1, 2, 0, 4.00, 0.33, 0, 1, '', ''),
(10, '2017-03-11 12:52:44', -1, 2, 0, 5.00, 0.35, 0, 1, '', ''),
(11, '2017-03-11 12:52:51', -1, 2, 0, 13.00, 0.51, 0, 1, '', ''),
(12, '2017-03-11 12:52:56', -1, 2, 0, 3.00, 0.31, 0, 1, '', ''),
(13, '2017-03-11 12:53:04', -1, 2, 0, 1.00, 0.27, 0, 1, 'rjvvtyn', ''),
(14, '2017-03-11 12:53:09', -1, 2, 0, 2.00, 0.29, 0, 1, '', ''),
(15, '2017-03-11 12:54:01', -1, 2, 0, 12.00, 0.49, 0, 1, '', ''),
(16, '2017-03-11 12:54:06', -1, 2, 0, 12.00, 0.49, 0, 1, '', ''),
(17, '2017-03-11 12:54:11', -1, 2, 0, 23.00, 0.71, 0, 1, '', ''),
(18, '2017-03-11 12:54:16', -1, 2, 0, 12.00, 0.49, 0, 1, '', ''),
(19, '2017-03-11 12:54:21', -1, 2, 0, 12.00, 0.49, 0, 1, '', ''),
(20, '2017-03-11 12:54:26', -1, 2, 0, 1.00, 0.27, 0, 1, '', ''),
(21, '2017-03-11 12:54:31', -1, 2, 0, 12.00, 0.49, 0, 1, '', ''),
(22, '2017-03-11 12:54:35', -1, 2, 0, 12.00, 0.49, 0, 1, '', ''),
(23, '2017-03-11 19:46:43', -1, 2, 0, 12.00, 0.49, 0, 3, 'Transaction was refunded by Ð¡ÐµÑ€Ð³ÐµÐ¹ ÐŸÐµÑ‚Ñ€Ð¾Ð² (user2)', ''),
(24, '2017-03-11 19:46:22', -1, 2, 0, 12.00, 0.49, 0, 3, 'Transaction was refunded by Ð¡ÐµÑ€Ð³ÐµÐ¹ ÐŸÐµÑ‚Ñ€Ð¾Ð² (user2)', ''),
(25, '2017-03-11 19:14:40', -1, 2, 0, 12.00, 0.49, 0, 3, 'Transaction was refunded by Ð¡ÐµÑ€Ð³ÐµÐ¹ ÐŸÐµÑ‚Ñ€Ð¾Ð² (user2)', ''),
(26, '2017-03-11 18:56:06', 2, 1, 0, 1.00, 0.27, 0, 1, '', ''),
(27, '2017-03-11 20:11:10', 2, 1, 0, 1.00, 0.27, 0, 1, 'Ð¢ÑƒÑ‚ Ð¼Ð¾Ð¹ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹', ''),
(28, '2017-03-11 20:13:02', 2, 1, 0, 2.00, 0.29, 0, 1, 'ÐšÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹ Ð·Ð´ÐµÑÑŒ. Ð¡Ð¿Ð°ÑÐ¸Ð±Ð¾ Ð·Ð° Ð²ÑÐµ!', ''),
(29, '2017-03-11 20:41:38', 2, 1, 0, 1.00, 0.27, 0, 1, '', ''),
(30, '2017-03-11 21:29:11', 2, 1, 0, 1.00, 0.27, 3, 2, 'Transaction was cancelled by Ð˜Ð²Ð°Ð½ Ð˜Ð²Ð°Ð½Ð¾Ð² (user1)', ''),
(31, '2017-03-11 21:29:58', 1, 2, 0, 10.00, 0.45, 3, 1, 'Transaction was confirmed by Ð˜Ð²Ð°Ð½ Ð˜Ð²Ð°Ð½Ð¾Ð² (user1)', ''),
(32, '2017-03-11 21:45:00', 1, 2, 0, 1.00, 0.27, 3, 1, 'Transaction was confirmed by Ð˜Ð²Ð°Ð½ Ð˜Ð²Ð°Ð½Ð¾Ð² (user1)', ''),
(33, '2017-03-11 21:30:22', 1, 2, 0, 10.00, 0.45, 3, 1, 'Transaction was confirmed by Ð˜Ð²Ð°Ð½ Ð˜Ð²Ð°Ð½Ð¾Ð² (user1)', ''),
(34, '2017-03-11 21:30:07', 1, 2, 0, 10.00, 0.45, 3, 1, 'Transaction was confirmed by Ð˜Ð²Ð°Ð½ Ð˜Ð²Ð°Ð½Ð¾Ð² (user1)', ''),
(35, '2017-03-11 21:30:01', 1, 2, 0, 80.00, 1.85, 3, 1, 'Transaction was confirmed by Ð˜Ð²Ð°Ð½ Ð˜Ð²Ð°Ð½Ð¾Ð² (user1)', ''),
(36, '2017-03-11 21:45:41', 2, 1, 0, 100.00, 2.25, 3, 2, 'Transaction was cancelled by System Administrator (system)', ''),
(37, '2017-03-12 01:29:41', -1, 1, 0, 1000.00, 20.25, 0, 1, '', ''),
(38, '2017-03-12 01:30:20', 1, 2, 0, 125.00, 2.75, 0, 1, 'ÑÐ¿Ð°ÑÐ¸Ð±Ð¾', ''),
(39, '2017-03-12 01:56:05', 2, 1, 0, 1.00, 0.27, 0, 1, '', ''),
(40, '2017-03-12 12:47:09', 2, 1, 0, 1.00, 0.27, 0, 1, '', ''),
(41, '2017-03-12 12:48:17', 2, 1, 0, 100.00, 2.25, 3, 0, 'Safe transaction to user1', ''),
(42, '2017-03-13 14:36:59', 1, 2, 0, 15.00, 0.55, 0, 1, '', ''),
(43, '2017-03-14 10:54:21', -1, 1, 0, 11.05, 1.05, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(44, '2017-03-14 12:01:51', 2, 1, 0, 20.00, 0.65, 0, 1, 'Ñ‚ÑƒÑ‚ Ð¼Ð¾Ð¹ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚', ''),
(45, '2017-03-14 18:32:35', -1, 1, 0, 11.05, 1.05, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(46, '2017-03-14 21:04:20', -1, 1, 0, 528.00, 28.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(47, '2017-03-14 21:07:25', -1, 1, 0, 380.30, 20.30, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(48, '2017-03-14 21:15:57', -1, 1, 0, 63.80, 3.80, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(49, '2017-03-14 21:17:17', -1, 1, 0, 8440.50, 440.50, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(50, '2017-03-14 21:23:27', -1, 1, 0, 53.25, 3.25, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(51, '2017-03-14 21:25:18', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(52, '2017-03-14 21:27:26', -1, 1, 0, 94.40, 5.40, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(53, '2017-03-14 21:27:57', -1, 1, 0, 94.40, 5.40, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(54, '2017-03-14 21:29:54', -1, 1, 0, 94.40, 5.40, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(55, '2017-03-14 21:30:09', -1, 1, 0, 94.40, 5.40, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(56, '2017-03-14 21:41:24', -1, 1, 0, 6.83, 0.83, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(57, '2017-03-14 21:52:55', -1, 1, 0, 90.18, 5.18, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(58, '2017-03-14 22:15:23', -1, 1, 0, 12.11, 1.11, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(59, '2017-03-14 22:16:02', -1, 1, 0, 84.90, 4.90, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(60, '2017-03-14 22:20:45', -1, 1, 0, 95.45, 5.45, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(61, '2017-03-14 22:28:28', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(62, '2017-03-14 22:29:20', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(63, '2017-03-14 22:29:37', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(64, '2017-03-14 22:29:54', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(65, '2017-03-14 22:30:12', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(66, '2017-03-14 22:30:53', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(67, '2017-03-14 22:31:01', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(68, '2017-03-14 22:31:04', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(69, '2017-03-14 22:31:19', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(70, '2017-03-14 22:34:59', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(71, '2017-03-14 22:35:49', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(72, '2017-03-14 22:36:07', -1, 1, 0, 96.51, 5.51, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(73, '2017-03-14 22:38:43', -1, 1, 0, 96.51, 5.51, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(74, '2017-03-14 22:39:08', -1, 1, 0, 96.51, 5.51, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(75, '2017-03-14 22:40:36', -1, 1, 0, 4.72, 0.72, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(76, '2017-03-14 22:41:03', -1, 1, 0, 4.72, 0.72, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(77, '2017-03-14 22:42:51', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(78, '2017-03-14 22:46:15', -1, 1, 0, 5.78, 0.78, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(79, '2017-03-14 22:47:06', -1, 1, 0, 5.78, 0.78, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(80, '2017-03-14 22:47:35', -1, 1, 0, 5.78, 0.78, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(81, '2017-03-14 22:48:08', -1, 1, 0, 5.78, 0.78, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n   ï¿½ Ð›Ð¾Ð³Ð¸Ð½       : user1\n   ï¿½ E-Mail : bootpaycom@gmail.com'),
(82, '2017-03-14 22:50:22', -1, 1, 0, 5.78, 0.78, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n    Ð›Ð¾Ð³Ð¸Ð½       : user1\n    E-Mail : bootpaycom@gmail.com'),
(83, '2017-03-14 22:50:37', -1, 1, 0, 6.83, 0.83, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n    Ð›Ð¾Ð³Ð¸Ð½       : user1\n    E-Mail : bootpaycom@gmail.com'),
(84, '2017-03-14 22:51:14', -1, 1, 0, 10.00, 1.00, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n    Ð›Ð¾Ð³Ð¸Ð½       : user1\n    E-Mail : bootpaycom@gmail.com'),
(85, '2017-03-14 22:53:22', -1, 1, 0, 11.05, 1.05, 1, 0, 'Regular Mail Check Depositing', 'TRANSACTION DETAILS:\n    Ð›Ð¾Ð³Ð¸Ð½       : user1\n    E-Mail : bootpaycom@gmail.com'),
(86, '2017-03-14 23:41:12', 1, -1, 0, 8.00, 0.00, 2, 0, 'Wire transfer with PayPal', 'paypal#8#mail@mail.ru#TRANSACTION DETAILS:\n   ï¿½ Ð¡ÑƒÐ¼Ð¼Ð°          : RUB8.00\n   ï¿½ ÐšÐ¾Ð¼Ð¸ÑÑÐ¸Ñ             : RUB0.00\n   ï¿½ Ð’ÑÐµÐ³Ð¾ Ð¾Ñ‚Ð¼ÐµÐ½ÐµÐ½Ð¾ : RUB8.00\n\n   ï¿½ Ð¢Ð¸Ð¿ Ð¿Ð»Ð°Ñ‚ÐµÐ¶Ð° : PayPal\n   ï¿½ Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑƒÑ‡Ð°Ñ‚ÐµÐ»Ñ Ð¿Ð»Ð°Ñ‚ÐµÐ¶ÐµÐ¹      : mail@mail.ru'),
(87, '2017-03-15 00:32:03', 1, -1, 0, 300.00, 0.00, 2, 1, 'Transaction was confirmed by System Administrator (system)', 'egold#300#123#TRANSACTION DETAILS:\nÐ¡ÑƒÐ¼Ð¼Ð° : RUB300.00\n   ÐšÐ¾Ð¼Ð¸ÑÑÐ¸Ñ : RUB0.00\n   Ð˜Ñ‚Ð¾Ð³Ð¾ Ðº Ð²Ñ‹Ð²Ð¾Ð´Ñƒ : RUB300.00\n\n   Ð¢Ð¸Ð¿ Ð¿Ð»Ð°Ñ‚ÐµÐ¶Ð° : WebMoney\n   Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑƒÑ‡Ð°Ñ‚ÐµÐ»Ñ Ð¿Ð»Ð°Ñ‚ÐµÐ¶ÐµÐ¹ : 123'),
(88, '2017-03-15 00:35:24', 2, -1, 0, 1.00, 0.00, 2, 0, 'Wire transfer with WebMoney', 'egold#1#123#TRANSACTION DETAILS:\nÐ¡ÑƒÐ¼Ð¼Ð° : RUB1.00\n   ÐšÐ¾Ð¼Ð¸ÑÑÐ¸Ñ : RUB0.00\n   Ð˜Ñ‚Ð¾Ð³Ð¾ Ðº Ð²Ñ‹Ð²Ð¾Ð´Ñƒ : RUB1.00\n\n   Ð¢Ð¸Ð¿ Ð¿Ð»Ð°Ñ‚ÐµÐ¶Ð° : WebMoney\n   Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑƒÑ‡Ð°Ñ‚ÐµÐ»Ñ Ð¿Ð»Ð°Ñ‚ÐµÐ¶ÐµÐ¹ : 123'),
(89, '2017-03-15 00:37:55', 2, -1, 0, 1.00, 0.00, 2, 0, 'Wire transfer with WebMoney', ''),
(90, '2017-03-15 00:38:51', 2, -1, 0, 2.00, 0.00, 2, 1, 'Transaction was confirmed by System Administrator (system)', 'netpay#2#123#TRANSACTION DETAILS:\nÐ¡ÑƒÐ¼Ð¼Ð° : RUB2.00\n   ÐšÐ¾Ð¼Ð¸ÑÑÐ¸Ñ : RUB0.00\n   Ð˜Ñ‚Ð¾Ð³Ð¾ Ðº Ð²Ñ‹Ð²Ð¾Ð´Ñƒ : RUB2.00\n\n   Ð¢Ð¸Ð¿ Ð¿Ð»Ð°Ñ‚ÐµÐ¶Ð° : Ð¯Ð½Ð´ÐµÐºÑ Ð”ÐµÐ½ÑŒÐ³Ð¸\n   Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑƒÑ‡Ð°Ñ‚ÐµÐ»Ñ Ð¿Ð»Ð°Ñ‚ÐµÐ¶ÐµÐ¹ : 123');

-- --------------------------------------------------------

--
-- Структура таблицы `dp_visits`
--

CREATE TABLE IF NOT EXISTS `dp_visits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `address` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `member` (`member`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='History of members IPs' AUTO_INCREMENT=33 ;

--
-- Дамп данных таблицы `dp_visits`
--

INSERT INTO `dp_visits` (`id`, `member`, `date`, `address`) VALUES
(1, 1, '2017-03-10 10:23:37', '185.23.83.180'),
(2, 1, '2017-03-10 10:29:19', '185.23.83.180'),
(3, 1, '2017-03-10 10:43:03', '185.23.83.180'),
(4, 1, '2017-03-10 11:24:12', '185.23.83.180'),
(5, 1, '2017-03-10 13:27:47', '185.23.83.180'),
(6, 1, '2017-03-10 14:05:19', '185.23.83.180'),
(7, 1, '2017-03-10 16:37:57', '185.23.83.180'),
(8, 1, '2017-03-10 16:42:32', '185.23.83.180'),
(9, 1, '2017-03-10 18:51:23', '185.23.83.180'),
(10, 1, '2017-03-10 21:29:06', '185.23.83.180'),
(11, 1, '2017-03-11 09:36:34', '185.23.83.180'),
(12, 2, '2017-03-11 12:50:11', '185.23.83.180'),
(13, 1, '2017-03-11 20:58:17', '185.23.83.180'),
(14, 1, '2017-03-11 21:26:09', '185.23.83.180'),
(15, 1, '2017-03-12 01:28:58', '185.23.83.180'),
(16, 1, '2017-03-12 01:30:56', '185.23.83.180'),
(17, 1, '2017-03-12 02:04:33', '185.23.83.180'),
(18, 2, '2017-03-12 02:05:16', '185.23.83.180'),
(19, 2, '2017-03-12 02:35:19', '185.23.83.180'),
(20, 2, '2017-03-12 03:28:54', '185.23.83.180'),
(21, 2, '2017-03-12 13:34:33', '185.23.83.180'),
(22, 1, '2017-03-13 13:26:58', '185.23.83.180'),
(23, 1, '2017-03-14 09:35:12', '185.23.83.180'),
(24, 2, '2017-03-14 09:54:16', '185.23.83.180'),
(25, 1, '2017-03-14 09:56:42', '185.23.83.180'),
(26, 2, '2017-03-14 12:02:23', '185.23.83.180'),
(27, 1, '2017-03-14 12:07:58', '185.23.83.180'),
(28, 1, '2017-03-14 18:29:28', '185.23.83.180'),
(29, 2, '2017-03-14 18:29:55', '185.23.83.180'),
(30, 2, '2017-03-15 00:35:10', '185.23.83.180'),
(31, 1, '2017-03-15 09:32:55', '185.23.83.180'),
(32, 1, '2017-03-15 10:14:25', '185.23.83.180');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
