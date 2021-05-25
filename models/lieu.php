<?php 
class lieu extends Model {
	var $table="lieu";
	
	function getLastLieu($num=99) {
		return $this->find(array(
			"order"=> 'IdLieu',
			"limit"=> 'LIMIT '.$num

		));
	}
	
	function getLieu($id) {
		return $this->findfirst(array(
			"condition"=> 'id='.$id
			
		));
	}
	function getPays($id) {
		return $this->findfirst(array(
			"condition"=> 'IdP='.$id,
			"inner"=> 'INNER JOIN pays ON lieu.idP = pays.id',
			"order"=> 'IdP',
		));
	}

	function deleteLieu($id){
		$this->id=$id;
		return $this->delete();
	}
}
?>