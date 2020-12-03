<?php 
class users extends controller {
	
	var $models = array("user");

	function index() {
		$d=array();
		if (!empty($_POST)) {
			$user= $this->user->getUser($_POST["login"], $_POST["password"]);
			//si login et mdp ok
			if (!empty($user)) {
				$this->Session->setFlash("Connexion ok");
				$this->Session->write('User', $user);
				// echo "<PRE>";
				// print_r($_SESSION['User']); 
				// echo "</PRE>";
				
			} else {
				$this->Session->setFlash("Problème d'identifiant ou mot de passe", "danger");
			}
		}
		
		$this->set($d);
		//Si login et mdp ok cad si on est logué
		if ($this->Session->isLogged()) {
			$this->layout='admin';
			//vue page accueil back office
			$this->render('loginok');
		} else {
			//vue formulaire vierge de connection
			$this->render('index');
		}
		
	}
	
	function logout() {
		unset($_SESSION['User']);
		$this->layout='default';
		$this->render('index');
	}	
}
?>