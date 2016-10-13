<?php
	while($action = $actions->fetch_assoc()){
?>
<div class="box"><?php echo $action['body']?></div>
<?
	}
?>