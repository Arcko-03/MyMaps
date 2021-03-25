<br><br>
<center><h1><?=$titre?></h1></center>

	<?php 
	if ($empty == 'false'){	
		foreach ($pa as $p){
		echo "<div class='container'>";
		echo "<div class='row'>";
		echo '<div class="col-sm"><img src="/'.WEBROOT2.'/webroot/img/'.$p->Image.'" width= 300px/></div>';
		echo '<div class="col-sm">'.$p->NomLieu.'</div>';
		echo '<div class="col-sm">'.$p->Description.'</div>';
		echo '<div class="col-sm">'.$p->UserNote.'</div>';
		echo '<a href="/'.WEBROOT2.'/article/view"></a>';
		echo '</div>';
		echo '</div><br><br>';

		}

	}
	else{
		echo "<br>";
		echo "<br>";
		echo '<center><div class="col-sm"><img src="/'.WEBROOT2.'/webroot/img/juju.gif" width= 600px/></div></center>';
		echo "<br>";
		echo "<center><h1>Snif...</h1></center>";
	}

	?>
  </tbody>
</table>