<!--Llama a la cabecera-->
<?php include "../extend/header.php"; ?> 
<!-- pagina principal -->
<div class="row">
    <div class="col s12">
      <div class="card">
        <div class="card-content #B2A0AF cyan lighten-5">
          <center><span class="card-title"><h2>INICIO</h3></span></center>
            <p>Pagina principal</p>
        </div>
      </div>
    </div>
</div>
<!-- activacion de nav y botones -->
<?PHP
  include"../extend/scripts.php";
?>
<!-- activar botonoes -->
<div class="fixed-action-btn vertical click-to-toggle " >
  <a  class="btn-floating red">
    <i class="material-icons" >mode_edit</i>
  </a>
  <ul>
    <li><a href="inicio.html" class="btn-floating yellow"><i class="material-icons">add</i></a></li>
    <li><a href="carrito.html" class="btn-floating orange"><i class="material-icons">replay</i></a></li>
    <li><a href="revision.html" class="btn-floating purple"><i class="material-icons">repeat</i></a></li>
    <li><a href="login.html" class="btn-floating pink"><i class="material-icons">send</i></a></li>
  </ul>
</div>