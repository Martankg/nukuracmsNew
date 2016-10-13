<?php
function com_action($config=''){
	global $_LANG;
	$Action = new com_action();
	System::initTemplate("component")->
	assign($Action->getActions(), 'actions')->
	display("com_action");
}
?>