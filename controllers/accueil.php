<?php 
class accueil extends controller {

	var $models = array("pays");

function index() {
	//je rend la vue index
		//echo 'function index';
		$d=array();
		$d['pa']= $this->pays->getLastP();
		$d['titre']= "Carte du monde";
		
		$this->set($d);

		//je rend la vue index
		$this->render('index');
	}
	function view($id) {
		//$this->category = $this->loadModel('category');
		$d['pa']= $this->pays->getPa("'".$id."'");
		$d['titre']= "Lieux à visiter en ";
		
		
		$this->set($d);
		
		//je rend la vue view
		$this->render('view');
	}
}
?>