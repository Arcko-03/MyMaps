<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h1>Pays</h1>
		</div>
	</div>
<?php
	// echo "<PRE>";
	// print_r($cat); 
	// echo "</PRE>";
?>
	<div class="row">
		<div class="col-md-5">
			<form method="POST" action="/<?=WEBROOT2?>/lieu/adminedit">
			  <div class="form-group">
				<label for="exampleInputid1">id</label>
				<input type="id" name="id" class="form-control" id="exampleInputid1" readonly="readonly" 
				value="<?php if(isset($lieu->id)) echo $lieu->id; ?>">
			  </div>
			  <div class="form-group">
				<label for="exampleInputname1">Nom Pays:</label>
				<input type="name" name="name" class="form-control" id="exampleInputname1" aria-describedby="nameHelp" 
				placeholder="Entrez le nom"	value="<?php if(isset($lieu->nomLieu)) echo $lieu->nomLieu; ?>">
				<small id="nameHelp" class="form-text text-muted">Saisissez le nom du lieu.</small>
			  </div>
			  <div class="form-group">
				<label for="exampleInputordre1">Description</label>
				<input type="ordre" name="ordre" class="form-control" id="exampleInputordre1" 
				placeholder="Entrer l'ordre" value="<?php if(isset($lieu->Description)) echo $lieu->Description; ?>">
			  </div>
			  <div class="form-group">
				<label for="exampleInputordre1">Image</label>
				<input type="ordre" name="ordre" class="form-control" id="exampleInputordre1" 
				placeholder="Entrer l'ordre" value="<?php if(isset($lieu->Image)) echo $lieu->Image; ?>">
			  </div>
			  <button type="submit" class="btn btn-primary">Valider</button>
			</form>
		</div>
	</div>
</div>