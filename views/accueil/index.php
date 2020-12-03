<div class="container">
	<h1><center>My Maps</center></h1>
	
	<!-- <img src="/<?=WEBROOT2?>/webroot/img/logo.png" width="300" /> -->
	<h1><?=$titre?></h1>
<?php 
	//je rend la vue index	
?>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">NomPays</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
	<?php 
	foreach ($pa as $p){
		echo "<tr>";
		echo '  <th scope="row">'.$p->id.'</th>';
		echo '  <td><a href="/'.WEBROOT2.'/accueil/view/'.$p->id.'">'.$p->NomPays.'</a></td>';
		echo '  <td></td>';
		echo '</tr>';
	}
	?>
  </tbody>
</table>
</div>