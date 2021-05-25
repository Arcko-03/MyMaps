<h1><center><?=$li->NomLieu?></center></h1>

<?php 
    echo '</br>';
    echo "<div class='container'>";
    echo "<div class='row justify-content-md-center'>";
    echo '<div class="col-3"> <img src="/'.WEBROOT2.'/webroot/img/'.$li->Image.'" width= 300px/></div>';
    echo '</div>';
    echo '</br>';
    echo "<div class='row justify-content-md-center'>";
    echo '<div class="col">'.$li->Description.'</div>';
    echo '</div>';
    echo '</div><br><br>';

    ?>
  </tbody>
</table>