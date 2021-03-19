<!doctype html>
<html lang="fr">
	<head>
		<link rel="icon" type="image/jpg" href="/<?=WEBROOT2?>/webroot/img/logo.png">
		<!-- Required meta tags -->
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Chewy&display=swap" rel="stylesheet">

		<title>My Maps</title>
	</head>
	<body style="background-color: #FFE1A8;">
		<nav class="navbar navbar-expand-lg navbar-light navig" style="background-color: #1C5253; font-size: 20px; font-family: 'Chewy', cursive; color: white;">
		  <!-- <a class="navbar-brand" href="#">MyMaps</a> -->
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		  </button>

		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
			  <li class="nav-item active">
				<a class="nav-link" href="/<?=WEBROOT2?>/accueil/adminindex">Accueil <span class="sr-only">(current)</span></a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="/<?=WEBROOT2?>/lieus">Tous les pays</a>
			  </li>
			</ul>
			<div class="navbar-brand" style="width:50%; font-size: 30px">
				  <a href="/<?=WEBROOT2?>"><img src="/<?=WEBROOT2?>/webroot/img/logohorizontal.png" width="165px"></a> admin version
				</div>
			<form class="form-inline my-2 my-lg-0" action="/<?=WEBROOT2?>/users/logout">
			  <button class="btn btn-outline-light" type="submit"><i class="fas fa-user-alt-slash"></i></i></button>
			</form>
		  </div>
		</nav>
		<div>
			<?php
				echo $this->Session->flash();
			?>
		</div>		
		<div>
			<div>
				<div>
						<?php 
						echo $content_for_layout;
						?>
						<br><br><br>
					<p>Bonjour je suis le footer</p>
				</div>
			</div>
		</div>

		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

	</body>
</html>
