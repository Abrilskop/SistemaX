<?php include "../extend/header.php"; ?>

<div class="row">
    <div class="col s12">
        <div class="card">
            <div class="card-content #e0f7fa cyan lighten-5">
                <center><span class="card-title">PRODUCTOS</span></center>
                <p>ALTA DE PRODUCTOS</p>
                <div class="input-field">
                    <input type="text" name="producto" required autofocus 
                           title="DEBE DE CONTENER ENTRE 8 Y 15 CARACTERES, SOLO LETRAS" 
                           pattern="[A-Za-z]{8,15}" 
                           id="producto" onblur="may(this.value, this.id)">
                    <label for="producto">Producto:</label>
                </div>
                <div class="validacion"></div>
            </div>
        </div>
    </div>
</div>

<?php include "../extend/scripts.php"; ?>

<div class="fixed-action-btn vertical click-to-toggle">
    <a class="btn-floating red">
        <i class="material-icons">mode_edit</i>
    </a>
    <ul>
        <li><a href="" class="btn-floating yellow"><i class="material-icons">add</i></a></li>
        <li><a href="" class="btn-floating orange"><i class="material-icons">replay</i></a></li>
        <li><a href="" class="btn-floating purple"><i class="material-icons">repeat</i></a></li>
        <li><a href="" class="btn-floating pink"><i class="material-icons">send</i></a></li>
    </ul>
</div>
