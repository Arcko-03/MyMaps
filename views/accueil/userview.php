<br><br>
<center><h1><?=$titre?></h1></center>

	<?php 
	if ($empty == 'false'){	
		foreach ($pa as $p){
		echo "<div class='container'>";
		echo "<div class='row'>";
		echo '<div class="col-sm"><img src="/'.WEBROOT2.'/webroot/img/'.$p->Image.'" width= 300px/></div>';
		echo '<div class="col-sm">'.$p->NomLieu.'</div>';
		echo '<div class="col-sm" style="text-overflow: ellipsis;">'.$p->Description.'</div>';
		echo '<div class="col-sm">'.$p->UserNote.'</div>';
		echo '<div class="col-sm"><a href="/'.WEBROOT2.'/lieus/view/'.$p->id.'">En savoir plus</a></div>';
		echo '</div>';
		echo '</div><br><br>';

		}

		echo "<br><center><a href=''><i class='fas fa-plus-circle fa-3x' ></i></a></center>";
	}
	else{
		echo "<br>";
		echo "<br>";
		echo '<center><div class="col-sm"><img src="/'.WEBROOT2.'/webroot/img/juju.gif" width= 600px/></div></center>';
		echo "<br>";
		echo "<center><br><h1>Snif...</h1></center>";
	}

	?>
  </tbody>
</table>