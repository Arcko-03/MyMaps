<h1><?=$titre?></h1>
<?php
	// echo "<PRE>";
	// print_r($cat); 
	// echo "</PRE>";
?>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Nom Lieu</th>
      <th scope="col">Description</th>
      <th scope="col">Image</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
	<?php 
	foreach ($lieus as $l){
		echo "<tr>";
		echo '  <th scope="row">'.$l->id.'</th>';
		echo '  <td>'.$l->nomLieu.'</td>';
		echo '  <td>'.$l->Description.'</td>';
		echo '  <td>'.$l->Image.'</td>';
		echo '  <td>';
			echo "<a href='/".WEBROOT2."/lieu/adminEdit/".$l->id."'><i class='fas fa-edit'></i></a> ";
			echo "<a href='/".WEBROOT2."/lieu/adminDelete/".$l->id."' onclick=\"return confirm('Voulez vous vraiment supprimer ce lieu?');\"><i class='fas fa-trash-alt'></i></a>"; 
		echo '</td>';
		echo '</tr>';
	}
	echo "<tr>";
	echo '  <th scope="row"></th>';
	echo '  <td>';
	echo "<a href='/".WEBROOT2."/lieu/adminEdit/'><i class='fas fa-plus'></i></a> ";
	echo '</td>';
	echo '  <td>...</td>';
	echo '  <td></td>';
	echo '</tr>';
	
	?>
  </tbody>
</table>