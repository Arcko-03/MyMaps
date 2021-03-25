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
	function adminindex() {
	//je rend la vue index
		//echo 'function index';
		$d=array();
		$d['pa']= $this->pays->getLastP();
		$d['titre']= "Carte du monde";
		
		$this->set($d);
		$this->layout='admin';
		//je rend la vue index
		$this->render('adminindex');
	}
	function userindex() {
	//je rend la vue index
		//echo 'function index';
		$d=array();
		$d['pa']= $this->pays->getLastP();
		$d['titre']= "Carte du monde";
		
		$this->set($d);
		$this->layout='user';
		//je rend la vue index
		$this->render('userindex');
	}



	function view($id) {
		//$this->category = $this->loadModel('category');
		$d['pa']= $this->pays->getPa("'".$id."'");
		$d['titre']= "Lieux à visiter en ";

		if (empty($d['pa'])) {
			$d['pa']= $this->pays->getPaEmptyLieu("'".$id."'");
			$d['titre']= "Il n'y a encore aucun lieu à visiter en ".$d['pa'][0]->NomPays;
			$d['empty']= 'true';
		}
		else{
			$d['pa']= $this->pays->getPa("'".$id."'");
			$d['titre']= "Lieux à visiter en ".$d['pa'][0]->NomPays;
			$d['empty']= 'false';
		}


		$this->set($d);
		

		//je rend la vue view
		$this->render('view');
	}

	function userview($id) {
		//$this->category = $this->loadModel('category');
		$d['pa']= $this->pays->getPa("'".$id."'");
		$d['titre']= "Lieux à visiter en ";

		if (empty($d['pa'])) {
			$d['pa']= $this->pays->getPaEmptyLieu("'".$id."'");
			$d['titre']= "Il n'y a encore aucun lieu à visiter en ".$d['pa'][0]->NomPays;
			$d['empty']= 'true';
		}
		else{
			$d['pa']= $this->pays->getPa("'".$id."'");
			$d['titre']= "Lieux à visiter en ".$d['pa'][0]->NomPays;
			$d['empty']= 'false';
		}


		$this->set($d);
		$this->layout='user';

		//je rend la vue view
		$this->render('userview');
	}
}



?>