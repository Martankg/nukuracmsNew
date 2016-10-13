<?php
class Installer extends System{
	public $dbName;
	private static $set;
	function __construct(){
		self::setClasses();
		if($_SESSION['LANGUAGE']) define('LANGUAGE', $_SESSION['LANGUAGE']);
		else define('LANGUAGE', 'kg');
		self::loadSystemLanguages();
	}
	public static function set($set=false){
		if(self::$set === null){
			self::$set = new self($set);
		}
		return self::$set;
	}
	public static function sendNotice($type, $message, $redirect){
		$_SESSION['notice']['type'] = $type;
		$_SESSION['notice']['message'] = $message;
		$_SESSION['notice']['redirect'] = $redirect;
		self::redirect($redirect);
	}
	public function clearNotices(){
		$_SESSION['notice']=array();
	}
	public static function getListFiles($list){
		$list = scandir(HOST.$list);
		$files = array();
		$cms_files = file('files_list.txt');
		for($i = 0; $i<count($cms_files); $i++){
			for($j = 2; $j<count($list); $j++){
				if (trim(htmlspecialchars($cms_files[$i])) == $list[$j]){ $exists = 1; break;}
				else $exists = 0;
			}
			$ext = trim(strstr($cms_files[$i], '.'), '.');
			if ($ext != '') $ff = 'файл';
			else $ff = 'папка';
			if ($exists == 0){
				$_SESSION['HIDE_NEXT'] = '<p style="color:#fff;">"'.$cms_files[$i].'" аталышындагы '.$ff.'  табылган жок</p>';
			}
			$exists = self::compileTF($exists);
			if (file_exists('/ornotuu/img/icons/'.$ext.'.png')) $ext = '<img src="/ornotuu/img/icons/'.$ext.'.png">';
			else if (!$ext) $ext = '<img src="/ornotuu/img/icons/folder.png">';
			else $ext = '<img src="/ornotuu/img/icons/file.png">';
			$files[($i)] = '<tr><td class="icon">'.$ext.'</td><td class="name">'.$cms_files[$i].'</td><td align="right" width="100px">'.$exists.'</td></tr>';
		}
		return $files;
	}
	public static function setIcons($p1){
		@$smile = array_splice(scandir(hostPATH.'/ornotuu/img/icons/'), 2);
		for ($i = 0; $i < count($smile); $i++){
				if ($smile[$i] == $p1) $smiles = '<img src="/ornotuu/img/icons/php.png" />';
		}
		return $smiles;
	}
	public static function compileTF($p1){
		if($p1 == 0) return '<img src="/ornotuu/img/false.png">';
		else return '<img src="/ornotuu/img/true.png">';
	}
	public static function configCreat($STG){
		$notice = "";
		if (!$STG['DB_HOST'] or !$STG['DB_NAME'] or !$STG['DB_USER']) $notice = 'Орнотууда ката чыкты, киргизилген маалыматтарды текшериңиз.';
		if ($notice) return $notice;
		$e = Configuration::configCreatMini($STG);
		$s = DB::set()->importSqlFile(HOST.'/ornotuu/nukuracms.sql');
		return false;
	}
	public static function display(){
		global $_LANG;
		if ($_GET['do'] == 'install' and $_POST['INSTALL']){
			$notice = self::configCreat($_POST);
			if ($notice) {
				self::sendNotice(3, $notice, '/ornotuu');
			}
		}
		include(HOST.'/ornotuu/page.php');
	}
}
?>