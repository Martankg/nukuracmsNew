<?php
define('SYSTEM', 'NUKURACMS');
define('HOST', mb_substr(dirname(__FILE__), 0, -8));
require(HOST.'/system/System.php');
require('/installer.php');
session_start();
$Installer = Installer::set();
ob_start();
$Installer->display();
?>