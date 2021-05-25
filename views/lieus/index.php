<h1><?=$titre?></h1>
<?php 
	//je rend la vue index	
?>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Nom Lieu</th>
      <th scope="col">Description</th>
      <th scope="col">Image</th>
      <th scope="col">Pays</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
	<?php 
	foreach ($li as $l){
		echo "<tr>";
		echo '  <th scope="row">'.$l->IdLieu.'</th>';
		echo '  <td><a href="/'.WEBROOT2.'/lieu/view/'.$l->IdLieu.'">'.$l->NomLieu.'</a></td>';
		echo '  <td>'.$l->Description.'</td>';
		echo '  <td>'.$l->Image.'</td>';
		echo '  <td></td>';
		echo '</tr>';
	}
	?>
  </tbody>
</table>