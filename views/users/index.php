<div class="container">
	<br>
	<a style="text-align: center;">
	<div class="row">
		<div class="col-md-12">
			<h1>Connexion :</h1>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<form method="POST" action="/<?=WEBROOT2?>/users">
			  <div class="form-group">
				<label for="exampleInputLogin1"><i class="fas fa-user fa-3x"></i></label>
				<input type="Login" name="login" class="form-control" id="exampleInputLogin1" aria-describedby="LoginHelp" placeholder="Entrez votre Login">
				<small id="LoginHelp" class="form-text text-muted">Saisissez votre identifiant.</small>
			  </div>
			  <div class="form-group">
				<label for="exampleInputPassword1"><i class="fas fa-unlock-alt fa-3x"></i></label>
				<input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Entrer votre mot de passe">
				<small id="LoginHelp" class="form-text text-muted">Saisissez votre mot de passe.</small>
			  </div>
			  <button type="submit" class="btn btn-primary">Se connecter</button>
			</form>
		</div>
	</div>
</div>