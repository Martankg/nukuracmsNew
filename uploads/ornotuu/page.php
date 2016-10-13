<?php
if ($_POST['INSTALL']){
	$_SESSION['DB_HOST'] = $_POST['DB_HOST'];
	$_SESSION['DB_NAME'] = $_POST['DB_NAME'];
	$_SESSION['DB_USER'] = $_POST['DB_USER'];
	$_SESSION['SITE_NAME'] = $_POST['SITE_NAME'];
	$_SESSION['DESCRIPTION'] = $_POST['DESCRIPTION'];
	$_SESSION['KEYWORDS'] = $_POST['KEYWORDS'];
	$_SESSION['ADMIN_LINK'] = $_POST['ADMIN_LINK'];
	$_SESSION['ADMIN_EMAIL'] = $_POST['ADMIN_EMAIL'];
	$_SESSION['ADMIN_LOGIN'] = $_POST['ADMIN_LOGIN'];
	$_SESSION['NOREPLY_EMAIL'] = $_POST['NOREPLY_EMAIL'];
}
$Installer = Installer::set();
?>
<html>
<head>
<title><?php echo $_LANG['INSTALLATION'].' - NukuraCMS v'.self::VERSION;?></title>
<meta charset="utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/styles.css" rel="stylesheet" type="text/css">
<script src="js/bagyt.js" type="text/javascript">
</script>
<?php
if ($_GET['do'] != 'install') {
	$_SESSION['INSTALL'] = 'style="background:#1e282c;color:#fff;"';
	$_SESSION['INSTALL_DISPLAY'] = '';
	$_SESSION['INSTALLING'] = '';
	$_SESSION['INSTALLING_DISPLAY'] = 'style="display:none; visibility:hidden;"';
}
else {
	$_SESSION['INSTALL'] = '';
	$_SESSION['INSTALL_DISPLAY'] = 'style="display:none; visibility:hidden;"';
	$_SESSION['INSTALLING'] = 'style="background:#3c3b3a;color:#fff;"';
	$_SESSION['INSTALLING_DISPLAY'] = '';
}
?>
</head>
<body>
<div id="login">
<form  action="/ornotuu/?do=install" method="POST">
				<div class="admin_login">
				<div class="header_login"><img src="/ornotuu/img/logo.png" style="vertical-align:bottom;"> NukuraCMS v<?php echo self::VERSION.' - '.$_LANG['INSTALLATION'];?><div style="display:inline-block;float:right;"><select name="LANGUAGE"><?php  $p = self::getDirList('/system/languages/', 'option'); echo $p;?></select></div></div>
				<div id="menu" class="tree">
				<ul class="menu">
				<li id="LINK_ABOUT" <?php echo $_SESSION['INSTALL'];?> ><?php echo $_LANG['ABOUT_CMS'];?></li>
				<li id="LINK_F"><?php echo $_LANG['FILES'];?></li>
				<li id="LINK_D"><?php echo $_LANG['DATABASE'];?></li>
				<li id="LINK_S"><?php echo $_LANG['SITE_CONFIGURATION'];?></li>
				<li id="LINK_A"><?php echo $_LANG['ADMIN_CONFIGURATION'];?></li>
				<li id="LINK_I" <?php echo $_SESSION['INSTALLING'];?>><?php echo $_LANG['INSTALLATION'].' '.$_LANG['COMPLETED'];?></li>
				<li></li>
				</ul>
				</div>
				<div class="display">
				<?php System::printNotices();?>
				<div id="ABOUT_CMS" <?php echo $_SESSION['INSTALL_DISPLAY'];?>  class="database">
				<?php include('about.txt');?>
				<div class="buttons"><input onClick="q4_onclick();<?php if ($_SESSION['HIDE_NEXT']) {?>hideNext()<?php }?>" type="button" value="Баштоо" style="float:right;"></div>
				</div>
				<div id="FILES" style="display:none;"  class="database">
				<?php if ($_SESSION['HIDE_NEXT']) {?><div style="margin: 0 -10px 0 -10px; background:red;padding:10px 10px 10px 10px;"><?php echo $_SESSION['HIDE_NEXT']; ?></div><?php }?>
				<table><tbody>
				<?php
					$a = '/';
					$files = self::getListFiles($a);
					for($i = 0; $i<count($files); $i++){
						echo $files[$i];
					}
				?>
				</tbody></table>
				<div class="buttons"><input onClick="q0_onclick()" type="button" value="Мурунку"><text style="display:;" id="next"><input onClick="q3_onclick()" type="button" value="Кийинки" style="float:right;"></text></div>
				</div>
				<div id="DATABASE" style="display:none;" class="database">
				<label for="dbh">DB Хост:</label><br /><input type="text" id = "dbh" name="DB_HOST" width="100px" value="<?php echo $_SESSION['DB_HOST'];?>" ><br />
				<label for="dbn">DB Аталышы: </label><br /><input type="text" id = "dbn" name="DB_NAME" width="100px" value="<?php echo $_SESSION['DB_NAME'];?>"><br />
				<label for="dbu">DB Колдонуучу: </label><br /><input type="text" id = "dbu" name="DB_USER" width="100px" value="<?php echo $_SESSION['DB_USERNAME'];?>"><br />
				<label for = "dbp">DB Сыр сөз: </label><br /><input type="password" id = "dbp" name="DB_PASS" width="100px"><br />
				<div class="buttons"><input onClick="q4_onclick()" type="button" value="Мурунку"><input onClick="q1_onclick()" type="button" value="Кийинки" style="float:right;"></div>
				</div>
				<div id="SITE_CONFIGURATION" style="display:none;"  class="database">
				<label for="dbs">Сайттын аталышы:</label><br /><input type="text" id = "dbs" name="sitename" width="100px" value="<?php echo $_SESSION['SITE_NAME'];?>"><br />
				<label for = "dbd">Чечмелөө: </label><br /><textarea type="text" id = "dbd" name="description" width="100px" value="<?php echo $_SESSION['DESCRIPTION'];?>"></textarea><br />
				<label for = "dbk">Ачкыч сөздөр: </label><br /><textarea type="text" id = "dbk" name="keywords" width="100px" value="<?php echo $_SESSION['KEYWORDS'];?>"></textarea><br />
				<label for="dbsl">Сайттын тили: </label><br /><select id = "dbsl" name="til"><?php  $p = self::getDirList('/system/languages/', 'option'); echo $p;?></select><br />
				<div class="buttons"><input onClick="q3_onclick()" type="button" value="Мурунку"><input onClick="q2_onclick()" type="button" value="Кийинки" style="float:right;"></div>
				</div>
				<div id="ADMIN_CONFIGURATION" style="display:none;"  class="database">
				<label for="dba">Админ шилтемеси: </label><br /><input type="text" id = "dba" name="admin_link" width="100px" value="<?php echo $_SESSION['ADMIN_NAME'];?>"><br />
				<label for="dbe">Email: </label><br /><input type="email" id = "dbe" name="email" width="100px" value="<?php echo $_SESSION['ADMIN_EMAIL'];?>"><br />
				<label for="dby">Админдин ысымы: </label><br /><input type="text" id = "dby" name="admin_login" width="100px" value="<?php echo $_SESSION['ADMIN_LOGIN'];?>"><br />
				<label for="dbss">Сыр сөз: </label><br /><input type="password" id = "dbss" name="admin_pass" width="100px"><br />
				<label for="dbn">noreply-Email: </label><br /><input type="email" id = "dbn" name="noreplymail" width="100px" value="<?php echo $_SESSION['NOREPLY_EMAIL'];?>"><br />
				<div class="buttons"><input onClick="q1_onclick()" type="button" value="Мурунку"><input name="INSTALL" style="float:right;" id="next" type="submit" value="Бүтүрүү"></div>
				</div>
				<div id="INSTALL" <?php echo $_SESSION['INSTALLING_DISPLAY'];?>  class="database">
				<a href="/<?php echo $_POST['admin_link'];?>"><?php echo $_LANG['ADMINISTRATION'];?></a> <a href="/"><?php echo $_LANG['TO_SITE'];?></a>
				</div>
				<?php $_SESSION['HIDE_NEXT'] = '';?>
</div></div>
</form>
</div>
<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">x</span>
    <p><?php echo $_SESSION['notice']['message']?></p>
  </div>

</div>
<script>
	// Get the modal
var modal = document.getElementById('myModal');

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal 
if("<?php echo $_SESSION['notice']['message']?>"!= ""){
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<?php self::clearNotices()?>
</body>
</html>