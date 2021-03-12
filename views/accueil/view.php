<center><h1><?=$titre?></h1></center>

	<?php 
	if ($empty == 'false'){	
		foreach ($pa as $p){
		echo "<div class='container'>";
		echo "<div class='row'>";
		echo '<div class="col-sm"><img src="/'.WEBROOT2.'/webroot/img/'.$p->Image.'" width= 300px/></div>';
		echo '<div class="col-sm">'.$p->NomLieu.'</div>';
		echo '<div class="col-sm">'.$p->Description.'</div>';
		echo '</div>';
		echo '</div><br><br>';
		}
	}

	?>
  </tbody>
</table>