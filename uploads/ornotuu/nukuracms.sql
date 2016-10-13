-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Окт 11 2016 г., 04:15
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `newbase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `components`
--

CREATE TABLE IF NOT EXISTS `components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `version` varchar(11) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(32) NOT NULL,
  `visibility` int(11) NOT NULL,
  `link` varchar(32) NOT NULL,
  `config` text NOT NULL,
  `files` text NOT NULL,
  `table` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `components`
--

INSERT INTO `components` (`id`, `icon`, `name`, `version`, `description`, `author`, `visibility`, `link`, `config`, `files`, `table`) VALUES
(1, 'no', 'Колдонуучулар', '1.0', '', 'Багыт', 1, 'users', 'perpage:4;', '', ''),
(2, 'no', 'lesssn', '1.0', '', 'Багыт', 1, 'get', '', '', ''),
(3, 'no', 'Меню', '1.0', '', 'Багыт', 1, 'menu', '', '', ''),
(4, 'no', 'Тасма', '1.0', '', 'Багыт', 1, 'action', 'perpage:10;', '', ''),
(5, 'no', 'Администрация', '1.0', '', 'Багыт', 1, 'administration', '', '', ''),
(6, 'no', 'Экзамен', '1.0', '', 'Багыт', 1, 'examine', '', '', ''),
(8, 'no', 'Контент', '1.0', '', 'Багыт', 1, 'content', '', '', ''),
(20, 'no', 'Разработчик', '1.0', '', 'Багыт Корпорациясы', 1, 'developer', '', '', ''),
(23, 'no', '', '1.0', 'fdgfdgd', 'Nukura', 1, 'blabla', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `com_action`
--

CREATE TABLE IF NOT EXISTS `com_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `namecomponent` varchar(32) NOT NULL,
  `action` varchar(32) NOT NULL,
  `date` datetime NOT NULL,
  `body` text NOT NULL,
  `image` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `com_action`
--

INSERT INTO `com_action` (`id`, `user_id`, `namecomponent`, `action`, `date`, `body`, `image`) VALUES
(1, -1, 'users', '', '2015-09-08 12:04:35', ' катталууда, тосуп алабыз!', 'image.png'),
(2, -1, 'users', '', '2015-09-23 06:14:15', '<a href="/users/profile/aziz.toktosunov">Aziz Toktosunov</a> катталууда, тосуп алабыз!', 'image.png'),
(3, -1, 'users', '', '2015-09-28 03:13:33', '<a href="/users/profile/haker">haker </a> катталууда, тосуп алабыз!', 'image.png'),
(4, -1, 'users', '', '2015-09-28 03:51:48', '<a href="/users/profile/adminka">123 </a> катталууда, тосуп алабыз!', 'image.png'),
(5, -1, 'users', '', '2015-09-28 04:28:06', '<a href="/users/profile/jhkj">134 </a> катталууда, тосуп алабыз!', 'image.png'),
(6, -1, 'users', '', '2015-10-09 10:50:24', '<a href="/users/profile/aijan">Айжан Сариева</a> катталууда, тосуп алабыз!', 'image.png');

-- --------------------------------------------------------

--
-- Структура таблицы `com_admin_menu`
--

CREATE TABLE IF NOT EXISTS `com_admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `turned_on` tinyint(1) NOT NULL,
  `value` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `com_admin_menu`
--

INSERT INTO `com_admin_menu` (`id`, `turned_on`, `value`, `link`, `level`, `type`) VALUES
(1, 1, '<img alt="" src="/components/administrator/templates/default/img/components.png" style="vertical-align:middle;height:48px; width:48px" title="Компоненттер"/>', 'components', 1, 'menulist'),
(2, 1, '<img alt="" src="/components/administrator/templates/default/img/widgets.png" style="vertical-align:middle;height:48px; width:48px" title="Виджеттер"/>', 'widgets', 1, 'menulist'),
(3, 1, '<img alt="" src="/components/administrator/templates/default/img/settings.png" style="vertical-align:middle;height:48px; width:48px" title="Орнотуулар"/>', 'settings', 1, 'menulist'),
(4, 1, '<img alt="" src="/components/administrator/templates/default/img/upload.png" style="vertical-align:middle;height:48px; width:48px" title="Жүктөө"/>', 'add', 1, 'menulist'),
(5, 1, 'Кошуу', 'components/actions/add', 1, 'actions'),
(6, 1, 'Кошуу', 'components/content/add/item', 1, 'content'),
(7, 1, 'MIMIMIMI', 'components/content/add', 1, 'home'),
(8, 1, 'Жаңысын кошуу', 'components/add', 1, 'components'),
(9, 1, 'Жаңысын кошуу', 'widgets/add', 1, 'widgets'),
(10, 1, '<img alt="" src="/components/administrator/templates/default/img/templates.png" style="vertical-align:middle;height:48px; width:48px" title="Шаблон орнотуулары"/>', 'components/template', 1, 'menulist'),
(11, 1, 'Жаңысын жүктөө', 'components/upload', 1, 'components'),
(12, 1, 'Жаңысын жүктөө', 'widgets/upload', 1, 'widgets'),
(13, 1, 'Жаңысын жүктөө', 'components/upload', 1, 'widgets'),
(14, 1, 'Категория Кошуу', 'components/content/add/category', 1, 'content'),
(15, 1, 'Категория Кошуу', 'components/loads/add/category', 1, 'loads'),
(16, 1, 'Кошуу', 'components/loads/add/item', 1, 'loads'),
(17, 1, 'Кошуу', 'components/menu/add', 1, 'menu'),
(18, 1, 'Кошуу', 'components/users/add', 1, 'users');

-- --------------------------------------------------------

--
-- Структура таблицы `com_content_cat`
--

CREATE TABLE IF NOT EXISTS `com_content_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `shortcut` text NOT NULL,
  `author` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `image` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `turned_on` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `com_content_cat`
--

INSERT INTO `com_content_cat` (`id`, `parent_id`, `shortcut`, `author`, `level`, `name`, `description`, `image`, `date`, `turned_on`) VALUES
(1, 0, 'general', 1, 1, 'Баары', '', 0, '2015-06-09 04:11:24', 1),
(2, 1, 'articles', 1, 2, 'Макалалар', '<p>Бул жерде макалар болмокчу!</p>\r\n', 0, '2015-06-04 20:24:43', 1),
(3, 1, 'news', 1, 2, 'Жаңылыктар', '<p>Daa</p>\r\n', 0, '2015-06-04 20:21:36', 1),
(4, 3, 'Kyrgyzstan', 1, 3, 'Кыргызстан', '', 0, '2015-06-07 11:31:15', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `com_content_item`
--

CREATE TABLE IF NOT EXISTS `com_content_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `shortcut` varchar(64) NOT NULL,
  `name` tinytext NOT NULL,
  `turned_on` int(11) NOT NULL,
  `image` int(11) NOT NULL,
  `read` int(11) NOT NULL,
  `author` int(11) NOT NULL DEFAULT '1',
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `com_content_item`
--

INSERT INTO `com_content_item` (`id`, `cat_id`, `shortcut`, `name`, `turned_on`, `image`, `read`, `author`, `text`, `date`) VALUES
(1, 3, 'Жаңы жанылык.html', 'Жаңы жанылык', 1, 0, 0, 1, 'me you tey', '2015-05-20 08:26:39'),
(2, 2, '2_yes.html', 'yes', 1, 0, 0, 1, '<p>me you tey tell you!</p>\r\n', '2015-05-29 08:26:39'),
(3, 2, 'this_is.html', 'Бул жаңы макала ', 1, 2, 0, 1, '<p>Глубина очага землетрясения поднимает термокарст, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Туффит, формируя аномальные геохимические ряды, разогревает плейстоцен, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Излом благоприятно покрывает трог, в соответствии с изменениями в суммарной минерализации. Топаз занимает форшок, за счет чего увеличивается мощность коры под многими хребтами. Ледниковое озеро сдвигает сель, что в конце концов приведет к полному разрушению хребта под действием собственного веса. При описанных условиях алмаз первичен.</p>\n', '2015-05-05 15:16:38'),
(4, 3, 'bakuut.html', 'bakyyt', 1, 0, 0, 1, 'meekmk jerk hkrtkrthktrh gkjr gkrhkhg krthg krtg lkrt', '2015-05-23 18:37:13'),
(5, 4, '5_kih_porod,_dolee_pozdney_blokovoy_tektonik.html', 'ких пород, но и проявлениями долее поздней блоковой тектоники. Туффит, формируя аномальные геохимические ряды, разогревает плейстоцен, что', 1, 8, 0, 1, '<p style="text-align:justify">Глубина очага землетрясения поднимает термокарст, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Туффит, формируя аномальные геохимические ряды, разогревает плейстоцен, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Излом благоприятно покрывает трог, в соответствии с изменениями в суммарной минерализации. Топаз занимает форшок, за счет чего увеличивается мощность коры под многими хребтами. Ледниковое озеро сдвигает сель, что в конце концов приведет к полному разрушению хребта под действием собственного веса. При описанных условиях алмаз первичен.</p>\r\n', '2015-05-05 15:16:38'),
(6, 2, '6_Daaa.html', 'Дааа', 1, 0, 0, 1, '<p>вот</p>\r\n', '2015-05-24 23:40:44'),
(7, 2, 'adminder.html', 'adminder', 1, 11, 0, 1, '<p>new with image yes</p>\r\n', '2015-05-27 18:56:15'),
(8, 3, '8_Deputattar_pasporttordun_myyzamsyz_berilishi_boyuncha_.html', 'Депутаттар паспорттордун мыйзамсыз берилиши боюнча маселени талкуулоого Темир Сариевдин келишин талап кылышты', 1, 12, 0, 1, '<p>Жогорку Кеңештин 28-майдагы жыйынында депутаттар паспорттордун мыйзамсыз берилиши боюнча маселени талкуулоо үчүн парламентке Темир Сариевдин келишин талап кылышты. Депутат Кенжебек Бокоевдин айтымында, мыйзам паспорт берүү улуттук коопсуздукка коркунуч келтирген маселе болгондугунан өкмөт башчы же анын орун басары маалымат бериши керек. &quot;Эгер мамлекеттик кызматтардын же министрликтердин жетекчилери келсе, алар өз мекемелери тууралуу эле айтып беришет. Бизге толук маалымат керек&quot;,- деди Бокоев. Башка депутат Исмаил Исаков премьер-министрге паспорттор боюнча суроолору көп экенин айтты. Төраганын орун басары Төрөбай Зулпукаров премьер-министр расмий иш сапары менен Астанага жөнөп кеткенин, ал эми вице-премьер-министр Тайырбек Сарпашев Талас облусунда иш сапары менен жүргөнүн маалымдады. Суроо-талаптардын жыйынтыгында добуш берүү аркылуу бул маселени кароо кийинки отурумга жылдырылды. Айта кетсек, ИИМдин маалыматына ылайык, өлкөдө мыйзамсыз берилген паспорттордун саны 40 миңге жетти.</p>\r\n', '2015-05-29 03:07:59'),
(9, 2, 'jyjgyjh.html', 'иапиаи', 1, 0, 0, 1, '<p>апиаивип ипаиви а и</p>\r\n', '2015-05-31 02:12:13'),
(10, 4, '10_Negedir_ishtebey_zhatat.html', 'Негедир иштебей жатат', 1, 0, 0, 1, '<p>Кыйналып кеттим</p>\r\n', '2015-06-04 20:03:13'),
(11, 3, '11_SFGFDGFD.html', 'SFGFDGFD', 1, 11, 0, 1, '<p>DFGFDGK&lt;DFLG&lt; F&lt;GL DF&lt;G:DFG &lt;D:F GFD</p>\r\n', '2015-06-15 12:30:50'),
(12, 3, '12_nahhas_ssd.html', 'nahhas ssd', 1, 0, 0, 1, '<p>dv d&nbsp;</p>\r\n', '2015-06-15 12:32:45'),
(13, 3, '13_Administrator.html', 'Администратор', 1, 13, 0, 1, '<p style="text-align: right;"><span style="font-size:14px">hvjvhmb mn,m nmn ,mn</span></p>\r\n', '2015-06-15 12:44:06');

-- --------------------------------------------------------

--
-- Структура таблицы `com_examine`
--

CREATE TABLE IF NOT EXISTS `com_examine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answers` text NOT NULL,
  `true_answer` varchar(1) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `com_examine`
--

INSERT INTO `com_examine` (`id`, `question`, `answers`, `true_answer`, `category`) VALUES
(1, 'Компьютерная графика деген эмне?', 'Эч теке;Билбейм;', '3', 1),
(2, 'Glut китепканасын жүктөөнү билесиңби?', 'Ооба;Жок;Эч теке;Билбейм;', '1', 1),
(3, 'Үлгү суроо', 'Ооба;Жок;Эч теке;Билбейм;', '1', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `com_examine_cat`
--

CREATE TABLE IF NOT EXISTS `com_examine_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `display` varchar(32) NOT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `com_examine_cat`
--

INSERT INTO `com_examine_cat` (`id`, `name`, `description`, `display`, `icon`) VALUES
(1, 'OpenGL', 'Мисал', '1', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `com_examine_result`
--

CREATE TABLE IF NOT EXISTS `com_examine_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `result` varchar(64) NOT NULL,
  `results` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `com_examine_result`
--

INSERT INTO `com_examine_result` (`id`, `user_id`, `cat_id`, `result`, `results`) VALUES
(1, 1, 1, 'true:0;false:3;', '1:2;2:3;3:3;'),
(2, 0, 1, 'true:0;false:3;', '1:;2:;3:;'),
(3, 0, 1, 'true:0;false:3;', '1:;2:;3:;');

-- --------------------------------------------------------

--
-- Структура таблицы `com_loads_cat`
--

CREATE TABLE IF NOT EXISTS `com_loads_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `shortcut` varchar(32) NOT NULL,
  `author` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `value` text NOT NULL,
  `description` text NOT NULL,
  `image` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `turned_on` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `com_loads_cat`
--

INSERT INTO `com_loads_cat` (`id`, `parent_id`, `shortcut`, `author`, `level`, `value`, `description`, `image`, `date`, `turned_on`) VALUES
(1, 0, 'general', 1, 1, 'Баары', 'Файлдардын баары!', 0, '2015-06-16 00:00:00', 1),
(2, 1, 'components', 1, 2, 'Компоненттер', 'Файлдар', 0, '2015-06-16 00:00:00', 1),
(3, 1, 'widgets', 1, 2, 'Виджеттер', 'Файлдар', 0, '2015-06-16 00:00:00', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `com_loads_item`
--

CREATE TABLE IF NOT EXISTS `com_loads_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `shortcut` varchar(32) NOT NULL,
  `name` text NOT NULL,
  `turned_on` int(11) NOT NULL,
  `image` int(11) NOT NULL,
  `downloaded` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL,
  `file` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `com_menu`
--

CREATE TABLE IF NOT EXISTS `com_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `com_menu`
--

INSERT INTO `com_menu` (`id`, `parent_id`, `level`, `order`, `icon`, `value`, `link`, `cat_id`, `visibility`) VALUES
(1, 0, 0, 5, '', 'ADMINISTRATION', '', 2, 1),
(2, 0, 0, 3, '', 'MESSAGE', 'users/message', 2, 1),
(4, 0, 0, 0, '', 'USERS', 'users', 1, 1),
(5, 0, 0, 0, '', 'Жүктөө', 'get', 1, 1),
(7, 0, 0, 0, '', 'Жаңылыктар', 'content/news', 1, 1),
(8, 0, 0, 0, '', 'Макалалар', 'content/articles', 1, 1),
(9, 0, 0, 0, '', 'Экзамен', 'examine', 1, 1),
(10, 0, 0, 10, '', 'LOGOUT', 'users/do/logout', 2, 1),
(11, 0, 0, 4, '', 'FRIENDS', 'users/friends', 2, 1),
(12, 0, 0, 2, '', 'NOTICE', '/users/message/-1#last/', 2, 1),
(14, 0, 0, 1, '', 'LOGIN', '/users/login', 3, 1),
(15, 0, 0, 2, '', 'REGISTRATION', 'users/registration', 3, 1),
(16, 0, 0, 1, '', 'USER_LOGIN', 'users/profile', 2, 1),
(17, 0, 0, -1, '', 'HOME', '/', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `com_menu_cat`
--

CREATE TABLE IF NOT EXISTS `com_menu_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `com_menu_cat`
--

INSERT INTO `com_menu_cat` (`id`, `name`) VALUES
(1, 'Башкы меню'),
(2, 'Колдонуучу менюсу'),
(3, 'Конок менюсу');

-- --------------------------------------------------------

--
-- Структура таблицы `com_photos`
--

CREATE TABLE IF NOT EXISTS `com_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `description` text NOT NULL,
  `author` int(11) NOT NULL,
  `filename` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `com_users`
--

CREATE TABLE IF NOT EXISTS `com_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(32) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(32) NOT NULL,
  `group` int(11) NOT NULL,
  `jynysy` int(11) NOT NULL,
  `show` int(11) NOT NULL,
  `status` varchar(1000) NOT NULL,
  `regdate` datetime NOT NULL,
  `email` varchar(30) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `activate` int(11) NOT NULL,
  `lastvisit` datetime NOT NULL,
  `restore` varchar(16) NOT NULL,
  `birthdate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `com_users`
--

INSERT INTO `com_users` (`id`, `login`, `password`, `name`, `group`, `jynysy`, `show`, `status`, `regdate`, `email`, `avatar`, `activate`, `lastvisit`, `restore`, `birthdate`) VALUES
(-1, 'info', 'false', 'Билдирүү', 5, 0, 1, '', '0000-00-00 00:00:00', 'info@bagyt.kg', '-1', 1, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(1, 'admin', '660f17683d0c6a822d2fc0e6434f9343', 'Администратор ', 1, 1, 1, 'Саламатсыздарбы!', '2015-09-08 12:04:34', 'kg.bakytt@mail.ru', '/uploads/images/users/me.png', 0, '2015-10-09 11:15:14', 'o1dMwBqhk3Mr9Rpu', '0000-00-00 00:00:00'),
(2, 'aziz.toktosunov', 'a00de8bd0f12de47ea4914f9296ef7b4', 'Aziz Toktosunov', 4, 1, 1, 'Саламатсыздарбы!', '2015-09-23 06:14:15', 'aziz.toktosunov@mail.ru', '2', 0, '2015-09-23 06:15:57', 'RxKLhNAUDiyp8a8Z', '0000-00-00 00:00:00'),
(6, 'aijan', 'e10adc3949ba59abbe56e057f20f883e', 'Айжан Сариева', 4, 2, 1, 'Саламатсыздарбы!', '2015-10-09 10:50:22', 'sarieva_1995@bk.ru', '6', 0, '2015-10-09 11:16:44', 'YjL3nxZvx0pbc3tb', '0000-00-00 00:00:00'),
(7, 'fddfdf', 'cityohna', 'jnkjhj fdvfdv', 4, 0, 1, 'Саламатсыздарбы!', '2016-02-02 00:46:41', 'dfvdfv@kl', '0', 0, '2016-02-02 00:46:41', '', '0000-00-00 00:00:00'),
(8, 'fddfdf5', 'cityohna', 'jnkjhj fdvfdv', 4, 0, 1, 'Саламатсыздарбы!', '2016-02-02 00:54:54', 'dfvdfv@kl', '0', 0, '2016-02-02 00:54:54', '', '0000-00-00 00:00:00'),
(9, 'fddfdf55', '660f17683d0c6a822d2fc0e6434f9343', 'jnkjhj fdvfdv', 4, 0, 1, 'Саламатсыздарбы!', '2016-02-02 00:58:38', 'dfvdfv@kl', '0', 0, '2016-02-02 00:58:38', '', '0000-00-00 00:00:00'),
(10, 'fddfdf555', '660f17683d0c6a822d2fc0e6434f9343', 'jnkjhj fdvfdv', 4, 0, 1, 'Саламатсыздарбы!', '2016-02-02 01:01:49', 'dfvdfv@kl', '0', 0, '2016-02-02 01:01:49', '', '0000-00-00 00:00:00'),
(11, 'blablsa', 'e10adc3949ba59abbe56e057f20f883e', 'hjkjn hkjhkjhb', 4, 1, 1, 'Саламатсыздарбы!', '2016-02-24 01:00:55', 'hbhjb@gj', '0', 0, '2016-02-24 01:00:55', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `com_users_friends`
--

CREATE TABLE IF NOT EXISTS `com_users_friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `is_accepted` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `com_users_friends`
--

INSERT INTO `com_users_friends` (`id`, `from_id`, `to_id`, `date`, `is_accepted`) VALUES
(1, 2, 1, '2015-09-23 06:15:33', 1),
(2, 3, 1, '2015-10-08 10:01:54', 1),
(3, 6, 1, '2015-10-09 10:53:21', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `com_users_groups`
--

CREATE TABLE IF NOT EXISTS `com_users_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `access` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `com_users_groups`
--

INSERT INTO `com_users_groups` (`id`, `name`, `access`) VALUES
(1, 'ADMINISTRATORS', '1'),
(2, 'MODERATORS', '2'),
(3, 'REDACTORS', '3'),
(4, 'USERS', '4'),
(5, 'GUESTS', '5');

-- --------------------------------------------------------

--
-- Структура таблицы `com_users_message`
--

CREATE TABLE IF NOT EXISTS `com_users_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `from_del` int(11) NOT NULL,
  `to_del` int(11) NOT NULL,
  `message` text NOT NULL,
  `delivered` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `com_users_message`
--

INSERT INTO `com_users_message` (`id`, `from_id`, `to_id`, `date`, `from_del`, `to_del`, `message`, `delivered`) VALUES
(1, 2, 1, '2015-09-23 06:15:50', 0, 0, 'kandai', 1),
(2, 1, 2, '2015-09-28 05:07:49', 0, 0, 'Жакшы. Өзүң кандайсың?', 0),
(3, 1, 2, '2015-10-06 07:51:56', 0, 0, 'hkihjk', 0),
(4, 6, 1, '2015-10-09 10:53:37', 0, 0, '135', 1),
(5, 1, 6, '2015-10-09 10:56:45', 0, 0, '136', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `notice` text NOT NULL,
  `date` datetime NOT NULL,
  `delivered` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `notice`
--

INSERT INTO `notice` (`id`, `from_id`, `to_id`, `notice`, `date`, `delivered`) VALUES
(2, 1, 2, '<a href="/users/profile/admin">Администратор </a> AND_YOU_FRIENDS_RIGHT_NOW', '2015-09-28 03:03:32', 0),
(4, 1, 3, '<a href="/users/profile/admin">Администратор </a> AND_YOU_FRIENDS_RIGHT_NOW', '2015-10-08 10:04:26', 0),
(6, 1, 6, '<a href="/users/profile/admin">Администратор </a> AND_YOU_FRIENDS_RIGHT_NOW', '2015-10-09 10:56:30', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `folder` varchar(32) NOT NULL,
  `version` text NOT NULL,
  `positions` text NOT NULL,
  `description` text NOT NULL,
  `author` varchar(64) NOT NULL,
  `image` varchar(256) NOT NULL,
  `files` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `templates`
--

INSERT INTO `templates` (`id`, `name`, `folder`, `version`, `positions`, `description`, `author`, `image`, `files`) VALUES
(1, 'Өздүк калып', 'default', '1.0', 'usermenu\nmenu\ntop\nleft\nup_bottom\nbottom_1\nbottom_2\nbottom_3\nbottom_4', 'Бул default калып.', 'Багыт Корпорациясы', '/templates/default/images/positions.png', ''),
(4, 'Жашыл калып', 'green', '1.2', 'usermenu,menu,top,left,up_bottom,bottom_1,bottom_2,bottom_3,bottom_4', 'Бул жаңы калып.', 'Багыт Корпорациясы', '/templates/green/images/positions.png', '');

-- --------------------------------------------------------

--
-- Структура таблицы `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `title` varchar(64) NOT NULL,
  `version` varchar(16) NOT NULL,
  `external` int(11) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `author` varchar(64) NOT NULL,
  `body` text NOT NULL,
  `visibility` int(11) NOT NULL,
  `position` varchar(32) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `show_on_page` varchar(500) NOT NULL,
  `config` text NOT NULL,
  `files` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Дамп данных таблицы `widgets`
--

INSERT INTO `widgets` (`id`, `name`, `title`, `version`, `external`, `description`, `author`, `body`, `visibility`, `position`, `order`, `show_on_page`, `config`, `files`) VALUES
(3, 'main_menu', '', '1.0', 1, 'Жаңы меню', 'Багыт', 'menu', 1, 'menu', 1, 'all', 'show_title:0;access:0;using_active:1;type:1;template:widget;', ''),
(12, 'usermenu', '', '1.0', 1, 'Жаңы меню', 'Багыт', 'menu', 1, 'usermenu', 1, 'all', 'show_title:0;access:2;using_active:0;type:2;template:widget;', ''),
(8, 'usermenu', 'Коноктор менюсу', '1.0', 1, 'Жаңы меню', 'Багыт', 'menu', 1, 'usermenu', 1, 'all', 'show_title:0;access:1;using_active:0;type:3;template:widget;', ''),
(42, 'Авторизация', 'Кирүү', '1.9996', 1, 'Бул виджет сайтка кирүү үчүн колдонулат.', 'Багыт Корпорациясы', 'auth', 1, 'left', 1, 'all', 'show_title:1;access:1;template:widget;', 'widgets/\nwidgets/auth/\nwidgets/auth/widget.php\ntemplates/\ntemplates/default/\ntemplates/default/widgets/\ntemplates/default/widgets/wid_auth.php\n'),
(13, 'new', '', '1.0', 0, 'cmldskmclksnls', 'Bakyt', '<div class="title">Кирүү <div style="float:right;">- = X</div></div>\r\n					<div class="body">\r\nIt is a nothing!							</div>', 1, 'left', 1, '/users,/examine', 'show_title:1;template:widget;', ''),
(41, 'hghf', '', '1.0', 0, 'Бул виджет ички болуп эсептелет', '<a href="/users/1">Администратор </a>', '<h4><img style="padding: 5px; float: left;" src="../../../uploads/user_uploaded//back.jpg" width="64" height="64" /><strong>Биздин конструкторду тандагандыгыңыз үчүн чоң рахмат!</strong></h4>\r\n<h4><strong>Бул виджетти оңдоо же өчүрүү үчүн <a href="admin/widgets/41/">администратор/виджеттер.</a></strong></h4>\r\n<div>&nbsp;</div>', 1, 'top', 1, '/', 'show_title:0;access:0;template:widget;', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
