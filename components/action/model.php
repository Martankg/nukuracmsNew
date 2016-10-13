<?php
class com_action{
	public function getActions(){
		$db = new DB();
		return $db->query("SELECT * FROM `com_action`");
	}
}
?>