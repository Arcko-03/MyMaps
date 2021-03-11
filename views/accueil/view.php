<center><h1><?=$titre.$pa[0]->NomPays?></h1></center>
<?php 
	//je rend la vue index
	// echo "<PRE>";
	// print_r($cats); 
	// echo "</PRE>";	


	
	?>
	<?php 
	foreach ($pa as $p){
		echo "<tr>";
		echo '  <th scope="row">'.$p->id.'</th>';
		echo '  <td>'.$p->NomPays.'</a></td>';
		echo '  <td>'.$p->IdLieu.'</a></td>';
		echo '  <td>'.$p->NomLieu.'</a></td>';
		echo '<br>';
		echo '  <td></td>';
		echo '</tr>';
	}
	?>
  </tbody>
</table>