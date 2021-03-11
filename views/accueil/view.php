<center><h1><?=$titre?></h1></center>

	<?php 
	if ($empty == 'false'){	
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
	}

	?>
  </tbody>
</table>