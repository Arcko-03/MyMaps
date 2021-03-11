<?php 
class pays extends Model {
	var $table="pays";

	function getLastP($num=300) {
		return $this->find(array(
			"order"=> 'NomPays',

		));
	}
	function getPa($id) {
		return $this->find(array(
			"condition"=> 'id='.$id,
			"inner"=> 'INNER JOIN lieu ON lieu.idP = pays.id',
		));
	}
	
}
?>