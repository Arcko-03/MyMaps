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

	function deleteLieu($id){
		$this->id=$id;
		return $this->delete();
	}
}
?>