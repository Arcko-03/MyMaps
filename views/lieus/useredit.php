<br><center><h1>Ajout d'un lieu touristique en <?=$pa->NomPays?></h1><br></center>


<div class="container">
<?php
	// echo "<PRE>";
	// print_r($cat); 
	// echo "</PRE>";
print_r($li->idP);
print_r($pa->NomPays);
?>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<form method="POST" action="/<?=WEBROOT2?>/accueil/adminview/<?=$pa->id?>">
			  <div class="form-group">
				<label for="exampleInputid1">id</label>
				<input type="id" name="id" class="form-control" id="exampleInputid1" readonly="readonly" 
				value="<?php if(isset($lieu->id)) echo $lieu->id; ?>">
			  </div>
			  <div class="form-group">
				<label for="exampleInputname1">Nom lieu:</label>
				<input type="name" name="NomLieu" class="form-control" id="exampleInputname1" aria-describedby="nameHelp" 
				placeholder="Entrez le nom du lieu"	value="<?php if(isset($lieu->nomLieu)) echo $lieu->nomLieu; ?>">
				<small id="nameHelp" class="form-text text-muted">Saisissez le nom du lieu.</small>
			  </div>
			  <div class="form-group">
				<label for="exampleInputordre1">Description</label>
				<input type="desc" name="Description" class="form-control" id="exampleInputordre2" 
				placeholder="Entrer la Description" value="<?php if(isset($lieu->Description)) echo $lieu->Description; ?>">
			  </div>
			  <div class="form-group">
				<label for="exampleInputordre1">Image</label>
				<input type="img" name="Image" class="form-control" id="exampleInputordre3" 
				placeholder="Entrer le nom de l'image" value="<?php if(isset($lieu->Image)) echo $lieu->Image; ?>">
			  </div>
			  <div class="form-group">
				<label for="exampleInputordre1">ID PAYS</label>
				<input type="img" name="idP" class="form-control" id="exampleInputordre4" 
				placeholder="Entrer ID PAYS" value="<?php if(isset($lieu->Image)) echo $lieu->Image; else echo$li->idP; ?>">
			  </div>
			 <br> <center><button type="submit" class="btn btn-primary">Valider</button></center>
			</form>
		</div>
		<div class="col-md-3"></div>
	</div>
</div>