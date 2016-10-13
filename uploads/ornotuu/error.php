<?php
System::loadComponentLanguage('users');
?>
<html>
<head>
<meta charset="utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/ornotuu/css/styles.css" rel="stylesheet" type="text/css">
<title><?php echo SITENAME.' - '.$_LANG['WARNING']?></title>
</head>
<body><div id="login">
<form  action="/users/do/login" method="POST">
				<div class="admin_login">
				<div class="header_login"><?php echo $_LANG['WARNING'];?></div><br /><br /><br/>
				<h1 style="line-height:30px;">"ornotuu" аталышындагы папканы өчүрүңүз!<br /> Андан кийин <a href="/">бетти жаңылоону</a> басыңыз</h1>
</div></div>
</form>
</div>
</body>
</html>